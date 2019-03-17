extern crate actix_web;
extern crate cookie;
extern crate get_if_addrs;
extern crate hyper;
extern crate itertools;
extern crate json;
extern crate log4rs;
#[cfg(not(feature = "lambda"))]
#[macro_use]
extern crate log;
extern crate mustache;
extern crate reqwest_mock;
#[macro_use]
extern crate serde_derive;
extern crate time;
extern crate url;
#[macro_use]
extern crate lazy_static;
#[macro_use]
extern crate serde_json;

#[cfg(test)]
extern crate crossbeam;
#[cfg(test)]
extern crate env_logger;

#[cfg(feature = "lambda")]
extern crate reqwest;
#[cfg(feature = "lambda")]
use reqwest::Client;

#[cfg(feature = "lambda")]
#[macro_use]
extern crate lambda_http;
#[cfg(feature = "lambda")]
use lambda_http::RequestExt;

use actix_web::{http::Method, server, App, HttpRequest, HttpResponse};
#[cfg(not(feature = "lambda"))]
use std::env;

#[cfg(feature = "lambda")]
use std::thread;

mod arrivals;
mod common;
mod favourite;
mod id;
mod nearby;
mod search;

fn root_handler(request: HttpRequest) -> HttpResponse {
    let data = common::mustache_favourites(&request);
    common::render_to_response("resources/templates/root.mustache", &data)
}

fn app() -> App {
    return App::new()
        .route("/", Method::GET, root_handler)
        .route("/search", Method::GET, search::search_handler)
        .route("/id/{id}", Method::GET, id::id_handler)
        .route("/nearby", Method::GET, nearby::nearby_handler)
        .route("/favourites", Method::GET, favourite::list_favourites)
        .route("/favourites", Method::POST, favourite::add_favourite)
        .route("/favourite-remove", Method::POST, favourite::remove_favourite)
        .route("/arrivals/{stopid}", Method::GET, arrivals::arrivals_handler);
}

#[cfg(not(feature = "lambda"))]
fn main() {
    log4rs::init_file("log.yaml", Default::default()).unwrap();
    let port = env::var("PORT")
        .unwrap_or("8000".to_string())
        .parse::<u16>()
        .unwrap();
    let mut server = server::new(|| app().finish());
    for iface in get_if_addrs::get_if_addrs().unwrap() {
        let ip = iface.ip();
        info!("Listening on {}:{} for {}", ip, port, iface.name);
        server = server.bind((ip, port)).unwrap();
    }
    server.run();
}

#[cfg(feature = "lambda")]
fn main() {
    thread::spawn(move || server::new(|| app().finish()).bind("0.0.0.0:3457").unwrap().run());
    let client = Client::new();
    lambda!(|request: lambda_http::Request, _context| {
        let uri = &format!(
            "http://127.0.0.1:3457{}",
            &request
                .uri()
                .clone()
                .into_parts()
                .path_and_query
                .unwrap()
                .as_str()
        );
        println!("Uri: {}", uri);
        let mut req = client.clone().request(request.method().clone(), uri);
        for (key, value) in request.headers() {
            req = req.header(key, value);
        }
        match request.body() {
            lambda_http::Body::Empty => {}
            lambda_http::Body::Text(val) => {
                req = req.body(val.clone());
            }
            lambda_http::Body::Binary(val) => {
                req = req.body(val.clone());
            }
        }
        println!("Req to inner: {:?}", request);
        println!("New req: {:?}", req);
        let res = req.send().unwrap();
        println!("Res: {:?}", res);
        Ok(format!(
            "hello {}",
            request
                .query_string_parameters()
                .get("name")
                .unwrap_or_else(|| "stranger")
        ))
    });
}

#[cfg(test)]
mod tests {
    use super::{app, common, main};
    use actix_web::actix::System;
    use actix_web::{http, server, test, App, HttpMessage, HttpRequest, HttpResponse, State};
    use crossbeam::channel::unbounded;
    use crossbeam::{Receiver, Sender};
    use std::{env, thread};

    #[derive(Debug, Clone)]
    struct AppState {
        req: Receiver<Result<(i32, serde_json::Value), ()>>,
        res: Sender<String>,
    }

    fn test_app(req: Receiver<Result<(i32, serde_json::Value), ()>>, res: Sender<String>) -> App<AppState> {
        App::with_state(AppState { req, res })
            .resource("/2018-06-01/runtime/invocation/1234/response", |r| {
                r.method(http::Method::POST)
                    .with(|(body, state): (String, State<AppState>)| {
                        println!("Response body: {}", body);
                        state.res.send(body).unwrap();
                        HttpResponse::Ok()
                    })
            })
            .resource("/2018-06-01/runtime/invocation/next", |r| {
                r.method(http::Method::GET).with(|state: State<AppState>| {
                    let (id, body) = match state.req.clone().recv().unwrap() {
                        Ok(val) => val,
                        Err(_) => {
                            System::current().stop();
                            thread::park();
                            unimplemented!();
                        }
                    };
                    println!("Got req: {}", id);
                    HttpResponse::Ok()
                        .header("Lambda-Runtime-Aws-Request-Id", id.to_string())
                        .header("Lambda-Runtime-Invoked-Function-Arn", "an-arn")
                        .header("Lambda-Runtime-Deadline-Ms", "1000")
                        .json(body)
                })
            })
            .default_resource(|r| {
                r.route().with(|(r, body): (HttpRequest<AppState>, String)| {
                    println!("{:?}", r);
                    println!("Body: {}", body);
                    HttpResponse::NotFound()
                })
            })
    }

    #[cfg(feature = "lambda")]
    #[test]
    fn lambda_test() {
        let (req_send, req_recv) = unbounded();
        let (res_send, res_recv) = unbounded();
        req_send.send(Ok((1234, json!({
    "requestContext": {
        "elb": {
            "targetGroupArn": "arn:aws:elasticloadbalancing:region:123456789012:targetgroup/my-target-group/6d0ecf831eec9f09"
        }
    },
    "httpMethod": "GET",
    "path": "/",
    "queryStringParameters": {},
    "headers": {
        "accept": "text/html,application/xhtml+xml",
        "accept-language": "en-US,en;q=0.8",
        "content-type": "text/plain",
        "cookie": "cookies",
        "host": "lambda-846800462-us-east-2.elb.amazonaws.com",
        "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6)",
        "x-amzn-trace-id": "Root=1-5bdb40ca-556d8b0c50dc66f0511bf520",
        "x-forwarded-for": "72.21.198.66",
        "x-forwarded-port": "443",
        "x-forwarded-proto": "https"
    },
    "isBase64Encoded": false,
    "body": "request_body"
})))).unwrap();
        env_logger::init();
        thread::spawn(move || {
            server::new(move || test_app(req_recv.clone(), res_send.clone()).finish())
                .bind("0.0.0.0:3456")
                .unwrap()
                .run()
        });
        env::set_var("AWS_LAMBDA_FUNCTION_NAME", "foo");
        env::set_var("AWS_LAMBDA_FUNCTION_VERSION", "1");
        env::set_var("AWS_LAMBDA_LOG_STREAM_NAME", "log");
        env::set_var("AWS_LAMBDA_LOG_GROUP_NAME", "lg");
        env::set_var("AWS_LAMBDA_FUNCTION_MEMORY_SIZE", "128");
        env::set_var("AWS_LAMBDA_RUNTIME_API", "127.0.0.1:3456");
        thread::spawn(|| main());
        println!("Response to main: {}", res_recv.recv().unwrap());
        // shutdown
        req_send.send(Err(())).unwrap();
    }

    #[test]
    fn simple_search() {
        let mut srv = test::TestServer::with_factory(app);
        common::set_client(common::ClientType::TESTING);
        let request = srv
            .client(http::Method::GET, "/search?query=foo")
            .finish()
            .unwrap();
        let response = srv.execute(request.send()).unwrap();
        let body: String = String::from_utf8(srv.execute(response.body()).unwrap().to_vec()).unwrap();
        assert!(body.find("<title>Search: foo</title>").is_some(), body);
        assert!(response.status().is_success(), response.status());
    }
}

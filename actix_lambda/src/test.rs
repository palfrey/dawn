//! Test helpers for actix_lambda applications
use actix_web::{actix::System, http, server, App, HttpRequest, HttpResponse, State};
use aws_lambda_events::event::alb;
use crossbeam::{unbounded, Receiver, Sender};
use log::{debug, warn};
use maplit::hashmap;
use std::{collections::HashMap, env, thread};

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
                    debug!("Response body: {}", body);
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
                debug!("Got req: {}", id);
                HttpResponse::Ok()
                    .header("Lambda-Runtime-Aws-Request-Id", id.to_string())
                    .header("Lambda-Runtime-Invoked-Function-Arn", "an-arn")
                    .header("Lambda-Runtime-Deadline-Ms", "1000")
                    .json(body)
            })
        })
        .default_resource(|r| {
            r.route().with(|(r, body): (HttpRequest<AppState>, String)| {
                warn!("{:?}", r);
                warn!("Body: {}", body);
                HttpResponse::NotFound()
            })
        })
}

///
/// Tests your actix-web app as a lambda app that will respond to Application Load Balancer requests
///
/// ```rust
/// use actix_web::{App, http::Method, HttpRequest};
///
/// fn root_handler(request: HttpRequest) -> &'static str {
///     return "Hello world";
/// }
///
/// fn app() -> App {
///     return App::new()
///         .route("/", Method::GET, root_handler);
///         // More route handlers
/// }
///
/// fn mainloop() {
///     actix_lambda::run(app);
/// }
/// # use actix_lambda::test::lambda_test;
/// lambda_test(mainloop)
///
pub fn lambda_test<F>(main_loop: F)
where
    F: FnOnce() -> () + std::marker::Send + 'static,
{
    let (req_send, req_recv) = unbounded();
    let (res_send, res_recv) = unbounded();
    req_send.send(Ok((1234,
        serde_json::to_value(
        alb::AlbTargetGroupRequest {
            request_context: alb::AlbTargetGroupRequestContext {
                elb: alb::ElbContext {
                    target_group_arn: Some("arn:aws:elasticloadbalancing:region:123456789012:targetgroup/my-target-group/6d0ecf831eec9f09".to_string())
                }
            },
            http_method: Some("GET".to_string()),
            path: Some("/".to_string()),
            query_string_parameters: HashMap::new(),
            multi_value_query_string_parameters: HashMap::new(),
            headers: hashmap!{
                "accept".to_string() => "text/html,application/xhtml+xml".to_string(),
                "accept-language".to_string() => "en-US,en;q=0.8".to_string(),
                "content-type".to_string() => "text/plain".to_string(),
                "cookie".to_string() => "cookies".to_string(),
                "host".to_string() => "lambda-846800462-us-east-2.elb.amazonaws.com".to_string(),
                "user-agent".to_string() => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6)".to_string(),
                "x-amzn-trace-id".to_string() => "Root=1-5bdb40ca-556d8b0c50dc66f0511bf520".to_string(),
                "x-forwarded-for".to_string() => "72.21.198.66".to_string(),
                "x-forwarded-port".to_string() => "443".to_string(),
                "x-forwarded-proto".to_string() => "https".to_string()
            },
            multi_value_headers: HashMap::new(),
            is_base64_encoded: false,
            body: Some("request_body".to_string())
        }).unwrap()))).unwrap();
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
    thread::spawn(|| main_loop());
    let resp_raw = res_recv.recv().unwrap();
    let resp: alb::AlbTargetGroupResponse = serde_json::from_str(&resp_raw).unwrap();
    debug!("Response to main: {:#?}", resp);
    // shutdown
    req_send.send(Err(())).unwrap();
}

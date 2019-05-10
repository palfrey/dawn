extern crate actix_web;
extern crate cookie;
extern crate get_if_addrs;
extern crate hyper;
extern crate itertools;
extern crate json;
extern crate log4rs;
#[cfg_attr(not(feature="lambda"), macro_use)]
extern crate log;
extern crate mustache;
#[cfg(feature = "mocking")]
extern crate reqwest_mock;
#[macro_use]
extern crate serde_derive;
extern crate time;
extern crate url;
#[macro_use]
extern crate lazy_static;
#[cfg(feature = "lambda")]
extern crate actix_lambda;

extern crate env_logger;

use actix_web::{http::Method, App, HttpRequest, HttpResponse};
#[cfg(not(feature = "lambda"))]
use std::env;
#[cfg(not(feature = "lambda"))]
use actix_web::server;

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
    env_logger::try_init().unwrap_or_default();
    actix_lambda::run(app);
}

#[cfg(test)]
mod tests {
    use super::{app, common};
    #[cfg(feature = "lambda")]
    use super::main;
    use actix_web::{http, test, HttpMessage};
    #[cfg(feature = "lambda")]
    use actix_lambda;

    #[cfg(feature = "lambda")]
    #[test]
    fn lambda_test() {
        actix_lambda::test::lambda_test(main);
    }

    #[test]
    fn simple_search() {
        env_logger::try_init().unwrap_or_default();
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

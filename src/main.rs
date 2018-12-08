extern crate actix_web;
extern crate cookie;
extern crate get_if_addrs;
extern crate hyper;
extern crate itertools;
extern crate json;
extern crate log4rs;
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

use actix_web::{http::Method, server, App, HttpRequest, HttpResponse, test, http, HttpMessage};
use std::env;
use hyper::rt::Future;

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

#[test]
fn simple_search() {
    let mut srv = test::TestServer::with_factory(app);
    common::set_client(common::ClientType::TESTING);
    let request = srv.client(
         http::Method::GET, "/search?query=foo").finish().unwrap();
    let response = srv.execute(request.send()).unwrap();
    assert_eq!(response.body().wait().unwrap(), "");
    assert!(response.status().is_success());
}
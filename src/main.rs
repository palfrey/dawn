#[macro_use]
extern crate log;
extern crate log4rs;
extern crate hyper;
extern crate hyper_native_tls;
extern crate get_if_addrs;

extern crate nickel;
use nickel::{Nickel, HttpRouter, Request, Response, MiddlewareResult};
extern crate url;
extern crate cookie;

extern crate json;
extern crate mustache;

extern crate itertools;
extern crate time;

use std::env;

mod search;
mod common;
mod arrivals;
mod id;
mod nearby;
mod favourite;

fn root_handler<'a, D>(request: &mut Request<D>, response: Response<'a, D>) -> MiddlewareResult<'a, D> {
    let data = common::mustache_favourites(&request.origin);
    common::render_to_response(response, "resources/templates/root.mustache", &data)
}

fn run(ip: std::net::IpAddr, port: u16) {
    let mut server = Nickel::new();
    let mut router = Nickel::router();

    router.get("/", root_handler);
    router.get("/search", search::search_handler);
    router.get("/id/:id", id::id_handler);
    router.get("/nearby", nearby::nearby_handler);
    router.get("/favourites", favourite::list_favourites);
    router.post("/favourites", favourite::add_favourite);
    router.post("/favourite-remove", favourite::remove_favourite);
    router.get("/arrivals/:stopid", arrivals::arrivals_handler);

    server.utilize(router);
    server.listen((ip, port)).unwrap();
}

fn main() {
    log4rs::init_file("log.yaml", Default::default()).unwrap();
    let port = env::var("PORT").unwrap_or("8000".to_string()).parse::<u16>().unwrap();
    let mut handles = Vec::new();
    for iface in get_if_addrs::get_if_addrs().unwrap() {
        handles.push(::std::thread::spawn(move || {
                                              let ip = iface.ip();
                                              info!("Listening on {}:{} for {}", ip, port, iface.name);
                                              run(ip, port);
                                          }));
    }

    info!("All listeners spawned");

    for handle in handles {
        handle.join().unwrap();
    }
}

pub mod test;

use reqwest::{Client, RedirectPolicy};
use lambda_http::{lambda, RequestExt};
use url::percent_encoding::percent_decode;
use actix_web::{server, App};
use std::thread;
use log::debug;

pub fn run<F>(app: F)
    where F: Fn() -> App + std::marker::Sync + std::marker::Send + 'static + std::clone::Clone
 {
    env_logger::try_init().unwrap_or_default();
    thread::spawn(move || server::new(move || app().finish()).bind("0.0.0.0:3457").unwrap().run());
    // Don't do any redirects because otherwise we lose data between requests
    let client = Client::builder()
        .redirect(RedirectPolicy::none())
        .build()
        .unwrap();
    lambda!(|request: lambda_http::Request, _context| {
        debug!("Req to inner: {:?}", request);
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
        debug!("Uri for inner: {}", uri);
        let mut req = client.clone().request(request.method().clone(), uri);
        for (key, value) in request.headers() {
            req = req.header(key, value);
        }
        for (key, value) in request.query_string_parameters().iter() {
            // ALB encodes the query parameters, and reqwest will do it again, so need to stop doing it twice!
            let mut value = percent_decode(value.as_bytes())
                .decode_utf8()
                .unwrap()
                .to_string();
            value = value.replace("+", " "); // Also need to decode the + characters, which percent_decode doesn't
            debug!("Query param: '{}' = '{}'", key, value);
            req = req.query(&[(key, value)]);
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
        debug!("New req: {:?}", req);
        let mut res = req.send().unwrap();
        debug!("Res: {:?}", res);
        let mut lambda_res = lambda_http::Response::builder();
        lambda_res.status(res.status());
        for (key, value) in res.headers() {
            lambda_res.header(key, value);
        }
        debug!("lambda_res: {:?}", lambda_res);
        Ok(lambda_res.body(res.text().unwrap()).unwrap())
    });
}
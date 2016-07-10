use hyper::client::RequestBuilder;
use json;
use std::io::Read;
use mustache;
use nickel::{Response, MiddlewareResult, MediaType};
use hyper::server::request;
use hyper::header::Cookie;
use std::ops::Deref;
use mustache::MapBuilder;

pub fn json_for_request(rb: RequestBuilder) -> Result<json::JsonValue, String> {
    let mut res = match rb.send() {
        Ok(val) => val,
        Err(_) => {
            return Err("Can't connect to TfL".to_string());
        }
    };
    let mut buffer: String = String::new();
    res.read_to_string(&mut buffer).expect("can't read");
    let obj = match json::parse(&buffer) {
        Ok(val) => val,
        Err(_) => {
            return Err(format!("Bad json: {} ", buffer));
        }
    };
    return Ok(obj);
}

pub fn render_to_response<'a, D>(mut response: Response<'a, D>,
                                 path: &str,
                                 data: &mustache::Data)
                                 -> MiddlewareResult<'a, D> {
    let template = mustache::compile_path(path).expect("working template");
    let mut buffer: Vec<u8> = vec![];
    template.render_data(&mut buffer, data);
    response.set(MediaType::Html);
    response.send(buffer)
}

pub static KEY: &'static str = "favourites";

pub fn favourites(req: &request::Request) -> json::JsonValue {
    let raw_cookies = req.headers.get::<Cookie>();
    let all_cookies = match raw_cookies {
        Some(val) => val.deref(),
        None => return json::JsonValue::new_object(),
    };
    let raw = all_cookies.iter().find(|k| k.name == KEY);
    match raw {
        Some(val) => {
            match json::parse(&val.value) {
                Ok(val) => val,
                Err(_) => json::JsonValue::new_object(),  // assume junk
            }
        }
        None => json::JsonValue::new_object(),
    }
}

pub fn mustache_favourites(req: &request::Request) -> mustache::Data {
    let favourites = favourites(req);
    MapBuilder::new()
        .insert_vec("favourites", |vecbuilder| {
            let mut vecb = vecbuilder;
            for fav in favourites.entries() {
                vecb = vecb.push_map(|mapbuilder| {
                    mapbuilder.insert_str("key", fav.0)
                        .insert_str("value", fav.1)
                });
            }
            vecb
        })
        .build()
}

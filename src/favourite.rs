use nickel::{Request, Response, MiddlewareResult};
use url::form_urlencoded;
use std::io::Read;
use nickel::status::StatusCode;
use hyper::header::{Cookie, SetCookie, Location};
use cookie::Cookie as CookiePair;
use std::ops::Deref;
use json;
use mustache::MapBuilder;
use common;
use hyper::server::request;

fn get_from_post(parse: &mut form_urlencoded::Parse, key: &str) -> Result<String, String> {
    match parse.find(|k| k.0 == key) {
        Some((_, value)) => Ok(value.into_owned()),
        None => Err("No URL in request".to_string()),
    }
}

static KEY: &'static str = "favourites";

fn favourites(req: &request::Request) -> json::JsonValue {
    let all_cookies = req.headers.get::<Cookie>().unwrap().deref();
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

pub fn add_favourite<'a, D>(request: &mut Request<D>,
                            mut response: Response<'a, D>)
                            -> MiddlewareResult<'a, D> {
    let ref mut original_req = request.origin;
    let mut existing = favourites(original_req);
    let mut buffer = String::new();
    original_req.read_to_string(&mut buffer).unwrap();
    let parse = &mut form_urlencoded::parse(buffer.as_bytes());
    let stopid = get_from_post(parse, "stopid");
    let pretty_name = get_from_post(parse, "prettyName");
    existing[stopid.unwrap()] = pretty_name.unwrap().into();
    response.set(SetCookie(vec![CookiePair::new(KEY.to_owned(), existing.dump())]));
    response.set(Location("/favourites".to_string()))
        .set(StatusCode::Found);
    return response.send("");
}

pub fn remove_favourite<'a, D>(request: &mut Request<D>,
                               mut response: Response<'a, D>)
                               -> MiddlewareResult<'a, D> {
    let ref mut original_req = request.origin;
    let mut existing = favourites(original_req);
    let mut buffer = String::new();
    original_req.read_to_string(&mut buffer).unwrap();
    let parse = &mut form_urlencoded::parse(buffer.as_bytes());
    let stopid = get_from_post(parse, "stopid");
    existing.remove(&stopid.unwrap());
    response.set(SetCookie(vec![CookiePair::new(KEY.to_owned(), existing.dump())]));
    response.set(Location("/favourites".to_string()))
        .set(StatusCode::Found);
    return response.send("");
}

pub fn list_favourites<'a, D>(request: &mut Request<D>,
                              response: Response<'a, D>)
                              -> MiddlewareResult<'a, D> {
    let favourites = favourites(&request.origin);
    let data = MapBuilder::new()
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
        .build();
    common::render_to_response(response, "resources/templates/favourites.mustache", &data)
}

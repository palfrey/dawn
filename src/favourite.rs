use common;
use cookie::Cookie as CookiePair;
use hyper::header::{Location, SetCookie};
use json;
use mustache::MapBuilder;
use nickel::status::StatusCode;
use nickel::{MiddlewareResult, Request, Response};
use std::io::Read;
use time;
use url::form_urlencoded;

fn get_from_post(parse: &mut form_urlencoded::Parse, key: &str) -> Result<String, String> {
    match parse.find(|k| k.0 == key) {
        Some((_, value)) => Ok(value.into_owned()),
        None => Err("No URL in request".to_string()),
    }
}

fn set_cookie<'a, D>(response: &mut Response<'a, D>, existing: json::JsonValue) {
    response.set(SetCookie(vec![CookiePair::build(common::KEY, existing.dump())
        .expires(time::now() + time::Duration::days(365))
        .secure(false)
        .http_only(false)
        .finish()
        .to_string()]));
    response
        .set(Location("/favourites".to_string()))
        .set(StatusCode::Found);
}

pub fn add_favourite<'a, D>(
    request: &mut Request<D>,
    mut response: Response<'a, D>,
) -> MiddlewareResult<'a, D> {
    let ref mut original_req = request.origin;
    let mut existing = common::favourites(original_req);
    let mut buffer = String::new();
    original_req.read_to_string(&mut buffer).unwrap();
    let parse = &mut form_urlencoded::parse(buffer.as_bytes());
    let stopid = get_from_post(parse, "stopid");
    let pretty_name = get_from_post(parse, "prettyName");
    existing[stopid.unwrap()] = pretty_name.unwrap().into();
    set_cookie(&mut response, existing);
    return response.send("");
}

pub fn remove_favourite<'a, D>(
    request: &mut Request<D>,
    mut response: Response<'a, D>,
) -> MiddlewareResult<'a, D> {
    let ref mut original_req = request.origin;
    let mut existing = common::favourites(original_req);
    let mut buffer = String::new();
    original_req.read_to_string(&mut buffer).unwrap();
    let parse = &mut form_urlencoded::parse(buffer.as_bytes());
    let stopid = get_from_post(parse, "stopid");
    existing.remove(&stopid.unwrap());
    set_cookie(&mut response, existing);
    return response.send("");
}

pub fn list_favourites<'a, D>(
    request: &mut Request<D>,
    response: Response<'a, D>,
) -> MiddlewareResult<'a, D> {
    let favourites = common::favourites(&request.origin);
    let data = MapBuilder::new()
        .insert_vec("favourites", |vecbuilder| {
            let mut vecb = vecbuilder;
            for fav in favourites.entries() {
                vecb = vecb
                    .push_map(|mapbuilder| mapbuilder.insert_str("key", fav.0).insert_str("value", fav.1));
            }
            vecb
        })
        .build();
    common::render_to_response(response, "resources/templates/favourites.mustache", &data)
}

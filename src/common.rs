use actix_web::{HttpRequest, HttpResponse};
use hyper::header::CONTENT_TYPE;
use json;
use mustache;
use mustache::MapBuilder;
#[cfg(feature = "mocking")]
use reqwest_mock::Client;
use std::collections::HashMap;
#[cfg(feature = "mocking")]
use std::ops::Deref;
use std::sync::Mutex;
use url::percent_encoding;

lazy_static! {
    static ref TEMPLATES: HashMap<&'static str, &'static str> = {
        let mut m = HashMap::new();
        include!(concat!(env!("OUT_DIR"), "/templates.rs"));
        m
    };
}

pub enum ClientType {
    LIVE,
    #[cfg(test)]
    TESTING,
}

lazy_static! {
    static ref CLIENT: Mutex<Option<ClientType>> = Mutex::new(Some(ClientType::LIVE));
}

#[cfg(test)]
pub fn set_client(ct: ClientType) {
    CLIENT.lock().unwrap().replace(ct);
}

#[cfg(feature = "mocking")]
fn get_data(url: &String) -> Result<String, String> {
    let client = match CLIENT.lock().unwrap().deref() {
        Some(ClientType::LIVE) => reqwest_mock::client::GenericClient::direct(),
        #[cfg(test)]
        Some(ClientType::TESTING) => reqwest_mock::client::GenericClient::replay_dir("tests/requests"),
        None => panic!(),
    };
    let res = match client.get(url).send() {
        Ok(val) => val,
        Err(err) => {
            return Err(format!("Can't connect to TfL: {}", err));
        }
    };
    return res.body_to_utf8().map_err(|e| format!("{:?}", e));
}

#[cfg(not(feature = "mocking"))]
fn get_data(url: &String) -> Result<String, String> {
    return reqwest::get(url)
        .and_then(|mut r| r.text())
        .map_err(|e| format!("{:?}", e));
}

pub fn json_for_url(url: &String) -> Result<json::JsonValue, String> {
    let buffer = get_data(url)?;
    let obj = match json::parse(&buffer) {
        Ok(val) => val,
        Err(_) => {
            return Err(format!("Bad json: {} ", buffer));
        }
    };
    return Ok(obj);
}

pub fn render_to_response(path: &str, data: &mustache::Data) -> HttpResponse {
    let template_data = TEMPLATES
        .get(path)
        .expect(&format!("Expected template for {}", path));
    let template = mustache::compile_str(template_data).expect("working template");
    let mut buffer: Vec<u8> = vec![];
    template.render_data(&mut buffer, data).unwrap();
    let mut response = HttpResponse::Ok();
    response.header(CONTENT_TYPE, "text/html");
    response.body(buffer)
}

pub static KEY: &'static str = "favourites";

pub fn favourites(req: &HttpRequest) -> json::JsonValue {
    let cookie = req.cookie(KEY);
    match cookie {
        Some(val) => {
            match json::parse(&val.value()) {
                Ok(val) => val,
                Err(_) => json::JsonValue::new_object(), // assume junk
            }
        }
        None => json::JsonValue::new_object(),
    }
}

pub fn mustache_favourites(req: &HttpRequest) -> mustache::Data {
    let favourites = favourites(req);
    MapBuilder::new()
        .insert_vec("favourites", |vecbuilder| {
            let mut vecb = vecbuilder;
            for fav in favourites.entries() {
                vecb = vecb
                    .push_map(|mapbuilder| mapbuilder.insert_str("key", fav.0).insert_str("value", fav.1));
            }
            vecb
        })
        .build()
}

pub fn query_encode(input: &str) -> String {
    percent_encoding::utf8_percent_encode(input, percent_encoding::QUERY_ENCODE_SET).collect::<String>()
}

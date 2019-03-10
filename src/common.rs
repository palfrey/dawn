use actix_web::{HttpRequest, HttpResponse};
use hyper::header::CONTENT_TYPE;
use json;
use mustache;
use mustache::MapBuilder;
use url::percent_encoding;
use reqwest_mock::{Client, StubClient, StubSettings, StubDefault, StubStrictness};
use std::sync::Mutex;
use std::ops::Deref;
use std::env;

pub enum ClientType {
    LIVE,
    TESTING
}

lazy_static! {
    static ref CLIENT: Mutex<Option<ClientType>> = Mutex::new(Some(ClientType::LIVE));
}

pub fn set_client(ct: ClientType) {
    CLIENT.lock().unwrap().replace(ct);
}

pub fn json_for_url(url: &String) -> Result<json::JsonValue, String> {
    let client = match CLIENT.lock().unwrap().deref() {
        Some(ClientType::LIVE) => reqwest_mock::client::GenericClient::direct(),
        Some(ClientType::TESTING) => {
            if env::var("RECORDING").is_ok() {
                reqwest_mock::client::GenericClient::replay_dir("tests/requests")
            } else {
                reqwest_mock::client::GenericClient::stub(StubClient::new(StubSettings {
                    default: StubDefault::Error,
                    strictness: StubStrictness::MethodUrl,
                }))
            }
        }
        None => panic!(),
    };
    let res = match client.get(url).send() {
        Ok(val) => val,
        Err(err) => {
            return Err(format!("Can't connect to TfL: {}", err));
        }
    };
    let buffer: String = res.body_to_utf8().unwrap();
    let obj = match json::parse(&buffer) {
        Ok(val) => val,
        Err(_) => {
            return Err(format!("Bad json: {} ", buffer));
        }
    };
    return Ok(obj);
}

pub fn render_to_response(path: &str, data: &mustache::Data) -> HttpResponse {
    let template = mustache::compile_path(path).expect("working template");
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

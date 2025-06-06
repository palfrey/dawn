use actix_web::http::header::CONTENT_TYPE;
use actix_web::{HttpRequest, HttpResponse};
use lazy_static::lazy_static;
use mustache;
use mustache::MapBuilder;
use percent_encoding;
use serde_json::json;
use std::collections::HashMap;
use std::ops::Deref;
use std::sync::Mutex;

lazy_static! {
    static ref TEMPLATES: HashMap<&'static str, &'static str> = {
        let mut m = HashMap::new();
        include!(concat!(env!("OUT_DIR"), "/templates.rs"));
        m
    };
}

lazy_static! {
    static ref TFL_ROOT: Mutex<Option<String>> = Mutex::new(None);
}

#[cfg(test)]
pub fn set_client(new_tfl_root: &str) {
    let _ = TFL_ROOT.lock().unwrap().insert(String::from(new_tfl_root));
}

async fn get_data(url: &str) -> Result<String, String> {
    let mut real_url = url.to_string();
    if let Some(replacement) = TFL_ROOT.lock().unwrap().deref() {
        real_url = real_url.replace("https://api.tfl.gov.uk", replacement);
    }
    let client = reqwest::Client::new();
    let res = match client.get(real_url).send().await {
        Ok(val) => val,
        Err(err) => {
            return Err(format!("Can't connect to TfL: {}", err));
        }
    };
    return res.text().await.map_err(|e| format!("{:?}", e));
}

pub async fn json_for_url(url: &String) -> Result<serde_json::Value, String> {
    let buffer = get_data(url).await?;
    let obj = match serde_json::from_str(&buffer) {
        Ok(val) => val,
        Err(_) => {
            return Err(format!("Bad json for {}: {} ", url, buffer));
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
    response.append_header((CONTENT_TYPE, "text/html"));
    response.body(buffer)
}

pub static KEY: &'static str = "favourites";

pub fn favourites(req: &HttpRequest) -> serde_json::Value {
    let cookie = req.cookie(KEY);
    match cookie {
        Some(val) => {
            match serde_json::from_str(&val.value()) {
                Ok(val) => val,
                Err(_) => json!({}), // assume junk
            }
        }
        None => json!({}),
    }
}

pub fn mustache_favourites(req: &HttpRequest) -> mustache::Data {
    let favourites = favourites(req);
    MapBuilder::new()
        .insert_vec("favourites", |vecbuilder| {
            let mut vecb = vecbuilder;
            for fav in favourites.as_object().unwrap() {
                vecb = vecb.push_map(|mapbuilder| {
                    mapbuilder
                        .insert_str("key", fav.0)
                        .insert_str("value", fav.1.as_str().unwrap())
                });
            }
            vecb
        })
        .build()
}

pub fn query_encode(input: &str) -> String {
    percent_encoding::utf8_percent_encode(input, percent_encoding::CONTROLS).collect::<String>()
}

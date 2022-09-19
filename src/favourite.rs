use crate::common;
use actix_web::http::header::LOCATION;
use actix_web::{http::StatusCode, web::Form, HttpRequest, HttpResponse, HttpResponseBuilder};
use cookie::time;
use cookie::Cookie as CookiePair;
use mustache::MapBuilder;
use serde::Deserialize;
use serde_json::json;

fn set_cookie(response: &mut HttpResponseBuilder, existing: serde_json::Value) {
    response.cookie(
        CookiePair::build(common::KEY, serde_json::to_string(&existing).unwrap())
            .expires(time::OffsetDateTime::now_utc() + time::Duration::days(365))
            .secure(false)
            .http_only(false)
            .finish(),
    );
    response.append_header((LOCATION, "/favourites"));
    response.status(StatusCode::FOUND);
}

#[derive(Deserialize)]
pub struct AddFavouriteData {
    stopid: String,
    #[serde(rename = "prettyName")]
    pretty_name: String,
}

pub async fn add_favourite((req, form): (HttpRequest, Form<AddFavouriteData>)) -> HttpResponse {
    let mut existing = common::favourites(&req);
    existing[&form.stopid] = serde_json::from_str(&form.pretty_name.clone()).unwrap();
    let mut response = HttpResponse::Ok();
    set_cookie(&mut response, existing);
    response.body("")
}

#[derive(Deserialize)]
pub struct RemoveFavouriteData {
    stopid: String,
}

pub async fn remove_favourite((req, form): (HttpRequest, Form<RemoveFavouriteData>)) -> HttpResponse {
    let mut existing = common::favourites(&req);
    existing
        .as_array_mut()
        .unwrap()
        .retain(|x| x != &json!(&form.stopid));
    let mut response = HttpResponse::Ok();
    set_cookie(&mut response, existing);
    response.body("")
}

pub async fn list_favourites(request: HttpRequest) -> HttpResponse {
    let favourites = common::favourites(&request);
    let data = MapBuilder::new()
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
        .build();
    common::render_to_response("resources/templates/favourites.mustache", &data)
}

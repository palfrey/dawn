use crate::common;
use actix_web::http::header::{LOCATION, SET_COOKIE};
use actix_web::{dev::HttpResponseBuilder, http::StatusCode, web::Form, HttpRequest, HttpResponse};
use cookie::Cookie as CookiePair;
use json;
use mustache::MapBuilder;
use serde::Deserialize;
use time;

fn set_cookie(response: &mut HttpResponseBuilder, existing: json::JsonValue) {
    response.header(
        SET_COOKIE,
        CookiePair::build(common::KEY, existing.dump())
            .expires(time::now() + time::Duration::days(365))
            .secure(false)
            .http_only(false)
            .finish()
            .to_string(),
    );
    response.header(LOCATION, "/favourites");
    response.status(StatusCode::FOUND);
}

#[derive(Deserialize)]
pub struct AddFavouriteData {
    stopid: String,
    #[serde(rename = "prettyName")]
    pretty_name: String,
}

pub fn add_favourite((req, form): (HttpRequest, Form<AddFavouriteData>)) -> HttpResponse {
    let mut existing = common::favourites(&req);
    existing[&form.stopid] = json::from(form.pretty_name.clone());
    let mut response = HttpResponse::Ok();
    set_cookie(&mut response, existing);
    response.body("")
}

#[derive(Deserialize)]
pub struct RemoveFavouriteData {
    stopid: String,
}

pub fn remove_favourite((req, form): (HttpRequest, Form<RemoveFavouriteData>)) -> HttpResponse {
    let mut existing = common::favourites(&req);
    existing.remove(&form.stopid);
    let mut response = HttpResponse::Ok();
    set_cookie(&mut response, existing);
    response.body("")
}

pub fn list_favourites(request: HttpRequest) -> HttpResponse {
    let favourites = common::favourites(&request);
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
    common::render_to_response("resources/templates/favourites.mustache", &data)
}

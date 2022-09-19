use crate::common;
use actix_web::http::header::LOCATION;
use actix_web::{HttpResponseBuilder, http::StatusCode, web::Form, HttpRequest, HttpResponse};
use cookie::Cookie as CookiePair;
use cookie::time;
use json;
use mustache::MapBuilder;
use serde::Deserialize;

fn set_cookie(response: &mut HttpResponseBuilder, existing: json::JsonValue) {
    response.cookie(
        CookiePair::build(common::KEY, existing.dump())
            .expires(time::OffsetDateTime::now_utc() + time::Duration::days(365))
            .secure(false)
            .http_only(false)
            .finish()
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
    existing[&form.stopid] = json::from(form.pretty_name.clone());
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
    existing.remove(&form.stopid);
    let mut response = HttpResponse::Ok();
    set_cookie(&mut response, existing);
    response.body("")
}

pub async fn list_favourites(request: HttpRequest) -> HttpResponse {
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

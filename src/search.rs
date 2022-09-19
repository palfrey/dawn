use crate::common;
use actix_web::http::header::LOCATION;
use actix_web::{http::StatusCode, web::Query, HttpResponse};
use mustache::MapBuilder;
use serde::Deserialize;

#[derive(Deserialize)]
pub struct SearchQuery {
    query: String,
}

pub async fn search_handler(request: Query<SearchQuery>) -> HttpResponse {
    let url = &format!(
        "https://api.tfl.gov.uk/StopPoint/Search/{}?modes=bus,replacement-bus",
        &request.query
    );
    let obj = match common::json_for_url(url).await {
        Ok(val) => val,
        Err(val) => {
            let mut response = HttpResponse::Ok();
            response.status(StatusCode::BAD_GATEWAY);
            return response.body(val);
        }
    };

    if obj["matches"].as_array().unwrap().len() == 1 {
        let stop = &obj["matches"].as_array().unwrap()[0];
        let mut response = HttpResponse::Ok();
        response.append_header((LOCATION, format!("/id/{}", stop["id"].as_str().unwrap())));
        response.status(StatusCode::PERMANENT_REDIRECT);
        return response.body("");
    }
    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for stop in obj["matches"].as_array().unwrap() {
                vecb = vecb.push_map(|mapbuilder| {
                    let name = stop["name"].as_str().unwrap();
                    mapbuilder
                        .insert_str("id", stop["id"].as_str().unwrap())
                        .insert_str("name", name)
                        .insert_str("escaped_name", common::query_encode(name))
                });
            }
            vecb
        })
        .insert_str("query", &request.query)
        .build();
    common::render_to_response("resources/templates/search.mustache", &data)
}

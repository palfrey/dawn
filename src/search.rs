use actix_web::{http::StatusCode, HttpResponse, Query};
use common;
use hyper::header::LOCATION;
use mustache::MapBuilder;

#[derive(Deserialize)]
pub struct SearchQuery {
    query: String,
}

pub fn search_handler(request: Query<SearchQuery>) -> HttpResponse {
    let url = &format!(
        "https://api.tfl.gov.uk/StopPoint/Search/{}?modes=bus,replacement-bus",
        &request.query
    );
    let obj = match common::json_for_url(url) {
        Ok(val) => val,
        Err(val) => {
            let mut response = HttpResponse::Ok();
            response.status(StatusCode::BAD_GATEWAY);
            return response.body(val);
        }
    };

    if obj["matches"].members().count() == 1 {
        let stop = obj["matches"].members().nth(0).unwrap();
        let mut response = HttpResponse::Ok();
        response.header(LOCATION, format!("/id/{}", stop["id"].as_str().unwrap()));
        response.status(StatusCode::PERMANENT_REDIRECT);
        return response.body("");
    }
    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for stop in obj["matches"].members() {
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
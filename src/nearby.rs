use crate::common;
use actix_web::{http::StatusCode, web::Query, HttpResponse};
use mustache::MapBuilder;
use serde::Deserialize;

#[derive(Deserialize)]
pub struct LocationQuery {
    latitude: f32,
    longitude: f32,
}

pub async fn nearby_handler(query: Query<LocationQuery>) -> HttpResponse {
    let url = &format!(
        "https://api.tfl.gov.\
         uk/StopPoint?lat={}&lon={}\
         &stopTypes=NaptanPublicBusCoachTram&radius=500",
        query.latitude, query.longitude
    );
    let obj = match common::json_for_url(url).await {
        Ok(val) => val,
        Err(val) => {
            return HttpResponse::Ok().status(StatusCode::BAD_GATEWAY).body(val);
        }
    };

    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for stop in obj["stopPoints"].members() {
                vecb = vecb.push_map(|mapbuilder| {
                    let letter = match stop["stopLetter"].as_str() {
                        Some(val) => format!(" ({})", val),
                        None => "".to_string(),
                    };
                    let direction = stop["additionalProperties"]
                        .members()
                        .find(|p| p["key"] == "Towards")
                        .map_or("".to_string(), |v| {
                            format!("towards {}", v["value"].as_str().unwrap_or(""))
                        });
                    let name = stop["commonName"].as_str().unwrap();
                    mapbuilder
                        .insert_str("id", stop["naptanId"].as_str().unwrap())
                        .insert_str("direction", direction)
                        .insert_str("name", name)
                        .insert_str(
                            "escaped_name",
                            common::query_encode(&format!("{}{}", name, letter)),
                        )
                        .insert_str("stop", letter)
                });
            }
            vecb
        })
        .insert_str("query", "Nearby stops")
        .build();
    common::render_to_response("resources/templates/search.mustache", &data)
}

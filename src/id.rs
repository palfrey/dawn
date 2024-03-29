use std::collections::HashMap;

use crate::common;
use actix_web::http::header::LOCATION;
use actix_web::{http::StatusCode, web::Path, web::Query, HttpResponse};
use mustache::Data;
use mustache::MapBuilder;
use serde::Deserialize;

#[derive(Deserialize)]
pub struct IdQuery {
    name: Option<String>,
}

pub async fn id_handler((path, query): (Path<(String,)>, Query<IdQuery>)) -> HttpResponse {
    let obj = match common::json_for_url(&format!("https://api.tfl.gov.uk/StopPoint/{}", &path.0)).await {
        Ok(val) => val,
        Err(val) => {
            return HttpResponse::Ok().status(StatusCode::BAD_GATEWAY).body(val);
        }
    };

    let mut response = HttpResponse::Ok();
    let direct_name = query.name.clone().unwrap_or(String::from(""));
    let mut early_quit = false;
    let mut first_arrivals: HashMap<String, serde_json::Value> = HashMap::new();
    for naptan_id in obj["lineGroup"]
        .as_array()
        .unwrap()
        .into_iter()
        .map(|x| x["naptanIdReference"].as_str().unwrap_or(""))
    {
        if naptan_id == "" {
            continue;
        }
        let stopobj = match common::json_for_url(&format!(
            "https://api.tfl.gov.uk/StopPoint/{}/Arrivals",
            naptan_id
        ))
        .await
        {
            Ok(val) => val,
            Err(_) => continue,
        };
        let first_arrival = stopobj.as_array().and_then(|v| v.get(0));
        if let Some(val) = first_arrival {
            first_arrivals.insert(naptan_id.to_string(), val.clone());
        }
    }
    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for (naptan_id, val) in &first_arrivals {
                vecb = vecb.push_map(|mapbuilder| {
                    let platform_name = val["platformName"].as_str().unwrap();
                    let stop_name = val["stationName"].as_str().unwrap();
                    let stop_number = if platform_name == "null" {
                        format!(" towards {}", val["destinationName"].as_str().unwrap())
                    } else {
                        let possible_direct = format!("{} ({})", stop_name, platform_name);
                        if direct_name == possible_direct {
                            response.append_header((LOCATION, format!("/arrivals/{}", naptan_id)));
                            response.status(StatusCode::TEMPORARY_REDIRECT);
                            early_quit = true;
                            return mapbuilder;
                        }

                        format!(" (Stop {})", platform_name)
                    };

                    mapbuilder
                        .insert_str("id", naptan_id)
                        .insert_str("stopName", stop_name)
                        .insert_str("stopNumber", stop_number)
                })
            }
            vecb
        })
        .insert_str("query", obj["commonName"].as_str().unwrap())
        .build();
    if early_quit {
        return response.body("");
    }
    if let Data::Map(ref hash) = data {
        if let Data::Vec(ref stops) = hash["stops"] {
            if stops.len() == 1 {
                if let Data::Map(ref stop) = stops[0] {
                    if let Data::String(ref id) = stop["id"] {
                        response.append_header((LOCATION, format!("/arrivals/{}", id)));
                        response.status(StatusCode::PERMANENT_REDIRECT);
                        return response.body("");
                    }
                }
            }
        }
    }
    common::render_to_response("resources/templates/multiple-id.mustache", &data)
}

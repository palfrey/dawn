use crate::common;
use actix_web::{http::StatusCode, web::Path, web::Query, HttpRequest, HttpResponse};
use itertools::Itertools;
use json;
use mustache::MapBuilder;
use serde::Deserialize;
use std::collections::HashSet;
use time;

#[derive(Deserialize)]
pub struct ArrivalsQuery {
    line: Option<String>,
}

pub fn arrivals_handler(
    (req, path, query): (HttpRequest, Path<(String,)>, Query<ArrivalsQuery>),
) -> HttpResponse {
    let favourites = common::favourites(&req);
    let stopid = &path.0;
    let line_filter = &query.line;
    let mut response = HttpResponse::Ok();
    let obj = match common::json_for_url(&format!("https://api.tfl.gov.uk/StopPoint/{}/Arrivals", stopid)) {
        Ok(val) => val,
        Err(val) => {
            response.status(StatusCode::BAD_GATEWAY);
            return response.body(val);
        }
    };
    let members = obj.members();
    let member_slice = members.as_slice();
    if member_slice.is_empty() {
        response.status(StatusCode::BAD_GATEWAY);
        return response.body(format!("No stops in: {:?}", obj));
    }
    let data = {
        if member_slice.len() == 0 {
            let stopobj = match common::json_for_url(&format!("https://api.tfl.gov.uk/StopPoint/{}", stopid))
            {
                Ok(val) => val,
                Err(val) => {
                    response.status(StatusCode::BAD_GATEWAY);
                    return response.body(val);
                }
            };
            MapBuilder::new()
                .insert_str("stopName", stopobj["commonName"].as_str().expect("commonName"))
                .insert_str("stopNumber", "".to_string())
                .insert_str("when", time::now().strftime("%H:%M").expect("time.now"))
                .build()
        } else {
            let last_item = member_slice[0].clone();
            let sorted_members = members.sorted_by(|a, b| {
                a["expectedArrival"]
                    .as_str()
                    .expect("expectedArrival a")
                    .cmp(b["expectedArrival"].as_str().expect("expectedArrival a"))
            });
            let platform_name = last_item["platformName"].as_str().expect("platformName");
            let stop_number = if platform_name == "null" {
                format!(
                    " towards {}",
                    last_item["destinationName"].as_str().expect("destinationName")
                )
            } else {
                format!(" (Stop {})", platform_name)
            };

            let mut lines = HashSet::new();
            MapBuilder::new()
                .insert_vec("buses", |vecbuilder| {
                    let mut vecb = vecbuilder;
                    let lf = line_filter.clone().unwrap_or(String::from(""));
                    for stop in sorted_members.clone() {
                        let line = stop["lineName"].as_str().expect("lineName");
                        lines.insert(line);
                        if lf != "" && lf != line {
                            continue;
                        }
                        vecb = vecb.push_map(|mapbuilder| {
                            let expected_arrival = stop["expectedArrival"].as_str().expect("expectedArrival");
                            let when = time::strptime(expected_arrival, "%FT%TZ")
                                .expect(&format!("strptime: {}", expected_arrival));
                            let until = (when - time::now()).num_minutes();
                            let until_text = if until == 1 {
                                "1 minute".to_string()
                            } else if until > 0 {
                                format!("{} minutes", until)
                            } else {
                                "due".to_string()
                            };
                            mapbuilder
                                .insert_str("line", line)
                                .insert_str(
                                    "destination",
                                    stop["destinationName"].as_str().expect("destinationName"),
                                )
                                .insert_str("towards", stop["towards"].as_str().expect("towards"))
                                .insert_str("minutes", until_text)
                                .insert_str(
                                    "expectedArrival",
                                    when.to_local().strftime("%H:%M").expect("when"),
                                )
                        });
                    }
                    vecb
                })
                .insert_vec("lines", |vecbuilder| {
                    let mut vecb = vecbuilder;
                    let mut linesv: Vec<&&str> = lines.iter().collect();
                    linesv.sort_by_key(|k| k.parse::<i32>().unwrap_or(0));
                    for line in linesv {
                        vecb = vecb.push_map(|mapbuilder| mapbuilder.insert_str("line", line))
                    }
                    vecb
                })
                .insert_str("stopId", stopid)
                .insert_bool("inFavourites", favourites[stopid] != json::JsonValue::Null)
                .insert_str(
                    "stopName",
                    last_item["stationName"].as_str().expect("stationName"),
                )
                .insert_str("stopNumber", stop_number)
                .insert_str("when", time::now().strftime("%H:%M").expect("time now"))
                .build()
        }
    };

    common::render_to_response("resources/templates/arrivals.mustache", &data)
}

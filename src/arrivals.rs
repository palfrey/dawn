use common;
use itertools::Itertools;
use json;
use mustache::MapBuilder;
use nickel::{Request, Response, MiddlewareResult, QueryString};
use nickel::status::StatusCode;
use std::collections::HashSet;
use time;

pub fn arrivals_handler<'a, D>(request: &mut Request<D>,
                               mut response: Response<'a, D>)
                               -> MiddlewareResult<'a, D> {
    let client = common::hyper_client();
    let favourites = common::favourites(&request.origin);
    let stopid = request.param("stopid").expect("Missing stopid").to_string();
    let line_filter = request.query().get("line");
    let obj = match common::json_for_request(client.get(&format!("https://api.tfl.gov.uk/StopPoint/{}/Arrivals",
                                                       stopid))) {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
        }
    };
    let members = obj.members();
    let member_slice = members.as_slice();
    if member_slice.is_empty() {
        response.set(StatusCode::BadGateway);
        return response.send(format!("No stops in: {:?}", obj));
    }
    let data = {
        if member_slice.len() == 0 {
            let stopobj = match common::json_for_request(client.get(&format!("https://api.tfl.gov.uk/StopPoint/{}",
                                                               stopid))) {
                Ok(val) => val,
                Err(val) => {
                    response.set(StatusCode::BadGateway);
                    return response.send(val);
                }
            };
            MapBuilder::new()
                .insert_str("stopName",
                            stopobj["commonName"].as_str().expect("commonName"))
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
                format!(" towards {}",
                        last_item["destinationName"].as_str().expect("destinationName"))
            } else {
                format!(" (Stop {})", platform_name)
            };

            let mut lines = HashSet::new();
            MapBuilder::new()
                .insert_vec("buses", |vecbuilder| {
                    let mut vecb = vecbuilder;
                    for stop in sorted_members.clone() {
                        let line = stop["lineName"].as_str().expect("lineName");
                        lines.insert(line);
                        if line_filter.is_some() && line_filter.expect("line filter") != line {
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
                            mapbuilder.insert_str("line", line)
                                .insert_str("destination",
                                            stop["destinationName"].as_str().expect("destinationName"))
                                .insert_str("towards", stop["towards"].as_str().expect("towards"))
                                .insert_str("minutes", until_text)
                                .insert_str("expectedArrival",
                                            when.to_local().strftime("%H:%M").expect("when"))
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
                .insert_str("stopId", &stopid)
                .insert_bool("inFavourites", favourites[&stopid] != json::JsonValue::Null)
                .insert_str("stopName",
                            last_item["stationName"].as_str().expect("stationName"))
                .insert_str("stopNumber", stop_number)
                .insert_str("when", time::now().strftime("%H:%M").expect("time now"))
                .build()
        }
    };

    common::render_to_response(response, "resources/templates/arrivals.mustache", &data)
}

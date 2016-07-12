use common;
use json::iterators::Members;
use nickel::status::StatusCode;
use hyper::client::Client;
use nickel::{Request, Response, MiddlewareResult, QueryString};
use mustache::MapBuilder;
use time;
use itertools::Itertools;
use json;
use std::collections::HashSet;

pub fn arrivals_handler<'a, D>(request: &mut Request<D>,
                               mut response: Response<'a, D>)
                               -> MiddlewareResult<'a, D> {
    let client = Client::new();
    let favourites = common::favourites(&request.origin);
    let stopid = request.param("stopid").expect("Missing stopid").to_string();
    let line_filter = request.query().get("line");
    let obj =
        match common::json_for_request(
            client.get(&format!("https://api.tfl.gov.uk/StopPoint/{}/Arrivals",
                          stopid))) {
            Ok(val) => val,
            Err(val) => {
                response.set(StatusCode::BadGateway);
                return response.send(val);
            }
        };

    let members = match obj.members() {
        Members::Some(val) => val,
        Members::None => {
            response.set(StatusCode::BadGateway);
            return response.send(format!("No stops in: {:?}", obj));
        }
    };
    let member_slice = members.as_slice();
    let data = {
        if member_slice.len() == 0 {
            let stopobj = match common::json_for_request(
                client.get(&format!("https://api.tfl.gov.uk/StopPoint/{}",
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
                a["expectedArrival"].as_str().unwrap().cmp(b["expectedArrival"].as_str().unwrap())
            });
            let platform_name = last_item["platformName"].as_str().unwrap();
            let stop_number = if platform_name == "null" {
                "".to_string()
            } else {
                format!(" (Stop {})", platform_name)
            };

            let mut lines = HashSet::new();
            MapBuilder::new()
                .insert_vec("buses", |vecbuilder| {
                    let mut vecb = vecbuilder;
                    for stop in sorted_members.clone() {
                        let line = stop["lineName"].as_str().unwrap();
                        lines.insert(line);
                        if line_filter.is_some() && line_filter.unwrap() != line {
                            continue;
                        }
                        vecb = vecb.push_map(|mapbuilder| {
                            let when = time::strptime(stop["expectedArrival"].as_str().unwrap(),
                                                      "%FT%TZ")
                                .unwrap();
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
                                            stop["destinationName"].as_str().unwrap())
                                .insert_str("towards", stop["towards"].as_str().unwrap())
                                .insert_str("minutes", until_text)
                                .insert_str("expectedArrival",
                                            when.to_local().strftime("%H:%M").unwrap())
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
                .insert_str("stopName", last_item["stationName"].as_str().unwrap())
                .insert_str("stopNumber", stop_number)
                .insert_str("when", time::now().strftime("%H:%M").unwrap())
                .build()
        }
    };

    common::render_to_response(response, "resources/templates/arrivals.mustache", &data)
}

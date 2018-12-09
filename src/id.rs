use common;
use hyper::header::Location;
use mustache::Data;
use mustache::MapBuilder;
use nickel::status::StatusCode;
use nickel::{MiddlewareResult, QueryString, Request, Response};

pub fn id_handler<'a, D>(request: &mut Request<D>, mut response: Response<'a, D>) -> MiddlewareResult<'a, D> {
    let client = common::hyper_client();
    let id_query = String::from(request.param("id").expect("Missing id"));
    let url = &format!("https://api.tfl.gov.uk/StopPoint/{}", id_query);
    let obj = match common::json_for_request(client.get(url)) {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
        }
    };

    let direct_name = request.query().get("name").unwrap_or("");
    let mut early_quit = false;
    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for naptan_id in obj["lineGroup"]
                .members()
                .into_iter()
                .map(|x| x["naptanIdReference"].as_str().unwrap_or(""))
            {
                if naptan_id == "" {
                    continue;
                }
                let stopobj = match common::json_for_request(client.get(&format!(
                    "https://api.tfl.gov.uk/StopPoint/{}/Arrivals",
                    naptan_id
                ))) {
                    Ok(val) => val,
                    Err(_) => continue,
                };
                let first_arrival = stopobj.members().nth(0);
                if let Some(val) = first_arrival {
                    vecb = vecb.push_map(|mapbuilder| {
                        let platform_name = val["platformName"].as_str().unwrap();
                        let stop_name = val["stationName"].as_str().unwrap();
                        let stop_number = if platform_name == "null" {
                            format!(" towards {}", val["destinationName"].as_str().unwrap())
                        } else {
                            let possible_direct = format!("{} ({})", stop_name, platform_name);
                            if direct_name == possible_direct {
                                response
                                    .set(Location(format!("/arrivals/{}", naptan_id)))
                                    .set(StatusCode::TemporaryRedirect);
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
            }
            vecb
        })
        .insert_str("query", obj["commonName"].as_str().unwrap())
        .build();
    if early_quit {
        return response.send("");
    }
    if let Data::Map(ref hash) = data {
        if let Data::VecVal(ref stops) = hash["stops"] {
            if stops.len() == 1 {
                if let Data::Map(ref stop) = stops[0] {
                    if let Data::StrVal(ref id) = stop["id"] {
                        response
                            .set(Location(format!("/arrivals/{}", id)))
                            .set(StatusCode::MovedPermanently);
                        return response.send("");
                    }
                }
            }
        }
    }
    common::render_to_response(response, "resources/templates/multiple-id.mustache", &data)
}

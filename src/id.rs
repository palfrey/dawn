use nickel::{Request, Response, MiddlewareResult};
use hyper::client::Client;
use common;
use nickel::status::StatusCode;
use hyper::header::Location;
use mustache::MapBuilder;
use mustache::Data;

pub fn id_handler<'a, D>(request: &mut Request<D>,
                         mut response: Response<'a, D>)
                         -> MiddlewareResult<'a, D> {
    let client = Client::new();
    let id_query = request.param("id").expect("Missing id");
    let url = &format!("https://api.tfl.gov.uk/StopPoint/{}", id_query);
    let obj = match common::json_for_request(client.get(url)) {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
        }
    };

    for line_group in obj["lineGroup"].members() {
        if line_group["naptanIdReference"].as_str().unwrap_or("") == id_query {
            response.set(Location(format!("/arrivals/{}", line_group["naptanIdReference"])))
                .set(StatusCode::MovedPermanently);
            return response.send("");
        }
    }

    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for naptan_id in obj["lineGroup"]
                .members()
                .into_iter()
                .map(|x| x["naptanIdReference"].as_str().unwrap_or("")) {
                if naptan_id == "" {
                    continue;
                }
                let stopobj =
            match common::json_for_request(
                client.get(&format!("https://api.tfl.gov.uk/StopPoint/{}/Arrivals",
                              naptan_id))) {
                Ok(val) => val,
                Err(_) => continue
            };
                let first_arrival = stopobj.members().nth(0);
                if let Some(val) = first_arrival {
                    vecb = vecb.push_map(|mapbuilder| {
                        let platform_name = val["platformName"].as_str().unwrap();
                        let stop_number = if platform_name == "null" {
                            format!(" towards {}", val["destinationName"].as_str().unwrap())
                        } else {
                            format!(" (Stop {})", platform_name)
                        };
                        mapbuilder.insert_str("id", naptan_id)
                            .insert_str("stopName", val["stationName"].as_str().unwrap())
                            .insert_str("stopNumber", stop_number)
                    })
                }
            }
            vecb
        })
        .insert_str("query", obj["commonName"].as_str().unwrap())
        .build();
    if let Data::Map(ref hash) = data {
        if let Data::VecVal(ref stops) = hash["stops"] {
            if stops.len() == 1 {
                if let Data::Map(ref stop) = stops[0] {
                    if let Data::StrVal(ref id) = stop["id"] {
                        response.set(Location(format!("/id/{}", id)))
                            .set(StatusCode::MovedPermanently);
                        return response.send("");
                    }
                }
            }
        }
    }
    common::render_to_response(response, "resources/templates/multiple-id.mustache", &data)
}

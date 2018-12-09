use common;
use mustache::MapBuilder;
use nickel::status::StatusCode;
use nickel::{MiddlewareResult, QueryString, Request, Response};

pub fn nearby_handler<'a, D>(
    request: &mut Request<D>,
    mut response: Response<'a, D>,
) -> MiddlewareResult<'a, D> {
    let client = common::hyper_client();
    let query = request.query();
    let latitude = query.get("latitude").expect("Missing latitude");
    let longitude = query.get("longitude").expect("Missing longitude");
    let url = &format!(
        "https://api.tfl.gov.\
         uk/StopPoint?lat={}&lon={}\
         &stopTypes=NaptanPublicBusCoachTram&radius=500",
        latitude, longitude
    );
    let obj = match common::json_for_request(client.get(url)) {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
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
    common::render_to_response(response, "resources/templates/search.mustache", &data)
}

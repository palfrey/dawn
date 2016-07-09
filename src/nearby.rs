use hyper::client::Client;
use nickel::{Request, Response, MiddlewareResult, QueryString};
use common;
use nickel::status::StatusCode;
use mustache::MapBuilder;

pub fn nearby_handler<'a, D>(request: &mut Request<D>,
                             mut response: Response<'a, D>)
                             -> MiddlewareResult<'a, D> {
    let client = Client::new();
    let query = request.query();
    let latitude = query.get("latitude").expect("Missing latitude");
    let longitude = query.get("longitude").expect("Missing longitude");
    let url = &format!("https://api.tfl.gov.\
                        uk/StopPoint?lat={}&lon={}\
                        &stopTypes=NaptanOnstreetBusCoachStopPair&radius=300",
                       latitude,
                       longitude);
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
            for stopgroup in obj["stopPoints"].members() {
                for stop in stopgroup["children"].members() {
                    vecb = vecb.push_map(|mapbuilder| {
                        let letter = match stop["stopLetter"].as_str() {
                            Some(val) => format!(" ({})", val),
                            None => "".to_string(),
                        };
                        mapbuilder.insert_str("id", stop["naptanId"].as_str().unwrap())
                            .insert_str("stop", letter)
                            .insert_str("name", stop["commonName"].as_str().unwrap())
                    });
                }
            }
            vecb
        })
        .insert_str("query", "Nearby stops")
        .build();
    common::render_to_response(response, "resources/templates/search.mustache", &data)
}

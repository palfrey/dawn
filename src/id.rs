use nickel::{Request, Response, MiddlewareResult};
use hyper::client::Client;
use common;
use nickel::status::StatusCode;
use hyper::header::Location;
use json;

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
        if line_group["stationAtcoCode"].as_str().unwrap_or("") == id_query ||
           line_group["naptanIdReference"].as_str().unwrap_or("") == id_query {
            response.set(Location(format!("/arrivals/{}", line_group["naptanIdReference"])))
                .set(StatusCode::PermanentRedirect);
            return response.send("");
        }
    }
    response.send(json::stringify(obj))
}

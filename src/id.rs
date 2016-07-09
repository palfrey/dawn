use nickel::{Request, Response, MiddlewareResult};
use hyper::client::Client;
use common;
use nickel::status::StatusCode;
use json;
use hyper::header::Location;

pub fn id_handler<'a, D>(request: &mut Request<D>,
                         mut response: Response<'a, D>)
                         -> MiddlewareResult<'a, D> {
    let client = Client::new();
    let query = request.param("id").expect("Missing id");
    let url = &format!("https://api.tfl.gov.uk/StopPoint/{}", query);
    let obj = match common::json_for_request(client.get(url)) {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
        }
    };

    let id = &obj["lineGroup"][0]["naptanIdReference"];
    match id {
        &json::JsonValue::Null => panic!("null!"),
        &json::JsonValue::String(ref val) => {
            response.set(Location(format!("/arrivals/{}", val)))
                .set(StatusCode::PermanentRedirect);
        }
        _ => panic!("Something else!"),
    };
    response.send("")
}

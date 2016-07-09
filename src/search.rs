use nickel::{Request, Response, MiddlewareResult, QueryString};
use hyper::client::Client;
use common;
use mustache::MapBuilder;
use nickel::status::StatusCode;
use hyper::header::Location;

pub fn search_handler<'a, D>(request: &mut Request<D>,
                             mut response: Response<'a, D>)
                             -> MiddlewareResult<'a, D> {
    let client = Client::new();
    let query = request.query().get("query").expect("Missing query");
    let url = &format!("https://api.tfl.gov.uk/StopPoint/Search/{}?modes=bus,replacement-bus",
                       query);
    let obj = match common::json_for_request(client.get(url)) {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
        }
    };

    if obj["matches"].members().count() == 1 {
        let stop = obj["matches"].members().nth(0).unwrap();
        response.set(Location(format!("/id/{}", stop["id"].as_str().unwrap())))
            .set(StatusCode::PermanentRedirect);
        return response.send("");
    }
    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for stop in obj["matches"].members() {
                vecb = vecb.push_map(|mapbuilder| {
                    mapbuilder.insert_str("id", stop["id"].as_str().unwrap())
                        .insert_str("name", stop["name"].as_str().unwrap())
                });
            }
            vecb
        })
        .insert_str("query", query)
        .build();
    common::render_to_response(response, "resources/templates/search.mustache", &data)
}

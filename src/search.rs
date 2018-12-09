use common;
use hyper::header::Location;
use mustache::MapBuilder;
use nickel::status::StatusCode;
use nickel::{MiddlewareResult, QueryString, Request, Response};

pub fn search_handler<'a, D>(
    request: &mut Request<D>,
    mut response: Response<'a, D>,
) -> MiddlewareResult<'a, D> {
    let client = common::hyper_client();
    let query = request.query().get("query").expect("Missing query");
    let url = &format!(
        "https://api.tfl.gov.uk/StopPoint/Search/{}?modes=bus,replacement-bus",
        query
    );
    let obj = match common::json_for_request(client.get(url)) {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
        }
    };

    if obj["matches"].members().count() == 1 {
        let stop = obj["matches"].members().nth(0).unwrap();
        response
            .set(Location(format!("/id/{}", stop["id"].as_str().unwrap())))
            .set(StatusCode::MovedPermanently);
        return response.send("");
    }
    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for stop in obj["matches"].members() {
                vecb = vecb.push_map(|mapbuilder| {
                    let name = stop["name"].as_str().unwrap();
                    mapbuilder
                        .insert_str("id", stop["id"].as_str().unwrap())
                        .insert_str("name", name)
                        .insert_str("escaped_name", common::query_encode(name))
                });
            }
            vecb
        })
        .insert_str("query", query)
        .build();
    common::render_to_response(response, "resources/templates/search.mustache", &data)
}

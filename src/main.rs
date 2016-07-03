extern crate log4rs;
extern crate hyper;

#[macro_use] extern crate nickel;
use nickel::{Nickel, HttpRouter, Request, Response, MiddlewareResult, MediaType, QueryString};
use nickel::status::StatusCode;
use hyper::header::Location;

use hyper::client::{Client,RequestBuilder};
use std::io::Read;

extern crate json;
use json::iterators::Members;

extern crate mustache;
use mustache::MapBuilder;

extern crate itertools;
use itertools::Itertools;
extern crate time;

// https://api.tfl.gov.uk/StopPoint?lat=51.423896&lon=-0.045525&stopTypes=NaptanOnstreetBusCoachStopPair&radius=300

fn json_for_request(rb: RequestBuilder) -> Result<json::JsonValue, String> {
    let mut res = match rb.send()
    {
        Ok(val) => val,
        Err(_) => {
            return Err("Can't connect to TfL".to_string());
        }
    };
    let mut buffer: String = String::new();
    res.read_to_string(&mut buffer).expect("can't read");
    let obj = match json::parse(&buffer)
    {
        Ok(val) => val,
        Err(_) => {
            return Err(format!("Bad json: {} ", buffer));
        }
    };
    return Ok(obj);
}

fn render_to_response<'a, D>(mut response: Response<'a, D>, path: &str, data: &mustache::Data) -> MiddlewareResult<'a, D> {
    let template = mustache::compile_path(path).expect("working template");
    let mut buffer: Vec<u8> = vec![];
    template.render_data(&mut buffer, data);
    response.set(MediaType::Html);
    response.send(buffer)
}


fn arrivals_handler<'a, D>(request: &mut Request<D>, mut response: Response<'a, D>) -> MiddlewareResult<'a, D> {
    let client = Client::new();
    let obj = match json_for_request(client.get(&format!("https://api.tfl.gov.uk/StopPoint/{}/Arrivals",
        request.param("stopid").unwrap_or("Missing stopid"))))
    {
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
            MapBuilder::new().build()
        }
        else {
            let last_item = member_slice[0].clone();
            let sorted_members = members.sorted_by(|a, b| a["expectedArrival"].as_str().unwrap().cmp(b["expectedArrival"].as_str().unwrap()));

            MapBuilder::new()
                .insert_vec("buses", |vecbuilder| {
                    let mut vecb = vecbuilder;
                    for stop in sorted_members.clone() {
                        vecb = vecb.push_map(|mapbuilder| {
                            let when = time::strptime(stop["expectedArrival"].as_str().unwrap(), "%FT%TZ").unwrap();
                            mapbuilder
                                .insert_str("line", stop["lineName"].as_str().unwrap())
                                .insert_str("destination", stop["destinationName"].as_str().unwrap())
                                .insert_str("towards", stop["towards"].as_str().unwrap())
                                .insert_str("expectedArrival", when.to_local().strftime("%H:%M").unwrap())
                        });
                    }
                    vecb
                })
                .insert_str("stopName", last_item["stationName"].as_str().unwrap())
                .insert_str("stopNumber", last_item["platformName"].as_str().unwrap())
                .build()
            }
        };

    render_to_response(response, "resources/templates/arrivals.mustache", &data)
}

fn root_handler<'a, D>(_: &mut Request<D>, mut response: Response<'a, D>) -> MiddlewareResult<'a, D> {
    let data = MapBuilder::new().build();
    render_to_response(response, "resources/templates/root.mustache", &data)
}

fn search_handler<'a, D>(request: &mut Request<D>, mut response: Response<'a, D>) -> MiddlewareResult<'a, D> {
    //https://api.tfl.gov.uk/StopPoint/Search/knighton?faresOnly=False&app_id=&app_key=
    let client = Client::new();
    let query = request.query().get("query").expect("Missing query");
    let url = &format!("https://api.tfl.gov.uk/StopPoint/Search/{}?modes=bus", query);
    let obj = match json_for_request(client.get(url))
    {
        Ok(val) => val,
        Err(val) => {
            response.set(StatusCode::BadGateway);
            return response.send(val);
        }
    };

    let data = MapBuilder::new()
        .insert_vec("stops", |vecbuilder| {
            let mut vecb = vecbuilder;
            for stop in obj["matches"].members() {
                vecb = vecb.push_map(|mapbuilder| {
                    mapbuilder
                        .insert_str("id", stop["id"].as_str().unwrap())
                        .insert_str("name", stop["name"].as_str().unwrap())
                });
            }
            vecb
        })
        .insert_str("query", query)
        .build();
    render_to_response(response, "resources/templates/search.mustache", &data)
}

fn id_handler<'a, D>(request: &mut Request<D>, mut response: Response<'a, D>) -> MiddlewareResult<'a, D> {
    //https://api.tfl.gov.uk/StopPoint/Search/knighton?faresOnly=False&app_id=&app_key=
    let client = Client::new();
    let query = request.param("id").expect("Missing id");
    let url = &format!("https://api.tfl.gov.uk/StopPoint/{}", query);
    let obj = match json_for_request(client.get(url))
    {
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
        _ => panic!("Something else!")
    };
    response.send("")
}

fn main() {
    /*let gridref = osgridref::OsGridRef::new(535987 as f32,171440 as f32);
    let latlon = gridref.to_lat_lon(datum::WGS84);
    println!("{:?}", latlon);*/
    log4rs::init_file("log.yaml", Default::default()).unwrap();
    let mut server = Nickel::new();
    let mut router = Nickel::router();

    router.get("/", root_handler);
    router.get("/search", search_handler);
    router.get("/id/:id", id_handler);
    router.get("/arrivals/:stopid", arrivals_handler);

    server.utilize(router);
    let port = 8000;
    server.listen(("127.0.0.1", port));
}

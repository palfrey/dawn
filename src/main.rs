extern crate log4rs;
#[macro_use] extern crate nickel;
use nickel::{Nickel, HttpRouter, Request, Response, MiddlewareResult};
use nickel::status::StatusCode;

extern crate hyper;
use hyper::client::Client;
use std::io::Read;

extern crate json;
use json::iterators::Members;

extern crate mustache;
use mustache::MapBuilder;

// https://api.tfl.gov.uk/StopPoint?lat=51.423896&lon=-0.045525&stopTypes=NaptanOnstreetBusCoachStopPair&radius=300

fn arrivals_handler<'a, D>(request: &mut Request<D>, mut response: Response<'a, D>) -> MiddlewareResult<'a, D> {
    let client = Client::new();
    let mut res = match client.get(&format!("https://api.tfl.gov.uk/StopPoint/{}/Arrivals",
        request.param("stopid").unwrap_or("Missing stopid")))
        .send()
    {
        Ok(val) => val,
        Err(_) => {
            response.set(StatusCode::BadGateway);
            return response.send("Can't connect to TfL");
        }
    };
    let mut buffer: String = String::new();
    res.read_to_string(&mut buffer).expect("can't read");
    let obj = match json::parse(&buffer)
    {
        Ok(val) => val,
        Err(_) => {
            response.set(StatusCode::BadGateway);
            return response.send(format!("Bad json: {} ", buffer));
        }
    };

    let members = match obj.members() {
        Members::Some(val) => val,
        Members::None => {
            response.set(StatusCode::BadGateway);
            return response.send(format!("No stops in: {:?}", obj));
        }
    };
    let last_item = &members.as_slice()[0];
    let data = MapBuilder::new()
        .insert_vec("buses", |vecbuilder| {
            let mut vecb = vecbuilder;
            for stop in members.as_slice() {
                vecb = vecb.push_map(|mapbuilder| {
                    mapbuilder
                        .insert_str("line", stop["lineName"].as_str().unwrap())
                        .insert_str("destination", stop["destinationName"].as_str().unwrap())
                        .insert_str("towards", stop["towards"].as_str().unwrap())
                        .insert_str("expectedArrival", stop["expectedArrival"].as_str().unwrap())
                });
            }
            vecb
        })
        .insert_str("stopNumber", last_item["stationName"].as_str().unwrap())
        .insert_str("stopName", last_item["platformName"].as_str().unwrap())
        .build();

    let template = mustache::compile_path("resources/templates/arrivals.mustache").expect("working template");
    let mut buffer: Vec<u8> = vec![];
    template.render_data(&mut buffer, &data);
    response.send(buffer)
}

fn main() {
    /*let gridref = osgridref::OsGridRef::new(535987 as f32,171440 as f32);
    let latlon = gridref.to_lat_lon(datum::WGS84);
    println!("{:?}", latlon);*/
    log4rs::init_file("log.yaml", Default::default()).unwrap();
    let mut server = Nickel::new();
    let mut router = Nickel::router();

    router.get("/arrivals/:stopid", arrivals_handler);

    server.utilize(router);
    let port = 8000;
    server.listen(("127.0.0.1", port));
}

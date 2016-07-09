use hyper::client::RequestBuilder;
use json;
use std::io::Read;
use mustache;
use nickel::{Response, MiddlewareResult, MediaType};

pub fn json_for_request(rb: RequestBuilder) -> Result<json::JsonValue, String> {
    let mut res = match rb.send() {
        Ok(val) => val,
        Err(_) => {
            return Err("Can't connect to TfL".to_string());
        }
    };
    let mut buffer: String = String::new();
    res.read_to_string(&mut buffer).expect("can't read");
    let obj = match json::parse(&buffer) {
        Ok(val) => val,
        Err(_) => {
            return Err(format!("Bad json: {} ", buffer));
        }
    };
    return Ok(obj);
}

pub fn render_to_response<'a, D>(mut response: Response<'a, D>,
                                 path: &str,
                                 data: &mustache::Data)
                                 -> MiddlewareResult<'a, D> {
    let template = mustache::compile_path(path).expect("working template");
    let mut buffer: Vec<u8> = vec![];
    template.render_data(&mut buffer, data);
    response.set(MediaType::Html);
    response.send(buffer)
}

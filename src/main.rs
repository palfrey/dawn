use actix_web::{web, HttpRequest, HttpResponse};
#[cfg(not(feature = "lambda"))]
use actix_web::{App, HttpServer};
#[cfg(not(feature = "lambda"))]
use log::info;
#[cfg(not(feature = "lambda"))]
use std::env;

mod arrivals;
mod common;
mod favourite;
mod id;
mod nearby;
mod search;

async fn root_handler(request: HttpRequest) -> HttpResponse {
    let data = common::mustache_favourites(&request);
    common::render_to_response("resources/templates/root.mustache", &data)
}

fn config(cfg: &mut web::ServiceConfig) {
    cfg.route("/", web::get().to(root_handler))
        .route("/search", web::get().to(search::search_handler))
        .route("/id/{id}", web::get().to(id::id_handler))
        .route("/nearby", web::get().to(nearby::nearby_handler))
        .route("/favourites", web::get().to(favourite::list_favourites))
        .route("/favourites", web::post().to(favourite::add_favourite))
        .route("/favourite-remove", web::post().to(favourite::remove_favourite))
        .route("/arrivals/{stopid}", web::get().to(arrivals::arrivals_handler));
}

#[cfg(not(feature = "lambda"))]
#[actix_web::main]
async fn main() {
    log4rs::init_file("log.yaml", Default::default()).unwrap();
    let port = env::var("PORT")
        .unwrap_or("8000".to_string())
        .parse::<u16>()
        .unwrap();
    let mut server = HttpServer::new(|| App::new().configure(config));
    for iface in get_if_addrs::get_if_addrs().unwrap() {
        let ip = iface.ip();
        info!("Listening on {}:{} for {}", ip, port, iface.name);
        server = server.bind((ip, port)).unwrap();
    }
    server.run().await.unwrap();
}

#[cfg(feature = "lambda")]
fn main() {
    env_logger::try_init().unwrap_or_default();
    actix_lambda::run(config);
}

#[cfg(test)]
mod tests {
    use std::fs::{create_dir, File};
    use std::path::PathBuf;
    use std::thread;

    #[cfg(feature = "lambda")]
    use super::main;
    use super::{common, config};
    #[cfg(feature = "lambda")]
    use actix_lambda;
    use actix_web::{test, App};
    use serde::{Deserialize, Serialize};
    use wiremock::matchers::any;
    use wiremock::{Mock, MockServer, Request, ResponseTemplate};

    #[cfg(feature = "lambda")]
    #[test]
    fn lambda_test() {
        actix_lambda::test::lambda_test(main);
    }

    #[derive(Serialize, Deserialize, Debug)]
    struct StoredResponse {
        response_code: u16,
        content: String,
    }

    #[tokio::test]
    async fn simple_search() {
        env_logger::try_init().unwrap_or_default();
        let app = test::init_service(App::new().configure(config)).await;
        let mock_server = MockServer::start().await;
        Mock::given(any())
            .respond_with(|req: &Request| {
                let mut data_path = PathBuf::new();
                data_path.push("tests");
                if !data_path.exists() {
                    create_dir(&data_path).unwrap();
                }
                data_path.push(
                    &format!(
                        "{}-query-{}.json",
                        req.url.path(),
                        req.url.query().unwrap_or("None")
                    )
                    .replace("/", "_")[1..],
                );
                if !data_path.exists() {
                    let url = format!(
                        "https://api.tfl.gov.uk{}?{}",
                        req.url.path(),
                        req.url.query().unwrap_or("")
                    );
                    let local_data_path = data_path.to_string_lossy().to_string();
                    thread::spawn(move || {
                        let real_data = reqwest::blocking::get(url).unwrap();
                        let sr = StoredResponse {
                            response_code: real_data.status().as_u16(),
                            content: real_data.text().unwrap(),
                        };
                        serde_json::to_writer(File::create(local_data_path).unwrap(), &sr).unwrap();
                    })
                    .join()
                    .unwrap();
                }
                let sr: StoredResponse = serde_json::from_reader(File::open(&data_path).unwrap()).unwrap();
                ResponseTemplate::new(sr.response_code).set_body_string(sr.content)
            })
            .mount(&mock_server)
            .await;
        common::set_client(&mock_server.uri());
        let request = test::TestRequest::with_uri("/search?query=foo").to_request();
        let response = test::call_service(&app, request).await;
        assert!(response.status().is_success(), "{}", response.status());
        let body = String::from_utf8(test::read_body(response).await.to_vec()).unwrap();
        assert!(body.find("<title>Search: foo</title>").is_some(), "{}", body);
    }
}

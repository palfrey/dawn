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

fn root_handler(request: HttpRequest) -> HttpResponse {
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
#[actix_rt::main]
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
    #[cfg(feature = "lambda")]
    use super::main;
    use super::{common, config};
    #[cfg(feature = "lambda")]
    use actix_lambda;
    use actix_web::{test, App};

    #[cfg(feature = "lambda")]
    #[test]
    fn lambda_test() {
        actix_lambda::test::lambda_test(main);
    }

    #[actix_rt::test]
    async fn simple_search() {
        env_logger::try_init().unwrap_or_default();
        let srv = test::start_with(test::config().h1(), || App::new().configure(config));
        common::set_client(common::ClientType::TESTING);
        let request = srv.get("/search?query=foo");
        let mut response = request.send().await.unwrap();
        let body: String = String::from_utf8(response.body().await.unwrap().to_vec()).unwrap();
        assert!(body.find("<title>Search: foo</title>").is_some(), body);
        assert!(response.status().is_success(), response.status());
    }
}

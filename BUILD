load("@rules_rust//rust:rust.bzl", "rust_binary", "rust_test")
load("@rules_rust//cargo:cargo_build_script.bzl", "cargo_build_script")

alias(
    name = "reqwest",
    actual = "@raze__reqwest__0_9_24//:reqwest",
    tags = [
        "cargo-raze",
        "manual",
    ],
)

TEMPLATES = glob(["resources/templates/*.mustache"])

cargo_build_script(
    name = "build_script",
    srcs = ["build.rs"],
    build_script_env = {
        "RUST_BACKTRACE": "1",
    },
    data = TEMPLATES
)

rust_binary(
    name = "dawn",
    srcs = glob(["src/*.rs"]),
    deps = [
        "//cargo:actix_web",
        "//cargo:actix_rt",
        "//cargo:log",
        "//cargo:log4rs",
        "//cargo:serde",
        "//cargo:get_if_addrs",
        "//cargo:lazy_static",
        "//cargo:time",
        "//cargo:mustache",
        "//cargo:itertools",
        "//cargo:json",
        "//cargo:percent_encoding",
        "//cargo:cookie",
        "//cargo:env_logger",
        "reqwest",
        ":build_script",
    ],
    compile_data = TEMPLATES
)


rust_test(
    name = "dawn_test",
    crate = ":dawn",
    compile_data = TEMPLATES # Known bug https://github.com/bazelbuild/rules_rust/issues/567
)
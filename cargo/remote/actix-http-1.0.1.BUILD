"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""
package(default_visibility = [
  # Public for visibility by "@raze__crate__version//" targets.
  #
  # Prefer access through "//cargo", which limits external
  # visibility to explicit Cargo.toml dependencies.
  "//visibility:public",
])

licenses([
  "notice", # "MIT,Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "actix_http",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix_codec__0_2_0//:actix_codec",
        "@raze__actix_connect__1_0_1//:actix_connect",
        "@raze__actix_rt__1_0_0//:actix_rt",
        "@raze__actix_service__1_0_1//:actix_service",
        "@raze__actix_threadpool__0_3_1//:actix_threadpool",
        "@raze__actix_utils__1_0_4//:actix_utils",
        "@raze__base64__0_11_0//:base64",
        "@raze__bitflags__1_2_1//:bitflags",
        "@raze__brotli2__0_3_2//:brotli2",
        "@raze__bytes__0_5_3//:bytes",
        "@raze__chrono__0_4_10//:chrono",
        "@raze__copyless__0_1_4//:copyless",
        "@raze__derive_more__0_99_2//:derive_more",
        "@raze__either__1_5_3//:either",
        "@raze__encoding_rs__0_8_22//:encoding_rs",
        "@raze__failure__0_1_6//:failure",
        "@raze__flate2__1_0_13//:flate2",
        "@raze__futures_channel__0_3_1//:futures_channel",
        "@raze__futures_core__0_3_1//:futures_core",
        "@raze__futures_util__0_3_1//:futures_util",
        "@raze__fxhash__0_2_1//:fxhash",
        "@raze__h2__0_2_1//:h2",
        "@raze__http__0_2_0//:http",
        "@raze__httparse__1_3_4//:httparse",
        "@raze__indexmap__1_3_0//:indexmap",
        "@raze__language_tags__0_2_2//:language_tags",
        "@raze__lazy_static__1_4_0//:lazy_static",
        "@raze__log__0_4_8//:log",
        "@raze__mime__0_3_14//:mime",
        "@raze__percent_encoding__2_1_0//:percent_encoding",
        "@raze__pin_project__0_4_6//:pin_project",
        "@raze__rand__0_7_2//:rand",
        "@raze__regex__1_3_1//:regex",
        "@raze__serde__1_0_104//:serde",
        "@raze__serde_json__1_0_44//:serde_json",
        "@raze__serde_urlencoded__0_6_1//:serde_urlencoded",
        "@raze__sha1__0_6_0//:sha1",
        "@raze__slab__0_4_2//:slab",
        "@raze__time__0_1_42//:time",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.1",
    crate_features = [
        "brotli2",
        "compress",
        "default",
        "fail-ure",
        "failure",
        "flate2",
    ],
)

# Unsupported target "echo" with type "example" omitted
# Unsupported target "echo2" with type "example" omitted
# Unsupported target "hello-world" with type "example" omitted
# Unsupported target "test_client" with type "test" omitted
# Unsupported target "test_openssl" with type "test" omitted
# Unsupported target "test_rustls" with type "test" omitted
# Unsupported target "test_server" with type "test" omitted
# Unsupported target "test_ws" with type "test" omitted

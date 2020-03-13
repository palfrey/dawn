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
    name = "actix_web",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix_codec__0_2_0//:actix_codec",
        "@raze__actix_http__1_0_1//:actix_http",
        "@raze__actix_macros__0_1_1//:actix_macros",
        "@raze__actix_router__0_2_4//:actix_router",
        "@raze__actix_rt__1_0_0//:actix_rt",
        "@raze__actix_server__1_0_1//:actix_server",
        "@raze__actix_service__1_0_1//:actix_service",
        "@raze__actix_testing__1_0_0//:actix_testing",
        "@raze__actix_threadpool__0_3_1//:actix_threadpool",
        "@raze__actix_tls__1_0_0//:actix_tls",
        "@raze__actix_utils__1_0_4//:actix_utils",
        "@raze__actix_web_codegen__0_2_0//:actix_web_codegen",
        "@raze__awc__1_0_1//:awc",
        "@raze__bytes__0_5_3//:bytes",
        "@raze__derive_more__0_99_2//:derive_more",
        "@raze__encoding_rs__0_8_22//:encoding_rs",
        "@raze__futures__0_3_1//:futures",
        "@raze__fxhash__0_2_1//:fxhash",
        "@raze__log__0_4_8//:log",
        "@raze__mime__0_3_14//:mime",
        "@raze__net2__0_2_33//:net2",
        "@raze__pin_project__0_4_6//:pin_project",
        "@raze__regex__1_3_1//:regex",
        "@raze__serde__1_0_104//:serde",
        "@raze__serde_json__1_0_44//:serde_json",
        "@raze__serde_urlencoded__0_6_1//:serde_urlencoded",
        "@raze__time__0_1_42//:time",
        "@raze__url__2_1_0//:url",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "2.0.0",
    crate_features = [
        "compress",
        "default",
        "failure",
    ],
)

# Unsupported target "basic" with type "example" omitted
# Unsupported target "client" with type "example" omitted
# Unsupported target "test_httpserver" with type "test" omitted
# Unsupported target "test_server" with type "test" omitted
# Unsupported target "uds" with type "example" omitted

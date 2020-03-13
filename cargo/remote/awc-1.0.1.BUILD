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
    name = "awc",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix_codec__0_2_0//:actix_codec",
        "@raze__actix_http__1_0_1//:actix_http",
        "@raze__actix_rt__1_0_0//:actix_rt",
        "@raze__actix_service__1_0_1//:actix_service",
        "@raze__base64__0_11_0//:base64",
        "@raze__bytes__0_5_3//:bytes",
        "@raze__derive_more__0_99_2//:derive_more",
        "@raze__futures_core__0_3_1//:futures_core",
        "@raze__log__0_4_8//:log",
        "@raze__mime__0_3_14//:mime",
        "@raze__percent_encoding__2_1_0//:percent_encoding",
        "@raze__rand__0_7_2//:rand",
        "@raze__serde__1_0_104//:serde",
        "@raze__serde_json__1_0_44//:serde_json",
        "@raze__serde_urlencoded__0_6_1//:serde_urlencoded",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.1",
    crate_features = [
        "compress",
    ],
)

# Unsupported target "test_client" with type "test" omitted
# Unsupported target "test_rustls_client" with type "test" omitted
# Unsupported target "test_ssl_client" with type "test" omitted
# Unsupported target "test_ws" with type "test" omitted

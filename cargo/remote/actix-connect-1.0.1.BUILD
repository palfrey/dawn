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
    name = "actix_connect",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix_codec__0_2_0//:actix_codec",
        "@raze__actix_rt__1_0_0//:actix_rt",
        "@raze__actix_service__1_0_1//:actix_service",
        "@raze__actix_utils__1_0_4//:actix_utils",
        "@raze__derive_more__0_99_2//:derive_more",
        "@raze__either__1_5_3//:either",
        "@raze__futures__0_3_1//:futures",
        "@raze__http__0_2_0//:http",
        "@raze__log__0_4_8//:log",
        "@raze__trust_dns_proto__0_18_0_alpha_2//:trust_dns_proto",
        "@raze__trust_dns_resolver__0_18_0_alpha_2//:trust_dns_resolver",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.1",
    crate_features = [
        "default",
        "http",
        "uri",
    ],
)

# Unsupported target "test_connect" with type "test" omitted

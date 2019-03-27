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
    name = "actix_net",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix__0_7_7//:actix",
        "@raze__bytes__0_4_11//:bytes",
        "@raze__futures__0_1_25//:futures",
        "@raze__log__0_4_6//:log",
        "@raze__mio__0_6_16//:mio",
        "@raze__net2__0_2_33//:net2",
        "@raze__num_cpus__1_8_0//:num_cpus",
        "@raze__slab__0_4_1//:slab",
        "@raze__tokio__0_1_13//:tokio",
        "@raze__tokio_codec__0_1_1//:tokio_codec",
        "@raze__tokio_current_thread__0_1_4//:tokio_current_thread",
        "@raze__tokio_io__0_1_10//:tokio_io",
        "@raze__tokio_reactor__0_1_7//:tokio_reactor",
        "@raze__tokio_tcp__0_1_2//:tokio_tcp",
        "@raze__tokio_timer__0_2_8//:tokio_timer",
        "@raze__tower_service__0_1_0//:tower_service",
        "@raze__trust_dns_proto__0_5_0//:trust_dns_proto",
        "@raze__trust_dns_resolver__0_10_0//:trust_dns_resolver",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.4",
    crate_features = [
        "cell",
        "default",
    ],
)

# Unsupported target "basic" with type "example" omitted
# Unsupported target "ssl" with type "example" omitted

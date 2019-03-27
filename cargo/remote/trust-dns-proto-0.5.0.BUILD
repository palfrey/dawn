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


# Unsupported target "lib" with type "bench" omitted
# Unsupported target "name_benches" with type "bench" omitted

rust_library(
    name = "trust_dns_proto",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__byteorder__1_2_7//:byteorder",
        "@raze__failure__0_1_3//:failure",
        "@raze__futures__0_1_25//:futures",
        "@raze__idna__0_1_5//:idna",
        "@raze__lazy_static__1_2_0//:lazy_static",
        "@raze__log__0_4_6//:log",
        "@raze__rand__0_5_5//:rand",
        "@raze__smallvec__0_6_7//:smallvec",
        "@raze__socket2__0_3_8//:socket2",
        "@raze__tokio_executor__0_1_5//:tokio_executor",
        "@raze__tokio_io__0_1_10//:tokio_io",
        "@raze__tokio_reactor__0_1_7//:tokio_reactor",
        "@raze__tokio_tcp__0_1_2//:tokio_tcp",
        "@raze__tokio_timer__0_2_8//:tokio_timer",
        "@raze__tokio_udp__0_1_3//:tokio_udp",
        "@raze__url__1_7_2//:url",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.5.0",
    crate_features = [
    ],
)


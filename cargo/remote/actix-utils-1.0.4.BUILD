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
    name = "actix_utils",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix_codec__0_2_0//:actix_codec",
        "@raze__actix_rt__1_0_0//:actix_rt",
        "@raze__actix_service__1_0_1//:actix_service",
        "@raze__bytes__0_5_3//:bytes",
        "@raze__either__1_5_3//:either",
        "@raze__futures__0_3_1//:futures",
        "@raze__log__0_4_8//:log",
        "@raze__pin_project__0_4_6//:pin_project",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.4",
    crate_features = [
    ],
)


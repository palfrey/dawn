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
  "notice", # "MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "hyper",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__base64__0_9_3//:base64",
        "@raze__bytes__0_4_11//:bytes",
        "@raze__futures__0_1_25//:futures",
        "@raze__futures_cpupool__0_1_8//:futures_cpupool",
        "@raze__httparse__1_3_3//:httparse",
        "@raze__iovec__0_1_2//:iovec",
        "@raze__language_tags__0_2_2//:language_tags",
        "@raze__log__0_4_6//:log",
        "@raze__mime__0_3_12//:mime",
        "@raze__net2__0_2_33//:net2",
        "@raze__percent_encoding__1_0_1//:percent_encoding",
        "@raze__relay__0_1_1//:relay",
        "@raze__time__0_1_40//:time",
        "@raze__tokio_core__0_1_17//:tokio_core",
        "@raze__tokio_io__0_1_10//:tokio_io",
        "@raze__tokio_service__0_1_0//:tokio_service",
        "@raze__unicase__2_2_0//:unicase",
        "@raze__want__0_0_4//:want",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.11.27",
    crate_features = [
    ],
)


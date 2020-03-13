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
    name = "actix_rt",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix_macros__0_1_1//:actix_macros",
        "@raze__actix_threadpool__0_3_1//:actix_threadpool",
        "@raze__copyless__0_1_4//:copyless",
        "@raze__futures__0_3_1//:futures",
        "@raze__tokio__0_2_6//:tokio",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.0",
    crate_features = [
    ],
)


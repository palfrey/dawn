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
  "restricted", # "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "futures_executor",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__futures_core__0_3_1//:futures_core",
        "@raze__futures_task__0_3_1//:futures_task",
        "@raze__futures_util__0_3_1//:futures_util",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.1",
    crate_features = [
        "std",
    ],
)

# Unsupported target "local_pool" with type "test" omitted
# Unsupported target "thread_notify" with type "bench" omitted

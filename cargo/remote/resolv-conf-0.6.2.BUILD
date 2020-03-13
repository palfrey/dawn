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


# Unsupported target "lib" with type "test" omitted
# Unsupported target "parse" with type "example" omitted

rust_library(
    name = "resolv_conf",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__hostname__0_1_5//:hostname",
        "@raze__quick_error__1_2_2//:quick_error",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.2",
    crate_features = [
        "hostname",
        "system",
    ],
)


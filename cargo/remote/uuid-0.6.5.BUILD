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
  "restricted", # "Apache-2.0 OR MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "parse_str" with type "bench" omitted

rust_library(
    name = "uuid",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__cfg_if__0_1_6//:cfg_if",
        "@raze__rand__0_4_3//:rand",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.5",
    crate_features = [
        "default",
        "rand",
        "std",
        "v4",
    ],
)


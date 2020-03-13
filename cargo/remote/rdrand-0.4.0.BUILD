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
  "notice", # "ISC"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "rdrand" with type "bench" omitted

rust_library(
    name = "rdrand",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__rand_core__0_3_1//:rand_core",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.0",
    crate_features = [
        "default",
        "std",
    ],
)

# Unsupported target "rdseed" with type "bench" omitted
# Unsupported target "std" with type "bench" omitted

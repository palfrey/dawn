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
    name = "ordered_float",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__num_traits__0_2_6//:num_traits",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.1",
    crate_features = [
        "default",
        "std",
    ],
)

# Unsupported target "test" with type "test" omitted
# Unsupported target "test_deprecated_names" with type "test" omitted

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


# Unsupported target "bail_ensure" with type "example" omitted
# Unsupported target "error_as_cause" with type "example" omitted

rust_library(
    name = "failure",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__backtrace__0_3_9//:backtrace",
        "@raze__failure_derive__0_1_3//:failure_derive",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.1.3",
    crate_features = [
        "backtrace",
        "default",
        "derive",
        "failure_derive",
        "std",
    ],
)

# Unsupported target "simple" with type "example" omitted
# Unsupported target "string_custom_error_pattern" with type "example" omitted

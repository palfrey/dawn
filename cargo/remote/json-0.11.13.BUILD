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
    name = "json",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.11.13",
    crate_features = [
    ],
)

# Unsupported target "json_checker" with type "test" omitted
# Unsupported target "log" with type "bench" omitted
# Unsupported target "number" with type "test" omitted
# Unsupported target "parse" with type "test" omitted
# Unsupported target "print_dec" with type "test" omitted
# Unsupported target "stringify" with type "test" omitted
# Unsupported target "value" with type "test" omitted

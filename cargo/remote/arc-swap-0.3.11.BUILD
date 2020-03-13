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
  "notice", # "Apache-2.0,MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "arc_swap",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.11",
    crate_features = [
    ],
)

# Unsupported target "atomics" with type "bench" omitted
# Unsupported target "background" with type "bench" omitted
# Unsupported target "int-access" with type "bench" omitted
# Unsupported target "random" with type "test" omitted
# Unsupported target "stress" with type "test" omitted
# Unsupported target "version" with type "test" omitted

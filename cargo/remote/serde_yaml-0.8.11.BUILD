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
    name = "serde_yaml",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__dtoa__0_4_4//:dtoa",
        "@raze__linked_hash_map__0_5_2//:linked_hash_map",
        "@raze__serde__1_0_104//:serde",
        "@raze__yaml_rust__0_4_3//:yaml_rust",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.8.11",
    crate_features = [
    ],
)

# Unsupported target "test_de" with type "test" omitted
# Unsupported target "test_error" with type "test" omitted
# Unsupported target "test_serde" with type "test" omitted
# Unsupported target "test_visitor" with type "test" omitted

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


# Unsupported target "akamai" with type "example" omitted
# Unsupported target "client" with type "example" omitted

rust_library(
    name = "h2",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__byteorder__1_2_7//:byteorder",
        "@raze__bytes__0_4_11//:bytes",
        "@raze__fnv__1_0_6//:fnv",
        "@raze__futures__0_1_25//:futures",
        "@raze__http__0_1_14//:http",
        "@raze__indexmap__1_0_2//:indexmap",
        "@raze__log__0_4_6//:log",
        "@raze__slab__0_4_1//:slab",
        "@raze__string__0_1_2//:string",
        "@raze__tokio_io__0_1_10//:tokio_io",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.1.13",
    crate_features = [
    ],
)

# Unsupported target "server" with type "example" omitted

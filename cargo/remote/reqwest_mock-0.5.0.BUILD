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
  "notice", # "Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "direct" with type "test" omitted

rust_library(
    name = "reqwest_mock",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__base64__0_9_3//:base64",
        "@raze__error_chain__0_11_0//:error_chain",
        "@raze__log__0_4_6//:log",
        "@raze__reqwest__0_8_8//:reqwest",
        "@raze__serde__1_0_80//:serde",
        "@raze__serde_derive__1_0_80//:serde_derive",
        "@raze__serde_json__1_0_33//:serde_json",
        "@raze__twox_hash__1_1_1//:twox_hash",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.5.0",
    crate_features = [
    ],
)

# Unsupported target "simple" with type "example" omitted

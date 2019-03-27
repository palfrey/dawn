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


# Unsupported target "global_resolver" with type "example" omitted
# Unsupported target "multithreaded_runtime" with type "example" omitted

rust_library(
    name = "trust_dns_resolver",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__cfg_if__0_1_6//:cfg_if",
        "@raze__failure__0_1_3//:failure",
        "@raze__futures__0_1_25//:futures",
        "@raze__lazy_static__1_2_0//:lazy_static",
        "@raze__log__0_4_6//:log",
        "@raze__lru_cache__0_1_1//:lru_cache",
        "@raze__resolv_conf__0_6_1//:resolv_conf",
        "@raze__smallvec__0_6_7//:smallvec",
        "@raze__tokio__0_1_13//:tokio",
        "@raze__trust_dns_proto__0_5_0//:trust_dns_proto",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.10.0",
    crate_features = [
    ],
)


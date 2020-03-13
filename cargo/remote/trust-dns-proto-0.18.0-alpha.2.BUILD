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


# Unsupported target "lib" with type "bench" omitted
# Unsupported target "name_benches" with type "bench" omitted

rust_library(
    name = "trust_dns_proto",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__async_trait__0_1_22//:async_trait",
        "@raze__enum_as_inner__0_3_0//:enum_as_inner",
        "@raze__failure__0_1_6//:failure",
        "@raze__futures__0_3_1//:futures",
        "@raze__idna__0_2_0//:idna",
        "@raze__lazy_static__1_4_0//:lazy_static",
        "@raze__log__0_4_8//:log",
        "@raze__rand__0_7_2//:rand",
        "@raze__smallvec__1_1_0//:smallvec",
        "@raze__socket2__0_3_11//:socket2",
        "@raze__tokio__0_2_6//:tokio",
        "@raze__url__2_1_0//:url",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.18.0-alpha.2",
    crate_features = [
        "default",
        "tokio",
        "tokio-compat",
    ],
)


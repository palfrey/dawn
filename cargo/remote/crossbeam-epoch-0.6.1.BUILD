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
    name = "crossbeam_epoch",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__arrayvec__0_4_8//:arrayvec",
        "@raze__cfg_if__0_1_6//:cfg_if",
        "@raze__crossbeam_utils__0_6_1//:crossbeam_utils",
        "@raze__lazy_static__1_2_0//:lazy_static",
        "@raze__memoffset__0_2_1//:memoffset",
        "@raze__scopeguard__0_3_3//:scopeguard",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.1",
    crate_features = [
        "crossbeam-utils",
        "default",
        "lazy_static",
        "std",
    ],
)

# Unsupported target "defer" with type "bench" omitted
# Unsupported target "flush" with type "bench" omitted
# Unsupported target "pin" with type "bench" omitted
# Unsupported target "sanitize" with type "example" omitted

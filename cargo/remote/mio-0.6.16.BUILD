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


# Unsupported target "bench_poll" with type "bench" omitted

rust_library(
    name = "mio",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__iovec__0_1_2//:iovec",
        "@raze__lazycell__1_2_0//:lazycell",
        "@raze__libc__0_2_44//:libc",
        "@raze__log__0_4_6//:log",
        "@raze__net2__0_2_33//:net2",
        "@raze__slab__0_4_1//:slab",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.16",
    crate_features = [
        "default",
        "with-deprecated",
    ],
)

# Unsupported target "test" with type "test" omitted

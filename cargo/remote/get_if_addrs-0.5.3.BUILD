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
  "restricted", # "MIT OR BSD-3-Clause"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "get_if_addrs",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__c_linked_list__1_1_1//:c_linked_list",
        "@raze__libc__0_2_66//:libc",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.5.3",
    crate_features = [
    ],
)

# Unsupported target "list_interfaces" with type "example" omitted

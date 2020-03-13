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
  "restricted", # "Apache-2.0 OR MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "pin_project_internal",
    crate_root = "src/lib.rs",
    crate_type = "proc-macro",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__proc_macro2__1_0_6//:proc_macro2",
        "@raze__quote__1_0_2//:quote",
        "@raze__syn__1_0_11//:syn",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.6",
    crate_features = [
    ],
)


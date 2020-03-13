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


# Unsupported target "basic" with type "test" omitted

rust_library(
    name = "enum_as_inner",
    crate_root = "src/lib.rs",
    crate_type = "proc-macro",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__heck__0_3_1//:heck",
        "@raze__proc_macro2__1_0_6//:proc_macro2",
        "@raze__quote__1_0_2//:quote",
        "@raze__syn__1_0_11//:syn",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.0",
    crate_features = [
    ],
)

# Unsupported target "named" with type "test" omitted
# Unsupported target "snake_case" with type "test" omitted
# Unsupported target "unit" with type "test" omitted
# Unsupported target "unnamed" with type "test" omitted

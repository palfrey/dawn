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


# Unsupported target "after" with type "test" omitted
# Unsupported target "array" with type "test" omitted
# Unsupported target "cmp" with type "test" omitted

rust_library(
    name = "crossbeam_channel",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__crossbeam_epoch__0_6_1//:crossbeam_epoch",
        "@raze__crossbeam_utils__0_5_0//:crossbeam_utils",
        "@raze__parking_lot__0_6_4//:parking_lot",
        "@raze__rand__0_5_5//:rand",
        "@raze__smallvec__0_6_7//:smallvec",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.6",
    crate_features = [
    ],
)

# Unsupported target "csp" with type "example" omitted
# Unsupported target "fibonacci" with type "example" omitted
# Unsupported target "golang" with type "test" omitted
# Unsupported target "iter" with type "test" omitted
# Unsupported target "list" with type "test" omitted
# Unsupported target "mpsc" with type "example" omitted
# Unsupported target "mpsc" with type "test" omitted
# Unsupported target "parse" with type "test" omitted
# Unsupported target "select" with type "test" omitted
# Unsupported target "select_struct" with type "test" omitted
# Unsupported target "thread_locals" with type "test" omitted
# Unsupported target "tick" with type "test" omitted
# Unsupported target "zero" with type "test" omitted

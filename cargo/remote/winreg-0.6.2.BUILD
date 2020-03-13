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


# Unsupported target "basic_usage" with type "example" omitted
# Unsupported target "enum" with type "example" omitted
# Unsupported target "installed_apps" with type "example" omitted
# Unsupported target "serialization" with type "example" omitted
# Unsupported target "transactions" with type "example" omitted

rust_library(
    name = "winreg",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__winapi__0_3_8//:winapi",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.2",
    crate_features = [
    ],
)


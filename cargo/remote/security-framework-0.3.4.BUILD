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


# Unsupported target "client" with type "example" omitted
# Unsupported target "find_internet_password" with type "example" omitted

rust_library(
    name = "security_framework",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__core_foundation__0_6_4//:core_foundation",
        "@raze__core_foundation_sys__0_6_2//:core_foundation_sys",
        "@raze__libc__0_2_66//:libc",
        "@raze__security_framework_sys__0_3_3//:security_framework_sys",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.4",
    crate_features = [
    ],
)

# Unsupported target "set_internet_password" with type "example" omitted

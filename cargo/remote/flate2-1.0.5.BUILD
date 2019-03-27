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


# Unsupported target "deflatedecoder-bufread" with type "example" omitted
# Unsupported target "deflatedecoder-read" with type "example" omitted
# Unsupported target "deflatedecoder-write" with type "example" omitted
# Unsupported target "deflateencoder-bufread" with type "example" omitted
# Unsupported target "deflateencoder-read" with type "example" omitted
# Unsupported target "deflateencoder-write" with type "example" omitted
# Unsupported target "early-flush" with type "test" omitted
# Unsupported target "empty-read" with type "test" omitted

rust_library(
    name = "flate2",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__flate2_crc__0_1_1//:flate2_crc",
        "@raze__libc__0_2_44//:libc",
        "@raze__miniz_sys__0_1_11//:miniz_sys",
        "@raze__miniz_oxide_c_api__0_2_0//:miniz_oxide_c_api",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.0.5",
    crate_features = [
        "default",
        "miniz-sys",
    ],
)

# Unsupported target "gunzip" with type "test" omitted
# Unsupported target "gzbuilder" with type "example" omitted
# Unsupported target "gzdecoder-bufread" with type "example" omitted
# Unsupported target "gzdecoder-read" with type "example" omitted
# Unsupported target "gzdecoder-write" with type "example" omitted
# Unsupported target "gzencoder-bufread" with type "example" omitted
# Unsupported target "gzencoder-read" with type "example" omitted
# Unsupported target "gzencoder-write" with type "example" omitted
# Unsupported target "gzmultidecoder-bufread" with type "example" omitted
# Unsupported target "gzmultidecoder-read" with type "example" omitted
# Unsupported target "tokio" with type "test" omitted
# Unsupported target "zero-write" with type "test" omitted
# Unsupported target "zlibdecoder-bufread" with type "example" omitted
# Unsupported target "zlibdecoder-read" with type "example" omitted
# Unsupported target "zlibdecoder-write" with type "example" omitted
# Unsupported target "zlibencoder-bufread" with type "example" omitted
# Unsupported target "zlibencoder-read" with type "example" omitted
# Unsupported target "zlibencoder-write" with type "example" omitted

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



rust_library(
    name = "encoding",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__encoding_index_japanese__1_20141219_5//:encoding_index_japanese",
        "@raze__encoding_index_korean__1_20141219_5//:encoding_index_korean",
        "@raze__encoding_index_simpchinese__1_20141219_5//:encoding_index_simpchinese",
        "@raze__encoding_index_singlebyte__1_20141219_5//:encoding_index_singlebyte",
        "@raze__encoding_index_tradchinese__1_20141219_5//:encoding_index_tradchinese",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.33",
    crate_features = [
    ],
)

# Unsupported target "recode" with type "example" omitted

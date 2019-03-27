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


rust_binary(
    # Prefix bin name to disambiguate from (probable) collision with lib name
    # N.B.: The exact form of this is subject to change.
    name = "cargo_bin_hash_file",
    crate_root = "src/bin/hash_file.rs",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        # Binaries get an implicit dependency on their crate's lib
        ":twox-hash",
        "@raze__rand__0_5_5//:rand",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.1.1",
    crate_features = [
    ],
)


rust_library(
    name = "twox_hash",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__rand__0_5_5//:rand",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "1.1.1",
    crate_features = [
    ],
)


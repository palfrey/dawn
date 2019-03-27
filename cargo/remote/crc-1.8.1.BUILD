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
  "restricted", # "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)

rust_binary(
    name = "crc_build_script",
    srcs = glob(["**/*.rs"]),
    crate_root = "build.rs",
    edition = "2015",
    deps = [
        "@raze__build_const__0_2_1//:build_const",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    crate_features = [
      "default",
      "std",
    ],
    data = glob(["*"]),
    version = "1.8.1",
    visibility = ["//visibility:private"],
)

genrule(
    name = "crc_build_script_executor",
    srcs = glob(["*", "**/*.rs"]),
    outs = ["crc_out_dir_outputs.tar.gz"],
    tools = [
      ":crc_build_script",
    ],
    local = 1,
    cmd = "mkdir -p crc_out_dir_outputs/;"
        + " (export CARGO_MANIFEST_DIR=\"$$PWD/$$(dirname $(location :Cargo.toml))\";"
        # TODO(acmcarther): This needs to be revisited as part of the cross compilation story.
        #                   See also: https://github.com/google/cargo-raze/pull/54
        + " export TARGET='x86_64-unknown-linux-gnu';"
        + " export RUST_BACKTRACE=1;"
        + " export CARGO_FEATURE_DEFAULT=1;"
        + " export CARGO_FEATURE_STD=1;"
        + " export OUT_DIR=$$PWD/crc_out_dir_outputs;"
        + " export BINARY_PATH=\"$$PWD/$(location :crc_build_script)\";"
        + " export OUT_TAR=$$PWD/$@;"
        + " cd $$(dirname $(location :Cargo.toml)) && $$BINARY_PATH && tar -czf $$OUT_TAR -C $$OUT_DIR .)"
)

# Unsupported target "bench" with type "bench" omitted

rust_library(
    name = "crc",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    out_dir_tar = ":crc_build_script_executor",
    version = "1.8.1",
    crate_features = [
        "default",
        "std",
    ],
)

# Unsupported target "crc" with type "test" omitted
# Unsupported target "hash" with type "test" omitted

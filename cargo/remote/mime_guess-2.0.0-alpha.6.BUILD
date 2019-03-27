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
    name = "mime_guess_build_script",
    srcs = glob(["**/*.rs"]),
    crate_root = "build.rs",
    edition = "2015",
    deps = [
        "@raze__phf_codegen__0_7_23//:phf_codegen",
        "@raze__unicase__1_4_2//:unicase",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    crate_features = [
    ],
    data = glob(["*"]),
    version = "2.0.0-alpha.6",
    visibility = ["//visibility:private"],
)

genrule(
    name = "mime_guess_build_script_executor",
    srcs = glob(["*", "**/*.rs"]),
    outs = ["mime_guess_out_dir_outputs.tar.gz"],
    tools = [
      ":mime_guess_build_script",
    ],
    local = 1,
    cmd = "mkdir -p mime_guess_out_dir_outputs/;"
        + " (export CARGO_MANIFEST_DIR=\"$$PWD/$$(dirname $(location :Cargo.toml))\";"
        # TODO(acmcarther): This needs to be revisited as part of the cross compilation story.
        #                   See also: https://github.com/google/cargo-raze/pull/54
        + " export TARGET='x86_64-unknown-linux-gnu';"
        + " export RUST_BACKTRACE=1;"
        + " export OUT_DIR=$$PWD/mime_guess_out_dir_outputs;"
        + " export BINARY_PATH=\"$$PWD/$(location :mime_guess_build_script)\";"
        + " export OUT_TAR=$$PWD/$@;"
        + " cd $$(dirname $(location :Cargo.toml)) && $$BINARY_PATH && tar -czf $$OUT_TAR -C $$OUT_DIR .)"
)


rust_library(
    name = "mime_guess",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__mime__0_3_12//:mime",
        "@raze__phf__0_7_23//:phf",
        "@raze__unicase__1_4_2//:unicase",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    out_dir_tar = ":mime_guess_build_script_executor",
    version = "2.0.0-alpha.6",
    crate_features = [
    ],
)

# Unsupported target "rev_map" with type "example" omitted

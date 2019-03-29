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
  "restricted", # "no license"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)

rust_binary(
    name = "ring_build_script",
    srcs = glob(["**/*.rs"]),
    crate_root = "build.rs",
    edition = "2015",
    deps = [
        "@raze__cc__1_0_25//:cc",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    crate_features = [
      "default",
      "dev_urandom_fallback",
      "use_heap",
    ],
    data = glob(["*"]),
    version = "0.13.5",
    visibility = ["//visibility:private"],
)

genrule(
    name = "ring_build_script_executor",
    srcs = glob(["*", "**/*.rs"]),
    outs = ["ring_out_dir_outputs.tar.gz"],
    tools = [
      ":ring_build_script",
    ],
    local = 1,
    cmd = "mkdir -p ring_out_dir_outputs/;"
        + " (export CARGO_MANIFEST_DIR=\"$$PWD/$$(dirname $(location :Cargo.toml))\";"
        # TODO(acmcarther): This needs to be revisited as part of the cross compilation story.
        #                   See also: https://github.com/google/cargo-raze/pull/54
        + " export TARGET='x86_64-unknown-linux-gnu';"
        + " export HOST=x86_64-unknown-linux-gnu;"
        + " export RUST_BACKTRACE=full;"
        + " export DEBUG=true;"
        + " export CARGO_PKG_NAME=ring;"
        + " export CARGO_FEATURE_DEFAULT=1;"
        + " export CARGO_FEATURE_DEV_URANDOM_FALLBACK=1;"
        + " export CARGO_FEATURE_USE_HEAP=1;"
        + " export CARGO_CFG_TARGET_ARCH=x86_64;"
        + " export OPT_LEVEL=0;"
        + " export CARGO_CFG_TARGET_OS=macos;"
        + " export CARGO_CFG_TARGET_ENV=osx;"
        + " export OUT_DIR=$$PWD/ring_out_dir_outputs;"
        + " export BINARY_PATH=\"$$PWD/$(location :ring_build_script)\";"
        + " export OUT_TAR=$$PWD/$@;"
        + " cd $$(dirname $(location :Cargo.toml)) && $$BINARY_PATH && tar -czf $$OUT_TAR -C $$OUT_DIR .)"
)

# Unsupported target "aead_tests" with type "test" omitted
# Unsupported target "agreement_tests" with type "test" omitted
# Unsupported target "digest_tests" with type "test" omitted
# Unsupported target "ecdsa_tests" with type "test" omitted
# Unsupported target "ed25519_tests" with type "test" omitted
# Unsupported target "hkdf_tests" with type "test" omitted
# Unsupported target "hmac_tests" with type "test" omitted
# Unsupported target "pbkdf2_tests" with type "test" omitted

rust_library(
    name = "ring",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__lazy_static__1_2_0//:lazy_static",
        "@raze__libc__0_2_44//:libc",
        "@raze__untrusted__0_6_2//:untrusted",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    out_dir_tar = ":ring_build_script_executor",
    version = "0.13.5",
    crate_features = [
        "default",
        "dev_urandom_fallback",
        "use_heap",
    ],
)

# Unsupported target "rsa_tests" with type "test" omitted
# Unsupported target "signature_tests" with type "test" omitted

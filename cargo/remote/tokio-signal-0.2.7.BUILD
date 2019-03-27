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


# Unsupported target "ctrl-c" with type "example" omitted
# Unsupported target "drop_multi_loop" with type "test" omitted
# Unsupported target "drop_then_get_a_signal" with type "test" omitted
# Unsupported target "dropping_does_not_deregister_other_instances" with type "test" omitted
# Unsupported target "multi_loop" with type "test" omitted
# Unsupported target "multiple" with type "example" omitted
# Unsupported target "notify_both" with type "test" omitted
# Unsupported target "sighup-example" with type "example" omitted
# Unsupported target "signal" with type "test" omitted
# Unsupported target "simple" with type "test" omitted
# Unsupported target "support" with type "test" omitted

rust_library(
    name = "tokio_signal",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__futures__0_1_25//:futures",
        "@raze__libc__0_2_44//:libc",
        "@raze__mio__0_6_16//:mio",
        "@raze__mio_uds__0_6_7//:mio_uds",
        "@raze__signal_hook__0_1_6//:signal_hook",
        "@raze__tokio_executor__0_1_5//:tokio_executor",
        "@raze__tokio_io__0_1_10//:tokio_io",
        "@raze__tokio_reactor__0_1_7//:tokio_reactor",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.7",
    crate_features = [
    ],
)

# Unsupported target "twice" with type "test" omitted

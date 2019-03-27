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



rust_library(
    name = "actix",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix_derive__0_3_2//:actix_derive",
        "@raze__bitflags__1_0_4//:bitflags",
        "@raze__bytes__0_4_11//:bytes",
        "@raze__crossbeam_channel__0_2_6//:crossbeam_channel",
        "@raze__failure__0_1_3//:failure",
        "@raze__fnv__1_0_6//:fnv",
        "@raze__futures__0_1_25//:futures",
        "@raze__libc__0_2_44//:libc",
        "@raze__log__0_4_6//:log",
        "@raze__parking_lot__0_6_4//:parking_lot",
        "@raze__smallvec__0_6_7//:smallvec",
        "@raze__tokio__0_1_13//:tokio",
        "@raze__tokio_codec__0_1_1//:tokio_codec",
        "@raze__tokio_executor__0_1_5//:tokio_executor",
        "@raze__tokio_io__0_1_10//:tokio_io",
        "@raze__tokio_reactor__0_1_7//:tokio_reactor",
        "@raze__tokio_signal__0_2_7//:tokio_signal",
        "@raze__tokio_tcp__0_1_2//:tokio_tcp",
        "@raze__tokio_timer__0_2_8//:tokio_timer",
        "@raze__trust_dns_proto__0_5_0//:trust_dns_proto",
        "@raze__trust_dns_resolver__0_10_0//:trust_dns_resolver",
        "@raze__uuid__0_7_1//:uuid",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.7.7",
    crate_features = [
        "default",
        "resolver",
        "signal",
        "tokio-signal",
        "trust-dns-proto",
        "trust-dns-resolver",
    ],
)

# Unsupported target "derive" with type "test" omitted
# Unsupported target "fibonacci" with type "example" omitted
# Unsupported target "ping" with type "example" omitted
# Unsupported target "test_actor" with type "test" omitted
# Unsupported target "test_actors" with type "test" omitted
# Unsupported target "test_address" with type "test" omitted
# Unsupported target "test_arbiter" with type "test" omitted
# Unsupported target "test_context" with type "test" omitted
# Unsupported target "test_execute" with type "test" omitted
# Unsupported target "test_fut" with type "test" omitted
# Unsupported target "test_lifecycle" with type "test" omitted
# Unsupported target "test_supervisor" with type "test" omitted
# Unsupported target "test_sync" with type "test" omitted

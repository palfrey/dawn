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
    name = "actix_web",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__actix__0_7_7//:actix",
        "@raze__actix_net__0_2_4//:actix_net",
        "@raze__askama_escape__0_1_0//:askama_escape",
        "@raze__base64__0_10_0//:base64",
        "@raze__bitflags__1_0_4//:bitflags",
        "@raze__brotli2__0_3_2//:brotli2",
        "@raze__byteorder__1_2_7//:byteorder",
        "@raze__bytes__0_4_11//:bytes",
        "@raze__cookie__0_11_0//:cookie",
        "@raze__encoding__0_2_33//:encoding",
        "@raze__failure__0_1_3//:failure",
        "@raze__flate2__1_0_5//:flate2",
        "@raze__futures__0_1_25//:futures",
        "@raze__futures_cpupool__0_1_8//:futures_cpupool",
        "@raze__h2__0_1_13//:h2",
        "@raze__http__0_1_14//:http",
        "@raze__httparse__1_3_3//:httparse",
        "@raze__language_tags__0_2_2//:language_tags",
        "@raze__lazy_static__1_2_0//:lazy_static",
        "@raze__lazycell__1_2_0//:lazycell",
        "@raze__log__0_4_6//:log",
        "@raze__mime__0_3_12//:mime",
        "@raze__mime_guess__2_0_0_alpha_6//:mime_guess",
        "@raze__mio__0_6_16//:mio",
        "@raze__net2__0_2_33//:net2",
        "@raze__num_cpus__1_8_0//:num_cpus",
        "@raze__parking_lot__0_6_4//:parking_lot",
        "@raze__percent_encoding__1_0_1//:percent_encoding",
        "@raze__rand__0_5_5//:rand",
        "@raze__regex__1_1_0//:regex",
        "@raze__serde__1_0_80//:serde",
        "@raze__serde_json__1_0_33//:serde_json",
        "@raze__serde_urlencoded__0_5_4//:serde_urlencoded",
        "@raze__sha1__0_6_0//:sha1",
        "@raze__slab__0_4_1//:slab",
        "@raze__smallvec__0_6_7//:smallvec",
        "@raze__time__0_1_40//:time",
        "@raze__tokio__0_1_13//:tokio",
        "@raze__tokio_current_thread__0_1_4//:tokio_current_thread",
        "@raze__tokio_io__0_1_10//:tokio_io",
        "@raze__tokio_reactor__0_1_7//:tokio_reactor",
        "@raze__tokio_tcp__0_1_2//:tokio_tcp",
        "@raze__tokio_timer__0_2_8//:tokio_timer",
        "@raze__url__1_7_2//:url",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.7.14",
    crate_features = [
        "actix-net",
        "brotli",
        "brotli2",
        "cell",
        "cookie",
        "default",
        "flate2",
        "flate2-c",
        "session",
    ],
)

# Unsupported target "build-script-build" with type "custom-build" omitted
# Unsupported target "test_client" with type "test" omitted
# Unsupported target "test_custom_pipeline" with type "test" omitted
# Unsupported target "test_handlers" with type "test" omitted
# Unsupported target "test_middleware" with type "test" omitted
# Unsupported target "test_server" with type "test" omitted
# Unsupported target "test_ws" with type "test" omitted

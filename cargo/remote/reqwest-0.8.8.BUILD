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


# Unsupported target "async" with type "example" omitted
# Unsupported target "async" with type "test" omitted
# Unsupported target "client" with type "test" omitted
# Unsupported target "form" with type "example" omitted
# Unsupported target "gzip" with type "test" omitted
# Unsupported target "multipart" with type "test" omitted
# Unsupported target "proxy" with type "test" omitted
# Unsupported target "redirect" with type "test" omitted

rust_library(
    name = "reqwest",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bytes__0_4_11//:bytes",
        "@raze__encoding_rs__0_8_13//:encoding_rs",
        "@raze__futures__0_1_25//:futures",
        "@raze__hyper__0_11_27//:hyper",
        "@raze__hyper_tls__0_1_4//:hyper_tls",
        "@raze__libflate__0_1_19//:libflate",
        "@raze__log__0_4_6//:log",
        "@raze__mime_guess__2_0_0_alpha_6//:mime_guess",
        "@raze__native_tls__0_1_5//:native_tls",
        "@raze__serde__1_0_80//:serde",
        "@raze__serde_json__1_0_33//:serde_json",
        "@raze__serde_urlencoded__0_5_4//:serde_urlencoded",
        "@raze__tokio_core__0_1_17//:tokio_core",
        "@raze__tokio_io__0_1_10//:tokio_io",
        "@raze__tokio_tls__0_1_4//:tokio_tls",
        "@raze__url__1_7_2//:url",
        "@raze__uuid__0_6_5//:uuid",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.8.8",
    crate_features = [
    ],
)

# Unsupported target "simple" with type "example" omitted
# Unsupported target "timeouts" with type "test" omitted

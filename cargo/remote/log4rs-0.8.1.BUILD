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
    name = "log4rs",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__antidote__1_0_0//:antidote",
        "@raze__chrono__0_4_6//:chrono",
        "@raze__crossbeam__0_3_2//:crossbeam",
        "@raze__flate2__1_0_5//:flate2",
        "@raze__fnv__1_0_6//:fnv",
        "@raze__humantime__1_2_0//:humantime",
        "@raze__libc__0_2_44//:libc",
        "@raze__log__0_4_6//:log",
        "@raze__log_mdc__0_1_0//:log_mdc",
        "@raze__serde__1_0_80//:serde",
        "@raze__serde_value__0_5_3//:serde_value",
        "@raze__serde_derive__1_0_80//:serde_derive",
        "@raze__serde_json__1_0_33//:serde_json",
        "@raze__serde_yaml__0_8_7//:serde_yaml",
        "@raze__thread_id__3_3_0//:thread_id",
        "@raze__typemap__0_3_3//:typemap",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.8.1",
    crate_features = [
        "all_components",
        "ansi_writer",
        "antidote",
        "chrono",
        "compound_policy",
        "console_appender",
        "console_writer",
        "default",
        "delete_roller",
        "file",
        "file_appender",
        "fixed_window_roller",
        "flate2",
        "gzip",
        "humantime",
        "json_encoder",
        "libc",
        "log",
        "log-mdc",
        "pattern_encoder",
        "rolling_file_appender",
        "serde",
        "serde-value",
        "serde_derive",
        "serde_json",
        "serde_yaml",
        "simple_writer",
        "size_trigger",
        "thread-id",
        "threshold_filter",
        "typemap",
        "winapi",
        "yaml_format",
    ],
)


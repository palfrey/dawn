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


# Unsupported target "add" with type "test" omitted
# Unsupported target "add_assign" with type "test" omitted
# Unsupported target "as_mut" with type "test" omitted
# Unsupported target "as_ref" with type "test" omitted
# Unsupported target "boats_display_derive" with type "test" omitted
# Unsupported target "constructor" with type "test" omitted
# Unsupported target "deny_missing_docs" with type "example" omitted
# Unsupported target "deref" with type "test" omitted
# Unsupported target "deref_mut" with type "test" omitted

rust_library(
    name = "derive_more",
    crate_root = "src/lib.rs",
    crate_type = "proc-macro",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__proc_macro2__1_0_6//:proc_macro2",
        "@raze__quote__1_0_2//:quote",
        "@raze__syn__1_0_11//:syn",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.99.2",
    crate_features = [
        "add",
        "add_assign",
        "as_mut",
        "as_ref",
        "constructor",
        "default",
        "deref",
        "deref_mut",
        "display",
        "from",
        "from_str",
        "index",
        "index_mut",
        "into",
        "into_iterator",
        "iterator",
        "mul",
        "mul_assign",
        "not",
        "sum",
        "try_into",
    ],
)

# Unsupported target "display" with type "test" omitted
# Unsupported target "from" with type "test" omitted
# Unsupported target "from_str" with type "test" omitted
# Unsupported target "generics" with type "test" omitted
# Unsupported target "index" with type "test" omitted
# Unsupported target "index_mut" with type "test" omitted
# Unsupported target "into" with type "test" omitted
# Unsupported target "into_iterator" with type "test" omitted
# Unsupported target "lib" with type "test" omitted
# Unsupported target "mul" with type "test" omitted
# Unsupported target "mul_assign" with type "test" omitted
# Unsupported target "no_std" with type "test" omitted
# Unsupported target "not" with type "test" omitted
# Unsupported target "sum" with type "test" omitted
# Unsupported target "try_into" with type "test" omitted

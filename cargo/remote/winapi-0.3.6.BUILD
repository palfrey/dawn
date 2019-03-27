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


# Unsupported target "build-script-build" with type "custom-build" omitted

rust_library(
    name = "winapi",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.6",
    crate_features = [
        "dbghelp",
        "errhandlingapi",
        "fileapi",
        "handleapi",
        "lmcons",
        "minschannel",
        "minwinbase",
        "minwindef",
        "ntdef",
        "ntsecapi",
        "ntstatus",
        "processenv",
        "processthreadsapi",
        "profileapi",
        "schannel",
        "securitybaseapi",
        "sspi",
        "std",
        "sysinfoapi",
        "timezoneapi",
        "winbase",
        "wincon",
        "wincrypt",
        "winerror",
        "winnt",
        "winreg",
        "winsock2",
        "wow64apiset",
        "ws2def",
        "ws2ipdef",
        "ws2tcpip",
    ],
)


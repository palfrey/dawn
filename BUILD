load("@rules_rust//rust:defs.bzl", "rust_binary", "rust_test")
load("@rules_rust//cargo:defs.bzl", "cargo_build_script")
load("@crates//:defs.bzl", "aliases", "all_crate_deps")

TEMPLATES = glob(["resources/templates/*.mustache"])

cargo_build_script(
    name = "build_script",
    srcs = ["build.rs"],
    build_script_env = {
        "RUST_BACKTRACE": "1",
    },
    data = TEMPLATES
)

rust_binary(
    name = "dawn",
    srcs = glob(["src/*.rs"]),
    deps = all_crate_deps(
        normal = True,
    ) + [":build_script"],
    compile_data = TEMPLATES
)

rust_test(
    name = "dawn_test",
    crate = ":dawn",
    deps = all_crate_deps(
        normal_dev = True,
    )
)
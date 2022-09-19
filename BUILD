load("@rules_rust//rust:rust.bzl", "rust_binary", "rust_test")
load("@rules_rust//cargo:cargo_build_script.bzl", "cargo_build_script")

# alias(
#     name = "reqwest",
#     actual = "@raze__reqwest__0_10_10//:reqwest",
#     tags = [
#         "cargo-raze",
#         "manual",
#     ],
# )

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
    deps = [
        "//bazel:actix_web",
        "//bazel:actix_rt",
        "//bazel:log",
        "//bazel:log4rs",
        "//bazel:serde",
        "//bazel:get_if_addrs",
        "//bazel:lazy_static",
        "//bazel:time",
        "//bazel:mustache",
        "//bazel:itertools",
        "//bazel:json",
        "//bazel:percent_encoding",
        "//bazel:cookie",
        "//bazel:env_logger",
        "//bazel:reqwest",
        ":build_script",
    ],
    compile_data = TEMPLATES
)


rust_test(
    name = "dawn_test",
    crate = ":dawn",
    compile_data = TEMPLATES # Known bug https://github.com/bazelbuild/rules_rust/issues/567
)
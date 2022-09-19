load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_rust",
    sha256 = "e6d835ee673f388aa5b62dc23d82db8fc76497e93fa47d8a4afe97abaf09b10d",
    strip_prefix = "rules_rust-f37b9d6a552e9412285e627f30cb124e709f4f7a",
    urls = [
        # Master branch as of 2021-01-27
        "https://github.com/bazelbuild/rules_rust/archive/f37b9d6a552e9412285e627f30cb124e709f4f7a.tar.gz",
    ],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "9a737999532daca978a158f94e77e9af6a6a169709c0cee274f0a4c3359519bd",
    strip_prefix = "bazel-skylib-1.0.0",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/1.0.0.tar.gz",
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")
rust_repositories(version = "1.62.1", edition="2018")

load("//bazel:crates.bzl", "raze_fetch_remote_crates")

raze_fetch_remote_crates()

load(":workspace.bzl", "bazel_version")
bazel_version(name = "bazel_version")

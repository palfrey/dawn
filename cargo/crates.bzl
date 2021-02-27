"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def raze_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "raze__actix_codec__0_2_0",
        url = "https://crates.io/api/v1/crates/actix-codec/0.2.0/download",
        type = "tar.gz",
        sha256 = "09e55f0a5c2ca15795035d90c46bd0e73a5123b72f68f12596d6ba5282051380",
        strip_prefix = "actix-codec-0.2.0",
        build_file = Label("//cargo/remote:BUILD.actix-codec-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_connect__1_0_1",
        url = "https://crates.io/api/v1/crates/actix-connect/1.0.1/download",
        type = "tar.gz",
        sha256 = "1f2b61480a8d30c94d5c883d79ef026b02ad6809931b0a4bb703f9545cd8c986",
        strip_prefix = "actix-connect-1.0.1",
        build_file = Label("//cargo/remote:BUILD.actix-connect-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_http__1_0_1",
        url = "https://crates.io/api/v1/crates/actix-http/1.0.1/download",
        type = "tar.gz",
        sha256 = "c16664cc4fdea8030837ad5a845eb231fb93fc3c5c171edfefb52fad92ce9019",
        strip_prefix = "actix-http-1.0.1",
        build_file = Label("//cargo/remote:BUILD.actix-http-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_macros__0_1_1",
        url = "https://crates.io/api/v1/crates/actix-macros/0.1.1/download",
        type = "tar.gz",
        sha256 = "21705adc76bbe4bc98434890e73a89cd00c6015e5704a60bb6eea6c3b72316b6",
        strip_prefix = "actix-macros-0.1.1",
        build_file = Label("//cargo/remote:BUILD.actix-macros-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_router__0_2_4",
        url = "https://crates.io/api/v1/crates/actix-router/0.2.4/download",
        type = "tar.gz",
        sha256 = "9d7a10ca4d94e8c8e7a87c5173aba1b97ba9a6563ca02b0e1cd23531093d3ec8",
        strip_prefix = "actix-router-0.2.4",
        build_file = Label("//cargo/remote:BUILD.actix-router-0.2.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_rt__1_0_0",
        url = "https://crates.io/api/v1/crates/actix-rt/1.0.0/download",
        type = "tar.gz",
        sha256 = "3f6a0a55507046441a496b2f0d26a84a65e67c8cafffe279072412f624b5fb6d",
        strip_prefix = "actix-rt-1.0.0",
        build_file = Label("//cargo/remote:BUILD.actix-rt-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_server__1_0_1",
        url = "https://crates.io/api/v1/crates/actix-server/1.0.1/download",
        type = "tar.gz",
        sha256 = "51d3455eaac03ca3e49d7b822eb35c884b861f715627254ccbe4309d08f1841a",
        strip_prefix = "actix-server-1.0.1",
        build_file = Label("//cargo/remote:BUILD.actix-server-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_service__1_0_1",
        url = "https://crates.io/api/v1/crates/actix-service/1.0.1/download",
        type = "tar.gz",
        sha256 = "7a5ecef49693fcfe2c13a34c7218eb5b7898ff3fbe334db8445759f871fec2df",
        strip_prefix = "actix-service-1.0.1",
        build_file = Label("//cargo/remote:BUILD.actix-service-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_testing__1_0_0",
        url = "https://crates.io/api/v1/crates/actix-testing/1.0.0/download",
        type = "tar.gz",
        sha256 = "48494745b72d0ea8ff0cf874aaf9b622a3ee03d7081ee0c04edea4f26d32c911",
        strip_prefix = "actix-testing-1.0.0",
        build_file = Label("//cargo/remote:BUILD.actix-testing-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_threadpool__0_3_1",
        url = "https://crates.io/api/v1/crates/actix-threadpool/0.3.1/download",
        type = "tar.gz",
        sha256 = "cf4082192601de5f303013709ff84d81ca6a1bc4af7fb24f367a500a23c6e84e",
        strip_prefix = "actix-threadpool-0.3.1",
        build_file = Label("//cargo/remote:BUILD.actix-threadpool-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_tls__1_0_0",
        url = "https://crates.io/api/v1/crates/actix-tls/1.0.0/download",
        type = "tar.gz",
        sha256 = "a4e5b4faaf105e9a6d389c606c298dcdb033061b00d532af9df56ff3a54995a8",
        strip_prefix = "actix-tls-1.0.0",
        build_file = Label("//cargo/remote:BUILD.actix-tls-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_utils__1_0_4",
        url = "https://crates.io/api/v1/crates/actix-utils/1.0.4/download",
        type = "tar.gz",
        sha256 = "a31d6e44d044cbad9d599eaac4007cf5194621c514b1324ea5116863357b04d5",
        strip_prefix = "actix-utils-1.0.4",
        build_file = Label("//cargo/remote:BUILD.actix-utils-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_web__2_0_0",
        url = "https://crates.io/api/v1/crates/actix-web/2.0.0/download",
        type = "tar.gz",
        sha256 = "3158e822461040822f0dbf1735b9c2ce1f95f93b651d7a7aded00b1efbb1f635",
        strip_prefix = "actix-web-2.0.0",
        build_file = Label("//cargo/remote:BUILD.actix-web-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_web_codegen__0_2_0",
        url = "https://crates.io/api/v1/crates/actix-web-codegen/0.2.0/download",
        type = "tar.gz",
        sha256 = "de0878b30e62623770a4713a6338329fd0119703bafc211d3e4144f4d4a7bdd5",
        strip_prefix = "actix-web-codegen-0.2.0",
        build_file = Label("//cargo/remote:BUILD.actix-web-codegen-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__adler32__1_0_4",
        url = "https://crates.io/api/v1/crates/adler32/1.0.4/download",
        type = "tar.gz",
        sha256 = "5d2e7343e7fc9de883d1b0341e0b13970f764c14101234857d2ddafa1cb1cac2",
        strip_prefix = "adler32-1.0.4",
        build_file = Label("//cargo/remote:BUILD.adler32-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__aho_corasick__0_7_6",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.7.6/download",
        type = "tar.gz",
        sha256 = "58fb5e95d83b38284460a5fda7d6470aa0b8844d283a0b614b8535e880800d2d",
        strip_prefix = "aho-corasick-0.7.6",
        build_file = Label("//cargo/remote:BUILD.aho-corasick-0.7.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__antidote__1_0_0",
        url = "https://crates.io/api/v1/crates/antidote/1.0.0/download",
        type = "tar.gz",
        sha256 = "34fde25430d87a9388dadbe6e34d7f72a462c8b43ac8d309b42b0a8505d7e2a5",
        strip_prefix = "antidote-1.0.0",
        build_file = Label("//cargo/remote:BUILD.antidote-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__arc_swap__0_3_11",
        url = "https://crates.io/api/v1/crates/arc-swap/0.3.11/download",
        type = "tar.gz",
        sha256 = "bc4662175ead9cd84451d5c35070517777949a2ed84551764129cedb88384841",
        strip_prefix = "arc-swap-0.3.11",
        build_file = Label("//cargo/remote:BUILD.arc-swap-0.3.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__arc_swap__0_4_4",
        url = "https://crates.io/api/v1/crates/arc-swap/0.4.4/download",
        type = "tar.gz",
        sha256 = "d7b8a9123b8027467bce0099fe556c628a53c8d83df0507084c31e9ba2e39aff",
        strip_prefix = "arc-swap-0.4.4",
        build_file = Label("//cargo/remote:BUILD.arc-swap-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_trait__0_1_22",
        url = "https://crates.io/api/v1/crates/async-trait/0.1.22/download",
        type = "tar.gz",
        sha256 = "c8df72488e87761e772f14ae0c2480396810e51b2c2ade912f97f0f7e5b95e3c",
        strip_prefix = "async-trait-0.1.22",
        build_file = Label("//cargo/remote:BUILD.async-trait-0.1.22.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atty__0_2_13",
        url = "https://crates.io/api/v1/crates/atty/0.2.13/download",
        type = "tar.gz",
        sha256 = "1803c647a3ec87095e7ae7acfca019e98de5ec9a7d01343f611cf3152ed71a90",
        strip_prefix = "atty-0.2.13",
        build_file = Label("//cargo/remote:BUILD.atty-0.2.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__autocfg__0_1_7",
        url = "https://crates.io/api/v1/crates/autocfg/0.1.7/download",
        type = "tar.gz",
        sha256 = "1d49d90015b3c36167a20fe2810c5cd875ad504b39cff3d4eae7977e6b7c1cb2",
        strip_prefix = "autocfg-0.1.7",
        build_file = Label("//cargo/remote:BUILD.autocfg-0.1.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__awc__1_0_1",
        url = "https://crates.io/api/v1/crates/awc/1.0.1/download",
        type = "tar.gz",
        sha256 = "d7601d4d1d7ef2335d6597a41b5fe069f6ab799b85f53565ab390e7b7065aac5",
        strip_prefix = "awc-1.0.1",
        build_file = Label("//cargo/remote:BUILD.awc-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__backtrace__0_3_40",
        url = "https://crates.io/api/v1/crates/backtrace/0.3.40/download",
        type = "tar.gz",
        sha256 = "924c76597f0d9ca25d762c25a4d369d51267536465dc5064bdf0eb073ed477ea",
        strip_prefix = "backtrace-0.3.40",
        build_file = Label("//cargo/remote:BUILD.backtrace-0.3.40.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__backtrace_sys__0_1_32",
        url = "https://crates.io/api/v1/crates/backtrace-sys/0.1.32/download",
        type = "tar.gz",
        sha256 = "5d6575f128516de27e3ce99689419835fce9643a9b215a14d2b5b685be018491",
        strip_prefix = "backtrace-sys-0.1.32",
        build_file = Label("//cargo/remote:BUILD.backtrace-sys-0.1.32.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_10_1",
        url = "https://crates.io/api/v1/crates/base64/0.10.1/download",
        type = "tar.gz",
        sha256 = "0b25d992356d2eb0ed82172f5248873db5560c4721f564b13cb5193bda5e668e",
        strip_prefix = "base64-0.10.1",
        build_file = Label("//cargo/remote:BUILD.base64-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_11_0",
        url = "https://crates.io/api/v1/crates/base64/0.11.0/download",
        type = "tar.gz",
        sha256 = "b41b7ea54a0c9d92199de89e20e58d49f02f8e699814ef3fdf266f6f748d15c7",
        strip_prefix = "base64-0.11.0",
        build_file = Label("//cargo/remote:BUILD.base64-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitflags__1_2_1",
        url = "https://crates.io/api/v1/crates/bitflags/1.2.1/download",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//cargo/remote:BUILD.bitflags-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__brotli_sys__0_3_2",
        url = "https://crates.io/api/v1/crates/brotli-sys/0.3.2/download",
        type = "tar.gz",
        sha256 = "4445dea95f4c2b41cde57cc9fee236ae4dbae88d8fcbdb4750fc1bb5d86aaecd",
        strip_prefix = "brotli-sys-0.3.2",
        build_file = Label("//cargo/remote:BUILD.brotli-sys-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__brotli2__0_3_2",
        url = "https://crates.io/api/v1/crates/brotli2/0.3.2/download",
        type = "tar.gz",
        sha256 = "0cb036c3eade309815c15ddbacec5b22c4d1f3983a774ab2eac2e3e9ea85568e",
        strip_prefix = "brotli2-0.3.2",
        build_file = Label("//cargo/remote:BUILD.brotli2-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__byteorder__1_3_2",
        url = "https://crates.io/api/v1/crates/byteorder/1.3.2/download",
        type = "tar.gz",
        sha256 = "a7c3dd8985a7111efc5c80b44e23ecdd8c007de8ade3b96595387e812b957cf5",
        strip_prefix = "byteorder-1.3.2",
        build_file = Label("//cargo/remote:BUILD.byteorder-1.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytes__0_4_12",
        url = "https://crates.io/api/v1/crates/bytes/0.4.12/download",
        type = "tar.gz",
        sha256 = "206fdffcfa2df7cbe15601ef46c813fce0965eb3286db6b56c583b814b51c81c",
        strip_prefix = "bytes-0.4.12",
        build_file = Label("//cargo/remote:BUILD.bytes-0.4.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytes__0_5_3",
        url = "https://crates.io/api/v1/crates/bytes/0.5.3/download",
        type = "tar.gz",
        sha256 = "10004c15deb332055f7a4a208190aed362cf9a7c2f6ab70a305fba50e1105f38",
        strip_prefix = "bytes-0.5.3",
        build_file = Label("//cargo/remote:BUILD.bytes-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytestring__0_1_2",
        url = "https://crates.io/api/v1/crates/bytestring/0.1.2/download",
        type = "tar.gz",
        sha256 = "b24c107a4432e408d2caa58d3f5e763b219236221406ea58a4076b62343a039d",
        strip_prefix = "bytestring-0.1.2",
        build_file = Label("//cargo/remote:BUILD.bytestring-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__c2_chacha__0_2_3",
        url = "https://crates.io/api/v1/crates/c2-chacha/0.2.3/download",
        type = "tar.gz",
        sha256 = "214238caa1bf3a496ec3392968969cab8549f96ff30652c9e56885329315f6bb",
        strip_prefix = "c2-chacha-0.2.3",
        build_file = Label("//cargo/remote:BUILD.c2-chacha-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__c_linked_list__1_1_1",
        url = "https://crates.io/api/v1/crates/c_linked_list/1.1.1/download",
        type = "tar.gz",
        sha256 = "4964518bd3b4a8190e832886cdc0da9794f12e8e6c1613a9e90ff331c4c8724b",
        strip_prefix = "c_linked_list-1.1.1",
        build_file = Label("//cargo/remote:BUILD.c_linked_list-1.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cc__1_0_48",
        url = "https://crates.io/api/v1/crates/cc/1.0.48/download",
        type = "tar.gz",
        sha256 = "f52a465a666ca3d838ebbf08b241383421412fe7ebb463527bba275526d89f76",
        strip_prefix = "cc-1.0.48",
        build_file = Label("//cargo/remote:BUILD.cc-1.0.48.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__0_1_10",
        url = "https://crates.io/api/v1/crates/cfg-if/0.1.10/download",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//cargo/remote:BUILD.cfg-if-0.1.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__chrono__0_4_10",
        url = "https://crates.io/api/v1/crates/chrono/0.4.10/download",
        type = "tar.gz",
        sha256 = "31850b4a4d6bae316f7a09e691c944c28299298837edc0a03f755618c23cbc01",
        strip_prefix = "chrono-0.4.10",
        build_file = Label("//cargo/remote:BUILD.chrono-0.4.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cloudabi__0_0_3",
        url = "https://crates.io/api/v1/crates/cloudabi/0.0.3/download",
        type = "tar.gz",
        sha256 = "ddfc5b9aa5d4507acaf872de71051dfd0e309860e88966e1051e462a077aac4f",
        strip_prefix = "cloudabi-0.0.3",
        build_file = Label("//cargo/remote:BUILD.cloudabi-0.0.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cookie__0_12_0",
        url = "https://crates.io/api/v1/crates/cookie/0.12.0/download",
        type = "tar.gz",
        sha256 = "888604f00b3db336d2af898ec3c1d5d0ddf5e6d462220f2ededc33a87ac4bbd5",
        strip_prefix = "cookie-0.12.0",
        build_file = Label("//cargo/remote:BUILD.cookie-0.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cookie_store__0_7_0",
        url = "https://crates.io/api/v1/crates/cookie_store/0.7.0/download",
        type = "tar.gz",
        sha256 = "46750b3f362965f197996c4448e4a0935e791bf7d6631bfce9ee0af3d24c919c",
        strip_prefix = "cookie_store-0.7.0",
        build_file = Label("//cargo/remote:BUILD.cookie_store-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__copyless__0_1_4",
        url = "https://crates.io/api/v1/crates/copyless/0.1.4/download",
        type = "tar.gz",
        sha256 = "6ff9c56c9fb2a49c05ef0e431485a22400af20d33226dc0764d891d09e724127",
        strip_prefix = "copyless-0.1.4",
        build_file = Label("//cargo/remote:BUILD.copyless-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__core_foundation__0_6_4",
        url = "https://crates.io/api/v1/crates/core-foundation/0.6.4/download",
        type = "tar.gz",
        sha256 = "25b9e03f145fd4f2bf705e07b900cd41fc636598fe5dc452fd0db1441c3f496d",
        strip_prefix = "core-foundation-0.6.4",
        build_file = Label("//cargo/remote:BUILD.core-foundation-0.6.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__core_foundation_sys__0_6_2",
        url = "https://crates.io/api/v1/crates/core-foundation-sys/0.6.2/download",
        type = "tar.gz",
        sha256 = "e7ca8a5221364ef15ce201e8ed2f609fc312682a8f4e0e3d4aa5879764e0fa3b",
        strip_prefix = "core-foundation-sys-0.6.2",
        build_file = Label("//cargo/remote:BUILD.core-foundation-sys-0.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crc32fast__1_2_0",
        url = "https://crates.io/api/v1/crates/crc32fast/1.2.0/download",
        type = "tar.gz",
        sha256 = "ba125de2af0df55319f41944744ad91c71113bf74a4646efff39afe1f6842db1",
        strip_prefix = "crc32fast-1.2.0",
        build_file = Label("//cargo/remote:BUILD.crc32fast-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_deque__0_7_2",
        url = "https://crates.io/api/v1/crates/crossbeam-deque/0.7.2/download",
        type = "tar.gz",
        sha256 = "c3aa945d63861bfe624b55d153a39684da1e8c0bc8fba932f7ee3a3c16cea3ca",
        strip_prefix = "crossbeam-deque-0.7.2",
        build_file = Label("//cargo/remote:BUILD.crossbeam-deque-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_epoch__0_8_0",
        url = "https://crates.io/api/v1/crates/crossbeam-epoch/0.8.0/download",
        type = "tar.gz",
        sha256 = "5064ebdbf05ce3cb95e45c8b086f72263f4166b29b97f6baff7ef7fe047b55ac",
        strip_prefix = "crossbeam-epoch-0.8.0",
        build_file = Label("//cargo/remote:BUILD.crossbeam-epoch-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_queue__0_1_2",
        url = "https://crates.io/api/v1/crates/crossbeam-queue/0.1.2/download",
        type = "tar.gz",
        sha256 = "7c979cd6cfe72335896575c6b5688da489e420d36a27a0b9eb0c73db574b4a4b",
        strip_prefix = "crossbeam-queue-0.1.2",
        build_file = Label("//cargo/remote:BUILD.crossbeam-queue-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_utils__0_6_6",
        url = "https://crates.io/api/v1/crates/crossbeam-utils/0.6.6/download",
        type = "tar.gz",
        sha256 = "04973fa96e96579258a5091af6003abde64af786b860f18622b82e026cca60e6",
        strip_prefix = "crossbeam-utils-0.6.6",
        build_file = Label("//cargo/remote:BUILD.crossbeam-utils-0.6.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_utils__0_7_0",
        url = "https://crates.io/api/v1/crates/crossbeam-utils/0.7.0/download",
        type = "tar.gz",
        sha256 = "ce446db02cdc3165b94ae73111e570793400d0794e46125cc4056c81cbb039f4",
        strip_prefix = "crossbeam-utils-0.7.0",
        build_file = Label("//cargo/remote:BUILD.crossbeam-utils-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__derive_more__0_99_2",
        url = "https://crates.io/api/v1/crates/derive_more/0.99.2/download",
        type = "tar.gz",
        sha256 = "2159be042979966de68315bce7034bb000c775f22e3e834e1c52ff78f041cae8",
        strip_prefix = "derive_more-0.99.2",
        build_file = Label("//cargo/remote:BUILD.derive_more-0.99.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__dtoa__0_4_4",
        url = "https://crates.io/api/v1/crates/dtoa/0.4.4/download",
        type = "tar.gz",
        sha256 = "ea57b42383d091c85abcc2706240b94ab2a8fa1fc81c10ff23c4de06e2a90b5e",
        strip_prefix = "dtoa-0.4.4",
        build_file = Label("//cargo/remote:BUILD.dtoa-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__either__1_5_3",
        url = "https://crates.io/api/v1/crates/either/1.5.3/download",
        type = "tar.gz",
        sha256 = "bb1f6b1ce1c140482ea30ddd3335fc0024ac7ee112895426e0a629a6c20adfe3",
        strip_prefix = "either-1.5.3",
        build_file = Label("//cargo/remote:BUILD.either-1.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__encoding_rs__0_8_22",
        url = "https://crates.io/api/v1/crates/encoding_rs/0.8.22/download",
        type = "tar.gz",
        sha256 = "cd8d03faa7fe0c1431609dfad7bbe827af30f82e1e2ae6f7ee4fca6bd764bc28",
        strip_prefix = "encoding_rs-0.8.22",
        build_file = Label("//cargo/remote:BUILD.encoding_rs-0.8.22.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__enum_as_inner__0_3_0",
        url = "https://crates.io/api/v1/crates/enum-as-inner/0.3.0/download",
        type = "tar.gz",
        sha256 = "900a6c7fbe523f4c2884eaf26b57b81bb69b6810a01a236390a7ac021d09492e",
        strip_prefix = "enum-as-inner-0.3.0",
        build_file = Label("//cargo/remote:BUILD.enum-as-inner-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__env_logger__0_7_1",
        url = "https://crates.io/api/v1/crates/env_logger/0.7.1/download",
        type = "tar.gz",
        sha256 = "44533bbbb3bb3c1fa17d9f2e4e38bbbaf8396ba82193c4cb1b6445d711445d36",
        strip_prefix = "env_logger-0.7.1",
        build_file = Label("//cargo/remote:BUILD.env_logger-0.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__error_chain__0_12_1",
        url = "https://crates.io/api/v1/crates/error-chain/0.12.1/download",
        type = "tar.gz",
        sha256 = "3ab49e9dcb602294bc42f9a7dfc9bc6e936fca4418ea300dbfb84fe16de0b7d9",
        strip_prefix = "error-chain-0.12.1",
        build_file = Label("//cargo/remote:BUILD.error-chain-0.12.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__failure__0_1_6",
        url = "https://crates.io/api/v1/crates/failure/0.1.6/download",
        type = "tar.gz",
        sha256 = "f8273f13c977665c5db7eb2b99ae520952fe5ac831ae4cd09d80c4c7042b5ed9",
        strip_prefix = "failure-0.1.6",
        build_file = Label("//cargo/remote:BUILD.failure-0.1.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__failure_derive__0_1_6",
        url = "https://crates.io/api/v1/crates/failure_derive/0.1.6/download",
        type = "tar.gz",
        sha256 = "0bc225b78e0391e4b8683440bf2e63c2deeeb2ce5189eab46e2b68c6d3725d08",
        strip_prefix = "failure_derive-0.1.6",
        build_file = Label("//cargo/remote:BUILD.failure_derive-0.1.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__flate2__1_0_13",
        url = "https://crates.io/api/v1/crates/flate2/1.0.13/download",
        type = "tar.gz",
        sha256 = "6bd6d6f4752952feb71363cffc9ebac9411b75b87c6ab6058c40c8900cf43c0f",
        strip_prefix = "flate2-1.0.13",
        build_file = Label("//cargo/remote:BUILD.flate2-1.0.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fnv__1_0_6",
        url = "https://crates.io/api/v1/crates/fnv/1.0.6/download",
        type = "tar.gz",
        sha256 = "2fad85553e09a6f881f739c29f0b00b0f01357c743266d478b68951ce23285f3",
        strip_prefix = "fnv-1.0.6",
        build_file = Label("//cargo/remote:BUILD.fnv-1.0.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__foreign_types__0_3_2",
        url = "https://crates.io/api/v1/crates/foreign-types/0.3.2/download",
        type = "tar.gz",
        sha256 = "f6f339eb8adc052cd2ca78910fda869aefa38d22d5cb648e6485e4d3fc06f3b1",
        strip_prefix = "foreign-types-0.3.2",
        build_file = Label("//cargo/remote:BUILD.foreign-types-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__foreign_types_shared__0_1_1",
        url = "https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download",
        type = "tar.gz",
        sha256 = "00b0228411908ca8685dba7fc2cdd70ec9990a6e753e89b6ac91a84c40fbaf4b",
        strip_prefix = "foreign-types-shared-0.1.1",
        build_file = Label("//cargo/remote:BUILD.foreign-types-shared-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fuchsia_cprng__0_1_1",
        url = "https://crates.io/api/v1/crates/fuchsia-cprng/0.1.1/download",
        type = "tar.gz",
        sha256 = "a06f77d526c1a601b7c4cdd98f54b5eaabffc14d5f2f0296febdc7f357c6d3ba",
        strip_prefix = "fuchsia-cprng-0.1.1",
        build_file = Label("//cargo/remote:BUILD.fuchsia-cprng-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fuchsia_zircon__0_3_3",
        url = "https://crates.io/api/v1/crates/fuchsia-zircon/0.3.3/download",
        type = "tar.gz",
        sha256 = "2e9763c69ebaae630ba35f74888db465e49e259ba1bc0eda7d06f4a067615d82",
        strip_prefix = "fuchsia-zircon-0.3.3",
        build_file = Label("//cargo/remote:BUILD.fuchsia-zircon-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fuchsia_zircon_sys__0_3_3",
        url = "https://crates.io/api/v1/crates/fuchsia-zircon-sys/0.3.3/download",
        type = "tar.gz",
        sha256 = "3dcaa9ae7725d12cdb85b3ad99a434db70b468c09ded17e012d86b5c1010f7a7",
        strip_prefix = "fuchsia-zircon-sys-0.3.3",
        build_file = Label("//cargo/remote:BUILD.fuchsia-zircon-sys-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures__0_1_29",
        url = "https://crates.io/api/v1/crates/futures/0.1.29/download",
        type = "tar.gz",
        sha256 = "1b980f2816d6ee8673b6517b52cb0e808a180efc92e5c19d02cdda79066703ef",
        strip_prefix = "futures-0.1.29",
        build_file = Label("//cargo/remote:BUILD.futures-0.1.29.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures__0_3_1",
        url = "https://crates.io/api/v1/crates/futures/0.3.1/download",
        type = "tar.gz",
        sha256 = "b6f16056ecbb57525ff698bb955162d0cd03bee84e6241c27ff75c08d8ca5987",
        strip_prefix = "futures-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_channel__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-channel/0.3.1/download",
        type = "tar.gz",
        sha256 = "fcae98ca17d102fd8a3603727b9259fcf7fa4239b603d2142926189bc8999b86",
        strip_prefix = "futures-channel-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-channel-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_core__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-core/0.3.1/download",
        type = "tar.gz",
        sha256 = "79564c427afefab1dfb3298535b21eda083ef7935b4f0ecbfcb121f0aec10866",
        strip_prefix = "futures-core-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-core-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_cpupool__0_1_8",
        url = "https://crates.io/api/v1/crates/futures-cpupool/0.1.8/download",
        type = "tar.gz",
        sha256 = "ab90cde24b3319636588d0c35fe03b1333857621051837ed769faefb4c2162e4",
        strip_prefix = "futures-cpupool-0.1.8",
        build_file = Label("//cargo/remote:BUILD.futures-cpupool-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_executor__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-executor/0.3.1/download",
        type = "tar.gz",
        sha256 = "1e274736563f686a837a0568b478bdabfeaec2dca794b5649b04e2fe1627c231",
        strip_prefix = "futures-executor-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-executor-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_io__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-io/0.3.1/download",
        type = "tar.gz",
        sha256 = "e676577d229e70952ab25f3945795ba5b16d63ca794ca9d2c860e5595d20b5ff",
        strip_prefix = "futures-io-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-io-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_macro__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-macro/0.3.1/download",
        type = "tar.gz",
        sha256 = "52e7c56c15537adb4f76d0b7a76ad131cb4d2f4f32d3b0bcabcbe1c7c5e87764",
        strip_prefix = "futures-macro-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-macro-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_sink__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-sink/0.3.1/download",
        type = "tar.gz",
        sha256 = "171be33efae63c2d59e6dbba34186fe0d6394fb378069a76dfd80fdcffd43c16",
        strip_prefix = "futures-sink-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-sink-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_task__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-task/0.3.1/download",
        type = "tar.gz",
        sha256 = "0bae52d6b29cf440e298856fec3965ee6fa71b06aa7495178615953fd669e5f9",
        strip_prefix = "futures-task-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-task-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_util__0_3_1",
        url = "https://crates.io/api/v1/crates/futures-util/0.3.1/download",
        type = "tar.gz",
        sha256 = "c0d66274fb76985d3c62c886d1da7ac4c0903a8c9f754e8fe0f35a6a6cc39e76",
        strip_prefix = "futures-util-0.3.1",
        build_file = Label("//cargo/remote:BUILD.futures-util-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fxhash__0_2_1",
        url = "https://crates.io/api/v1/crates/fxhash/0.2.1/download",
        type = "tar.gz",
        sha256 = "c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c",
        strip_prefix = "fxhash-0.2.1",
        build_file = Label("//cargo/remote:BUILD.fxhash-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gcc__0_3_55",
        url = "https://crates.io/api/v1/crates/gcc/0.3.55/download",
        type = "tar.gz",
        sha256 = "8f5f3913fa0bfe7ee1fd8248b6b9f42a5af4b9d65ec2dd2c3c26132b950ecfc2",
        strip_prefix = "gcc-0.3.55",
        build_file = Label("//cargo/remote:BUILD.gcc-0.3.55.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__get_if_addrs__0_5_3",
        url = "https://crates.io/api/v1/crates/get_if_addrs/0.5.3/download",
        type = "tar.gz",
        sha256 = "abddb55a898d32925f3148bd281174a68eeb68bbfd9a5938a57b18f506ee4ef7",
        strip_prefix = "get_if_addrs-0.5.3",
        build_file = Label("//cargo/remote:BUILD.get_if_addrs-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__get_if_addrs_sys__0_1_1",
        url = "https://crates.io/api/v1/crates/get_if_addrs-sys/0.1.1/download",
        type = "tar.gz",
        sha256 = "0d04f9fb746cf36b191c00f3ede8bde9c8e64f9f4b05ae2694a9ccf5e3f5ab48",
        strip_prefix = "get_if_addrs-sys-0.1.1",
        build_file = Label("//cargo/remote:BUILD.get_if_addrs-sys-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__getrandom__0_1_13",
        url = "https://crates.io/api/v1/crates/getrandom/0.1.13/download",
        type = "tar.gz",
        sha256 = "e7db7ca94ed4cd01190ceee0d8a8052f08a247aa1b469a7f68c6a3b71afcf407",
        strip_prefix = "getrandom-0.1.13",
        build_file = Label("//cargo/remote:BUILD.getrandom-0.1.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__h2__0_1_26",
        url = "https://crates.io/api/v1/crates/h2/0.1.26/download",
        type = "tar.gz",
        sha256 = "a5b34c246847f938a410a03c5458c7fee2274436675e76d8b903c08efc29c462",
        strip_prefix = "h2-0.1.26",
        build_file = Label("//cargo/remote:BUILD.h2-0.1.26.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__h2__0_2_1",
        url = "https://crates.io/api/v1/crates/h2/0.2.1/download",
        type = "tar.gz",
        sha256 = "b9433d71e471c1736fd5a61b671fc0b148d7a2992f666c958d03cd8feb3b88d1",
        strip_prefix = "h2-0.2.1",
        build_file = Label("//cargo/remote:BUILD.h2-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__heck__0_3_1",
        url = "https://crates.io/api/v1/crates/heck/0.3.1/download",
        type = "tar.gz",
        sha256 = "20564e78d53d2bb135c343b3f47714a56af2061f1c928fdb541dc7b9fdd94205",
        strip_prefix = "heck-0.3.1",
        build_file = Label("//cargo/remote:BUILD.heck-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hermit_abi__0_1_5",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.5/download",
        type = "tar.gz",
        sha256 = "f629dc602392d3ec14bfc8a09b5e644d7ffd725102b48b81e59f90f2633621d7",
        strip_prefix = "hermit-abi-0.1.5",
        build_file = Label("//cargo/remote:BUILD.hermit-abi-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hostname__0_1_5",
        url = "https://crates.io/api/v1/crates/hostname/0.1.5/download",
        type = "tar.gz",
        sha256 = "21ceb46a83a85e824ef93669c8b390009623863b5c195d1ba747292c0c72f94e",
        strip_prefix = "hostname-0.1.5",
        build_file = Label("//cargo/remote:BUILD.hostname-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http__0_1_21",
        url = "https://crates.io/api/v1/crates/http/0.1.21/download",
        type = "tar.gz",
        sha256 = "d6ccf5ede3a895d8856620237b2f02972c1bbc78d2965ad7fe8838d4a0ed41f0",
        strip_prefix = "http-0.1.21",
        build_file = Label("//cargo/remote:BUILD.http-0.1.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http__0_2_0",
        url = "https://crates.io/api/v1/crates/http/0.2.0/download",
        type = "tar.gz",
        sha256 = "b708cc7f06493459026f53b9a61a7a121a5d1ec6238dee58ea4941132b30156b",
        strip_prefix = "http-0.2.0",
        build_file = Label("//cargo/remote:BUILD.http-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http_body__0_1_0",
        url = "https://crates.io/api/v1/crates/http-body/0.1.0/download",
        type = "tar.gz",
        sha256 = "6741c859c1b2463a423a1dbce98d418e6c3c3fc720fb0d45528657320920292d",
        strip_prefix = "http-body-0.1.0",
        build_file = Label("//cargo/remote:BUILD.http-body-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__httparse__1_3_4",
        url = "https://crates.io/api/v1/crates/httparse/1.3.4/download",
        type = "tar.gz",
        sha256 = "cd179ae861f0c2e53da70d892f5f3029f9594be0c41dc5269cd371691b1dc2f9",
        strip_prefix = "httparse-1.3.4",
        build_file = Label("//cargo/remote:BUILD.httparse-1.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__humantime__1_3_0",
        url = "https://crates.io/api/v1/crates/humantime/1.3.0/download",
        type = "tar.gz",
        sha256 = "df004cfca50ef23c36850aaaa59ad52cc70d0e90243c3c7737a4dd32dc7a3c4f",
        strip_prefix = "humantime-1.3.0",
        build_file = Label("//cargo/remote:BUILD.humantime-1.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hyper__0_12_35",
        url = "https://crates.io/api/v1/crates/hyper/0.12.35/download",
        type = "tar.gz",
        sha256 = "9dbe6ed1438e1f8ad955a4701e9a944938e9519f6888d12d8558b645e247d5f6",
        strip_prefix = "hyper-0.12.35",
        build_file = Label("//cargo/remote:BUILD.hyper-0.12.35.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hyper_tls__0_3_2",
        url = "https://crates.io/api/v1/crates/hyper-tls/0.3.2/download",
        type = "tar.gz",
        sha256 = "3a800d6aa50af4b5850b2b0f659625ce9504df908e9733b635720483be26174f",
        strip_prefix = "hyper-tls-0.3.2",
        build_file = Label("//cargo/remote:BUILD.hyper-tls-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__idna__0_1_5",
        url = "https://crates.io/api/v1/crates/idna/0.1.5/download",
        type = "tar.gz",
        sha256 = "38f09e0f0b1fb55fdee1f17470ad800da77af5186a1a76c026b679358b7e844e",
        strip_prefix = "idna-0.1.5",
        build_file = Label("//cargo/remote:BUILD.idna-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__idna__0_2_0",
        url = "https://crates.io/api/v1/crates/idna/0.2.0/download",
        type = "tar.gz",
        sha256 = "02e2673c30ee86b5b96a9cb52ad15718aa1f966f5ab9ad54a8b95d5ca33120a9",
        strip_prefix = "idna-0.2.0",
        build_file = Label("//cargo/remote:BUILD.idna-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__indexmap__1_3_0",
        url = "https://crates.io/api/v1/crates/indexmap/1.3.0/download",
        type = "tar.gz",
        sha256 = "712d7b3ea5827fcb9d4fda14bf4da5f136f0db2ae9c8f4bd4e2d1c6fde4e6db2",
        strip_prefix = "indexmap-1.3.0",
        build_file = Label("//cargo/remote:BUILD.indexmap-1.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__iovec__0_1_4",
        url = "https://crates.io/api/v1/crates/iovec/0.1.4/download",
        type = "tar.gz",
        sha256 = "b2b3ea6ff95e175473f8ffe6a7eb7c00d054240321b84c57051175fe3c1e075e",
        strip_prefix = "iovec-0.1.4",
        build_file = Label("//cargo/remote:BUILD.iovec-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ipconfig__0_2_1",
        url = "https://crates.io/api/v1/crates/ipconfig/0.2.1/download",
        type = "tar.gz",
        sha256 = "aa79fa216fbe60834a9c0737d7fcd30425b32d1c58854663e24d4c4b328ed83f",
        strip_prefix = "ipconfig-0.2.1",
        build_file = Label("//cargo/remote:BUILD.ipconfig-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itertools__0_8_2",
        url = "https://crates.io/api/v1/crates/itertools/0.8.2/download",
        type = "tar.gz",
        sha256 = "f56a2d0bc861f9165be4eb3442afd3c236d8a98afd426f65d92324ae1091a484",
        strip_prefix = "itertools-0.8.2",
        build_file = Label("//cargo/remote:BUILD.itertools-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itoa__0_4_4",
        url = "https://crates.io/api/v1/crates/itoa/0.4.4/download",
        type = "tar.gz",
        sha256 = "501266b7edd0174f8530248f87f99c88fbe60ca4ef3dd486835b8d8d53136f7f",
        strip_prefix = "itoa-0.4.4",
        build_file = Label("//cargo/remote:BUILD.itoa-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__json__0_12_0",
        url = "https://crates.io/api/v1/crates/json/0.12.0/download",
        type = "tar.gz",
        sha256 = "b3ca41abbeb7615d56322a984e63be5e5d0a117dfaca86c14393e32a762ccac1",
        strip_prefix = "json-0.12.0",
        build_file = Label("//cargo/remote:BUILD.json-0.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__kernel32_sys__0_2_2",
        url = "https://crates.io/api/v1/crates/kernel32-sys/0.2.2/download",
        type = "tar.gz",
        sha256 = "7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d",
        strip_prefix = "kernel32-sys-0.2.2",
        build_file = Label("//cargo/remote:BUILD.kernel32-sys-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__language_tags__0_2_2",
        url = "https://crates.io/api/v1/crates/language-tags/0.2.2/download",
        type = "tar.gz",
        sha256 = "a91d884b6667cd606bb5a69aa0c99ba811a115fc68915e7056ec08a46e93199a",
        strip_prefix = "language-tags-0.2.2",
        build_file = Label("//cargo/remote:BUILD.language-tags-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//cargo/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_66",
        url = "https://crates.io/api/v1/crates/libc/0.2.66/download",
        type = "tar.gz",
        sha256 = "d515b1f41455adea1313a4a2ac8a8a477634fbae63cc6100e3aebb207ce61558",
        strip_prefix = "libc-0.2.66",
        build_file = Label("//cargo/remote:BUILD.libc-0.2.66.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__linked_hash_map__0_5_2",
        url = "https://crates.io/api/v1/crates/linked-hash-map/0.5.2/download",
        type = "tar.gz",
        sha256 = "ae91b68aebc4ddb91978b11a1b02ddd8602a05ec19002801c5666000e05e0f83",
        strip_prefix = "linked-hash-map-0.5.2",
        build_file = Label("//cargo/remote:BUILD.linked-hash-map-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lock_api__0_3_2",
        url = "https://crates.io/api/v1/crates/lock_api/0.3.2/download",
        type = "tar.gz",
        sha256 = "e57b3997725d2b60dbec1297f6c2e2957cc383db1cebd6be812163f969c7d586",
        strip_prefix = "lock_api-0.3.2",
        build_file = Label("//cargo/remote:BUILD.lock_api-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_3_9",
        url = "https://crates.io/api/v1/crates/log/0.3.9/download",
        type = "tar.gz",
        sha256 = "e19e8d5c34a3e0e2223db8e060f9e8264aeeb5c5fc64a4ee9965c062211c024b",
        strip_prefix = "log-0.3.9",
        build_file = Label("//cargo/remote:BUILD.log-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_4_8",
        url = "https://crates.io/api/v1/crates/log/0.4.8/download",
        type = "tar.gz",
        sha256 = "14b6052be84e6b71ab17edffc2eeabf5c2c3ae1fdb464aae35ac50c67a44e1f7",
        strip_prefix = "log-0.4.8",
        build_file = Label("//cargo/remote:BUILD.log-0.4.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log_mdc__0_1_0",
        url = "https://crates.io/api/v1/crates/log-mdc/0.1.0/download",
        type = "tar.gz",
        sha256 = "a94d21414c1f4a51209ad204c1776a3d0765002c76c6abcb602a6f09f1e881c7",
        strip_prefix = "log-mdc-0.1.0",
        build_file = Label("//cargo/remote:BUILD.log-mdc-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log4rs__0_9_0",
        url = "https://crates.io/api/v1/crates/log4rs/0.9.0/download",
        type = "tar.gz",
        sha256 = "e229f32d17a1a822df4bb22ffdf1c7449d0ece700f310e87254a297be31c3b63",
        strip_prefix = "log4rs-0.9.0",
        build_file = Label("//cargo/remote:BUILD.log4rs-0.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lru_cache__0_1_2",
        url = "https://crates.io/api/v1/crates/lru-cache/0.1.2/download",
        type = "tar.gz",
        sha256 = "31e24f1ad8321ca0e8a1e0ac13f23cb668e6f5466c2c57319f6a5cf1cc8e3b1c",
        strip_prefix = "lru-cache-0.1.2",
        build_file = Label("//cargo/remote:BUILD.lru-cache-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__matches__0_1_8",
        url = "https://crates.io/api/v1/crates/matches/0.1.8/download",
        type = "tar.gz",
        sha256 = "7ffc5c5338469d4d3ea17d269fa8ea3512ad247247c30bd2df69e68309ed0a08",
        strip_prefix = "matches-0.1.8",
        build_file = Label("//cargo/remote:BUILD.matches-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__maybe_uninit__2_0_0",
        url = "https://crates.io/api/v1/crates/maybe-uninit/2.0.0/download",
        type = "tar.gz",
        sha256 = "60302e4db3a61da70c0cb7991976248362f30319e88850c487b9b95bbf059e00",
        strip_prefix = "maybe-uninit-2.0.0",
        build_file = Label("//cargo/remote:BUILD.maybe-uninit-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memchr__2_2_1",
        url = "https://crates.io/api/v1/crates/memchr/2.2.1/download",
        type = "tar.gz",
        sha256 = "88579771288728879b57485cc7d6b07d648c9f0141eb955f8ab7f9d45394468e",
        strip_prefix = "memchr-2.2.1",
        build_file = Label("//cargo/remote:BUILD.memchr-2.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memoffset__0_5_3",
        url = "https://crates.io/api/v1/crates/memoffset/0.5.3/download",
        type = "tar.gz",
        sha256 = "75189eb85871ea5c2e2c15abbdd541185f63b408415e5051f5cac122d8c774b9",
        strip_prefix = "memoffset-0.5.3",
        build_file = Label("//cargo/remote:BUILD.memoffset-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mime__0_3_14",
        url = "https://crates.io/api/v1/crates/mime/0.3.14/download",
        type = "tar.gz",
        sha256 = "dd1d63acd1b78403cc0c325605908475dd9b9a3acbf65ed8bcab97e27014afcf",
        strip_prefix = "mime-0.3.14",
        build_file = Label("//cargo/remote:BUILD.mime-0.3.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mime_guess__2_0_1",
        url = "https://crates.io/api/v1/crates/mime_guess/2.0.1/download",
        type = "tar.gz",
        sha256 = "1a0ed03949aef72dbdf3116a383d7b38b4768e6f960528cd6a6044aa9ed68599",
        strip_prefix = "mime_guess-2.0.1",
        build_file = Label("//cargo/remote:BUILD.mime_guess-2.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miniz_oxide__0_3_5",
        url = "https://crates.io/api/v1/crates/miniz_oxide/0.3.5/download",
        type = "tar.gz",
        sha256 = "6f3f74f726ae935c3f514300cc6773a0c9492abc5e972d42ba0c0ebb88757625",
        strip_prefix = "miniz_oxide-0.3.5",
        build_file = Label("//cargo/remote:BUILD.miniz_oxide-0.3.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mio__0_6_21",
        url = "https://crates.io/api/v1/crates/mio/0.6.21/download",
        type = "tar.gz",
        sha256 = "302dec22bcf6bae6dfb69c647187f4b4d0fb6f535521f7bc022430ce8e12008f",
        strip_prefix = "mio-0.6.21",
        build_file = Label("//cargo/remote:BUILD.mio-0.6.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mio_uds__0_6_7",
        url = "https://crates.io/api/v1/crates/mio-uds/0.6.7/download",
        type = "tar.gz",
        sha256 = "966257a94e196b11bb43aca423754d87429960a768de9414f3691d6957abf125",
        strip_prefix = "mio-uds-0.6.7",
        build_file = Label("//cargo/remote:BUILD.mio-uds-0.6.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miow__0_2_1",
        url = "https://crates.io/api/v1/crates/miow/0.2.1/download",
        type = "tar.gz",
        sha256 = "8c1f2f3b1cf331de6896aabf6e9d55dca90356cc9960cca7eaaf408a355ae919",
        strip_prefix = "miow-0.2.1",
        build_file = Label("//cargo/remote:BUILD.miow-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mustache__0_8_2",
        url = "https://crates.io/api/v1/crates/mustache/0.8.2/download",
        type = "tar.gz",
        sha256 = "ddb004e419334fc9172d0a5ff91c0770bdd6239091b0b343eb5926101f0a7d13",
        strip_prefix = "mustache-0.8.2",
        build_file = Label("//cargo/remote:BUILD.mustache-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__native_tls__0_2_3",
        url = "https://crates.io/api/v1/crates/native-tls/0.2.3/download",
        type = "tar.gz",
        sha256 = "4b2df1a4c22fd44a62147fd8f13dd0f95c9d8ca7b2610299b2a2f9cf8964274e",
        strip_prefix = "native-tls-0.2.3",
        build_file = Label("//cargo/remote:BUILD.native-tls-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__net2__0_2_33",
        url = "https://crates.io/api/v1/crates/net2/0.2.33/download",
        type = "tar.gz",
        sha256 = "42550d9fb7b6684a6d404d9fa7250c2eb2646df731d1c06afc06dcee9e1bcf88",
        strip_prefix = "net2-0.2.33",
        build_file = Label("//cargo/remote:BUILD.net2-0.2.33.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_integer__0_1_41",
        url = "https://crates.io/api/v1/crates/num-integer/0.1.41/download",
        type = "tar.gz",
        sha256 = "b85e541ef8255f6cf42bbfe4ef361305c6c135d10919ecc26126c4e5ae94bc09",
        strip_prefix = "num-integer-0.1.41",
        build_file = Label("//cargo/remote:BUILD.num-integer-0.1.41.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_traits__0_2_10",
        url = "https://crates.io/api/v1/crates/num-traits/0.2.10/download",
        type = "tar.gz",
        sha256 = "d4c81ffc11c212fa327657cb19dd85eb7419e163b5b076bede2bdb5c974c07e4",
        strip_prefix = "num-traits-0.2.10",
        build_file = Label("//cargo/remote:BUILD.num-traits-0.2.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_cpus__1_11_1",
        url = "https://crates.io/api/v1/crates/num_cpus/1.11.1/download",
        type = "tar.gz",
        sha256 = "76dac5ed2a876980778b8b85f75a71b6cbf0db0b1232ee12f826bccb00d09d72",
        strip_prefix = "num_cpus-1.11.1",
        build_file = Label("//cargo/remote:BUILD.num_cpus-1.11.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__openssl__0_10_26",
        url = "https://crates.io/api/v1/crates/openssl/0.10.26/download",
        type = "tar.gz",
        sha256 = "3a3cc5799d98e1088141b8e01ff760112bbd9f19d850c124500566ca6901a585",
        strip_prefix = "openssl-0.10.26",
        build_file = Label("//cargo/remote:BUILD.openssl-0.10.26.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__openssl_probe__0_1_2",
        url = "https://crates.io/api/v1/crates/openssl-probe/0.1.2/download",
        type = "tar.gz",
        sha256 = "77af24da69f9d9341038eba93a073b1fdaaa1b788221b00a69bce9e762cb32de",
        strip_prefix = "openssl-probe-0.1.2",
        build_file = Label("//cargo/remote:BUILD.openssl-probe-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__openssl_sys__0_9_53",
        url = "https://crates.io/api/v1/crates/openssl-sys/0.9.53/download",
        type = "tar.gz",
        sha256 = "465d16ae7fc0e313318f7de5cecf57b2fbe7511fd213978b457e1c96ff46736f",
        strip_prefix = "openssl-sys-0.9.53",
        build_file = Label("//cargo/remote:BUILD.openssl-sys-0.9.53.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ordered_float__1_0_2",
        url = "https://crates.io/api/v1/crates/ordered-float/1.0.2/download",
        type = "tar.gz",
        sha256 = "18869315e81473c951eb56ad5558bbc56978562d3ecfb87abb7a1e944cea4518",
        strip_prefix = "ordered-float-1.0.2",
        build_file = Label("//cargo/remote:BUILD.ordered-float-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot__0_10_0",
        url = "https://crates.io/api/v1/crates/parking_lot/0.10.0/download",
        type = "tar.gz",
        sha256 = "92e98c49ab0b7ce5b222f2cc9193fc4efe11c6d0bd4f648e374684a6857b1cfc",
        strip_prefix = "parking_lot-0.10.0",
        build_file = Label("//cargo/remote:BUILD.parking_lot-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot__0_9_0",
        url = "https://crates.io/api/v1/crates/parking_lot/0.9.0/download",
        type = "tar.gz",
        sha256 = "f842b1982eb6c2fe34036a4fbfb06dd185a3f5c8edfaacdf7d1ea10b07de6252",
        strip_prefix = "parking_lot-0.9.0",
        build_file = Label("//cargo/remote:BUILD.parking_lot-0.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot_core__0_6_2",
        url = "https://crates.io/api/v1/crates/parking_lot_core/0.6.2/download",
        type = "tar.gz",
        sha256 = "b876b1b9e7ac6e1a74a6da34d25c42e17e8862aa409cbbbdcfc8d86c6f3bc62b",
        strip_prefix = "parking_lot_core-0.6.2",
        build_file = Label("//cargo/remote:BUILD.parking_lot_core-0.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot_core__0_7_0",
        url = "https://crates.io/api/v1/crates/parking_lot_core/0.7.0/download",
        type = "tar.gz",
        sha256 = "7582838484df45743c8434fbff785e8edf260c28748353d44bc0da32e0ceabf1",
        strip_prefix = "parking_lot_core-0.7.0",
        build_file = Label("//cargo/remote:BUILD.parking_lot_core-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__percent_encoding__1_0_1",
        url = "https://crates.io/api/v1/crates/percent-encoding/1.0.1/download",
        type = "tar.gz",
        sha256 = "31010dd2e1ac33d5b46a5b413495239882813e0369f8ed8a5e266f173602f831",
        strip_prefix = "percent-encoding-1.0.1",
        build_file = Label("//cargo/remote:BUILD.percent-encoding-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__percent_encoding__2_1_0",
        url = "https://crates.io/api/v1/crates/percent-encoding/2.1.0/download",
        type = "tar.gz",
        sha256 = "d4fd5641d01c8f18a23da7b6fe29298ff4b55afcccdf78973b24cf3175fee32e",
        strip_prefix = "percent-encoding-2.1.0",
        build_file = Label("//cargo/remote:BUILD.percent-encoding-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project__0_4_6",
        url = "https://crates.io/api/v1/crates/pin-project/0.4.6/download",
        type = "tar.gz",
        sha256 = "94b90146c7216e4cb534069fb91366de4ea0ea353105ee45ed297e2d1619e469",
        strip_prefix = "pin-project-0.4.6",
        build_file = Label("//cargo/remote:BUILD.pin-project-0.4.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project_internal__0_4_6",
        url = "https://crates.io/api/v1/crates/pin-project-internal/0.4.6/download",
        type = "tar.gz",
        sha256 = "44ca92f893f0656d3cba8158dd0f2b99b94de256a4a54e870bd6922fcc6c8355",
        strip_prefix = "pin-project-internal-0.4.6",
        build_file = Label("//cargo/remote:BUILD.pin-project-internal-0.4.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project_lite__0_1_1",
        url = "https://crates.io/api/v1/crates/pin-project-lite/0.1.1/download",
        type = "tar.gz",
        sha256 = "f0af6cbca0e6e3ce8692ee19fb8d734b641899e07b68eb73e9bbbd32f1703991",
        strip_prefix = "pin-project-lite-0.1.1",
        build_file = Label("//cargo/remote:BUILD.pin-project-lite-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_utils__0_1_0_alpha_4",
        url = "https://crates.io/api/v1/crates/pin-utils/0.1.0-alpha.4/download",
        type = "tar.gz",
        sha256 = "5894c618ce612a3fa23881b152b608bafb8c56cfc22f434a3ba3120b40f7b587",
        strip_prefix = "pin-utils-0.1.0-alpha.4",
        build_file = Label("//cargo/remote:BUILD.pin-utils-0.1.0-alpha.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pkg_config__0_3_17",
        url = "https://crates.io/api/v1/crates/pkg-config/0.3.17/download",
        type = "tar.gz",
        sha256 = "05da548ad6865900e60eaba7f589cc0783590a92e940c26953ff81ddbab2d677",
        strip_prefix = "pkg-config-0.3.17",
        build_file = Label("//cargo/remote:BUILD.pkg-config-0.3.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ppv_lite86__0_2_6",
        url = "https://crates.io/api/v1/crates/ppv-lite86/0.2.6/download",
        type = "tar.gz",
        sha256 = "74490b50b9fbe561ac330df47c08f3f33073d2d00c150f719147d7c54522fa1b",
        strip_prefix = "ppv-lite86-0.2.6",
        build_file = Label("//cargo/remote:BUILD.ppv-lite86-0.2.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_hack__0_5_11",
        url = "https://crates.io/api/v1/crates/proc-macro-hack/0.5.11/download",
        type = "tar.gz",
        sha256 = "ecd45702f76d6d3c75a80564378ae228a85f0b59d2f3ed43c91b4a69eb2ebfc5",
        strip_prefix = "proc-macro-hack-0.5.11",
        build_file = Label("//cargo/remote:BUILD.proc-macro-hack-0.5.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_nested__0_1_3",
        url = "https://crates.io/api/v1/crates/proc-macro-nested/0.1.3/download",
        type = "tar.gz",
        sha256 = "369a6ed065f249a159e06c45752c780bda2fb53c995718f9e484d08daa9eb42e",
        strip_prefix = "proc-macro-nested-0.1.3",
        build_file = Label("//cargo/remote:BUILD.proc-macro-nested-0.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_6",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.6/download",
        type = "tar.gz",
        sha256 = "9c9e470a8dc4aeae2dee2f335e8f533e2d4b347e1434e5671afc49b054592f27",
        strip_prefix = "proc-macro2-1.0.6",
        build_file = Label("//cargo/remote:BUILD.proc-macro2-1.0.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__publicsuffix__1_5_4",
        url = "https://crates.io/api/v1/crates/publicsuffix/1.5.4/download",
        type = "tar.gz",
        sha256 = "3bbaa49075179162b49acac1c6aa45fb4dafb5f13cf6794276d77bc7fd95757b",
        strip_prefix = "publicsuffix-1.5.4",
        build_file = Label("//cargo/remote:BUILD.publicsuffix-1.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quick_error__1_2_2",
        url = "https://crates.io/api/v1/crates/quick-error/1.2.2/download",
        type = "tar.gz",
        sha256 = "9274b940887ce9addde99c4eee6b5c44cc494b182b97e73dc8ffdcb3397fd3f0",
        strip_prefix = "quick-error-1.2.2",
        build_file = Label("//cargo/remote:BUILD.quick-error-1.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_2",
        url = "https://crates.io/api/v1/crates/quote/1.0.2/download",
        type = "tar.gz",
        sha256 = "053a8c8bcc71fcce321828dc897a98ab9760bef03a4fc36693c231e5b3216cfe",
        strip_prefix = "quote-1.0.2",
        build_file = Label("//cargo/remote:BUILD.quote-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand__0_6_5",
        url = "https://crates.io/api/v1/crates/rand/0.6.5/download",
        type = "tar.gz",
        sha256 = "6d71dacdc3c88c1fde3885a3be3fbab9f35724e6ce99467f7d9c5026132184ca",
        strip_prefix = "rand-0.6.5",
        build_file = Label("//cargo/remote:BUILD.rand-0.6.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand__0_7_2",
        url = "https://crates.io/api/v1/crates/rand/0.7.2/download",
        type = "tar.gz",
        sha256 = "3ae1b169243eaf61759b8475a998f0a385e42042370f3a7dbaf35246eacc8412",
        strip_prefix = "rand-0.7.2",
        build_file = Label("//cargo/remote:BUILD.rand-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_chacha__0_1_1",
        url = "https://crates.io/api/v1/crates/rand_chacha/0.1.1/download",
        type = "tar.gz",
        sha256 = "556d3a1ca6600bfcbab7c7c91ccb085ac7fbbcd70e008a98742e7847f4f7bcef",
        strip_prefix = "rand_chacha-0.1.1",
        build_file = Label("//cargo/remote:BUILD.rand_chacha-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_chacha__0_2_1",
        url = "https://crates.io/api/v1/crates/rand_chacha/0.2.1/download",
        type = "tar.gz",
        sha256 = "03a2a90da8c7523f554344f921aa97283eadf6ac484a6d2a7d0212fa7f8d6853",
        strip_prefix = "rand_chacha-0.2.1",
        build_file = Label("//cargo/remote:BUILD.rand_chacha-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_core__0_3_1",
        url = "https://crates.io/api/v1/crates/rand_core/0.3.1/download",
        type = "tar.gz",
        sha256 = "7a6fdeb83b075e8266dcc8762c22776f6877a63111121f5f8c7411e5be7eed4b",
        strip_prefix = "rand_core-0.3.1",
        build_file = Label("//cargo/remote:BUILD.rand_core-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_core__0_4_2",
        url = "https://crates.io/api/v1/crates/rand_core/0.4.2/download",
        type = "tar.gz",
        sha256 = "9c33a3c44ca05fa6f1807d8e6743f3824e8509beca625669633be0acbdf509dc",
        strip_prefix = "rand_core-0.4.2",
        build_file = Label("//cargo/remote:BUILD.rand_core-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_core__0_5_1",
        url = "https://crates.io/api/v1/crates/rand_core/0.5.1/download",
        type = "tar.gz",
        sha256 = "90bde5296fc891b0cef12a6d03ddccc162ce7b2aff54160af9338f8d40df6d19",
        strip_prefix = "rand_core-0.5.1",
        build_file = Label("//cargo/remote:BUILD.rand_core-0.5.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_hc__0_1_0",
        url = "https://crates.io/api/v1/crates/rand_hc/0.1.0/download",
        type = "tar.gz",
        sha256 = "7b40677c7be09ae76218dc623efbf7b18e34bced3f38883af07bb75630a21bc4",
        strip_prefix = "rand_hc-0.1.0",
        build_file = Label("//cargo/remote:BUILD.rand_hc-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_hc__0_2_0",
        url = "https://crates.io/api/v1/crates/rand_hc/0.2.0/download",
        type = "tar.gz",
        sha256 = "ca3129af7b92a17112d59ad498c6f81eaf463253766b90396d39ea7a39d6613c",
        strip_prefix = "rand_hc-0.2.0",
        build_file = Label("//cargo/remote:BUILD.rand_hc-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_isaac__0_1_1",
        url = "https://crates.io/api/v1/crates/rand_isaac/0.1.1/download",
        type = "tar.gz",
        sha256 = "ded997c9d5f13925be2a6fd7e66bf1872597f759fd9dd93513dd7e92e5a5ee08",
        strip_prefix = "rand_isaac-0.1.1",
        build_file = Label("//cargo/remote:BUILD.rand_isaac-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_jitter__0_1_4",
        url = "https://crates.io/api/v1/crates/rand_jitter/0.1.4/download",
        type = "tar.gz",
        sha256 = "1166d5c91dc97b88d1decc3285bb0a99ed84b05cfd0bc2341bdf2d43fc41e39b",
        strip_prefix = "rand_jitter-0.1.4",
        build_file = Label("//cargo/remote:BUILD.rand_jitter-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_os__0_1_3",
        url = "https://crates.io/api/v1/crates/rand_os/0.1.3/download",
        type = "tar.gz",
        sha256 = "7b75f676a1e053fc562eafbb47838d67c84801e38fc1ba459e8f180deabd5071",
        strip_prefix = "rand_os-0.1.3",
        build_file = Label("//cargo/remote:BUILD.rand_os-0.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_pcg__0_1_2",
        url = "https://crates.io/api/v1/crates/rand_pcg/0.1.2/download",
        type = "tar.gz",
        sha256 = "abf9b09b01790cfe0364f52bf32995ea3c39f4d2dd011eac241d2914146d0b44",
        strip_prefix = "rand_pcg-0.1.2",
        build_file = Label("//cargo/remote:BUILD.rand_pcg-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_xorshift__0_1_1",
        url = "https://crates.io/api/v1/crates/rand_xorshift/0.1.1/download",
        type = "tar.gz",
        sha256 = "cbf7e9e623549b0e21f6e97cf8ecf247c1a8fd2e8a992ae265314300b2455d5c",
        strip_prefix = "rand_xorshift-0.1.1",
        build_file = Label("//cargo/remote:BUILD.rand_xorshift-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rdrand__0_4_0",
        url = "https://crates.io/api/v1/crates/rdrand/0.4.0/download",
        type = "tar.gz",
        sha256 = "678054eb77286b51581ba43620cc911abf02758c91f93f479767aed0f90458b2",
        strip_prefix = "rdrand-0.4.0",
        build_file = Label("//cargo/remote:BUILD.rdrand-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_1_56",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.1.56/download",
        type = "tar.gz",
        sha256 = "2439c63f3f6139d1b57529d16bc3b8bb855230c8efcc5d3a896c8bea7c3b1e84",
        strip_prefix = "redox_syscall-0.1.56",
        build_file = Label("//cargo/remote:BUILD.redox_syscall-0.1.56.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__1_3_1",
        url = "https://crates.io/api/v1/crates/regex/1.3.1/download",
        type = "tar.gz",
        sha256 = "dc220bd33bdce8f093101afe22a037b8eb0e5af33592e6a9caafff0d4cb81cbd",
        strip_prefix = "regex-1.3.1",
        build_file = Label("//cargo/remote:BUILD.regex-1.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_6_12",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.12/download",
        type = "tar.gz",
        sha256 = "11a7e20d1cce64ef2fed88b66d347f88bd9babb82845b2b858f3edbf59a4f716",
        strip_prefix = "regex-syntax-0.6.12",
        build_file = Label("//cargo/remote:BUILD.regex-syntax-0.6.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__remove_dir_all__0_5_2",
        url = "https://crates.io/api/v1/crates/remove_dir_all/0.5.2/download",
        type = "tar.gz",
        sha256 = "4a83fa3702a688b9359eccba92d153ac33fd2e8462f9e0e3fdf155239ea7792e",
        strip_prefix = "remove_dir_all-0.5.2",
        build_file = Label("//cargo/remote:BUILD.remove_dir_all-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__reqwest__0_9_24",
        url = "https://crates.io/api/v1/crates/reqwest/0.9.24/download",
        type = "tar.gz",
        sha256 = "f88643aea3c1343c804950d7bf983bd2067f5ab59db6d613a08e05572f2714ab",
        strip_prefix = "reqwest-0.9.24",
        build_file = Label("//cargo/remote:BUILD.reqwest-0.9.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__reqwest_mock__0_6_0",
        url = "https://crates.io/api/v1/crates/reqwest_mock/0.6.0/download",
        type = "tar.gz",
        sha256 = "aac7d95fb02561c126052c606fb75bc4855db891c8578c6b7573b5a09f73a259",
        strip_prefix = "reqwest_mock-0.6.0",
        build_file = Label("//cargo/remote:BUILD.reqwest_mock-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__resolv_conf__0_6_2",
        url = "https://crates.io/api/v1/crates/resolv-conf/0.6.2/download",
        type = "tar.gz",
        sha256 = "b263b4aa1b5de9ffc0054a2386f96992058bb6870aab516f8cdeb8a667d56dcb",
        strip_prefix = "resolv-conf-0.6.2",
        build_file = Label("//cargo/remote:BUILD.resolv-conf-0.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustc_demangle__0_1_16",
        url = "https://crates.io/api/v1/crates/rustc-demangle/0.1.16/download",
        type = "tar.gz",
        sha256 = "4c691c0e608126e00913e33f0ccf3727d5fc84573623b8d65b2df340b5201783",
        strip_prefix = "rustc-demangle-0.1.16",
        build_file = Label("//cargo/remote:BUILD.rustc-demangle-0.1.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustc_serialize__0_3_24",
        url = "https://crates.io/api/v1/crates/rustc-serialize/0.3.24/download",
        type = "tar.gz",
        sha256 = "dcf128d1287d2ea9d80910b5f1120d0b8eede3fbf1abe91c40d39ea7d51e6fda",
        strip_prefix = "rustc-serialize-0.3.24",
        build_file = Label("//cargo/remote:BUILD.rustc-serialize-0.3.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustc_version__0_2_3",
        url = "https://crates.io/api/v1/crates/rustc_version/0.2.3/download",
        type = "tar.gz",
        sha256 = "138e3e0acb6c9fb258b19b67cb8abd63c00679d2851805ea151465464fe9030a",
        strip_prefix = "rustc_version-0.2.3",
        build_file = Label("//cargo/remote:BUILD.rustc_version-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ryu__1_0_2",
        url = "https://crates.io/api/v1/crates/ryu/1.0.2/download",
        type = "tar.gz",
        sha256 = "bfa8506c1de11c9c4e4c38863ccbe02a305c8188e85a05a784c9e11e1c3910c8",
        strip_prefix = "ryu-1.0.2",
        build_file = Label("//cargo/remote:BUILD.ryu-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__schannel__0_1_16",
        url = "https://crates.io/api/v1/crates/schannel/0.1.16/download",
        type = "tar.gz",
        sha256 = "87f550b06b6cba9c8b8be3ee73f391990116bf527450d2556e9b9ce263b9a021",
        strip_prefix = "schannel-0.1.16",
        build_file = Label("//cargo/remote:BUILD.schannel-0.1.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__scopeguard__1_0_0",
        url = "https://crates.io/api/v1/crates/scopeguard/1.0.0/download",
        type = "tar.gz",
        sha256 = "b42e15e59b18a828bbf5c58ea01debb36b9b096346de35d941dcb89009f24a0d",
        strip_prefix = "scopeguard-1.0.0",
        build_file = Label("//cargo/remote:BUILD.scopeguard-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__security_framework__0_3_4",
        url = "https://crates.io/api/v1/crates/security-framework/0.3.4/download",
        type = "tar.gz",
        sha256 = "8ef2429d7cefe5fd28bd1d2ed41c944547d4ff84776f5935b456da44593a16df",
        strip_prefix = "security-framework-0.3.4",
        build_file = Label("//cargo/remote:BUILD.security-framework-0.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__security_framework_sys__0_3_3",
        url = "https://crates.io/api/v1/crates/security-framework-sys/0.3.3/download",
        type = "tar.gz",
        sha256 = "e31493fc37615debb8c5090a7aeb4a9730bc61e77ab10b9af59f1a202284f895",
        strip_prefix = "security-framework-sys-0.3.3",
        build_file = Label("//cargo/remote:BUILD.security-framework-sys-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__semver__0_9_0",
        url = "https://crates.io/api/v1/crates/semver/0.9.0/download",
        type = "tar.gz",
        sha256 = "1d7eb9ef2c18661902cc47e535f9bc51b78acd254da71d375c2f6720d9a40403",
        strip_prefix = "semver-0.9.0",
        build_file = Label("//cargo/remote:BUILD.semver-0.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__semver_parser__0_7_0",
        url = "https://crates.io/api/v1/crates/semver-parser/0.7.0/download",
        type = "tar.gz",
        sha256 = "388a1df253eca08550bef6c72392cfe7c30914bf41df5269b68cbd6ff8f570a3",
        strip_prefix = "semver-parser-0.7.0",
        build_file = Label("//cargo/remote:BUILD.semver-parser-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde__1_0_104",
        url = "https://crates.io/api/v1/crates/serde/1.0.104/download",
        type = "tar.gz",
        sha256 = "414115f25f818d7dfccec8ee535d76949ae78584fc4f79a6f45a904bf8ab4449",
        strip_prefix = "serde-1.0.104",
        build_file = Label("//cargo/remote:BUILD.serde-1.0.104.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_value__0_5_3",
        url = "https://crates.io/api/v1/crates/serde-value/0.5.3/download",
        type = "tar.gz",
        sha256 = "7a663f873dedc4eac1a559d4c6bc0d0b2c34dc5ac4702e105014b8281489e44f",
        strip_prefix = "serde-value-0.5.3",
        build_file = Label("//cargo/remote:BUILD.serde-value-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_derive__1_0_104",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.104/download",
        type = "tar.gz",
        sha256 = "128f9e303a5a29922045a830221b8f78ec74a5f544944f3d5984f8ec3895ef64",
        strip_prefix = "serde_derive-1.0.104",
        build_file = Label("//cargo/remote:BUILD.serde_derive-1.0.104.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_json__1_0_44",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.44/download",
        type = "tar.gz",
        sha256 = "48c575e0cc52bdd09b47f330f646cf59afc586e9c4e3ccd6fc1f625b8ea1dad7",
        strip_prefix = "serde_json-1.0.44",
        build_file = Label("//cargo/remote:BUILD.serde_json-1.0.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_urlencoded__0_5_5",
        url = "https://crates.io/api/v1/crates/serde_urlencoded/0.5.5/download",
        type = "tar.gz",
        sha256 = "642dd69105886af2efd227f75a520ec9b44a820d65bc133a9131f7d229fd165a",
        strip_prefix = "serde_urlencoded-0.5.5",
        build_file = Label("//cargo/remote:BUILD.serde_urlencoded-0.5.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_urlencoded__0_6_1",
        url = "https://crates.io/api/v1/crates/serde_urlencoded/0.6.1/download",
        type = "tar.gz",
        sha256 = "9ec5d77e2d4c73717816afac02670d5c4f534ea95ed430442cad02e7a6e32c97",
        strip_prefix = "serde_urlencoded-0.6.1",
        build_file = Label("//cargo/remote:BUILD.serde_urlencoded-0.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_yaml__0_8_11",
        url = "https://crates.io/api/v1/crates/serde_yaml/0.8.11/download",
        type = "tar.gz",
        sha256 = "691b17f19fc1ec9d94ec0b5864859290dff279dbd7b03f017afda54eb36c3c35",
        strip_prefix = "serde_yaml-0.8.11",
        build_file = Label("//cargo/remote:BUILD.serde_yaml-0.8.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sha1__0_6_0",
        url = "https://crates.io/api/v1/crates/sha1/0.6.0/download",
        type = "tar.gz",
        sha256 = "2579985fda508104f7587689507983eadd6a6e84dd35d6d115361f530916fa0d",
        strip_prefix = "sha1-0.6.0",
        build_file = Label("//cargo/remote:BUILD.sha1-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__signal_hook_registry__1_2_0",
        url = "https://crates.io/api/v1/crates/signal-hook-registry/1.2.0/download",
        type = "tar.gz",
        sha256 = "94f478ede9f64724c5d173d7bb56099ec3e2d9fc2774aac65d34b8b890405f41",
        strip_prefix = "signal-hook-registry-1.2.0",
        build_file = Label("//cargo/remote:BUILD.signal-hook-registry-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__slab__0_4_2",
        url = "https://crates.io/api/v1/crates/slab/0.4.2/download",
        type = "tar.gz",
        sha256 = "c111b5bd5695e56cffe5129854aa230b39c93a305372fdbb2668ca2394eea9f8",
        strip_prefix = "slab-0.4.2",
        build_file = Label("//cargo/remote:BUILD.slab-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__smallvec__0_6_13",
        url = "https://crates.io/api/v1/crates/smallvec/0.6.13/download",
        type = "tar.gz",
        sha256 = "f7b0758c52e15a8b5e3691eae6cc559f08eee9406e548a4477ba4e67770a82b6",
        strip_prefix = "smallvec-0.6.13",
        build_file = Label("//cargo/remote:BUILD.smallvec-0.6.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__smallvec__1_1_0",
        url = "https://crates.io/api/v1/crates/smallvec/1.1.0/download",
        type = "tar.gz",
        sha256 = "44e59e0c9fa00817912ae6e4e6e3c4fe04455e75699d06eedc7d85917ed8e8f4",
        strip_prefix = "smallvec-1.1.0",
        build_file = Label("//cargo/remote:BUILD.smallvec-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__socket2__0_3_11",
        url = "https://crates.io/api/v1/crates/socket2/0.3.11/download",
        type = "tar.gz",
        sha256 = "e8b74de517221a2cb01a53349cf54182acdc31a074727d3079068448c0676d85",
        strip_prefix = "socket2-0.3.11",
        build_file = Label("//cargo/remote:BUILD.socket2-0.3.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__string__0_2_1",
        url = "https://crates.io/api/v1/crates/string/0.2.1/download",
        type = "tar.gz",
        sha256 = "d24114bfcceb867ca7f71a0d3fe45d45619ec47a6fbfa98cb14e14250bfa5d6d",
        strip_prefix = "string-0.2.1",
        build_file = Label("//cargo/remote:BUILD.string-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_11",
        url = "https://crates.io/api/v1/crates/syn/1.0.11/download",
        type = "tar.gz",
        sha256 = "dff0acdb207ae2fe6d5976617f887eb1e35a2ba52c13c7234c790960cdad9238",
        strip_prefix = "syn-1.0.11",
        build_file = Label("//cargo/remote:BUILD.syn-1.0.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__synstructure__0_12_3",
        url = "https://crates.io/api/v1/crates/synstructure/0.12.3/download",
        type = "tar.gz",
        sha256 = "67656ea1dc1b41b1451851562ea232ec2e5a80242139f7e679ceccfb5d61f545",
        strip_prefix = "synstructure-0.12.3",
        build_file = Label("//cargo/remote:BUILD.synstructure-0.12.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tempfile__3_1_0",
        url = "https://crates.io/api/v1/crates/tempfile/3.1.0/download",
        type = "tar.gz",
        sha256 = "7a6e24d9338a0a5be79593e2fa15a648add6138caa803e2d5bc782c371732ca9",
        strip_prefix = "tempfile-3.1.0",
        build_file = Label("//cargo/remote:BUILD.tempfile-3.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__termcolor__1_0_5",
        url = "https://crates.io/api/v1/crates/termcolor/1.0.5/download",
        type = "tar.gz",
        sha256 = "96d6098003bde162e4277c70665bd87c326f5a0c3f3fbfb285787fa482d54e6e",
        strip_prefix = "termcolor-1.0.5",
        build_file = Label("//cargo/remote:BUILD.termcolor-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thread_id__3_3_0",
        url = "https://crates.io/api/v1/crates/thread-id/3.3.0/download",
        type = "tar.gz",
        sha256 = "c7fbf4c9d56b320106cd64fd024dadfa0be7cb4706725fc44a7d7ce952d820c1",
        strip_prefix = "thread-id-3.3.0",
        build_file = Label("//cargo/remote:BUILD.thread-id-3.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thread_local__0_3_6",
        url = "https://crates.io/api/v1/crates/thread_local/0.3.6/download",
        type = "tar.gz",
        sha256 = "c6b53e329000edc2b34dbe8545fd20e55a333362d0a321909685a19bd28c3f1b",
        strip_prefix = "thread_local-0.3.6",
        build_file = Label("//cargo/remote:BUILD.thread_local-0.3.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__threadpool__1_7_1",
        url = "https://crates.io/api/v1/crates/threadpool/1.7.1/download",
        type = "tar.gz",
        sha256 = "e2f0c90a5f3459330ac8bc0d2f879c693bb7a2f59689c1083fc4ef83834da865",
        strip_prefix = "threadpool-1.7.1",
        build_file = Label("//cargo/remote:BUILD.threadpool-1.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_1_42",
        url = "https://crates.io/api/v1/crates/time/0.1.42/download",
        type = "tar.gz",
        sha256 = "db8dcfca086c1143c9270ac42a2bbd8a7ee477b78ac8e45b19abfb0cbede4b6f",
        strip_prefix = "time-0.1.42",
        build_file = Label("//cargo/remote:BUILD.time-0.1.42.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio__0_1_22",
        url = "https://crates.io/api/v1/crates/tokio/0.1.22/download",
        type = "tar.gz",
        sha256 = "5a09c0b5bb588872ab2f09afa13ee6e9dac11e10a0ec9e8e3ba39a5a5d530af6",
        strip_prefix = "tokio-0.1.22",
        build_file = Label("//cargo/remote:BUILD.tokio-0.1.22.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio__0_2_6",
        url = "https://crates.io/api/v1/crates/tokio/0.2.6/download",
        type = "tar.gz",
        sha256 = "0e1bef565a52394086ecac0a6fa3b8ace4cb3a138ee1d96bd2b93283b56824e3",
        strip_prefix = "tokio-0.2.6",
        build_file = Label("//cargo/remote:BUILD.tokio-0.2.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_buf__0_1_1",
        url = "https://crates.io/api/v1/crates/tokio-buf/0.1.1/download",
        type = "tar.gz",
        sha256 = "8fb220f46c53859a4b7ec083e41dec9778ff0b1851c0942b211edb89e0ccdc46",
        strip_prefix = "tokio-buf-0.1.1",
        build_file = Label("//cargo/remote:BUILD.tokio-buf-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_current_thread__0_1_6",
        url = "https://crates.io/api/v1/crates/tokio-current-thread/0.1.6/download",
        type = "tar.gz",
        sha256 = "d16217cad7f1b840c5a97dfb3c43b0c871fef423a6e8d2118c604e843662a443",
        strip_prefix = "tokio-current-thread-0.1.6",
        build_file = Label("//cargo/remote:BUILD.tokio-current-thread-0.1.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_executor__0_1_9",
        url = "https://crates.io/api/v1/crates/tokio-executor/0.1.9/download",
        type = "tar.gz",
        sha256 = "ca6df436c42b0c3330a82d855d2ef017cd793090ad550a6bc2184f4b933532ab",
        strip_prefix = "tokio-executor-0.1.9",
        build_file = Label("//cargo/remote:BUILD.tokio-executor-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_io__0_1_12",
        url = "https://crates.io/api/v1/crates/tokio-io/0.1.12/download",
        type = "tar.gz",
        sha256 = "5090db468dad16e1a7a54c8c67280c5e4b544f3d3e018f0b913b400261f85926",
        strip_prefix = "tokio-io-0.1.12",
        build_file = Label("//cargo/remote:BUILD.tokio-io-0.1.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_reactor__0_1_11",
        url = "https://crates.io/api/v1/crates/tokio-reactor/0.1.11/download",
        type = "tar.gz",
        sha256 = "6732fe6b53c8d11178dcb77ac6d9682af27fc6d4cb87789449152e5377377146",
        strip_prefix = "tokio-reactor-0.1.11",
        build_file = Label("//cargo/remote:BUILD.tokio-reactor-0.1.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_sync__0_1_7",
        url = "https://crates.io/api/v1/crates/tokio-sync/0.1.7/download",
        type = "tar.gz",
        sha256 = "d06554cce1ae4a50f42fba8023918afa931413aded705b560e29600ccf7c6d76",
        strip_prefix = "tokio-sync-0.1.7",
        build_file = Label("//cargo/remote:BUILD.tokio-sync-0.1.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_tcp__0_1_3",
        url = "https://crates.io/api/v1/crates/tokio-tcp/0.1.3/download",
        type = "tar.gz",
        sha256 = "1d14b10654be682ac43efee27401d792507e30fd8d26389e1da3b185de2e4119",
        strip_prefix = "tokio-tcp-0.1.3",
        build_file = Label("//cargo/remote:BUILD.tokio-tcp-0.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_threadpool__0_1_17",
        url = "https://crates.io/api/v1/crates/tokio-threadpool/0.1.17/download",
        type = "tar.gz",
        sha256 = "f0c32ffea4827978e9aa392d2f743d973c1dfa3730a2ed3f22ce1e6984da848c",
        strip_prefix = "tokio-threadpool-0.1.17",
        build_file = Label("//cargo/remote:BUILD.tokio-threadpool-0.1.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_timer__0_2_12",
        url = "https://crates.io/api/v1/crates/tokio-timer/0.2.12/download",
        type = "tar.gz",
        sha256 = "1739638e364e558128461fc1ad84d997702c8e31c2e6b18fb99842268199e827",
        strip_prefix = "tokio-timer-0.2.12",
        build_file = Label("//cargo/remote:BUILD.tokio-timer-0.2.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_util__0_2_0",
        url = "https://crates.io/api/v1/crates/tokio-util/0.2.0/download",
        type = "tar.gz",
        sha256 = "571da51182ec208780505a32528fc5512a8fe1443ab960b3f2f3ef093cd16930",
        strip_prefix = "tokio-util-0.2.0",
        build_file = Label("//cargo/remote:BUILD.tokio-util-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__traitobject__0_1_0",
        url = "https://crates.io/api/v1/crates/traitobject/0.1.0/download",
        type = "tar.gz",
        sha256 = "efd1f82c56340fdf16f2a953d7bda4f8fdffba13d93b00844c25572110b26079",
        strip_prefix = "traitobject-0.1.0",
        build_file = Label("//cargo/remote:BUILD.traitobject-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__trust_dns_proto__0_18_0_alpha_2",
        url = "https://crates.io/api/v1/crates/trust-dns-proto/0.18.0-alpha.2/download",
        type = "tar.gz",
        sha256 = "2a7f3a2ab8a919f5eca52a468866a67ed7d3efa265d48a652a9a3452272b413f",
        strip_prefix = "trust-dns-proto-0.18.0-alpha.2",
        build_file = Label("//cargo/remote:BUILD.trust-dns-proto-0.18.0-alpha.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__trust_dns_resolver__0_18_0_alpha_2",
        url = "https://crates.io/api/v1/crates/trust-dns-resolver/0.18.0-alpha.2/download",
        type = "tar.gz",
        sha256 = "6f90b1502b226f8b2514c6d5b37bafa8c200d7ca4102d57dc36ee0f3b7a04a2f",
        strip_prefix = "trust-dns-resolver-0.18.0-alpha.2",
        build_file = Label("//cargo/remote:BUILD.trust-dns-resolver-0.18.0-alpha.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__try_lock__0_2_2",
        url = "https://crates.io/api/v1/crates/try-lock/0.2.2/download",
        type = "tar.gz",
        sha256 = "e604eb7b43c06650e854be16a2a03155743d3752dd1c943f6829e26b7a36e382",
        strip_prefix = "try-lock-0.2.2",
        build_file = Label("//cargo/remote:BUILD.try-lock-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__try_from__0_3_2",
        url = "https://crates.io/api/v1/crates/try_from/0.3.2/download",
        type = "tar.gz",
        sha256 = "283d3b89e1368717881a9d51dad843cc435380d8109c9e47d38780a324698d8b",
        strip_prefix = "try_from-0.3.2",
        build_file = Label("//cargo/remote:BUILD.try_from-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__twox_hash__1_5_0",
        url = "https://crates.io/api/v1/crates/twox-hash/1.5.0/download",
        type = "tar.gz",
        sha256 = "3bfd5b7557925ce778ff9b9ef90e3ade34c524b5ff10e239c69a42d546d2af56",
        strip_prefix = "twox-hash-1.5.0",
        build_file = Label("//cargo/remote:BUILD.twox-hash-1.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__typemap__0_3_3",
        url = "https://crates.io/api/v1/crates/typemap/0.3.3/download",
        type = "tar.gz",
        sha256 = "653be63c80a3296da5551e1bfd2cca35227e13cdd08c6668903ae2f4f77aa1f6",
        strip_prefix = "typemap-0.3.3",
        build_file = Label("//cargo/remote:BUILD.typemap-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicase__2_6_0",
        url = "https://crates.io/api/v1/crates/unicase/2.6.0/download",
        type = "tar.gz",
        sha256 = "50f37be617794602aabbeee0be4f259dc1778fabe05e2d67ee8f79326d5cb4f6",
        strip_prefix = "unicase-2.6.0",
        build_file = Label("//cargo/remote:BUILD.unicase-2.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_bidi__0_3_4",
        url = "https://crates.io/api/v1/crates/unicode-bidi/0.3.4/download",
        type = "tar.gz",
        sha256 = "49f2bd0c6468a8230e1db229cff8029217cf623c767ea5d60bfbd42729ea54d5",
        strip_prefix = "unicode-bidi-0.3.4",
        build_file = Label("//cargo/remote:BUILD.unicode-bidi-0.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_normalization__0_1_11",
        url = "https://crates.io/api/v1/crates/unicode-normalization/0.1.11/download",
        type = "tar.gz",
        sha256 = "b561e267b2326bb4cebfc0ef9e68355c7abe6c6f522aeac2f5bf95d56c59bdcf",
        strip_prefix = "unicode-normalization-0.1.11",
        build_file = Label("//cargo/remote:BUILD.unicode-normalization-0.1.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_segmentation__1_6_0",
        url = "https://crates.io/api/v1/crates/unicode-segmentation/1.6.0/download",
        type = "tar.gz",
        sha256 = "e83e153d1053cbb5a118eeff7fd5be06ed99153f00dbcd8ae310c5fb2b22edc0",
        strip_prefix = "unicode-segmentation-1.6.0",
        build_file = Label("//cargo/remote:BUILD.unicode-segmentation-1.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_2_0",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.0/download",
        type = "tar.gz",
        sha256 = "826e7639553986605ec5979c7dd957c7895e93eabed50ab2ffa7f6128a75097c",
        strip_prefix = "unicode-xid-0.2.0",
        build_file = Label("//cargo/remote:BUILD.unicode-xid-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unsafe_any__0_4_2",
        url = "https://crates.io/api/v1/crates/unsafe-any/0.4.2/download",
        type = "tar.gz",
        sha256 = "f30360d7979f5e9c6e6cea48af192ea8fab4afb3cf72597154b8f08935bc9c7f",
        strip_prefix = "unsafe-any-0.4.2",
        build_file = Label("//cargo/remote:BUILD.unsafe-any-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__url__1_7_2",
        url = "https://crates.io/api/v1/crates/url/1.7.2/download",
        type = "tar.gz",
        sha256 = "dd4e7c0d531266369519a4aa4f399d748bd37043b00bde1e4ff1f60a120b355a",
        strip_prefix = "url-1.7.2",
        build_file = Label("//cargo/remote:BUILD.url-1.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__url__2_1_0",
        url = "https://crates.io/api/v1/crates/url/2.1.0/download",
        type = "tar.gz",
        sha256 = "75b414f6c464c879d7f9babf951f23bc3743fb7313c081b2e6ca719067ea9d61",
        strip_prefix = "url-2.1.0",
        build_file = Label("//cargo/remote:BUILD.url-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__uuid__0_7_4",
        url = "https://crates.io/api/v1/crates/uuid/0.7.4/download",
        type = "tar.gz",
        sha256 = "90dbc611eb48397705a6b0f6e917da23ae517e4d127123d2cf7674206627d32a",
        strip_prefix = "uuid-0.7.4",
        build_file = Label("//cargo/remote:BUILD.uuid-0.7.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__vcpkg__0_2_8",
        url = "https://crates.io/api/v1/crates/vcpkg/0.2.8/download",
        type = "tar.gz",
        sha256 = "3fc439f2794e98976c88a2a2dafce96b930fe8010b0a256b3c2199a773933168",
        strip_prefix = "vcpkg-0.2.8",
        build_file = Label("//cargo/remote:BUILD.vcpkg-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_1_5",
        url = "https://crates.io/api/v1/crates/version_check/0.1.5/download",
        type = "tar.gz",
        sha256 = "914b1a6776c4c929a602fafd8bc742e06365d4bcbe48c30f9cca5824f70dc9dd",
        strip_prefix = "version_check-0.1.5",
        build_file = Label("//cargo/remote:BUILD.version_check-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_9_1",
        url = "https://crates.io/api/v1/crates/version_check/0.9.1/download",
        type = "tar.gz",
        sha256 = "078775d0255232fb988e6fccf26ddc9d1ac274299aaedcedce21c6f72cc533ce",
        strip_prefix = "version_check-0.9.1",
        build_file = Label("//cargo/remote:BUILD.version_check-0.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__want__0_2_0",
        url = "https://crates.io/api/v1/crates/want/0.2.0/download",
        type = "tar.gz",
        sha256 = "b6395efa4784b027708f7451087e647ec73cc74f5d9bc2e418404248d679a230",
        strip_prefix = "want-0.2.0",
        build_file = Label("//cargo/remote:BUILD.want-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_7_0",
        url = "https://crates.io/api/v1/crates/wasi/0.7.0/download",
        type = "tar.gz",
        sha256 = "b89c3ce4ce14bdc6fb6beaf9ec7928ca331de5df7e5ea278375642a2f478570d",
        strip_prefix = "wasi-0.7.0",
        build_file = Label("//cargo/remote:BUILD.wasi-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__widestring__0_4_0",
        url = "https://crates.io/api/v1/crates/widestring/0.4.0/download",
        type = "tar.gz",
        sha256 = "effc0e4ff8085673ea7b9b2e3c73f6bd4d118810c9009ed8f1e16bd96c331db6",
        strip_prefix = "widestring-0.4.0",
        build_file = Label("//cargo/remote:BUILD.widestring-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_2_8",
        url = "https://crates.io/api/v1/crates/winapi/0.2.8/download",
        type = "tar.gz",
        sha256 = "167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//cargo/remote:BUILD.winapi-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_8",
        url = "https://crates.io/api/v1/crates/winapi/0.3.8/download",
        type = "tar.gz",
        sha256 = "8093091eeb260906a183e6ae1abdba2ef5ef2257a21801128899c3fc699229c6",
        strip_prefix = "winapi-0.3.8",
        build_file = Label("//cargo/remote:BUILD.winapi-0.3.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_build__0_1_1",
        url = "https://crates.io/api/v1/crates/winapi-build/0.1.1/download",
        type = "tar.gz",
        sha256 = "2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc",
        strip_prefix = "winapi-build-0.1.1",
        build_file = Label("//cargo/remote:BUILD.winapi-build-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_util__0_1_2",
        url = "https://crates.io/api/v1/crates/winapi-util/0.1.2/download",
        type = "tar.gz",
        sha256 = "7168bab6e1daee33b4557efd0e95d5ca70a03706d39fa5f3fe7a236f584b03c9",
        strip_prefix = "winapi-util-0.1.2",
        build_file = Label("//cargo/remote:BUILD.winapi-util-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wincolor__1_0_2",
        url = "https://crates.io/api/v1/crates/wincolor/1.0.2/download",
        type = "tar.gz",
        sha256 = "96f5016b18804d24db43cebf3c77269e7569b8954a8464501c216cc5e070eaa9",
        strip_prefix = "wincolor-1.0.2",
        build_file = Label("//cargo/remote:BUILD.wincolor-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winreg__0_6_2",
        url = "https://crates.io/api/v1/crates/winreg/0.6.2/download",
        type = "tar.gz",
        sha256 = "b2986deb581c4fe11b621998a5e53361efe6b48a151178d0cd9eeffa4dc6acc9",
        strip_prefix = "winreg-0.6.2",
        build_file = Label("//cargo/remote:BUILD.winreg-0.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winutil__0_1_1",
        url = "https://crates.io/api/v1/crates/winutil/0.1.1/download",
        type = "tar.gz",
        sha256 = "7daf138b6b14196e3830a588acf1e86966c694d3e8fb026fb105b8b5dca07e6e",
        strip_prefix = "winutil-0.1.1",
        build_file = Label("//cargo/remote:BUILD.winutil-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ws2_32_sys__0_2_1",
        url = "https://crates.io/api/v1/crates/ws2_32-sys/0.2.1/download",
        type = "tar.gz",
        sha256 = "d59cefebd0c892fa2dd6de581e937301d8552cb44489cdff035c6187cb63fa5e",
        strip_prefix = "ws2_32-sys-0.2.1",
        build_file = Label("//cargo/remote:BUILD.ws2_32-sys-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__yaml_rust__0_4_3",
        url = "https://crates.io/api/v1/crates/yaml-rust/0.4.3/download",
        type = "tar.gz",
        sha256 = "65923dd1784f44da1d2c3dbbc5e822045628c590ba72123e1c73d3c230c4434d",
        strip_prefix = "yaml-rust-0.4.3",
        build_file = Label("//cargo/remote:BUILD.yaml-rust-0.4.3.bazel"),
    )

"""
cargo-raze crate workspace functions

DO NOT EDIT! Replaced on runs of cargo-raze
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def _new_http_archive(name, **kwargs):
    if not native.existing_rule(name):
        http_archive(name=name, **kwargs)

def _new_git_repository(name, **kwargs):
    if not native.existing_rule(name):
        new_git_repository(name=name, **kwargs)

def raze_fetch_remote_crates():

    _new_http_archive(
        name = "raze__actix_codec__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-codec/actix-codec-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "actix-codec-0.2.0",

        build_file = Label("//cargo/remote:actix-codec-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_connect__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-connect/actix-connect-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "actix-connect-1.0.1",

        build_file = Label("//cargo/remote:actix-connect-1.0.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_http__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-http/actix-http-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "actix-http-1.0.1",

        build_file = Label("//cargo/remote:actix-http-1.0.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_macros__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-macros/actix-macros-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "actix-macros-0.1.1",

        build_file = Label("//cargo/remote:actix-macros-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_router__0_2_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-router/actix-router-0.2.4.crate",
        type = "tar.gz",
        strip_prefix = "actix-router-0.2.4",

        build_file = Label("//cargo/remote:actix-router-0.2.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_rt__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-rt/actix-rt-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "actix-rt-1.0.0",

        build_file = Label("//cargo/remote:actix-rt-1.0.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_server__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-server/actix-server-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "actix-server-1.0.1",

        build_file = Label("//cargo/remote:actix-server-1.0.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_service__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-service/actix-service-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "actix-service-1.0.1",

        build_file = Label("//cargo/remote:actix-service-1.0.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_testing__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-testing/actix-testing-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "actix-testing-1.0.0",

        build_file = Label("//cargo/remote:actix-testing-1.0.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_threadpool__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-threadpool/actix-threadpool-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "actix-threadpool-0.3.1",

        build_file = Label("//cargo/remote:actix-threadpool-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_tls__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-tls/actix-tls-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "actix-tls-1.0.0",

        build_file = Label("//cargo/remote:actix-tls-1.0.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_utils__1_0_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-utils/actix-utils-1.0.4.crate",
        type = "tar.gz",
        strip_prefix = "actix-utils-1.0.4",

        build_file = Label("//cargo/remote:actix-utils-1.0.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_web__2_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-web/actix-web-2.0.0.crate",
        type = "tar.gz",
        strip_prefix = "actix-web-2.0.0",

        build_file = Label("//cargo/remote:actix-web-2.0.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__actix_web_codegen__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-web-codegen/actix-web-codegen-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "actix-web-codegen-0.2.0",

        build_file = Label("//cargo/remote:actix-web-codegen-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__adler32__1_0_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/adler32/adler32-1.0.4.crate",
        type = "tar.gz",
        strip_prefix = "adler32-1.0.4",

        build_file = Label("//cargo/remote:adler32-1.0.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__aho_corasick__0_7_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/aho-corasick/aho-corasick-0.7.6.crate",
        type = "tar.gz",
        strip_prefix = "aho-corasick-0.7.6",

        build_file = Label("//cargo/remote:aho-corasick-0.7.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__antidote__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/antidote/antidote-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "antidote-1.0.0",

        build_file = Label("//cargo/remote:antidote-1.0.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__arc_swap__0_3_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arc-swap/arc-swap-0.3.11.crate",
        type = "tar.gz",
        strip_prefix = "arc-swap-0.3.11",

        build_file = Label("//cargo/remote:arc-swap-0.3.11.BUILD"),
    )

    _new_http_archive(
        name = "raze__arc_swap__0_4_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arc-swap/arc-swap-0.4.4.crate",
        type = "tar.gz",
        strip_prefix = "arc-swap-0.4.4",

        build_file = Label("//cargo/remote:arc-swap-0.4.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__async_trait__0_1_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-trait/async-trait-0.1.22.crate",
        type = "tar.gz",
        strip_prefix = "async-trait-0.1.22",

        build_file = Label("//cargo/remote:async-trait-0.1.22.BUILD"),
    )

    _new_http_archive(
        name = "raze__atty__0_2_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/atty/atty-0.2.13.crate",
        type = "tar.gz",
        strip_prefix = "atty-0.2.13",

        build_file = Label("//cargo/remote:atty-0.2.13.BUILD"),
    )

    _new_http_archive(
        name = "raze__autocfg__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/autocfg/autocfg-0.1.7.crate",
        type = "tar.gz",
        strip_prefix = "autocfg-0.1.7",

        build_file = Label("//cargo/remote:autocfg-0.1.7.BUILD"),
    )

    _new_http_archive(
        name = "raze__awc__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/awc/awc-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "awc-1.0.1",

        build_file = Label("//cargo/remote:awc-1.0.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__backtrace__0_3_40",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/backtrace/backtrace-0.3.40.crate",
        type = "tar.gz",
        strip_prefix = "backtrace-0.3.40",

        build_file = Label("//cargo/remote:backtrace-0.3.40.BUILD"),
    )

    _new_http_archive(
        name = "raze__backtrace_sys__0_1_32",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/backtrace-sys/backtrace-sys-0.1.32.crate",
        type = "tar.gz",
        strip_prefix = "backtrace-sys-0.1.32",

        build_file = Label("//cargo/remote:backtrace-sys-0.1.32.BUILD"),
    )

    _new_http_archive(
        name = "raze__base64__0_10_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.10.1.crate",
        type = "tar.gz",
        strip_prefix = "base64-0.10.1",

        build_file = Label("//cargo/remote:base64-0.10.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__base64__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.11.0.crate",
        type = "tar.gz",
        strip_prefix = "base64-0.11.0",

        build_file = Label("//cargo/remote:base64-0.11.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__bitflags__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-1.2.1.crate",
        type = "tar.gz",
        strip_prefix = "bitflags-1.2.1",

        build_file = Label("//cargo/remote:bitflags-1.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__brotli_sys__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/brotli-sys/brotli-sys-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "brotli-sys-0.3.2",

        build_file = Label("//cargo/remote:brotli-sys-0.3.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__brotli2__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/brotli2/brotli2-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "brotli2-0.3.2",

        build_file = Label("//cargo/remote:brotli2-0.3.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__byteorder__1_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/byteorder/byteorder-1.3.2.crate",
        type = "tar.gz",
        strip_prefix = "byteorder-1.3.2",

        build_file = Label("//cargo/remote:byteorder-1.3.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__bytes__0_4_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bytes/bytes-0.4.12.crate",
        type = "tar.gz",
        strip_prefix = "bytes-0.4.12",

        build_file = Label("//cargo/remote:bytes-0.4.12.BUILD"),
    )

    _new_http_archive(
        name = "raze__bytes__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bytes/bytes-0.5.3.crate",
        type = "tar.gz",
        strip_prefix = "bytes-0.5.3",

        build_file = Label("//cargo/remote:bytes-0.5.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__bytestring__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bytestring/bytestring-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "bytestring-0.1.2",

        build_file = Label("//cargo/remote:bytestring-0.1.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__c2_chacha__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/c2-chacha/c2-chacha-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "c2-chacha-0.2.3",

        build_file = Label("//cargo/remote:c2-chacha-0.2.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__c_linked_list__1_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/c_linked_list/c_linked_list-1.1.1.crate",
        type = "tar.gz",
        strip_prefix = "c_linked_list-1.1.1",

        build_file = Label("//cargo/remote:c_linked_list-1.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__cc__1_0_48",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cc/cc-1.0.48.crate",
        type = "tar.gz",
        strip_prefix = "cc-1.0.48",

        build_file = Label("//cargo/remote:cc-1.0.48.BUILD"),
    )

    _new_http_archive(
        name = "raze__cfg_if__0_1_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cfg-if/cfg-if-0.1.10.crate",
        type = "tar.gz",
        strip_prefix = "cfg-if-0.1.10",

        build_file = Label("//cargo/remote:cfg-if-0.1.10.BUILD"),
    )

    _new_http_archive(
        name = "raze__chrono__0_4_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/chrono/chrono-0.4.10.crate",
        type = "tar.gz",
        strip_prefix = "chrono-0.4.10",

        build_file = Label("//cargo/remote:chrono-0.4.10.BUILD"),
    )

    _new_http_archive(
        name = "raze__cloudabi__0_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cloudabi/cloudabi-0.0.3.crate",
        type = "tar.gz",
        strip_prefix = "cloudabi-0.0.3",

        build_file = Label("//cargo/remote:cloudabi-0.0.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__cookie__0_12_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cookie/cookie-0.12.0.crate",
        type = "tar.gz",
        strip_prefix = "cookie-0.12.0",

        build_file = Label("//cargo/remote:cookie-0.12.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__cookie_store__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cookie_store/cookie_store-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "cookie_store-0.7.0",

        build_file = Label("//cargo/remote:cookie_store-0.7.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__copyless__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/copyless/copyless-0.1.4.crate",
        type = "tar.gz",
        strip_prefix = "copyless-0.1.4",

        build_file = Label("//cargo/remote:copyless-0.1.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__core_foundation__0_6_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/core-foundation/core-foundation-0.6.4.crate",
        type = "tar.gz",
        strip_prefix = "core-foundation-0.6.4",

        build_file = Label("//cargo/remote:core-foundation-0.6.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__core_foundation_sys__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/core-foundation-sys/core-foundation-sys-0.6.2.crate",
        type = "tar.gz",
        strip_prefix = "core-foundation-sys-0.6.2",

        build_file = Label("//cargo/remote:core-foundation-sys-0.6.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__crc32fast__1_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crc32fast/crc32fast-1.2.0.crate",
        type = "tar.gz",
        strip_prefix = "crc32fast-1.2.0",

        build_file = Label("//cargo/remote:crc32fast-1.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__crossbeam_deque__0_7_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-deque/crossbeam-deque-0.7.2.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-deque-0.7.2",

        build_file = Label("//cargo/remote:crossbeam-deque-0.7.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__crossbeam_epoch__0_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-epoch/crossbeam-epoch-0.8.0.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-epoch-0.8.0",

        build_file = Label("//cargo/remote:crossbeam-epoch-0.8.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__crossbeam_queue__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-queue/crossbeam-queue-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-queue-0.1.2",

        build_file = Label("//cargo/remote:crossbeam-queue-0.1.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__crossbeam_utils__0_6_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-utils/crossbeam-utils-0.6.6.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-utils-0.6.6",

        build_file = Label("//cargo/remote:crossbeam-utils-0.6.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__crossbeam_utils__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-utils/crossbeam-utils-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-utils-0.7.0",

        build_file = Label("//cargo/remote:crossbeam-utils-0.7.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__derive_more__0_99_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/derive_more/derive_more-0.99.2.crate",
        type = "tar.gz",
        strip_prefix = "derive_more-0.99.2",

        build_file = Label("//cargo/remote:derive_more-0.99.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__dtoa__0_4_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/dtoa/dtoa-0.4.4.crate",
        type = "tar.gz",
        strip_prefix = "dtoa-0.4.4",

        build_file = Label("//cargo/remote:dtoa-0.4.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__either__1_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/either/either-1.5.3.crate",
        type = "tar.gz",
        strip_prefix = "either-1.5.3",

        build_file = Label("//cargo/remote:either-1.5.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__encoding_rs__0_8_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding_rs/encoding_rs-0.8.22.crate",
        type = "tar.gz",
        strip_prefix = "encoding_rs-0.8.22",

        build_file = Label("//cargo/remote:encoding_rs-0.8.22.BUILD"),
    )

    _new_http_archive(
        name = "raze__enum_as_inner__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/enum-as-inner/enum-as-inner-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "enum-as-inner-0.3.0",

        build_file = Label("//cargo/remote:enum-as-inner-0.3.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__env_logger__0_7_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/env_logger/env_logger-0.7.1.crate",
        type = "tar.gz",
        strip_prefix = "env_logger-0.7.1",

        build_file = Label("//cargo/remote:env_logger-0.7.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__error_chain__0_12_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/error-chain/error-chain-0.12.1.crate",
        type = "tar.gz",
        strip_prefix = "error-chain-0.12.1",

        build_file = Label("//cargo/remote:error-chain-0.12.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__failure__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/failure/failure-0.1.6.crate",
        type = "tar.gz",
        strip_prefix = "failure-0.1.6",

        build_file = Label("//cargo/remote:failure-0.1.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__failure_derive__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/failure_derive/failure_derive-0.1.6.crate",
        type = "tar.gz",
        strip_prefix = "failure_derive-0.1.6",

        build_file = Label("//cargo/remote:failure_derive-0.1.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__flate2__1_0_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/flate2/flate2-1.0.13.crate",
        type = "tar.gz",
        strip_prefix = "flate2-1.0.13",

        build_file = Label("//cargo/remote:flate2-1.0.13.BUILD"),
    )

    _new_http_archive(
        name = "raze__fnv__1_0_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fnv/fnv-1.0.6.crate",
        type = "tar.gz",
        strip_prefix = "fnv-1.0.6",

        build_file = Label("//cargo/remote:fnv-1.0.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__foreign_types__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/foreign-types/foreign-types-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "foreign-types-0.3.2",

        build_file = Label("//cargo/remote:foreign-types-0.3.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__foreign_types_shared__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/foreign-types-shared/foreign-types-shared-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "foreign-types-shared-0.1.1",

        build_file = Label("//cargo/remote:foreign-types-shared-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__fuchsia_cprng__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-cprng/fuchsia-cprng-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "fuchsia-cprng-0.1.1",

        build_file = Label("//cargo/remote:fuchsia-cprng-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "fuchsia-zircon-0.3.3",

        build_file = Label("//cargo/remote:fuchsia-zircon-0.3.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon_sys__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "fuchsia-zircon-sys-0.3.3",

        build_file = Label("//cargo/remote:fuchsia-zircon-sys-0.3.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures__0_1_29",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures/futures-0.1.29.crate",
        type = "tar.gz",
        strip_prefix = "futures-0.1.29",

        build_file = Label("//cargo/remote:futures-0.1.29.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures/futures-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-0.3.1",

        build_file = Label("//cargo/remote:futures-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_channel__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-channel/futures-channel-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-channel-0.3.1",

        build_file = Label("//cargo/remote:futures-channel-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_core__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-core/futures-core-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-core-0.3.1",

        build_file = Label("//cargo/remote:futures-core-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_cpupool__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-cpupool/futures-cpupool-0.1.8.crate",
        type = "tar.gz",
        strip_prefix = "futures-cpupool-0.1.8",

        build_file = Label("//cargo/remote:futures-cpupool-0.1.8.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_executor__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-executor/futures-executor-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-executor-0.3.1",

        build_file = Label("//cargo/remote:futures-executor-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_io__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-io/futures-io-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-io-0.3.1",

        build_file = Label("//cargo/remote:futures-io-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_macro__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-macro/futures-macro-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-macro-0.3.1",

        build_file = Label("//cargo/remote:futures-macro-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_sink__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-sink/futures-sink-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-sink-0.3.1",

        build_file = Label("//cargo/remote:futures-sink-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_task__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-task/futures-task-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-task-0.3.1",

        build_file = Label("//cargo/remote:futures-task-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__futures_util__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-util/futures-util-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "futures-util-0.3.1",

        build_file = Label("//cargo/remote:futures-util-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__fxhash__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fxhash/fxhash-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "fxhash-0.2.1",

        build_file = Label("//cargo/remote:fxhash-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__gcc__0_3_55",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/gcc/gcc-0.3.55.crate",
        type = "tar.gz",
        strip_prefix = "gcc-0.3.55",

        build_file = Label("//cargo/remote:gcc-0.3.55.BUILD"),
    )

    _new_http_archive(
        name = "raze__get_if_addrs__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/get_if_addrs/get_if_addrs-0.5.3.crate",
        type = "tar.gz",
        strip_prefix = "get_if_addrs-0.5.3",

        build_file = Label("//cargo/remote:get_if_addrs-0.5.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__get_if_addrs_sys__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/get_if_addrs-sys/get_if_addrs-sys-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "get_if_addrs-sys-0.1.1",

        build_file = Label("//cargo/remote:get_if_addrs-sys-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__getrandom__0_1_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/getrandom/getrandom-0.1.13.crate",
        type = "tar.gz",
        strip_prefix = "getrandom-0.1.13",

        build_file = Label("//cargo/remote:getrandom-0.1.13.BUILD"),
    )

    _new_http_archive(
        name = "raze__h2__0_1_26",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/h2/h2-0.1.26.crate",
        type = "tar.gz",
        strip_prefix = "h2-0.1.26",

        build_file = Label("//cargo/remote:h2-0.1.26.BUILD"),
    )

    _new_http_archive(
        name = "raze__h2__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/h2/h2-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "h2-0.2.1",

        build_file = Label("//cargo/remote:h2-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__heck__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/heck/heck-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "heck-0.3.1",

        build_file = Label("//cargo/remote:heck-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__hermit_abi__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hermit-abi/hermit-abi-0.1.5.crate",
        type = "tar.gz",
        strip_prefix = "hermit-abi-0.1.5",

        build_file = Label("//cargo/remote:hermit-abi-0.1.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__hostname__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hostname/hostname-0.1.5.crate",
        type = "tar.gz",
        strip_prefix = "hostname-0.1.5",

        build_file = Label("//cargo/remote:hostname-0.1.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__http__0_1_21",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http/http-0.1.21.crate",
        type = "tar.gz",
        strip_prefix = "http-0.1.21",

        build_file = Label("//cargo/remote:http-0.1.21.BUILD"),
    )

    _new_http_archive(
        name = "raze__http__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http/http-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "http-0.2.0",

        build_file = Label("//cargo/remote:http-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__http_body__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http-body/http-body-0.1.0.crate",
        type = "tar.gz",
        strip_prefix = "http-body-0.1.0",

        build_file = Label("//cargo/remote:http-body-0.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__httparse__1_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/httparse/httparse-1.3.4.crate",
        type = "tar.gz",
        strip_prefix = "httparse-1.3.4",

        build_file = Label("//cargo/remote:httparse-1.3.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__humantime__1_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/humantime/humantime-1.3.0.crate",
        type = "tar.gz",
        strip_prefix = "humantime-1.3.0",

        build_file = Label("//cargo/remote:humantime-1.3.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__hyper__0_12_35",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper/hyper-0.12.35.crate",
        type = "tar.gz",
        strip_prefix = "hyper-0.12.35",

        build_file = Label("//cargo/remote:hyper-0.12.35.BUILD"),
    )

    _new_http_archive(
        name = "raze__hyper_tls__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper-tls/hyper-tls-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "hyper-tls-0.3.2",

        build_file = Label("//cargo/remote:hyper-tls-0.3.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__idna__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/idna/idna-0.1.5.crate",
        type = "tar.gz",
        strip_prefix = "idna-0.1.5",

        build_file = Label("//cargo/remote:idna-0.1.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__idna__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/idna/idna-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "idna-0.2.0",

        build_file = Label("//cargo/remote:idna-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__indexmap__1_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/indexmap/indexmap-1.3.0.crate",
        type = "tar.gz",
        strip_prefix = "indexmap-1.3.0",

        build_file = Label("//cargo/remote:indexmap-1.3.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__iovec__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/iovec/iovec-0.1.4.crate",
        type = "tar.gz",
        strip_prefix = "iovec-0.1.4",

        build_file = Label("//cargo/remote:iovec-0.1.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__ipconfig__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ipconfig/ipconfig-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "ipconfig-0.2.1",

        build_file = Label("//cargo/remote:ipconfig-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__itertools__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itertools/itertools-0.8.2.crate",
        type = "tar.gz",
        strip_prefix = "itertools-0.8.2",

        build_file = Label("//cargo/remote:itertools-0.8.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__itoa__0_4_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itoa/itoa-0.4.4.crate",
        type = "tar.gz",
        strip_prefix = "itoa-0.4.4",

        build_file = Label("//cargo/remote:itoa-0.4.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__json__0_12_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/json/json-0.12.0.crate",
        type = "tar.gz",
        strip_prefix = "json-0.12.0",

        build_file = Label("//cargo/remote:json-0.12.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__kernel32_sys__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/kernel32-sys/kernel32-sys-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "kernel32-sys-0.2.2",

        build_file = Label("//cargo/remote:kernel32-sys-0.2.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__language_tags__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/language-tags/language-tags-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "language-tags-0.2.2",

        build_file = Label("//cargo/remote:language-tags-0.2.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__lazy_static__1_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazy_static/lazy_static-1.4.0.crate",
        type = "tar.gz",
        strip_prefix = "lazy_static-1.4.0",

        build_file = Label("//cargo/remote:lazy_static-1.4.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__libc__0_2_66",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libc/libc-0.2.66.crate",
        type = "tar.gz",
        strip_prefix = "libc-0.2.66",

        build_file = Label("//cargo/remote:libc-0.2.66.BUILD"),
    )

    _new_http_archive(
        name = "raze__linked_hash_map__0_5_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/linked-hash-map/linked-hash-map-0.5.2.crate",
        type = "tar.gz",
        strip_prefix = "linked-hash-map-0.5.2",

        build_file = Label("//cargo/remote:linked-hash-map-0.5.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__lock_api__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lock_api/lock_api-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "lock_api-0.3.2",

        build_file = Label("//cargo/remote:lock_api-0.3.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__log__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.3.9.crate",
        type = "tar.gz",
        strip_prefix = "log-0.3.9",

        build_file = Label("//cargo/remote:log-0.3.9.BUILD"),
    )

    _new_http_archive(
        name = "raze__log__0_4_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.4.8.crate",
        type = "tar.gz",
        strip_prefix = "log-0.4.8",

        build_file = Label("//cargo/remote:log-0.4.8.BUILD"),
    )

    _new_http_archive(
        name = "raze__log_mdc__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log-mdc/log-mdc-0.1.0.crate",
        type = "tar.gz",
        strip_prefix = "log-mdc-0.1.0",

        build_file = Label("//cargo/remote:log-mdc-0.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__log4rs__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log4rs/log4rs-0.9.0.crate",
        type = "tar.gz",
        strip_prefix = "log4rs-0.9.0",

        build_file = Label("//cargo/remote:log4rs-0.9.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__lru_cache__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lru-cache/lru-cache-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "lru-cache-0.1.2",

        build_file = Label("//cargo/remote:lru-cache-0.1.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__matches__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/matches/matches-0.1.8.crate",
        type = "tar.gz",
        strip_prefix = "matches-0.1.8",

        build_file = Label("//cargo/remote:matches-0.1.8.BUILD"),
    )

    _new_http_archive(
        name = "raze__maybe_uninit__2_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/maybe-uninit/maybe-uninit-2.0.0.crate",
        type = "tar.gz",
        strip_prefix = "maybe-uninit-2.0.0",

        build_file = Label("//cargo/remote:maybe-uninit-2.0.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__memchr__2_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memchr/memchr-2.2.1.crate",
        type = "tar.gz",
        strip_prefix = "memchr-2.2.1",

        build_file = Label("//cargo/remote:memchr-2.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__memoffset__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memoffset/memoffset-0.5.3.crate",
        type = "tar.gz",
        strip_prefix = "memoffset-0.5.3",

        build_file = Label("//cargo/remote:memoffset-0.5.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__mime__0_3_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime/mime-0.3.14.crate",
        type = "tar.gz",
        strip_prefix = "mime-0.3.14",

        build_file = Label("//cargo/remote:mime-0.3.14.BUILD"),
    )

    _new_http_archive(
        name = "raze__mime_guess__2_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime_guess/mime_guess-2.0.1.crate",
        type = "tar.gz",
        strip_prefix = "mime_guess-2.0.1",

        build_file = Label("//cargo/remote:mime_guess-2.0.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__miniz_oxide__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miniz_oxide/miniz_oxide-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "miniz_oxide-0.3.5",

        build_file = Label("//cargo/remote:miniz_oxide-0.3.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__mio__0_6_21",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio/mio-0.6.21.crate",
        type = "tar.gz",
        strip_prefix = "mio-0.6.21",

        build_file = Label("//cargo/remote:mio-0.6.21.BUILD"),
    )

    _new_http_archive(
        name = "raze__mio_uds__0_6_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio-uds/mio-uds-0.6.7.crate",
        type = "tar.gz",
        strip_prefix = "mio-uds-0.6.7",

        build_file = Label("//cargo/remote:mio-uds-0.6.7.BUILD"),
    )

    _new_http_archive(
        name = "raze__miow__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miow/miow-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "miow-0.2.1",

        build_file = Label("//cargo/remote:miow-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__mustache__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mustache/mustache-0.8.2.crate",
        type = "tar.gz",
        strip_prefix = "mustache-0.8.2",

        build_file = Label("//cargo/remote:mustache-0.8.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__native_tls__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/native-tls/native-tls-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "native-tls-0.2.3",

        build_file = Label("//cargo/remote:native-tls-0.2.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__net2__0_2_33",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/net2/net2-0.2.33.crate",
        type = "tar.gz",
        strip_prefix = "net2-0.2.33",

        build_file = Label("//cargo/remote:net2-0.2.33.BUILD"),
    )

    _new_http_archive(
        name = "raze__num_integer__0_1_41",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-integer/num-integer-0.1.41.crate",
        type = "tar.gz",
        strip_prefix = "num-integer-0.1.41",

        build_file = Label("//cargo/remote:num-integer-0.1.41.BUILD"),
    )

    _new_http_archive(
        name = "raze__num_traits__0_2_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-traits/num-traits-0.2.10.crate",
        type = "tar.gz",
        strip_prefix = "num-traits-0.2.10",

        build_file = Label("//cargo/remote:num-traits-0.2.10.BUILD"),
    )

    _new_http_archive(
        name = "raze__num_cpus__1_11_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num_cpus/num_cpus-1.11.1.crate",
        type = "tar.gz",
        strip_prefix = "num_cpus-1.11.1",

        build_file = Label("//cargo/remote:num_cpus-1.11.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__openssl__0_10_26",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/openssl/openssl-0.10.26.crate",
        type = "tar.gz",
        strip_prefix = "openssl-0.10.26",

        build_file = Label("//cargo/remote:openssl-0.10.26.BUILD"),
    )

    _new_http_archive(
        name = "raze__openssl_probe__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/openssl-probe/openssl-probe-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "openssl-probe-0.1.2",

        build_file = Label("//cargo/remote:openssl-probe-0.1.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__openssl_sys__0_9_53",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/openssl-sys/openssl-sys-0.9.53.crate",
        type = "tar.gz",
        strip_prefix = "openssl-sys-0.9.53",

        build_file = Label("//cargo/remote:openssl-sys-0.9.53.BUILD"),
    )

    _new_http_archive(
        name = "raze__ordered_float__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ordered-float/ordered-float-1.0.2.crate",
        type = "tar.gz",
        strip_prefix = "ordered-float-1.0.2",

        build_file = Label("//cargo/remote:ordered-float-1.0.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__parking_lot__0_10_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot/parking_lot-0.10.0.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot-0.10.0",

        build_file = Label("//cargo/remote:parking_lot-0.10.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__parking_lot__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot/parking_lot-0.9.0.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot-0.9.0",

        build_file = Label("//cargo/remote:parking_lot-0.9.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__parking_lot_core__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot_core/parking_lot_core-0.6.2.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot_core-0.6.2",

        build_file = Label("//cargo/remote:parking_lot_core-0.6.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__parking_lot_core__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot_core/parking_lot_core-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot_core-0.7.0",

        build_file = Label("//cargo/remote:parking_lot_core-0.7.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__percent_encoding__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/percent-encoding/percent-encoding-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "percent-encoding-1.0.1",

        build_file = Label("//cargo/remote:percent-encoding-1.0.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__percent_encoding__2_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/percent-encoding/percent-encoding-2.1.0.crate",
        type = "tar.gz",
        strip_prefix = "percent-encoding-2.1.0",

        build_file = Label("//cargo/remote:percent-encoding-2.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__pin_project__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project/pin-project-0.4.6.crate",
        type = "tar.gz",
        strip_prefix = "pin-project-0.4.6",

        build_file = Label("//cargo/remote:pin-project-0.4.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__pin_project_internal__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project-internal/pin-project-internal-0.4.6.crate",
        type = "tar.gz",
        strip_prefix = "pin-project-internal-0.4.6",

        build_file = Label("//cargo/remote:pin-project-internal-0.4.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__pin_project_lite__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project-lite/pin-project-lite-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "pin-project-lite-0.1.1",

        build_file = Label("//cargo/remote:pin-project-lite-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__pin_utils__0_1_0_alpha_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-utils/pin-utils-0.1.0-alpha.4.crate",
        type = "tar.gz",
        strip_prefix = "pin-utils-0.1.0-alpha.4",

        build_file = Label("//cargo/remote:pin-utils-0.1.0-alpha.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__pkg_config__0_3_17",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pkg-config/pkg-config-0.3.17.crate",
        type = "tar.gz",
        strip_prefix = "pkg-config-0.3.17",

        build_file = Label("//cargo/remote:pkg-config-0.3.17.BUILD"),
    )

    _new_http_archive(
        name = "raze__ppv_lite86__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ppv-lite86/ppv-lite86-0.2.6.crate",
        type = "tar.gz",
        strip_prefix = "ppv-lite86-0.2.6",

        build_file = Label("//cargo/remote:ppv-lite86-0.2.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__proc_macro_hack__0_5_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro-hack/proc-macro-hack-0.5.11.crate",
        type = "tar.gz",
        strip_prefix = "proc-macro-hack-0.5.11",

        build_file = Label("//cargo/remote:proc-macro-hack-0.5.11.BUILD"),
    )

    _new_http_archive(
        name = "raze__proc_macro_nested__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro-nested/proc-macro-nested-0.1.3.crate",
        type = "tar.gz",
        strip_prefix = "proc-macro-nested-0.1.3",

        build_file = Label("//cargo/remote:proc-macro-nested-0.1.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__proc_macro2__1_0_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-1.0.6.crate",
        type = "tar.gz",
        strip_prefix = "proc-macro2-1.0.6",

        build_file = Label("//cargo/remote:proc-macro2-1.0.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__publicsuffix__1_5_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/publicsuffix/publicsuffix-1.5.4.crate",
        type = "tar.gz",
        strip_prefix = "publicsuffix-1.5.4",

        build_file = Label("//cargo/remote:publicsuffix-1.5.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__quick_error__1_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quick-error/quick-error-1.2.2.crate",
        type = "tar.gz",
        strip_prefix = "quick-error-1.2.2",

        build_file = Label("//cargo/remote:quick-error-1.2.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__quote__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-1.0.2.crate",
        type = "tar.gz",
        strip_prefix = "quote-1.0.2",

        build_file = Label("//cargo/remote:quote-1.0.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand__0_6_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.6.5.crate",
        type = "tar.gz",
        strip_prefix = "rand-0.6.5",

        build_file = Label("//cargo/remote:rand-0.6.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand__0_7_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.7.2.crate",
        type = "tar.gz",
        strip_prefix = "rand-0.7.2",

        build_file = Label("//cargo/remote:rand-0.7.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_chacha__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_chacha-0.1.1",

        build_file = Label("//cargo/remote:rand_chacha-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_chacha__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_chacha-0.2.1",

        build_file = Label("//cargo/remote:rand_chacha-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_core__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_core-0.3.1",

        build_file = Label("//cargo/remote:rand_core-0.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_core__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.4.2.crate",
        type = "tar.gz",
        strip_prefix = "rand_core-0.4.2",

        build_file = Label("//cargo/remote:rand_core-0.4.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_core__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.5.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_core-0.5.1",

        build_file = Label("//cargo/remote:rand_core-0.5.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_hc__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.1.0.crate",
        type = "tar.gz",
        strip_prefix = "rand_hc-0.1.0",

        build_file = Label("//cargo/remote:rand_hc-0.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_hc__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "rand_hc-0.2.0",

        build_file = Label("//cargo/remote:rand_hc-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_isaac__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_isaac/rand_isaac-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_isaac-0.1.1",

        build_file = Label("//cargo/remote:rand_isaac-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_jitter__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_jitter/rand_jitter-0.1.4.crate",
        type = "tar.gz",
        strip_prefix = "rand_jitter-0.1.4",

        build_file = Label("//cargo/remote:rand_jitter-0.1.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_os__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_os/rand_os-0.1.3.crate",
        type = "tar.gz",
        strip_prefix = "rand_os-0.1.3",

        build_file = Label("//cargo/remote:rand_os-0.1.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_pcg__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_pcg/rand_pcg-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "rand_pcg-0.1.2",

        build_file = Label("//cargo/remote:rand_pcg-0.1.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__rand_xorshift__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_xorshift/rand_xorshift-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_xorshift-0.1.1",

        build_file = Label("//cargo/remote:rand_xorshift-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__rdrand__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rdrand/rdrand-0.4.0.crate",
        type = "tar.gz",
        strip_prefix = "rdrand-0.4.0",

        build_file = Label("//cargo/remote:rdrand-0.4.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__redox_syscall__0_1_56",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/redox_syscall/redox_syscall-0.1.56.crate",
        type = "tar.gz",
        strip_prefix = "redox_syscall-0.1.56",

        build_file = Label("//cargo/remote:redox_syscall-0.1.56.BUILD"),
    )

    _new_http_archive(
        name = "raze__regex__1_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex/regex-1.3.1.crate",
        type = "tar.gz",
        strip_prefix = "regex-1.3.1",

        build_file = Label("//cargo/remote:regex-1.3.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__regex_syntax__0_6_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex-syntax/regex-syntax-0.6.12.crate",
        type = "tar.gz",
        strip_prefix = "regex-syntax-0.6.12",

        build_file = Label("//cargo/remote:regex-syntax-0.6.12.BUILD"),
    )

    _new_http_archive(
        name = "raze__remove_dir_all__0_5_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/remove_dir_all/remove_dir_all-0.5.2.crate",
        type = "tar.gz",
        strip_prefix = "remove_dir_all-0.5.2",

        build_file = Label("//cargo/remote:remove_dir_all-0.5.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__reqwest__0_9_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/reqwest/reqwest-0.9.24.crate",
        type = "tar.gz",
        strip_prefix = "reqwest-0.9.24",

        build_file = Label("//cargo/remote:reqwest-0.9.24.BUILD"),
    )

    _new_http_archive(
        name = "raze__reqwest_mock__0_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/reqwest_mock/reqwest_mock-0.6.0.crate",
        type = "tar.gz",
        strip_prefix = "reqwest_mock-0.6.0",

        build_file = Label("//cargo/remote:reqwest_mock-0.6.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__resolv_conf__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/resolv-conf/resolv-conf-0.6.2.crate",
        type = "tar.gz",
        strip_prefix = "resolv-conf-0.6.2",

        build_file = Label("//cargo/remote:resolv-conf-0.6.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__rustc_demangle__0_1_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc-demangle/rustc-demangle-0.1.16.crate",
        type = "tar.gz",
        strip_prefix = "rustc-demangle-0.1.16",

        build_file = Label("//cargo/remote:rustc-demangle-0.1.16.BUILD"),
    )

    _new_http_archive(
        name = "raze__rustc_serialize__0_3_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc-serialize/rustc-serialize-0.3.24.crate",
        type = "tar.gz",
        strip_prefix = "rustc-serialize-0.3.24",

        build_file = Label("//cargo/remote:rustc-serialize-0.3.24.BUILD"),
    )

    _new_http_archive(
        name = "raze__rustc_version__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc_version/rustc_version-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "rustc_version-0.2.3",

        build_file = Label("//cargo/remote:rustc_version-0.2.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__ryu__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ryu/ryu-1.0.2.crate",
        type = "tar.gz",
        strip_prefix = "ryu-1.0.2",

        build_file = Label("//cargo/remote:ryu-1.0.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__schannel__0_1_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/schannel/schannel-0.1.16.crate",
        type = "tar.gz",
        strip_prefix = "schannel-0.1.16",

        build_file = Label("//cargo/remote:schannel-0.1.16.BUILD"),
    )

    _new_http_archive(
        name = "raze__scopeguard__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/scopeguard/scopeguard-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "scopeguard-1.0.0",

        build_file = Label("//cargo/remote:scopeguard-1.0.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__security_framework__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/security-framework/security-framework-0.3.4.crate",
        type = "tar.gz",
        strip_prefix = "security-framework-0.3.4",

        build_file = Label("//cargo/remote:security-framework-0.3.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__security_framework_sys__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/security-framework-sys/security-framework-sys-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "security-framework-sys-0.3.3",

        build_file = Label("//cargo/remote:security-framework-sys-0.3.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__semver__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver/semver-0.9.0.crate",
        type = "tar.gz",
        strip_prefix = "semver-0.9.0",

        build_file = Label("//cargo/remote:semver-0.9.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__semver_parser__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver-parser/semver-parser-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "semver-parser-0.7.0",

        build_file = Label("//cargo/remote:semver-parser-0.7.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__serde__1_0_104",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde/serde-1.0.104.crate",
        type = "tar.gz",
        strip_prefix = "serde-1.0.104",

        build_file = Label("//cargo/remote:serde-1.0.104.BUILD"),
    )

    _new_http_archive(
        name = "raze__serde_value__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde-value/serde-value-0.5.3.crate",
        type = "tar.gz",
        strip_prefix = "serde-value-0.5.3",

        build_file = Label("//cargo/remote:serde-value-0.5.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__serde_derive__1_0_104",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_derive/serde_derive-1.0.104.crate",
        type = "tar.gz",
        strip_prefix = "serde_derive-1.0.104",

        build_file = Label("//cargo/remote:serde_derive-1.0.104.BUILD"),
    )

    _new_http_archive(
        name = "raze__serde_json__1_0_44",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_json/serde_json-1.0.44.crate",
        type = "tar.gz",
        strip_prefix = "serde_json-1.0.44",

        build_file = Label("//cargo/remote:serde_json-1.0.44.BUILD"),
    )

    _new_http_archive(
        name = "raze__serde_urlencoded__0_5_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_urlencoded/serde_urlencoded-0.5.5.crate",
        type = "tar.gz",
        strip_prefix = "serde_urlencoded-0.5.5",

        build_file = Label("//cargo/remote:serde_urlencoded-0.5.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__serde_urlencoded__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_urlencoded/serde_urlencoded-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "serde_urlencoded-0.6.1",

        build_file = Label("//cargo/remote:serde_urlencoded-0.6.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__serde_yaml__0_8_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_yaml/serde_yaml-0.8.11.crate",
        type = "tar.gz",
        strip_prefix = "serde_yaml-0.8.11",

        build_file = Label("//cargo/remote:serde_yaml-0.8.11.BUILD"),
    )

    _new_http_archive(
        name = "raze__sha1__0_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/sha1/sha1-0.6.0.crate",
        type = "tar.gz",
        strip_prefix = "sha1-0.6.0",

        build_file = Label("//cargo/remote:sha1-0.6.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__signal_hook_registry__1_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/signal-hook-registry/signal-hook-registry-1.2.0.crate",
        type = "tar.gz",
        strip_prefix = "signal-hook-registry-1.2.0",

        build_file = Label("//cargo/remote:signal-hook-registry-1.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__slab__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slab/slab-0.4.2.crate",
        type = "tar.gz",
        strip_prefix = "slab-0.4.2",

        build_file = Label("//cargo/remote:slab-0.4.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__smallvec__0_6_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smallvec/smallvec-0.6.13.crate",
        type = "tar.gz",
        strip_prefix = "smallvec-0.6.13",

        build_file = Label("//cargo/remote:smallvec-0.6.13.BUILD"),
    )

    _new_http_archive(
        name = "raze__smallvec__1_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smallvec/smallvec-1.1.0.crate",
        type = "tar.gz",
        strip_prefix = "smallvec-1.1.0",

        build_file = Label("//cargo/remote:smallvec-1.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__socket2__0_3_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/socket2/socket2-0.3.11.crate",
        type = "tar.gz",
        strip_prefix = "socket2-0.3.11",

        build_file = Label("//cargo/remote:socket2-0.3.11.BUILD"),
    )

    _new_http_archive(
        name = "raze__string__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/string/string-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "string-0.2.1",

        build_file = Label("//cargo/remote:string-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__syn__1_0_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-1.0.11.crate",
        type = "tar.gz",
        strip_prefix = "syn-1.0.11",

        build_file = Label("//cargo/remote:syn-1.0.11.BUILD"),
    )

    _new_http_archive(
        name = "raze__synstructure__0_12_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/synstructure/synstructure-0.12.3.crate",
        type = "tar.gz",
        strip_prefix = "synstructure-0.12.3",

        build_file = Label("//cargo/remote:synstructure-0.12.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__tempfile__3_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tempfile/tempfile-3.1.0.crate",
        type = "tar.gz",
        strip_prefix = "tempfile-3.1.0",

        build_file = Label("//cargo/remote:tempfile-3.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__termcolor__1_0_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/termcolor/termcolor-1.0.5.crate",
        type = "tar.gz",
        strip_prefix = "termcolor-1.0.5",

        build_file = Label("//cargo/remote:termcolor-1.0.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__thread_id__3_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thread-id/thread-id-3.3.0.crate",
        type = "tar.gz",
        strip_prefix = "thread-id-3.3.0",

        build_file = Label("//cargo/remote:thread-id-3.3.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__thread_local__0_3_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thread_local/thread_local-0.3.6.crate",
        type = "tar.gz",
        strip_prefix = "thread_local-0.3.6",

        build_file = Label("//cargo/remote:thread_local-0.3.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__threadpool__1_7_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/threadpool/threadpool-1.7.1.crate",
        type = "tar.gz",
        strip_prefix = "threadpool-1.7.1",

        build_file = Label("//cargo/remote:threadpool-1.7.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__time__0_1_42",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/time/time-0.1.42.crate",
        type = "tar.gz",
        strip_prefix = "time-0.1.42",

        build_file = Label("//cargo/remote:time-0.1.42.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio__0_1_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio/tokio-0.1.22.crate",
        type = "tar.gz",
        strip_prefix = "tokio-0.1.22",

        build_file = Label("//cargo/remote:tokio-0.1.22.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio/tokio-0.2.6.crate",
        type = "tar.gz",
        strip_prefix = "tokio-0.2.6",

        build_file = Label("//cargo/remote:tokio-0.2.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_buf__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-buf/tokio-buf-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "tokio-buf-0.1.1",

        build_file = Label("//cargo/remote:tokio-buf-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_current_thread__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-current-thread/tokio-current-thread-0.1.6.crate",
        type = "tar.gz",
        strip_prefix = "tokio-current-thread-0.1.6",

        build_file = Label("//cargo/remote:tokio-current-thread-0.1.6.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_executor__0_1_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-executor/tokio-executor-0.1.9.crate",
        type = "tar.gz",
        strip_prefix = "tokio-executor-0.1.9",

        build_file = Label("//cargo/remote:tokio-executor-0.1.9.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_io__0_1_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-io/tokio-io-0.1.12.crate",
        type = "tar.gz",
        strip_prefix = "tokio-io-0.1.12",

        build_file = Label("//cargo/remote:tokio-io-0.1.12.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_reactor__0_1_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-reactor/tokio-reactor-0.1.11.crate",
        type = "tar.gz",
        strip_prefix = "tokio-reactor-0.1.11",

        build_file = Label("//cargo/remote:tokio-reactor-0.1.11.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_sync__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-sync/tokio-sync-0.1.7.crate",
        type = "tar.gz",
        strip_prefix = "tokio-sync-0.1.7",

        build_file = Label("//cargo/remote:tokio-sync-0.1.7.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_tcp__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-tcp/tokio-tcp-0.1.3.crate",
        type = "tar.gz",
        strip_prefix = "tokio-tcp-0.1.3",

        build_file = Label("//cargo/remote:tokio-tcp-0.1.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_threadpool__0_1_17",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-threadpool/tokio-threadpool-0.1.17.crate",
        type = "tar.gz",
        strip_prefix = "tokio-threadpool-0.1.17",

        build_file = Label("//cargo/remote:tokio-threadpool-0.1.17.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_timer__0_2_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-timer/tokio-timer-0.2.12.crate",
        type = "tar.gz",
        strip_prefix = "tokio-timer-0.2.12",

        build_file = Label("//cargo/remote:tokio-timer-0.2.12.BUILD"),
    )

    _new_http_archive(
        name = "raze__tokio_util__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-util/tokio-util-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "tokio-util-0.2.0",

        build_file = Label("//cargo/remote:tokio-util-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__traitobject__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/traitobject/traitobject-0.1.0.crate",
        type = "tar.gz",
        strip_prefix = "traitobject-0.1.0",

        build_file = Label("//cargo/remote:traitobject-0.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__trust_dns_proto__0_18_0_alpha_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/trust-dns-proto/trust-dns-proto-0.18.0-alpha.2.crate",
        type = "tar.gz",
        strip_prefix = "trust-dns-proto-0.18.0-alpha.2",

        build_file = Label("//cargo/remote:trust-dns-proto-0.18.0-alpha.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__trust_dns_resolver__0_18_0_alpha_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/trust-dns-resolver/trust-dns-resolver-0.18.0-alpha.2.crate",
        type = "tar.gz",
        strip_prefix = "trust-dns-resolver-0.18.0-alpha.2",

        build_file = Label("//cargo/remote:trust-dns-resolver-0.18.0-alpha.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__try_lock__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/try-lock/try-lock-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "try-lock-0.2.2",

        build_file = Label("//cargo/remote:try-lock-0.2.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__try_from__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/try_from/try_from-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "try_from-0.3.2",

        build_file = Label("//cargo/remote:try_from-0.3.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__twox_hash__1_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/twox-hash/twox-hash-1.5.0.crate",
        type = "tar.gz",
        strip_prefix = "twox-hash-1.5.0",

        build_file = Label("//cargo/remote:twox-hash-1.5.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__typemap__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/typemap/typemap-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "typemap-0.3.3",

        build_file = Label("//cargo/remote:typemap-0.3.3.BUILD"),
    )

    _new_http_archive(
        name = "raze__unicase__2_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicase/unicase-2.6.0.crate",
        type = "tar.gz",
        strip_prefix = "unicase-2.6.0",

        build_file = Label("//cargo/remote:unicase-2.6.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__unicode_bidi__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-bidi/unicode-bidi-0.3.4.crate",
        type = "tar.gz",
        strip_prefix = "unicode-bidi-0.3.4",

        build_file = Label("//cargo/remote:unicode-bidi-0.3.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__unicode_normalization__0_1_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-normalization/unicode-normalization-0.1.11.crate",
        type = "tar.gz",
        strip_prefix = "unicode-normalization-0.1.11",

        build_file = Label("//cargo/remote:unicode-normalization-0.1.11.BUILD"),
    )

    _new_http_archive(
        name = "raze__unicode_segmentation__1_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-segmentation/unicode-segmentation-1.6.0.crate",
        type = "tar.gz",
        strip_prefix = "unicode-segmentation-1.6.0",

        build_file = Label("//cargo/remote:unicode-segmentation-1.6.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__unicode_xid__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "unicode-xid-0.2.0",

        build_file = Label("//cargo/remote:unicode-xid-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__unsafe_any__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unsafe-any/unsafe-any-0.4.2.crate",
        type = "tar.gz",
        strip_prefix = "unsafe-any-0.4.2",

        build_file = Label("//cargo/remote:unsafe-any-0.4.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__url__1_7_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/url/url-1.7.2.crate",
        type = "tar.gz",
        strip_prefix = "url-1.7.2",

        build_file = Label("//cargo/remote:url-1.7.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__url__2_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/url/url-2.1.0.crate",
        type = "tar.gz",
        strip_prefix = "url-2.1.0",

        build_file = Label("//cargo/remote:url-2.1.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__uuid__0_7_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/uuid/uuid-0.7.4.crate",
        type = "tar.gz",
        strip_prefix = "uuid-0.7.4",

        build_file = Label("//cargo/remote:uuid-0.7.4.BUILD"),
    )

    _new_http_archive(
        name = "raze__vcpkg__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/vcpkg/vcpkg-0.2.8.crate",
        type = "tar.gz",
        strip_prefix = "vcpkg-0.2.8",

        build_file = Label("//cargo/remote:vcpkg-0.2.8.BUILD"),
    )

    _new_http_archive(
        name = "raze__version_check__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/version_check/version_check-0.1.5.crate",
        type = "tar.gz",
        strip_prefix = "version_check-0.1.5",

        build_file = Label("//cargo/remote:version_check-0.1.5.BUILD"),
    )

    _new_http_archive(
        name = "raze__version_check__0_9_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/version_check/version_check-0.9.1.crate",
        type = "tar.gz",
        strip_prefix = "version_check-0.9.1",

        build_file = Label("//cargo/remote:version_check-0.9.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__want__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/want/want-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "want-0.2.0",

        build_file = Label("//cargo/remote:want-0.2.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__wasi__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wasi/wasi-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "wasi-0.7.0",

        build_file = Label("//cargo/remote:wasi-0.7.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__widestring__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/widestring/widestring-0.4.0.crate",
        type = "tar.gz",
        strip_prefix = "widestring-0.4.0",

        build_file = Label("//cargo/remote:widestring-0.4.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__winapi__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.2.8.crate",
        type = "tar.gz",
        strip_prefix = "winapi-0.2.8",

        build_file = Label("//cargo/remote:winapi-0.2.8.BUILD"),
    )

    _new_http_archive(
        name = "raze__winapi__0_3_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.3.8.crate",
        type = "tar.gz",
        strip_prefix = "winapi-0.3.8",

        build_file = Label("//cargo/remote:winapi-0.3.8.BUILD"),
    )

    _new_http_archive(
        name = "raze__winapi_build__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-build/winapi-build-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "winapi-build-0.1.1",

        build_file = Label("//cargo/remote:winapi-build-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",

        build_file = Label("//cargo/remote:winapi-i686-pc-windows-gnu-0.4.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__winapi_util__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-util/winapi-util-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "winapi-util-0.1.2",

        build_file = Label("//cargo/remote:winapi-util-0.1.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",

        build_file = Label("//cargo/remote:winapi-x86_64-pc-windows-gnu-0.4.0.BUILD"),
    )

    _new_http_archive(
        name = "raze__wincolor__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wincolor/wincolor-1.0.2.crate",
        type = "tar.gz",
        strip_prefix = "wincolor-1.0.2",

        build_file = Label("//cargo/remote:wincolor-1.0.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__winreg__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winreg/winreg-0.6.2.crate",
        type = "tar.gz",
        strip_prefix = "winreg-0.6.2",

        build_file = Label("//cargo/remote:winreg-0.6.2.BUILD"),
    )

    _new_http_archive(
        name = "raze__winutil__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winutil/winutil-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "winutil-0.1.1",

        build_file = Label("//cargo/remote:winutil-0.1.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__ws2_32_sys__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ws2_32-sys/ws2_32-sys-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "ws2_32-sys-0.2.1",

        build_file = Label("//cargo/remote:ws2_32-sys-0.2.1.BUILD"),
    )

    _new_http_archive(
        name = "raze__yaml_rust__0_4_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/yaml-rust/yaml-rust-0.4.3.crate",
        type = "tar.gz",
        strip_prefix = "yaml-rust-0.4.3",

        build_file = Label("//cargo/remote:yaml-rust-0.4.3.BUILD"),
    )


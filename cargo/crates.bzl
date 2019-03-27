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
        name = "raze__actix__0_7_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix/actix-0.7.7.crate",
        type = "tar.gz",
        sha256 = "17503213788d3cd8b0d2d8a70afa0f6e376bff2415338e22e53c3d1dcf7b2e4c",
        strip_prefix = "actix-0.7.7",
        build_file = Label("//cargo/remote:actix-0.7.7.BUILD")
    )

    _new_http_archive(
        name = "raze__actix_net__0_2_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-net/actix-net-0.2.4.crate",
        type = "tar.gz",
        sha256 = "c1afd4a2973f2ece17100874183be416ec73ca529be846639930ec2cd9c8b8b9",
        strip_prefix = "actix-net-0.2.4",
        build_file = Label("//cargo/remote:actix-net-0.2.4.BUILD")
    )

    _new_http_archive(
        name = "raze__actix_web__0_7_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix-web/actix-web-0.7.14.crate",
        type = "tar.gz",
        sha256 = "2e9e151d7cc0dbe8fad1141d491eed981f91aee03fcc4fce0005bcc572a0433f",
        strip_prefix = "actix-web-0.7.14",
        build_file = Label("//cargo/remote:actix-web-0.7.14.BUILD")
    )

    _new_http_archive(
        name = "raze__actix_derive__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/actix_derive/actix_derive-0.3.2.crate",
        type = "tar.gz",
        sha256 = "4300e9431455322ae393d43a2ba1ef96b8080573c0fc23b196219efedfb6ba69",
        strip_prefix = "actix_derive-0.3.2",
        build_file = Label("//cargo/remote:actix_derive-0.3.2.BUILD")
    )

    _new_http_archive(
        name = "raze__adler32__1_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/adler32/adler32-1.0.3.crate",
        type = "tar.gz",
        sha256 = "7e522997b529f05601e05166c07ed17789691f562762c7f3b987263d2dedee5c",
        strip_prefix = "adler32-1.0.3",
        build_file = Label("//cargo/remote:adler32-1.0.3.BUILD")
    )

    _new_http_archive(
        name = "raze__aho_corasick__0_6_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/aho-corasick/aho-corasick-0.6.9.crate",
        type = "tar.gz",
        sha256 = "1e9a933f4e58658d7b12defcf96dc5c720f20832deebe3e0a19efd3b6aaeeb9e",
        strip_prefix = "aho-corasick-0.6.9",
        build_file = Label("//cargo/remote:aho-corasick-0.6.9.BUILD")
    )

    _new_http_archive(
        name = "raze__antidote__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/antidote/antidote-1.0.0.crate",
        type = "tar.gz",
        sha256 = "34fde25430d87a9388dadbe6e34d7f72a462c8b43ac8d309b42b0a8505d7e2a5",
        strip_prefix = "antidote-1.0.0",
        build_file = Label("//cargo/remote:antidote-1.0.0.BUILD")
    )

    _new_http_archive(
        name = "raze__arc_swap__0_3_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arc-swap/arc-swap-0.3.6.crate",
        type = "tar.gz",
        sha256 = "5c5ed110e2537bdd3f5b9091707a8a5556a72ac49bbd7302ae0b28fdccb3246c",
        strip_prefix = "arc-swap-0.3.6",
        build_file = Label("//cargo/remote:arc-swap-0.3.6.BUILD")
    )

    _new_http_archive(
        name = "raze__arrayvec__0_4_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arrayvec/arrayvec-0.4.8.crate",
        type = "tar.gz",
        sha256 = "f405cc4c21cd8b784f6c8fc2adf9bc00f59558f0049b5ec21517f875963040cc",
        strip_prefix = "arrayvec-0.4.8",
        build_file = Label("//cargo/remote:arrayvec-0.4.8.BUILD")
    )

    _new_http_archive(
        name = "raze__askama_escape__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/askama_escape/askama_escape-0.1.0.crate",
        type = "tar.gz",
        sha256 = "719b48039ffac1564f67d70162109ba9341125cee0096a540e478355b3c724a7",
        strip_prefix = "askama_escape-0.1.0",
        build_file = Label("//cargo/remote:askama_escape-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__backtrace__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/backtrace/backtrace-0.3.9.crate",
        type = "tar.gz",
        sha256 = "89a47830402e9981c5c41223151efcced65a0510c13097c769cede7efb34782a",
        strip_prefix = "backtrace-0.3.9",
        build_file = Label("//cargo/remote:backtrace-0.3.9.BUILD")
    )

    _new_http_archive(
        name = "raze__backtrace_sys__0_1_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/backtrace-sys/backtrace-sys-0.1.24.crate",
        type = "tar.gz",
        sha256 = "c66d56ac8dabd07f6aacdaf633f4b8262f5b3601a810a0dcddffd5c22c69daa0",
        strip_prefix = "backtrace-sys-0.1.24",
        build_file = Label("//cargo/remote:backtrace-sys-0.1.24.BUILD")
    )

    _new_http_archive(
        name = "raze__base64__0_10_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.10.0.crate",
        type = "tar.gz",
        sha256 = "621fc7ecb8008f86d7fb9b95356cd692ce9514b80a86d85b397f32a22da7b9e2",
        strip_prefix = "base64-0.10.0",
        build_file = Label("//cargo/remote:base64-0.10.0.BUILD")
    )

    _new_http_archive(
        name = "raze__base64__0_9_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.9.3.crate",
        type = "tar.gz",
        sha256 = "489d6c0ed21b11d038c31b6ceccca973e65d73ba3bd8ecb9a2babf5546164643",
        strip_prefix = "base64-0.9.3",
        build_file = Label("//cargo/remote:base64-0.9.3.BUILD")
    )

    _new_http_archive(
        name = "raze__bitflags__0_9_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-0.9.1.crate",
        type = "tar.gz",
        sha256 = "4efd02e230a02e18f92fc2735f44597385ed02ad8f831e7c1c1156ee5e1ab3a5",
        strip_prefix = "bitflags-0.9.1",
        build_file = Label("//cargo/remote:bitflags-0.9.1.BUILD")
    )

    _new_http_archive(
        name = "raze__bitflags__1_0_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-1.0.4.crate",
        type = "tar.gz",
        sha256 = "228047a76f468627ca71776ecdebd732a3423081fcf5125585bcd7c49886ce12",
        strip_prefix = "bitflags-1.0.4",
        build_file = Label("//cargo/remote:bitflags-1.0.4.BUILD")
    )

    _new_http_archive(
        name = "raze__brotli_sys__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/brotli-sys/brotli-sys-0.3.2.crate",
        type = "tar.gz",
        sha256 = "4445dea95f4c2b41cde57cc9fee236ae4dbae88d8fcbdb4750fc1bb5d86aaecd",
        strip_prefix = "brotli-sys-0.3.2",
        build_file = Label("//cargo/remote:brotli-sys-0.3.2.BUILD")
    )

    _new_http_archive(
        name = "raze__brotli2__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/brotli2/brotli2-0.3.2.crate",
        type = "tar.gz",
        sha256 = "0cb036c3eade309815c15ddbacec5b22c4d1f3983a774ab2eac2e3e9ea85568e",
        strip_prefix = "brotli2-0.3.2",
        build_file = Label("//cargo/remote:brotli2-0.3.2.BUILD")
    )

    _new_http_archive(
        name = "raze__build_const__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/build_const/build_const-0.2.1.crate",
        type = "tar.gz",
        sha256 = "39092a32794787acd8525ee150305ff051b0aa6cc2abaf193924f5ab05425f39",
        strip_prefix = "build_const-0.2.1",
        build_file = Label("//cargo/remote:build_const-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__byteorder__1_2_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/byteorder/byteorder-1.2.7.crate",
        type = "tar.gz",
        sha256 = "94f88df23a25417badc922ab0f5716cc1330e87f71ddd9203b3a3ccd9cedf75d",
        strip_prefix = "byteorder-1.2.7",
        build_file = Label("//cargo/remote:byteorder-1.2.7.BUILD")
    )

    _new_http_archive(
        name = "raze__bytes__0_4_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bytes/bytes-0.4.11.crate",
        type = "tar.gz",
        sha256 = "40ade3d27603c2cb345eb0912aec461a6dec7e06a4ae48589904e808335c7afa",
        strip_prefix = "bytes-0.4.11",
        build_file = Label("//cargo/remote:bytes-0.4.11.BUILD")
    )

    _new_http_archive(
        name = "raze__c_linked_list__1_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/c_linked_list/c_linked_list-1.1.1.crate",
        type = "tar.gz",
        sha256 = "4964518bd3b4a8190e832886cdc0da9794f12e8e6c1613a9e90ff331c4c8724b",
        strip_prefix = "c_linked_list-1.1.1",
        build_file = Label("//cargo/remote:c_linked_list-1.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__cc__1_0_25",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cc/cc-1.0.25.crate",
        type = "tar.gz",
        sha256 = "f159dfd43363c4d08055a07703eb7a3406b0dac4d0584d96965a3262db3c9d16",
        strip_prefix = "cc-1.0.25",
        build_file = Label("//cargo/remote:cc-1.0.25.BUILD")
    )

    _new_http_archive(
        name = "raze__cfg_if__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cfg-if/cfg-if-0.1.6.crate",
        type = "tar.gz",
        sha256 = "082bb9b28e00d3c9d39cc03e64ce4cea0f1bb9b3fde493f0cbc008472d22bdf4",
        strip_prefix = "cfg-if-0.1.6",
        build_file = Label("//cargo/remote:cfg-if-0.1.6.BUILD")
    )

    _new_http_archive(
        name = "raze__chrono__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/chrono/chrono-0.4.6.crate",
        type = "tar.gz",
        sha256 = "45912881121cb26fad7c38c17ba7daa18764771836b34fab7d3fbd93ed633878",
        strip_prefix = "chrono-0.4.6",
        build_file = Label("//cargo/remote:chrono-0.4.6.BUILD")
    )

    _new_http_archive(
        name = "raze__cloudabi__0_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cloudabi/cloudabi-0.0.3.crate",
        type = "tar.gz",
        sha256 = "ddfc5b9aa5d4507acaf872de71051dfd0e309860e88966e1051e462a077aac4f",
        strip_prefix = "cloudabi-0.0.3",
        build_file = Label("//cargo/remote:cloudabi-0.0.3.BUILD")
    )

    _new_http_archive(
        name = "raze__cookie__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cookie/cookie-0.11.0.crate",
        type = "tar.gz",
        sha256 = "1465f8134efa296b4c19db34d909637cb2bf0f7aaf21299e23e18fa29ac557cf",
        strip_prefix = "cookie-0.11.0",
        build_file = Label("//cargo/remote:cookie-0.11.0.BUILD")
    )

    _new_http_archive(
        name = "raze__core_foundation__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/core-foundation/core-foundation-0.2.3.crate",
        type = "tar.gz",
        sha256 = "25bfd746d203017f7d5cbd31ee5d8e17f94b6521c7af77ece6c9e4b2d4b16c67",
        strip_prefix = "core-foundation-0.2.3",
        build_file = Label("//cargo/remote:core-foundation-0.2.3.BUILD")
    )

    _new_http_archive(
        name = "raze__core_foundation_sys__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/core-foundation-sys/core-foundation-sys-0.2.3.crate",
        type = "tar.gz",
        sha256 = "065a5d7ffdcbc8fa145d6f0746f3555025b9097a9e9cda59f7467abae670c78d",
        strip_prefix = "core-foundation-sys-0.2.3",
        build_file = Label("//cargo/remote:core-foundation-sys-0.2.3.BUILD")
    )

    _new_http_archive(
        name = "raze__crc__1_8_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crc/crc-1.8.1.crate",
        type = "tar.gz",
        sha256 = "d663548de7f5cca343f1e0a48d14dcfb0e9eb4e079ec58883b7251539fa10aeb",
        strip_prefix = "crc-1.8.1",
        build_file = Label("//cargo/remote:crc-1.8.1.BUILD")
    )

    _new_http_archive(
        name = "raze__crc32fast__1_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crc32fast/crc32fast-1.1.0.crate",
        type = "tar.gz",
        sha256 = "bd60857105614c6054705de26d91124e75aad3666f019034035381050f2fd8a4",
        strip_prefix = "crc32fast-1.1.0",
        build_file = Label("//cargo/remote:crc32fast-1.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam/crossbeam-0.3.2.crate",
        type = "tar.gz",
        sha256 = "24ce9782d4d5c53674646a6a4c1863a21a8fc0cb649b3c94dfc16e45071dea19",
        strip_prefix = "crossbeam-0.3.2",
        build_file = Label("//cargo/remote:crossbeam-0.3.2.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_channel__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-channel/crossbeam-channel-0.2.6.crate",
        type = "tar.gz",
        sha256 = "7b85741761b7f160bc5e7e0c14986ef685b7f8bf9b7ad081c60c604bb4649827",
        strip_prefix = "crossbeam-channel-0.2.6",
        build_file = Label("//cargo/remote:crossbeam-channel-0.2.6.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_deque__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-deque/crossbeam-deque-0.6.2.crate",
        type = "tar.gz",
        sha256 = "4fe1b6f945f824c7a25afe44f62e25d714c0cc523f8e99d8db5cd1026e1269d3",
        strip_prefix = "crossbeam-deque-0.6.2",
        build_file = Label("//cargo/remote:crossbeam-deque-0.6.2.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_epoch__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-epoch/crossbeam-epoch-0.6.1.crate",
        type = "tar.gz",
        sha256 = "2449aaa4ec7ef96e5fb24db16024b935df718e9ae1cec0a1e68feeca2efca7b8",
        strip_prefix = "crossbeam-epoch-0.6.1",
        build_file = Label("//cargo/remote:crossbeam-epoch-0.6.1.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_utils__0_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-utils/crossbeam-utils-0.5.0.crate",
        type = "tar.gz",
        sha256 = "677d453a17e8bd2b913fa38e8b9cf04bcdbb5be790aa294f2389661d72036015",
        strip_prefix = "crossbeam-utils-0.5.0",
        build_file = Label("//cargo/remote:crossbeam-utils-0.5.0.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_utils__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-utils/crossbeam-utils-0.6.1.crate",
        type = "tar.gz",
        sha256 = "c55913cc2799171a550e307918c0a360e8c16004820291bf3b638969b4a01816",
        strip_prefix = "crossbeam-utils-0.6.1",
        build_file = Label("//cargo/remote:crossbeam-utils-0.6.1.BUILD")
    )

    _new_http_archive(
        name = "raze__dtoa__0_4_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/dtoa/dtoa-0.4.3.crate",
        type = "tar.gz",
        sha256 = "6d301140eb411af13d3115f9a562c85cc6b541ade9dfa314132244aaee7489dd",
        strip_prefix = "dtoa-0.4.3",
        build_file = Label("//cargo/remote:dtoa-0.4.3.BUILD")
    )

    _new_http_archive(
        name = "raze__either__1_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/either/either-1.5.0.crate",
        type = "tar.gz",
        sha256 = "3be565ca5c557d7f59e7cfcf1844f9e3033650c929c6566f511e8005f205c1d0",
        strip_prefix = "either-1.5.0",
        build_file = Label("//cargo/remote:either-1.5.0.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding__0_2_33",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding/encoding-0.2.33.crate",
        type = "tar.gz",
        sha256 = "6b0d943856b990d12d3b55b359144ff341533e516d94098b1d3fc1ac666d36ec",
        strip_prefix = "encoding-0.2.33",
        build_file = Label("//cargo/remote:encoding-0.2.33.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding_index_japanese__1_20141219_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding-index-japanese/encoding-index-japanese-1.20141219.5.crate",
        type = "tar.gz",
        sha256 = "04e8b2ff42e9a05335dbf8b5c6f7567e5591d0d916ccef4e0b1710d32a0d0c91",
        strip_prefix = "encoding-index-japanese-1.20141219.5",
        build_file = Label("//cargo/remote:encoding-index-japanese-1.20141219.5.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding_index_korean__1_20141219_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding-index-korean/encoding-index-korean-1.20141219.5.crate",
        type = "tar.gz",
        sha256 = "4dc33fb8e6bcba213fe2f14275f0963fd16f0a02c878e3095ecfdf5bee529d81",
        strip_prefix = "encoding-index-korean-1.20141219.5",
        build_file = Label("//cargo/remote:encoding-index-korean-1.20141219.5.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding_index_simpchinese__1_20141219_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding-index-simpchinese/encoding-index-simpchinese-1.20141219.5.crate",
        type = "tar.gz",
        sha256 = "d87a7194909b9118fc707194baa434a4e3b0fb6a5a757c73c3adb07aa25031f7",
        strip_prefix = "encoding-index-simpchinese-1.20141219.5",
        build_file = Label("//cargo/remote:encoding-index-simpchinese-1.20141219.5.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding_index_singlebyte__1_20141219_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding-index-singlebyte/encoding-index-singlebyte-1.20141219.5.crate",
        type = "tar.gz",
        sha256 = "3351d5acffb224af9ca265f435b859c7c01537c0849754d3db3fdf2bfe2ae84a",
        strip_prefix = "encoding-index-singlebyte-1.20141219.5",
        build_file = Label("//cargo/remote:encoding-index-singlebyte-1.20141219.5.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding_index_tradchinese__1_20141219_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding-index-tradchinese/encoding-index-tradchinese-1.20141219.5.crate",
        type = "tar.gz",
        sha256 = "fd0e20d5688ce3cab59eb3ef3a2083a5c77bf496cb798dc6fcdb75f323890c18",
        strip_prefix = "encoding-index-tradchinese-1.20141219.5",
        build_file = Label("//cargo/remote:encoding-index-tradchinese-1.20141219.5.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding_index_tests__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding_index_tests/encoding_index_tests-0.1.4.crate",
        type = "tar.gz",
        sha256 = "a246d82be1c9d791c5dfde9a2bd045fc3cbba3fa2b11ad558f27d01712f00569",
        strip_prefix = "encoding_index_tests-0.1.4",
        build_file = Label("//cargo/remote:encoding_index_tests-0.1.4.BUILD")
    )

    _new_http_archive(
        name = "raze__encoding_rs__0_8_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding_rs/encoding_rs-0.8.13.crate",
        type = "tar.gz",
        sha256 = "1a8fa54e6689eb2549c4efed8d00d7f3b2b994a064555b0e8df4ae3764bcc4be",
        strip_prefix = "encoding_rs-0.8.13",
        build_file = Label("//cargo/remote:encoding_rs-0.8.13.BUILD")
    )

    _new_http_archive(
        name = "raze__error_chain__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/error-chain/error-chain-0.11.0.crate",
        type = "tar.gz",
        sha256 = "ff511d5dc435d703f4971bc399647c9bc38e20cb41452e3b9feb4765419ed3f3",
        strip_prefix = "error-chain-0.11.0",
        build_file = Label("//cargo/remote:error-chain-0.11.0.BUILD")
    )

    _new_http_archive(
        name = "raze__error_chain__0_8_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/error-chain/error-chain-0.8.1.crate",
        type = "tar.gz",
        sha256 = "6930e04918388a9a2e41d518c25cf679ccafe26733fb4127dbf21993f2575d46",
        strip_prefix = "error-chain-0.8.1",
        build_file = Label("//cargo/remote:error-chain-0.8.1.BUILD")
    )

    _new_http_archive(
        name = "raze__failure__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/failure/failure-0.1.3.crate",
        type = "tar.gz",
        sha256 = "6dd377bcc1b1b7ce911967e3ec24fa19c3224394ec05b54aa7b083d498341ac7",
        strip_prefix = "failure-0.1.3",
        build_file = Label("//cargo/remote:failure-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__failure_derive__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/failure_derive/failure_derive-0.1.3.crate",
        type = "tar.gz",
        sha256 = "64c2d913fe8ed3b6c6518eedf4538255b989945c14c2a7d5cbff62a5e2120596",
        strip_prefix = "failure_derive-0.1.3",
        build_file = Label("//cargo/remote:failure_derive-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__flate2__1_0_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/flate2/flate2-1.0.5.crate",
        type = "tar.gz",
        sha256 = "96971e4fc2737f211ec8236fe16ac67695838ca3e25567c07b4f837d1f8f829c",
        strip_prefix = "flate2-1.0.5",
        build_file = Label("//cargo/remote:flate2-1.0.5.BUILD")
    )

    _new_http_archive(
        name = "raze__flate2_crc__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/flate2-crc/flate2-crc-0.1.1.crate",
        type = "tar.gz",
        sha256 = "8a792245eaed7747984647ce20582507985d69ccfacdddcb60bd5f451f21cbc5",
        strip_prefix = "flate2-crc-0.1.1",
        build_file = Label("//cargo/remote:flate2-crc-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__fnv__1_0_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fnv/fnv-1.0.6.crate",
        type = "tar.gz",
        sha256 = "2fad85553e09a6f881f739c29f0b00b0f01357c743266d478b68951ce23285f3",
        strip_prefix = "fnv-1.0.6",
        build_file = Label("//cargo/remote:fnv-1.0.6.BUILD")
    )

    _new_http_archive(
        name = "raze__foreign_types__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/foreign-types/foreign-types-0.3.2.crate",
        type = "tar.gz",
        sha256 = "f6f339eb8adc052cd2ca78910fda869aefa38d22d5cb648e6485e4d3fc06f3b1",
        strip_prefix = "foreign-types-0.3.2",
        build_file = Label("//cargo/remote:foreign-types-0.3.2.BUILD")
    )

    _new_http_archive(
        name = "raze__foreign_types_shared__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/foreign-types-shared/foreign-types-shared-0.1.1.crate",
        type = "tar.gz",
        sha256 = "00b0228411908ca8685dba7fc2cdd70ec9990a6e753e89b6ac91a84c40fbaf4b",
        strip_prefix = "foreign-types-shared-0.1.1",
        build_file = Label("//cargo/remote:foreign-types-shared-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate",
        type = "tar.gz",
        sha256 = "2e9763c69ebaae630ba35f74888db465e49e259ba1bc0eda7d06f4a067615d82",
        strip_prefix = "fuchsia-zircon-0.3.3",
        build_file = Label("//cargo/remote:fuchsia-zircon-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon_sys__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate",
        type = "tar.gz",
        sha256 = "3dcaa9ae7725d12cdb85b3ad99a434db70b468c09ded17e012d86b5c1010f7a7",
        strip_prefix = "fuchsia-zircon-sys-0.3.3",
        build_file = Label("//cargo/remote:fuchsia-zircon-sys-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__futures__0_1_25",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures/futures-0.1.25.crate",
        type = "tar.gz",
        sha256 = "49e7653e374fe0d0c12de4250f0bdb60680b8c80eed558c5c7538eec9c89e21b",
        strip_prefix = "futures-0.1.25",
        build_file = Label("//cargo/remote:futures-0.1.25.BUILD")
    )

    _new_http_archive(
        name = "raze__futures_cpupool__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-cpupool/futures-cpupool-0.1.8.crate",
        type = "tar.gz",
        sha256 = "ab90cde24b3319636588d0c35fe03b1333857621051837ed769faefb4c2162e4",
        strip_prefix = "futures-cpupool-0.1.8",
        build_file = Label("//cargo/remote:futures-cpupool-0.1.8.BUILD")
    )

    _new_http_archive(
        name = "raze__gcc__0_3_55",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/gcc/gcc-0.3.55.crate",
        type = "tar.gz",
        sha256 = "8f5f3913fa0bfe7ee1fd8248b6b9f42a5af4b9d65ec2dd2c3c26132b950ecfc2",
        strip_prefix = "gcc-0.3.55",
        build_file = Label("//cargo/remote:gcc-0.3.55.BUILD")
    )

    _new_http_archive(
        name = "raze__get_if_addrs__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/get_if_addrs/get_if_addrs-0.5.3.crate",
        type = "tar.gz",
        sha256 = "abddb55a898d32925f3148bd281174a68eeb68bbfd9a5938a57b18f506ee4ef7",
        strip_prefix = "get_if_addrs-0.5.3",
        build_file = Label("//cargo/remote:get_if_addrs-0.5.3.BUILD")
    )

    _new_http_archive(
        name = "raze__get_if_addrs_sys__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/get_if_addrs-sys/get_if_addrs-sys-0.1.1.crate",
        type = "tar.gz",
        sha256 = "0d04f9fb746cf36b191c00f3ede8bde9c8e64f9f4b05ae2694a9ccf5e3f5ab48",
        strip_prefix = "get_if_addrs-sys-0.1.1",
        build_file = Label("//cargo/remote:get_if_addrs-sys-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__h2__0_1_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/h2/h2-0.1.13.crate",
        type = "tar.gz",
        sha256 = "7dd33bafe2e6370e6c8eb0cf1b8c5f93390b90acde7e9b03723f166b28b648ed",
        strip_prefix = "h2-0.1.13",
        build_file = Label("//cargo/remote:h2-0.1.13.BUILD")
    )

    _new_http_archive(
        name = "raze__hostname__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hostname/hostname-0.1.5.crate",
        type = "tar.gz",
        sha256 = "21ceb46a83a85e824ef93669c8b390009623863b5c195d1ba747292c0c72f94e",
        strip_prefix = "hostname-0.1.5",
        build_file = Label("//cargo/remote:hostname-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__http__0_1_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http/http-0.1.14.crate",
        type = "tar.gz",
        sha256 = "02096a6d2c55e63f7fcb800690e4f889a25f6ec342e3adb4594e293b625215ab",
        strip_prefix = "http-0.1.14",
        build_file = Label("//cargo/remote:http-0.1.14.BUILD")
    )

    _new_http_archive(
        name = "raze__httparse__1_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/httparse/httparse-1.3.3.crate",
        type = "tar.gz",
        sha256 = "e8734b0cfd3bc3e101ec59100e101c2eecd19282202e87808b3037b442777a83",
        strip_prefix = "httparse-1.3.3",
        build_file = Label("//cargo/remote:httparse-1.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__humantime__1_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/humantime/humantime-1.2.0.crate",
        type = "tar.gz",
        sha256 = "3ca7e5f2e110db35f93b837c81797f3714500b81d517bf20c431b16d3ca4f114",
        strip_prefix = "humantime-1.2.0",
        build_file = Label("//cargo/remote:humantime-1.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__hyper__0_11_27",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper/hyper-0.11.27.crate",
        type = "tar.gz",
        sha256 = "34a590ca09d341e94cddf8e5af0bbccde205d5fbc2fa3c09dd67c7f85cea59d7",
        strip_prefix = "hyper-0.11.27",
        build_file = Label("//cargo/remote:hyper-0.11.27.BUILD")
    )

    _new_http_archive(
        name = "raze__hyper__0_12_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper/hyper-0.12.16.crate",
        type = "tar.gz",
        sha256 = "0aeedb8ca5f0f96be00f84073c6d0d5f962ecad020ef543dff99a7c12717a60e",
        strip_prefix = "hyper-0.12.16",
        build_file = Label("//cargo/remote:hyper-0.12.16.BUILD")
    )

    _new_http_archive(
        name = "raze__hyper_tls__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper-tls/hyper-tls-0.1.4.crate",
        type = "tar.gz",
        sha256 = "ffb1bd5e518d3065840ab315dbbf44e4420e5f7d80e2cb93fa6ffffc50522378",
        strip_prefix = "hyper-tls-0.1.4",
        build_file = Label("//cargo/remote:hyper-tls-0.1.4.BUILD")
    )

    _new_http_archive(
        name = "raze__idna__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/idna/idna-0.1.5.crate",
        type = "tar.gz",
        sha256 = "38f09e0f0b1fb55fdee1f17470ad800da77af5186a1a76c026b679358b7e844e",
        strip_prefix = "idna-0.1.5",
        build_file = Label("//cargo/remote:idna-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__indexmap__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/indexmap/indexmap-1.0.2.crate",
        type = "tar.gz",
        sha256 = "7e81a7c05f79578dbc15793d8b619db9ba32b4577003ef3af1a91c416798c58d",
        strip_prefix = "indexmap-1.0.2",
        build_file = Label("//cargo/remote:indexmap-1.0.2.BUILD")
    )

    _new_http_archive(
        name = "raze__iovec__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/iovec/iovec-0.1.2.crate",
        type = "tar.gz",
        sha256 = "dbe6e417e7d0975db6512b90796e8ce223145ac4e33c377e4a42882a0e88bb08",
        strip_prefix = "iovec-0.1.2",
        build_file = Label("//cargo/remote:iovec-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__ipconfig__0_1_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ipconfig/ipconfig-0.1.9.crate",
        type = "tar.gz",
        sha256 = "08f7eadeaf4b52700de180d147c4805f199854600b36faa963d91114827b2ffc",
        strip_prefix = "ipconfig-0.1.9",
        build_file = Label("//cargo/remote:ipconfig-0.1.9.BUILD")
    )

    _new_http_archive(
        name = "raze__itertools__0_7_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itertools/itertools-0.7.11.crate",
        type = "tar.gz",
        sha256 = "0d47946d458e94a1b7bcabbf6521ea7c037062c81f534615abcad76e84d4970d",
        strip_prefix = "itertools-0.7.11",
        build_file = Label("//cargo/remote:itertools-0.7.11.BUILD")
    )

    _new_http_archive(
        name = "raze__itoa__0_4_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itoa/itoa-0.4.3.crate",
        type = "tar.gz",
        sha256 = "1306f3464951f30e30d12373d31c79fbd52d236e5e896fd92f96ec7babbbe60b",
        strip_prefix = "itoa-0.4.3",
        build_file = Label("//cargo/remote:itoa-0.4.3.BUILD")
    )

    _new_http_archive(
        name = "raze__json__0_11_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/json/json-0.11.13.crate",
        type = "tar.gz",
        sha256 = "9ad0485404155f45cce53a40d4b2d6ac356418300daed05273d9e26f91c390be",
        strip_prefix = "json-0.11.13",
        build_file = Label("//cargo/remote:json-0.11.13.BUILD")
    )

    _new_http_archive(
        name = "raze__kernel32_sys__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/kernel32-sys/kernel32-sys-0.2.2.crate",
        type = "tar.gz",
        sha256 = "7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d",
        strip_prefix = "kernel32-sys-0.2.2",
        build_file = Label("//cargo/remote:kernel32-sys-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__language_tags__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/language-tags/language-tags-0.2.2.crate",
        type = "tar.gz",
        sha256 = "a91d884b6667cd606bb5a69aa0c99ba811a115fc68915e7056ec08a46e93199a",
        strip_prefix = "language-tags-0.2.2",
        build_file = Label("//cargo/remote:language-tags-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__lazy_static__0_2_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazy_static/lazy_static-0.2.11.crate",
        type = "tar.gz",
        sha256 = "76f033c7ad61445c5b347c7382dd1237847eb1bce590fe50365dcb33d546be73",
        strip_prefix = "lazy_static-0.2.11",
        build_file = Label("//cargo/remote:lazy_static-0.2.11.BUILD")
    )

    _new_http_archive(
        name = "raze__lazy_static__1_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazy_static/lazy_static-1.2.0.crate",
        type = "tar.gz",
        sha256 = "a374c89b9db55895453a74c1e38861d9deec0b01b405a82516e9d5de4820dea1",
        strip_prefix = "lazy_static-1.2.0",
        build_file = Label("//cargo/remote:lazy_static-1.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__lazycell__1_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazycell/lazycell-1.2.0.crate",
        type = "tar.gz",
        sha256 = "ddba4c30a78328befecec92fc94970e53b3ae385827d28620f0f5bb2493081e0",
        strip_prefix = "lazycell-1.2.0",
        build_file = Label("//cargo/remote:lazycell-1.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__libc__0_2_44",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libc/libc-0.2.44.crate",
        type = "tar.gz",
        sha256 = "10923947f84a519a45c8fefb7dd1b3e8c08747993381adee176d7a82b4195311",
        strip_prefix = "libc-0.2.44",
        build_file = Label("//cargo/remote:libc-0.2.44.BUILD")
    )

    _new_http_archive(
        name = "raze__libflate__0_1_19",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libflate/libflate-0.1.19.crate",
        type = "tar.gz",
        sha256 = "bff3ac7d6f23730d3b533c35ed75eef638167634476a499feef16c428d74b57b",
        strip_prefix = "libflate-0.1.19",
        build_file = Label("//cargo/remote:libflate-0.1.19.BUILD")
    )

    _new_http_archive(
        name = "raze__linked_hash_map__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/linked-hash-map/linked-hash-map-0.4.2.crate",
        type = "tar.gz",
        sha256 = "7860ec297f7008ff7a1e3382d7f7e1dcd69efc94751a2284bafc3d013c2aa939",
        strip_prefix = "linked-hash-map-0.4.2",
        build_file = Label("//cargo/remote:linked-hash-map-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__linked_hash_map__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/linked-hash-map/linked-hash-map-0.5.1.crate",
        type = "tar.gz",
        sha256 = "70fb39025bc7cdd76305867c4eccf2f2dcf6e9a57f5b21a93e1c2d86cd03ec9e",
        strip_prefix = "linked-hash-map-0.5.1",
        build_file = Label("//cargo/remote:linked-hash-map-0.5.1.BUILD")
    )

    _new_http_archive(
        name = "raze__lock_api__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lock_api/lock_api-0.1.5.crate",
        type = "tar.gz",
        sha256 = "62ebf1391f6acad60e5c8b43706dde4582df75c06698ab44511d15016bc2442c",
        strip_prefix = "lock_api-0.1.5",
        build_file = Label("//cargo/remote:lock_api-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__log__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.3.9.crate",
        type = "tar.gz",
        sha256 = "e19e8d5c34a3e0e2223db8e060f9e8264aeeb5c5fc64a4ee9965c062211c024b",
        strip_prefix = "log-0.3.9",
        build_file = Label("//cargo/remote:log-0.3.9.BUILD")
    )

    _new_http_archive(
        name = "raze__log__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.4.6.crate",
        type = "tar.gz",
        sha256 = "c84ec4b527950aa83a329754b01dbe3f58361d1c5efacd1f6d68c494d08a17c6",
        strip_prefix = "log-0.4.6",
        build_file = Label("//cargo/remote:log-0.4.6.BUILD")
    )

    _new_http_archive(
        name = "raze__log_mdc__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log-mdc/log-mdc-0.1.0.crate",
        type = "tar.gz",
        sha256 = "a94d21414c1f4a51209ad204c1776a3d0765002c76c6abcb602a6f09f1e881c7",
        strip_prefix = "log-mdc-0.1.0",
        build_file = Label("//cargo/remote:log-mdc-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__log4rs__0_8_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log4rs/log4rs-0.8.1.crate",
        type = "tar.gz",
        sha256 = "25e0fc8737a634116a2deb38d821e4400ed16ce9dcb0d628a978d399260f5902",
        strip_prefix = "log4rs-0.8.1",
        build_file = Label("//cargo/remote:log4rs-0.8.1.BUILD")
    )

    _new_http_archive(
        name = "raze__lru_cache__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lru-cache/lru-cache-0.1.1.crate",
        type = "tar.gz",
        sha256 = "4d06ff7ff06f729ce5f4e227876cb88d10bc59cd4ae1e09fbb2bde15c850dc21",
        strip_prefix = "lru-cache-0.1.1",
        build_file = Label("//cargo/remote:lru-cache-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__matches__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/matches/matches-0.1.8.crate",
        type = "tar.gz",
        sha256 = "7ffc5c5338469d4d3ea17d269fa8ea3512ad247247c30bd2df69e68309ed0a08",
        strip_prefix = "matches-0.1.8",
        build_file = Label("//cargo/remote:matches-0.1.8.BUILD")
    )

    _new_http_archive(
        name = "raze__memchr__2_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memchr/memchr-2.1.1.crate",
        type = "tar.gz",
        sha256 = "0a3eb002f0535929f1199681417029ebea04aadc0c7a4224b46be99c7f5d6a16",
        strip_prefix = "memchr-2.1.1",
        build_file = Label("//cargo/remote:memchr-2.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__memoffset__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memoffset/memoffset-0.2.1.crate",
        type = "tar.gz",
        sha256 = "0f9dc261e2b62d7a622bf416ea3c5245cdd5d9a7fcc428c0d06804dfce1775b3",
        strip_prefix = "memoffset-0.2.1",
        build_file = Label("//cargo/remote:memoffset-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__mime__0_3_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime/mime-0.3.12.crate",
        type = "tar.gz",
        sha256 = "0a907b83e7b9e987032439a387e187119cddafc92d5c2aaeb1d92580a793f630",
        strip_prefix = "mime-0.3.12",
        build_file = Label("//cargo/remote:mime-0.3.12.BUILD")
    )

    _new_http_archive(
        name = "raze__mime_guess__2_0_0_alpha_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime_guess/mime_guess-2.0.0-alpha.6.crate",
        type = "tar.gz",
        sha256 = "30de2e4613efcba1ec63d8133f344076952090c122992a903359be5a4f99c3ed",
        strip_prefix = "mime_guess-2.0.0-alpha.6",
        build_file = Label("//cargo/remote:mime_guess-2.0.0-alpha.6.BUILD")
    )

    _new_http_archive(
        name = "raze__miniz_sys__0_1_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miniz-sys/miniz-sys-0.1.11.crate",
        type = "tar.gz",
        sha256 = "0300eafb20369952951699b68243ab4334f4b10a88f411c221d444b36c40e649",
        strip_prefix = "miniz-sys-0.1.11",
        build_file = Label("//cargo/remote:miniz-sys-0.1.11.BUILD")
    )

    _new_http_archive(
        name = "raze__miniz_oxide__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miniz_oxide/miniz_oxide-0.2.0.crate",
        type = "tar.gz",
        sha256 = "5ad30a47319c16cde58d0314f5d98202a80c9083b5f61178457403dfb14e509c",
        strip_prefix = "miniz_oxide-0.2.0",
        build_file = Label("//cargo/remote:miniz_oxide-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__miniz_oxide_c_api__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miniz_oxide_c_api/miniz_oxide_c_api-0.2.0.crate",
        type = "tar.gz",
        sha256 = "28edaef377517fd9fe3e085c37d892ce7acd1fbeab9239c5a36eec352d8a8b7e",
        strip_prefix = "miniz_oxide_c_api-0.2.0",
        build_file = Label("//cargo/remote:miniz_oxide_c_api-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__mio__0_6_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio/mio-0.6.16.crate",
        type = "tar.gz",
        sha256 = "71646331f2619b1026cc302f87a2b8b648d5c6dd6937846a16cc8ce0f347f432",
        strip_prefix = "mio-0.6.16",
        build_file = Label("//cargo/remote:mio-0.6.16.BUILD")
    )

    _new_http_archive(
        name = "raze__mio_uds__0_6_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio-uds/mio-uds-0.6.7.crate",
        type = "tar.gz",
        sha256 = "966257a94e196b11bb43aca423754d87429960a768de9414f3691d6957abf125",
        strip_prefix = "mio-uds-0.6.7",
        build_file = Label("//cargo/remote:mio-uds-0.6.7.BUILD")
    )

    _new_http_archive(
        name = "raze__miow__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miow/miow-0.2.1.crate",
        type = "tar.gz",
        sha256 = "8c1f2f3b1cf331de6896aabf6e9d55dca90356cc9960cca7eaaf408a355ae919",
        strip_prefix = "miow-0.2.1",
        build_file = Label("//cargo/remote:miow-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__mustache__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mustache/mustache-0.8.2.crate",
        type = "tar.gz",
        sha256 = "ddb004e419334fc9172d0a5ff91c0770bdd6239091b0b343eb5926101f0a7d13",
        strip_prefix = "mustache-0.8.2",
        build_file = Label("//cargo/remote:mustache-0.8.2.BUILD")
    )

    _new_http_archive(
        name = "raze__native_tls__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/native-tls/native-tls-0.1.5.crate",
        type = "tar.gz",
        sha256 = "f74dbadc8b43df7864539cedb7bc91345e532fdd913cfdc23ad94f4d2d40fbc0",
        strip_prefix = "native-tls-0.1.5",
        build_file = Label("//cargo/remote:native-tls-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__net2__0_2_33",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/net2/net2-0.2.33.crate",
        type = "tar.gz",
        sha256 = "42550d9fb7b6684a6d404d9fa7250c2eb2646df731d1c06afc06dcee9e1bcf88",
        strip_prefix = "net2-0.2.33",
        build_file = Label("//cargo/remote:net2-0.2.33.BUILD")
    )

    _new_http_archive(
        name = "raze__nodrop__0_1_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/nodrop/nodrop-0.1.13.crate",
        type = "tar.gz",
        sha256 = "2f9667ddcc6cc8a43afc9b7917599d7216aa09c463919ea32c59ed6cac8bc945",
        strip_prefix = "nodrop-0.1.13",
        build_file = Label("//cargo/remote:nodrop-0.1.13.BUILD")
    )

    _new_http_archive(
        name = "raze__num_integer__0_1_39",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-integer/num-integer-0.1.39.crate",
        type = "tar.gz",
        sha256 = "e83d528d2677f0518c570baf2b7abdcf0cd2d248860b68507bdcb3e91d4c0cea",
        strip_prefix = "num-integer-0.1.39",
        build_file = Label("//cargo/remote:num-integer-0.1.39.BUILD")
    )

    _new_http_archive(
        name = "raze__num_traits__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-traits/num-traits-0.2.6.crate",
        type = "tar.gz",
        sha256 = "0b3a5d7cc97d6d30d8b9bc8fa19bf45349ffe46241e8816f50f62f6d6aaabee1",
        strip_prefix = "num-traits-0.2.6",
        build_file = Label("//cargo/remote:num-traits-0.2.6.BUILD")
    )

    _new_http_archive(
        name = "raze__num_cpus__1_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num_cpus/num_cpus-1.8.0.crate",
        type = "tar.gz",
        sha256 = "c51a3322e4bca9d212ad9a158a02abc6934d005490c054a2778df73a70aa0a30",
        strip_prefix = "num_cpus-1.8.0",
        build_file = Label("//cargo/remote:num_cpus-1.8.0.BUILD")
    )

    _new_http_archive(
        name = "raze__openssl__0_9_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/openssl/openssl-0.9.24.crate",
        type = "tar.gz",
        sha256 = "a3605c298474a3aa69de92d21139fb5e2a81688d308262359d85cdd0d12a7985",
        strip_prefix = "openssl-0.9.24",
        build_file = Label("//cargo/remote:openssl-0.9.24.BUILD")
    )

    _new_http_archive(
        name = "raze__openssl_sys__0_9_39",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/openssl-sys/openssl-sys-0.9.39.crate",
        type = "tar.gz",
        sha256 = "278c1ad40a89aa1e741a1eed089a2f60b18fab8089c3139b542140fc7d674106",
        strip_prefix = "openssl-sys-0.9.39",
        build_file = Label("//cargo/remote:openssl-sys-0.9.39.BUILD")
    )

    _new_http_archive(
        name = "raze__ordered_float__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ordered-float/ordered-float-1.0.1.crate",
        type = "tar.gz",
        sha256 = "2f0015e9e8e28ee20c581cfbfe47c650cedeb9ed0721090e0b7ebb10b9cdbcc2",
        strip_prefix = "ordered-float-1.0.1",
        build_file = Label("//cargo/remote:ordered-float-1.0.1.BUILD")
    )

    _new_http_archive(
        name = "raze__owning_ref__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/owning_ref/owning_ref-0.4.0.crate",
        type = "tar.gz",
        sha256 = "49a4b8ea2179e6a2e27411d3bca09ca6dd630821cf6894c6c7c8467a8ee7ef13",
        strip_prefix = "owning_ref-0.4.0",
        build_file = Label("//cargo/remote:owning_ref-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__parking_lot__0_6_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot/parking_lot-0.6.4.crate",
        type = "tar.gz",
        sha256 = "f0802bff09003b291ba756dc7e79313e51cc31667e94afbe847def490424cde5",
        strip_prefix = "parking_lot-0.6.4",
        build_file = Label("//cargo/remote:parking_lot-0.6.4.BUILD")
    )

    _new_http_archive(
        name = "raze__parking_lot_core__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot_core/parking_lot_core-0.3.1.crate",
        type = "tar.gz",
        sha256 = "ad7f7e6ebdc79edff6fdcb87a55b620174f7a989e3eb31b65231f4af57f00b8c",
        strip_prefix = "parking_lot_core-0.3.1",
        build_file = Label("//cargo/remote:parking_lot_core-0.3.1.BUILD")
    )

    _new_http_archive(
        name = "raze__percent_encoding__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/percent-encoding/percent-encoding-1.0.1.crate",
        type = "tar.gz",
        sha256 = "31010dd2e1ac33d5b46a5b413495239882813e0369f8ed8a5e266f173602f831",
        strip_prefix = "percent-encoding-1.0.1",
        build_file = Label("//cargo/remote:percent-encoding-1.0.1.BUILD")
    )

    _new_http_archive(
        name = "raze__phf__0_7_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf/phf-0.7.23.crate",
        type = "tar.gz",
        sha256 = "cec29da322b242f4c3098852c77a0ca261c9c01b806cae85a5572a1eb94db9a6",
        strip_prefix = "phf-0.7.23",
        build_file = Label("//cargo/remote:phf-0.7.23.BUILD")
    )

    _new_http_archive(
        name = "raze__phf_codegen__0_7_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf_codegen/phf_codegen-0.7.23.crate",
        type = "tar.gz",
        sha256 = "7d187f00cd98d5afbcd8898f6cf181743a449162aeb329dcd2f3849009e605ad",
        strip_prefix = "phf_codegen-0.7.23",
        build_file = Label("//cargo/remote:phf_codegen-0.7.23.BUILD")
    )

    _new_http_archive(
        name = "raze__phf_generator__0_7_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf_generator/phf_generator-0.7.23.crate",
        type = "tar.gz",
        sha256 = "03dc191feb9b08b0dc1330d6549b795b9d81aec19efe6b4a45aec8d4caee0c4b",
        strip_prefix = "phf_generator-0.7.23",
        build_file = Label("//cargo/remote:phf_generator-0.7.23.BUILD")
    )

    _new_http_archive(
        name = "raze__phf_shared__0_7_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf_shared/phf_shared-0.7.23.crate",
        type = "tar.gz",
        sha256 = "b539898d22d4273ded07f64a05737649dc69095d92cb87c7097ec68e3f150b93",
        strip_prefix = "phf_shared-0.7.23",
        build_file = Label("//cargo/remote:phf_shared-0.7.23.BUILD")
    )

    _new_http_archive(
        name = "raze__pkg_config__0_3_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pkg-config/pkg-config-0.3.14.crate",
        type = "tar.gz",
        sha256 = "676e8eb2b1b4c9043511a9b7bea0915320d7e502b0a079fb03f9635a5252b18c",
        strip_prefix = "pkg-config-0.3.14",
        build_file = Label("//cargo/remote:pkg-config-0.3.14.BUILD")
    )

    _new_http_archive(
        name = "raze__proc_macro2__0_4_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-0.4.24.crate",
        type = "tar.gz",
        sha256 = "77619697826f31a02ae974457af0b29b723e5619e113e9397b8b82c6bd253f09",
        strip_prefix = "proc-macro2-0.4.24",
        build_file = Label("//cargo/remote:proc-macro2-0.4.24.BUILD")
    )

    _new_http_archive(
        name = "raze__quick_error__1_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quick-error/quick-error-1.2.2.crate",
        type = "tar.gz",
        sha256 = "9274b940887ce9addde99c4eee6b5c44cc494b182b97e73dc8ffdcb3397fd3f0",
        strip_prefix = "quick-error-1.2.2",
        build_file = Label("//cargo/remote:quick-error-1.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__quote__0_6_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-0.6.10.crate",
        type = "tar.gz",
        sha256 = "53fa22a1994bd0f9372d7a816207d8a2677ad0325b073f5c5332760f0fb62b5c",
        strip_prefix = "quote-0.6.10",
        build_file = Label("//cargo/remote:quote-0.6.10.BUILD")
    )

    _new_http_archive(
        name = "raze__rand__0_4_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.4.3.crate",
        type = "tar.gz",
        sha256 = "8356f47b32624fef5b3301c1be97e5944ecdd595409cc5da11d05f211db6cfbd",
        strip_prefix = "rand-0.4.3",
        build_file = Label("//cargo/remote:rand-0.4.3.BUILD")
    )

    _new_http_archive(
        name = "raze__rand__0_5_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.5.5.crate",
        type = "tar.gz",
        sha256 = "e464cd887e869cddcae8792a4ee31d23c7edd516700695608f5b98c67ee0131c",
        strip_prefix = "rand-0.5.5",
        build_file = Label("//cargo/remote:rand-0.5.5.BUILD")
    )

    _new_http_archive(
        name = "raze__rand__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.6.1.crate",
        type = "tar.gz",
        sha256 = "ae9d223d52ae411a33cf7e54ec6034ec165df296ccd23533d671a28252b6f66a",
        strip_prefix = "rand-0.6.1",
        build_file = Label("//cargo/remote:rand-0.6.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_chacha__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.1.0.crate",
        type = "tar.gz",
        sha256 = "771b009e3a508cb67e8823dda454aaa5368c7bc1c16829fb77d3e980440dd34a",
        strip_prefix = "rand_chacha-0.1.0",
        build_file = Label("//cargo/remote:rand_chacha-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_core__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.2.2.crate",
        type = "tar.gz",
        sha256 = "1961a422c4d189dfb50ffa9320bf1f2a9bd54ecb92792fb9477f99a1045f3372",
        strip_prefix = "rand_core-0.2.2",
        build_file = Label("//cargo/remote:rand_core-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_core__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.3.0.crate",
        type = "tar.gz",
        sha256 = "0905b6b7079ec73b314d4c748701f6931eb79fd97c668caa3f1899b22b32c6db",
        strip_prefix = "rand_core-0.3.0",
        build_file = Label("//cargo/remote:rand_core-0.3.0.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_hc__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.1.0.crate",
        type = "tar.gz",
        sha256 = "7b40677c7be09ae76218dc623efbf7b18e34bced3f38883af07bb75630a21bc4",
        strip_prefix = "rand_hc-0.1.0",
        build_file = Label("//cargo/remote:rand_hc-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_isaac__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_isaac/rand_isaac-0.1.1.crate",
        type = "tar.gz",
        sha256 = "ded997c9d5f13925be2a6fd7e66bf1872597f759fd9dd93513dd7e92e5a5ee08",
        strip_prefix = "rand_isaac-0.1.1",
        build_file = Label("//cargo/remote:rand_isaac-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_pcg__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_pcg/rand_pcg-0.1.1.crate",
        type = "tar.gz",
        sha256 = "086bd09a33c7044e56bb44d5bdde5a60e7f119a9e95b0775f545de759a32fe05",
        strip_prefix = "rand_pcg-0.1.1",
        build_file = Label("//cargo/remote:rand_pcg-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_xorshift__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_xorshift/rand_xorshift-0.1.0.crate",
        type = "tar.gz",
        sha256 = "effa3fcaa47e18db002bdde6060944b6d2f9cfd8db471c30e873448ad9187be3",
        strip_prefix = "rand_xorshift-0.1.0",
        build_file = Label("//cargo/remote:rand_xorshift-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__redox_syscall__0_1_43",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/redox_syscall/redox_syscall-0.1.43.crate",
        type = "tar.gz",
        sha256 = "679da7508e9a6390aeaf7fbd02a800fdc64b73fe2204dd2c8ae66d22d9d5ad5d",
        strip_prefix = "redox_syscall-0.1.43",
        build_file = Label("//cargo/remote:redox_syscall-0.1.43.BUILD")
    )

    _new_http_archive(
        name = "raze__regex__1_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex/regex-1.1.0.crate",
        type = "tar.gz",
        sha256 = "37e7cbbd370869ce2e8dff25c7018702d10b21a20ef7135316f8daecd6c25b7f",
        strip_prefix = "regex-1.1.0",
        build_file = Label("//cargo/remote:regex-1.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__regex_syntax__0_6_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex-syntax/regex-syntax-0.6.4.crate",
        type = "tar.gz",
        sha256 = "4e47a2ed29da7a9e1960e1639e7a982e6edc6d49be308a3b02daf511504a16d1",
        strip_prefix = "regex-syntax-0.6.4",
        build_file = Label("//cargo/remote:regex-syntax-0.6.4.BUILD")
    )

    _new_http_archive(
        name = "raze__relay__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/relay/relay-0.1.1.crate",
        type = "tar.gz",
        sha256 = "1576e382688d7e9deecea24417e350d3062d97e32e45d70b1cde65994ff1489a",
        strip_prefix = "relay-0.1.1",
        build_file = Label("//cargo/remote:relay-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__remove_dir_all__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/remove_dir_all/remove_dir_all-0.5.1.crate",
        type = "tar.gz",
        sha256 = "3488ba1b9a2084d38645c4c08276a1752dcbf2c7130d74f1569681ad5d2799c5",
        strip_prefix = "remove_dir_all-0.5.1",
        build_file = Label("//cargo/remote:remove_dir_all-0.5.1.BUILD")
    )

    _new_http_archive(
        name = "raze__reqwest__0_8_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/reqwest/reqwest-0.8.8.crate",
        type = "tar.gz",
        sha256 = "738769ec83daf6c1929dc9dae7d69ed3779b55ae5c356e989dcd3aa677d8486e",
        strip_prefix = "reqwest-0.8.8",
        build_file = Label("//cargo/remote:reqwest-0.8.8.BUILD")
    )

    _new_http_archive(
        name = "raze__reqwest_mock__0_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/reqwest_mock/reqwest_mock-0.5.0.crate",
        type = "tar.gz",
        sha256 = "083971eeed26b864f1f6a2d902965361e3a634ea666e2af66963817536703420",
        strip_prefix = "reqwest_mock-0.5.0",
        build_file = Label("//cargo/remote:reqwest_mock-0.5.0.BUILD")
    )

    _new_http_archive(
        name = "raze__resolv_conf__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/resolv-conf/resolv-conf-0.6.1.crate",
        type = "tar.gz",
        sha256 = "c62bd95a41841efdf7fca2ae9951e64a8d8eae7e5da196d8ce489a2241491a92",
        strip_prefix = "resolv-conf-0.6.1",
        build_file = Label("//cargo/remote:resolv-conf-0.6.1.BUILD")
    )

    _new_http_archive(
        name = "raze__ring__0_13_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ring/ring-0.13.5.crate",
        type = "tar.gz",
        sha256 = "2c4db68a2e35f3497146b7e4563df7d4773a2433230c5e4b448328e31740458a",
        strip_prefix = "ring-0.13.5",
        build_file = Label("//cargo/remote:ring-0.13.5.BUILD")
    )

    _new_http_archive(
        name = "raze__rustc_demangle__0_1_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc-demangle/rustc-demangle-0.1.9.crate",
        type = "tar.gz",
        sha256 = "bcfe5b13211b4d78e5c2cadfebd7769197d95c639c35a50057eb4c05de811395",
        strip_prefix = "rustc-demangle-0.1.9",
        build_file = Label("//cargo/remote:rustc-demangle-0.1.9.BUILD")
    )

    _new_http_archive(
        name = "raze__rustc_serialize__0_3_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc-serialize/rustc-serialize-0.3.24.crate",
        type = "tar.gz",
        sha256 = "dcf128d1287d2ea9d80910b5f1120d0b8eede3fbf1abe91c40d39ea7d51e6fda",
        strip_prefix = "rustc-serialize-0.3.24",
        build_file = Label("//cargo/remote:rustc-serialize-0.3.24.BUILD")
    )

    _new_http_archive(
        name = "raze__rustc_version__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc_version/rustc_version-0.2.3.crate",
        type = "tar.gz",
        sha256 = "138e3e0acb6c9fb258b19b67cb8abd63c00679d2851805ea151465464fe9030a",
        strip_prefix = "rustc_version-0.2.3",
        build_file = Label("//cargo/remote:rustc_version-0.2.3.BUILD")
    )

    _new_http_archive(
        name = "raze__ryu__0_2_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ryu/ryu-0.2.7.crate",
        type = "tar.gz",
        sha256 = "eb9e9b8cde282a9fe6a42dd4681319bfb63f121b8a8ee9439c6f4107e58a46f7",
        strip_prefix = "ryu-0.2.7",
        build_file = Label("//cargo/remote:ryu-0.2.7.BUILD")
    )

    _new_http_archive(
        name = "raze__safemem__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/safemem/safemem-0.3.0.crate",
        type = "tar.gz",
        sha256 = "8dca453248a96cb0749e36ccdfe2b0b4e54a61bfef89fb97ec621eb8e0a93dd9",
        strip_prefix = "safemem-0.3.0",
        build_file = Label("//cargo/remote:safemem-0.3.0.BUILD")
    )

    _new_http_archive(
        name = "raze__schannel__0_1_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/schannel/schannel-0.1.14.crate",
        type = "tar.gz",
        sha256 = "0e1a231dc10abf6749cfa5d7767f25888d484201accbd919b66ab5413c502d56",
        strip_prefix = "schannel-0.1.14",
        build_file = Label("//cargo/remote:schannel-0.1.14.BUILD")
    )

    _new_http_archive(
        name = "raze__scoped_tls__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/scoped-tls/scoped-tls-0.1.2.crate",
        type = "tar.gz",
        sha256 = "332ffa32bf586782a3efaeb58f127980944bbc8c4d6913a86107ac2a5ab24b28",
        strip_prefix = "scoped-tls-0.1.2",
        build_file = Label("//cargo/remote:scoped-tls-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__scopeguard__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/scopeguard/scopeguard-0.3.3.crate",
        type = "tar.gz",
        sha256 = "94258f53601af11e6a49f722422f6e3425c52b06245a5cf9bc09908b174f5e27",
        strip_prefix = "scopeguard-0.3.3",
        build_file = Label("//cargo/remote:scopeguard-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__security_framework__0_1_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/security-framework/security-framework-0.1.16.crate",
        type = "tar.gz",
        sha256 = "dfa44ee9c54ce5eecc9de7d5acbad112ee58755239381f687e564004ba4a2332",
        strip_prefix = "security-framework-0.1.16",
        build_file = Label("//cargo/remote:security-framework-0.1.16.BUILD")
    )

    _new_http_archive(
        name = "raze__security_framework_sys__0_1_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/security-framework-sys/security-framework-sys-0.1.16.crate",
        type = "tar.gz",
        sha256 = "5421621e836278a0b139268f36eee0dc7e389b784dc3f79d8f11aabadf41bead",
        strip_prefix = "security-framework-sys-0.1.16",
        build_file = Label("//cargo/remote:security-framework-sys-0.1.16.BUILD")
    )

    _new_http_archive(
        name = "raze__semver__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver/semver-0.9.0.crate",
        type = "tar.gz",
        sha256 = "1d7eb9ef2c18661902cc47e535f9bc51b78acd254da71d375c2f6720d9a40403",
        strip_prefix = "semver-0.9.0",
        build_file = Label("//cargo/remote:semver-0.9.0.BUILD")
    )

    _new_http_archive(
        name = "raze__semver_parser__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver-parser/semver-parser-0.7.0.crate",
        type = "tar.gz",
        sha256 = "388a1df253eca08550bef6c72392cfe7c30914bf41df5269b68cbd6ff8f570a3",
        strip_prefix = "semver-parser-0.7.0",
        build_file = Label("//cargo/remote:semver-parser-0.7.0.BUILD")
    )

    _new_http_archive(
        name = "raze__serde__1_0_80",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde/serde-1.0.80.crate",
        type = "tar.gz",
        sha256 = "15c141fc7027dd265a47c090bf864cf62b42c4d228bbcf4e51a0c9e2b0d3f7ef",
        strip_prefix = "serde-1.0.80",
        build_file = Label("//cargo/remote:serde-1.0.80.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_value__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde-value/serde-value-0.5.3.crate",
        type = "tar.gz",
        sha256 = "7a663f873dedc4eac1a559d4c6bc0d0b2c34dc5ac4702e105014b8281489e44f",
        strip_prefix = "serde-value-0.5.3",
        build_file = Label("//cargo/remote:serde-value-0.5.3.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_derive__1_0_80",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_derive/serde_derive-1.0.80.crate",
        type = "tar.gz",
        sha256 = "225de307c6302bec3898c51ca302fc94a7a1697ef0845fcee6448f33c032249c",
        strip_prefix = "serde_derive-1.0.80",
        build_file = Label("//cargo/remote:serde_derive-1.0.80.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_json__1_0_33",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_json/serde_json-1.0.33.crate",
        type = "tar.gz",
        sha256 = "c37ccd6be3ed1fdf419ee848f7c758eb31b054d7cd3ae3600e3bae0adf569811",
        strip_prefix = "serde_json-1.0.33",
        build_file = Label("//cargo/remote:serde_json-1.0.33.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_urlencoded__0_5_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_urlencoded/serde_urlencoded-0.5.4.crate",
        type = "tar.gz",
        sha256 = "d48f9f99cd749a2de71d29da5f948de7f2764cc5a9d7f3c97e3514d4ee6eabf2",
        strip_prefix = "serde_urlencoded-0.5.4",
        build_file = Label("//cargo/remote:serde_urlencoded-0.5.4.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_yaml__0_8_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_yaml/serde_yaml-0.8.7.crate",
        type = "tar.gz",
        sha256 = "a2054770c85c7f026ad772e31ff631e65e378154ee20e85d0ada8c6ed053e63a",
        strip_prefix = "serde_yaml-0.8.7",
        build_file = Label("//cargo/remote:serde_yaml-0.8.7.BUILD")
    )

    _new_http_archive(
        name = "raze__sha1__0_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/sha1/sha1-0.6.0.crate",
        type = "tar.gz",
        sha256 = "2579985fda508104f7587689507983eadd6a6e84dd35d6d115361f530916fa0d",
        strip_prefix = "sha1-0.6.0",
        build_file = Label("//cargo/remote:sha1-0.6.0.BUILD")
    )

    _new_http_archive(
        name = "raze__signal_hook__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/signal-hook/signal-hook-0.1.6.crate",
        type = "tar.gz",
        sha256 = "8941ae94fa73d0f73b422774b3a40a7195cecd88d1c090f4b37ade7dc795ab66",
        strip_prefix = "signal-hook-0.1.6",
        build_file = Label("//cargo/remote:signal-hook-0.1.6.BUILD")
    )

    _new_http_archive(
        name = "raze__siphasher__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/siphasher/siphasher-0.2.3.crate",
        type = "tar.gz",
        sha256 = "0b8de496cf83d4ed58b6be86c3a275b8602f6ffe98d3024a869e124147a9a3ac",
        strip_prefix = "siphasher-0.2.3",
        build_file = Label("//cargo/remote:siphasher-0.2.3.BUILD")
    )

    _new_http_archive(
        name = "raze__slab__0_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slab/slab-0.4.1.crate",
        type = "tar.gz",
        sha256 = "5f9776d6b986f77b35c6cf846c11ad986ff128fe0b2b63a3628e3755e8d3102d",
        strip_prefix = "slab-0.4.1",
        build_file = Label("//cargo/remote:slab-0.4.1.BUILD")
    )

    _new_http_archive(
        name = "raze__smallvec__0_6_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smallvec/smallvec-0.6.7.crate",
        type = "tar.gz",
        sha256 = "b73ea3738b47563803ef814925e69be00799a8c07420be8b996f8e98fb2336db",
        strip_prefix = "smallvec-0.6.7",
        build_file = Label("//cargo/remote:smallvec-0.6.7.BUILD")
    )

    _new_http_archive(
        name = "raze__socket2__0_3_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/socket2/socket2-0.3.8.crate",
        type = "tar.gz",
        sha256 = "c4d11a52082057d87cb5caa31ad812f4504b97ab44732cd8359df2e9ff9f48e7",
        strip_prefix = "socket2-0.3.8",
        build_file = Label("//cargo/remote:socket2-0.3.8.BUILD")
    )

    _new_http_archive(
        name = "raze__stable_deref_trait__1_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/stable_deref_trait/stable_deref_trait-1.1.1.crate",
        type = "tar.gz",
        sha256 = "dba1a27d3efae4351c8051072d619e3ade2820635c3958d826bfea39d59b54c8",
        strip_prefix = "stable_deref_trait-1.1.1",
        build_file = Label("//cargo/remote:stable_deref_trait-1.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__string__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/string/string-0.1.2.crate",
        type = "tar.gz",
        sha256 = "98998cced76115b1da46f63388b909d118a37ae0be0f82ad35773d4a4bc9d18d",
        strip_prefix = "string-0.1.2",
        build_file = Label("//cargo/remote:string-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__syn__0_15_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-0.15.22.crate",
        type = "tar.gz",
        sha256 = "ae8b29eb5210bc5cf63ed6149cbf9adfc82ac0be023d8735c176ee74a2db4da7",
        strip_prefix = "syn-0.15.22",
        build_file = Label("//cargo/remote:syn-0.15.22.BUILD")
    )

    _new_http_archive(
        name = "raze__synstructure__0_10_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/synstructure/synstructure-0.10.1.crate",
        type = "tar.gz",
        sha256 = "73687139bf99285483c96ac0add482c3776528beac1d97d444f6e91f203a2015",
        strip_prefix = "synstructure-0.10.1",
        build_file = Label("//cargo/remote:synstructure-0.10.1.BUILD")
    )

    _new_http_archive(
        name = "raze__tempdir__0_3_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tempdir/tempdir-0.3.7.crate",
        type = "tar.gz",
        sha256 = "15f2b5fb00ccdf689e0149d1b1b3c03fead81c2b37735d812fa8bddbbf41b6d8",
        strip_prefix = "tempdir-0.3.7",
        build_file = Label("//cargo/remote:tempdir-0.3.7.BUILD")
    )

    _new_http_archive(
        name = "raze__thread_id__3_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thread-id/thread-id-3.3.0.crate",
        type = "tar.gz",
        sha256 = "c7fbf4c9d56b320106cd64fd024dadfa0be7cb4706725fc44a7d7ce952d820c1",
        strip_prefix = "thread-id-3.3.0",
        build_file = Label("//cargo/remote:thread-id-3.3.0.BUILD")
    )

    _new_http_archive(
        name = "raze__thread_local__0_3_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thread_local/thread_local-0.3.6.crate",
        type = "tar.gz",
        sha256 = "c6b53e329000edc2b34dbe8545fd20e55a333362d0a321909685a19bd28c3f1b",
        strip_prefix = "thread_local-0.3.6",
        build_file = Label("//cargo/remote:thread_local-0.3.6.BUILD")
    )

    _new_http_archive(
        name = "raze__time__0_1_40",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/time/time-0.1.40.crate",
        type = "tar.gz",
        sha256 = "d825be0eb33fda1a7e68012d51e9c7f451dc1a69391e7fdc197060bb8c56667b",
        strip_prefix = "time-0.1.40",
        build_file = Label("//cargo/remote:time-0.1.40.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio__0_1_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio/tokio-0.1.13.crate",
        type = "tar.gz",
        sha256 = "a7817d4c98cc5be21360b3b37d6036fe9b7aefa5b7a201b7b16ff33423822f7d",
        strip_prefix = "tokio-0.1.13",
        build_file = Label("//cargo/remote:tokio-0.1.13.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_codec__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-codec/tokio-codec-0.1.1.crate",
        type = "tar.gz",
        sha256 = "5c501eceaf96f0e1793cf26beb63da3d11c738c4a943fdf3746d81d64684c39f",
        strip_prefix = "tokio-codec-0.1.1",
        build_file = Label("//cargo/remote:tokio-codec-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_core__0_1_17",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-core/tokio-core-0.1.17.crate",
        type = "tar.gz",
        sha256 = "aeeffbbb94209023feaef3c196a41cbcdafa06b4a6f893f68779bb5e53796f71",
        strip_prefix = "tokio-core-0.1.17",
        build_file = Label("//cargo/remote:tokio-core-0.1.17.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_current_thread__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-current-thread/tokio-current-thread-0.1.4.crate",
        type = "tar.gz",
        sha256 = "331c8acc267855ec06eb0c94618dcbbfea45bed2d20b77252940095273fb58f6",
        strip_prefix = "tokio-current-thread-0.1.4",
        build_file = Label("//cargo/remote:tokio-current-thread-0.1.4.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_executor__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-executor/tokio-executor-0.1.5.crate",
        type = "tar.gz",
        sha256 = "c117b6cf86bb730aab4834f10df96e4dd586eff2c3c27d3781348da49e255bde",
        strip_prefix = "tokio-executor-0.1.5",
        build_file = Label("//cargo/remote:tokio-executor-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_fs__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-fs/tokio-fs-0.1.4.crate",
        type = "tar.gz",
        sha256 = "60ae25f6b17d25116d2cba342083abe5255d3c2c79cb21ea11aa049c53bf7c75",
        strip_prefix = "tokio-fs-0.1.4",
        build_file = Label("//cargo/remote:tokio-fs-0.1.4.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_io__0_1_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-io/tokio-io-0.1.10.crate",
        type = "tar.gz",
        sha256 = "7392fe0a70d5ce0c882c4778116c519bd5dbaa8a7c3ae3d04578b3afafdcda21",
        strip_prefix = "tokio-io-0.1.10",
        build_file = Label("//cargo/remote:tokio-io-0.1.10.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_reactor__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-reactor/tokio-reactor-0.1.7.crate",
        type = "tar.gz",
        sha256 = "502b625acb4ee13cbb3b90b8ca80e0addd263ddacf6931666ef751e610b07fb5",
        strip_prefix = "tokio-reactor-0.1.7",
        build_file = Label("//cargo/remote:tokio-reactor-0.1.7.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_service__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-service/tokio-service-0.1.0.crate",
        type = "tar.gz",
        sha256 = "24da22d077e0f15f55162bdbdc661228c1581892f52074fb242678d015b45162",
        strip_prefix = "tokio-service-0.1.0",
        build_file = Label("//cargo/remote:tokio-service-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_signal__0_2_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-signal/tokio-signal-0.2.7.crate",
        type = "tar.gz",
        sha256 = "dd6dc5276ea05ce379a16de90083ec80836440d5ef8a6a39545a3207373b8296",
        strip_prefix = "tokio-signal-0.2.7",
        build_file = Label("//cargo/remote:tokio-signal-0.2.7.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_tcp__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-tcp/tokio-tcp-0.1.2.crate",
        type = "tar.gz",
        sha256 = "7ad235e9dadd126b2d47f6736f65aa1fdcd6420e66ca63f44177bc78df89f912",
        strip_prefix = "tokio-tcp-0.1.2",
        build_file = Label("//cargo/remote:tokio-tcp-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_threadpool__0_1_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-threadpool/tokio-threadpool-0.1.9.crate",
        type = "tar.gz",
        sha256 = "56c5556262383032878afad66943926a1d1f0967f17e94bd7764ceceb3b70e7f",
        strip_prefix = "tokio-threadpool-0.1.9",
        build_file = Label("//cargo/remote:tokio-threadpool-0.1.9.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_timer__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-timer/tokio-timer-0.2.8.crate",
        type = "tar.gz",
        sha256 = "4f37f0111d76cc5da132fe9bc0590b9b9cfd079bc7e75ac3846278430a299ff8",
        strip_prefix = "tokio-timer-0.2.8",
        build_file = Label("//cargo/remote:tokio-timer-0.2.8.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_tls__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-tls/tokio-tls-0.1.4.crate",
        type = "tar.gz",
        sha256 = "772f4b04e560117fe3b0a53e490c16ddc8ba6ec437015d91fa385564996ed913",
        strip_prefix = "tokio-tls-0.1.4",
        build_file = Label("//cargo/remote:tokio-tls-0.1.4.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_udp__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-udp/tokio-udp-0.1.3.crate",
        type = "tar.gz",
        sha256 = "66268575b80f4a4a710ef83d087fdfeeabdce9b74c797535fbac18a2cb906e92",
        strip_prefix = "tokio-udp-0.1.3",
        build_file = Label("//cargo/remote:tokio-udp-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__tokio_uds__0_2_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-uds/tokio-uds-0.2.4.crate",
        type = "tar.gz",
        sha256 = "99ce87382f6c1a24b513a72c048b2c8efe66cb5161c9061d00bee510f08dc168",
        strip_prefix = "tokio-uds-0.2.4",
        build_file = Label("//cargo/remote:tokio-uds-0.2.4.BUILD")
    )

    _new_http_archive(
        name = "raze__tower_service__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-service/tower-service-0.1.0.crate",
        type = "tar.gz",
        sha256 = "b32f72af77f1bfe3d3d4da8516a238ebe7039b51dd8637a09841ac7f16d2c987",
        strip_prefix = "tower-service-0.1.0",
        build_file = Label("//cargo/remote:tower-service-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__traitobject__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/traitobject/traitobject-0.1.0.crate",
        type = "tar.gz",
        sha256 = "efd1f82c56340fdf16f2a953d7bda4f8fdffba13d93b00844c25572110b26079",
        strip_prefix = "traitobject-0.1.0",
        build_file = Label("//cargo/remote:traitobject-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__trust_dns_proto__0_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/trust-dns-proto/trust-dns-proto-0.5.0.crate",
        type = "tar.gz",
        sha256 = "0838272e89f1c693b4df38dc353412e389cf548ceed6f9fd1af5a8d6e0e7cf74",
        strip_prefix = "trust-dns-proto-0.5.0",
        build_file = Label("//cargo/remote:trust-dns-proto-0.5.0.BUILD")
    )

    _new_http_archive(
        name = "raze__trust_dns_resolver__0_10_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/trust-dns-resolver/trust-dns-resolver-0.10.0.crate",
        type = "tar.gz",
        sha256 = "4e913a5df94658858e548cc95a3212797ee524e487ede091c32f27ca26e11620",
        strip_prefix = "trust-dns-resolver-0.10.0",
        build_file = Label("//cargo/remote:trust-dns-resolver-0.10.0.BUILD")
    )

    _new_http_archive(
        name = "raze__try_lock__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/try-lock/try-lock-0.1.0.crate",
        type = "tar.gz",
        sha256 = "ee2aa4715743892880f70885373966c83d73ef1b0838a664ef0c76fffd35e7c2",
        strip_prefix = "try-lock-0.1.0",
        build_file = Label("//cargo/remote:try-lock-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__try_lock__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/try-lock/try-lock-0.2.2.crate",
        type = "tar.gz",
        sha256 = "e604eb7b43c06650e854be16a2a03155743d3752dd1c943f6829e26b7a36e382",
        strip_prefix = "try-lock-0.2.2",
        build_file = Label("//cargo/remote:try-lock-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__twox_hash__1_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/twox-hash/twox-hash-1.1.1.crate",
        type = "tar.gz",
        sha256 = "4f85be565a110ed72ed7048cf56570db04ce0a592c98aa59b7dacde3e5718750",
        strip_prefix = "twox-hash-1.1.1",
        build_file = Label("//cargo/remote:twox-hash-1.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__typemap__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/typemap/typemap-0.3.3.crate",
        type = "tar.gz",
        sha256 = "653be63c80a3296da5551e1bfd2cca35227e13cdd08c6668903ae2f4f77aa1f6",
        strip_prefix = "typemap-0.3.3",
        build_file = Label("//cargo/remote:typemap-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__ucd_util__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ucd-util/ucd-util-0.1.3.crate",
        type = "tar.gz",
        sha256 = "535c204ee4d8434478593480b8f86ab45ec9aae0e83c568ca81abf0fd0e88f86",
        strip_prefix = "ucd-util-0.1.3",
        build_file = Label("//cargo/remote:ucd-util-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__unicase__1_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicase/unicase-1.4.2.crate",
        type = "tar.gz",
        sha256 = "7f4765f83163b74f957c797ad9253caf97f103fb064d3999aea9568d09fc8a33",
        strip_prefix = "unicase-1.4.2",
        build_file = Label("//cargo/remote:unicase-1.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__unicase__2_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicase/unicase-2.2.0.crate",
        type = "tar.gz",
        sha256 = "9d3218ea14b4edcaccfa0df0a64a3792a2c32cc706f1b336e48867f9d3147f90",
        strip_prefix = "unicase-2.2.0",
        build_file = Label("//cargo/remote:unicase-2.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_bidi__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-bidi/unicode-bidi-0.3.4.crate",
        type = "tar.gz",
        sha256 = "49f2bd0c6468a8230e1db229cff8029217cf623c767ea5d60bfbd42729ea54d5",
        strip_prefix = "unicode-bidi-0.3.4",
        build_file = Label("//cargo/remote:unicode-bidi-0.3.4.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_normalization__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-normalization/unicode-normalization-0.1.7.crate",
        type = "tar.gz",
        sha256 = "6a0180bc61fc5a987082bfa111f4cc95c4caff7f9799f3e46df09163a937aa25",
        strip_prefix = "unicode-normalization-0.1.7",
        build_file = Label("//cargo/remote:unicode-normalization-0.1.7.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_xid__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.1.0.crate",
        type = "tar.gz",
        sha256 = "fc72304796d0818e357ead4e000d19c9c174ab23dc11093ac919054d20a6a7fc",
        strip_prefix = "unicode-xid-0.1.0",
        build_file = Label("//cargo/remote:unicode-xid-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__unreachable__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unreachable/unreachable-1.0.0.crate",
        type = "tar.gz",
        sha256 = "382810877fe448991dfc7f0dd6e3ae5d58088fd0ea5e35189655f84e6814fa56",
        strip_prefix = "unreachable-1.0.0",
        build_file = Label("//cargo/remote:unreachable-1.0.0.BUILD")
    )

    _new_http_archive(
        name = "raze__unsafe_any__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unsafe-any/unsafe-any-0.4.2.crate",
        type = "tar.gz",
        sha256 = "f30360d7979f5e9c6e6cea48af192ea8fab4afb3cf72597154b8f08935bc9c7f",
        strip_prefix = "unsafe-any-0.4.2",
        build_file = Label("//cargo/remote:unsafe-any-0.4.2.BUILD")
    )

    _new_http_archive(
        name = "raze__untrusted__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/untrusted/untrusted-0.6.2.crate",
        type = "tar.gz",
        sha256 = "55cd1f4b4e96b46aeb8d4855db4a7a9bd96eeeb5c6a1ab54593328761642ce2f",
        strip_prefix = "untrusted-0.6.2",
        build_file = Label("//cargo/remote:untrusted-0.6.2.BUILD")
    )

    _new_http_archive(
        name = "raze__url__1_7_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/url/url-1.7.2.crate",
        type = "tar.gz",
        sha256 = "dd4e7c0d531266369519a4aa4f399d748bd37043b00bde1e4ff1f60a120b355a",
        strip_prefix = "url-1.7.2",
        build_file = Label("//cargo/remote:url-1.7.2.BUILD")
    )

    _new_http_archive(
        name = "raze__utf8_ranges__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/utf8-ranges/utf8-ranges-1.0.2.crate",
        type = "tar.gz",
        sha256 = "796f7e48bef87609f7ade7e06495a87d5cd06c7866e6a5cbfceffc558a243737",
        strip_prefix = "utf8-ranges-1.0.2",
        build_file = Label("//cargo/remote:utf8-ranges-1.0.2.BUILD")
    )

    _new_http_archive(
        name = "raze__uuid__0_6_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/uuid/uuid-0.6.5.crate",
        type = "tar.gz",
        sha256 = "e1436e58182935dcd9ce0add9ea0b558e8a87befe01c1a301e6020aeb0876363",
        strip_prefix = "uuid-0.6.5",
        build_file = Label("//cargo/remote:uuid-0.6.5.BUILD")
    )

    _new_http_archive(
        name = "raze__uuid__0_7_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/uuid/uuid-0.7.1.crate",
        type = "tar.gz",
        sha256 = "dab5c5526c5caa3d106653401a267fed923e7046f35895ffcb5ca42db64942e6",
        strip_prefix = "uuid-0.7.1",
        build_file = Label("//cargo/remote:uuid-0.7.1.BUILD")
    )

    _new_http_archive(
        name = "raze__vcpkg__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/vcpkg/vcpkg-0.2.6.crate",
        type = "tar.gz",
        sha256 = "def296d3eb3b12371b2c7d0e83bfe1403e4db2d7a0bba324a12b21c4ee13143d",
        strip_prefix = "vcpkg-0.2.6",
        build_file = Label("//cargo/remote:vcpkg-0.2.6.BUILD")
    )

    _new_http_archive(
        name = "raze__version_check__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/version_check/version_check-0.1.5.crate",
        type = "tar.gz",
        sha256 = "914b1a6776c4c929a602fafd8bc742e06365d4bcbe48c30f9cca5824f70dc9dd",
        strip_prefix = "version_check-0.1.5",
        build_file = Label("//cargo/remote:version_check-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__void__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/void/void-1.0.2.crate",
        type = "tar.gz",
        sha256 = "6a02e4885ed3bc0f2de90ea6dd45ebcbb66dacffe03547fadbb0eeae2770887d",
        strip_prefix = "void-1.0.2",
        build_file = Label("//cargo/remote:void-1.0.2.BUILD")
    )

    _new_http_archive(
        name = "raze__want__0_0_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/want/want-0.0.4.crate",
        type = "tar.gz",
        sha256 = "a05d9d966753fa4b5c8db73fcab5eed4549cfe0e1e4e66911e5564a0085c35d1",
        strip_prefix = "want-0.0.4",
        build_file = Label("//cargo/remote:want-0.0.4.BUILD")
    )

    _new_http_archive(
        name = "raze__want__0_0_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/want/want-0.0.6.crate",
        type = "tar.gz",
        sha256 = "797464475f30ddb8830cc529aaaae648d581f99e2036a928877dfde027ddf6b3",
        strip_prefix = "want-0.0.6",
        build_file = Label("//cargo/remote:want-0.0.6.BUILD")
    )

    _new_http_archive(
        name = "raze__widestring__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/widestring/widestring-0.2.2.crate",
        type = "tar.gz",
        sha256 = "7157704c2e12e3d2189c507b7482c52820a16dfa4465ba91add92f266667cadb",
        strip_prefix = "widestring-0.2.2",
        build_file = Label("//cargo/remote:widestring-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.2.8.crate",
        type = "tar.gz",
        sha256 = "167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//cargo/remote:winapi-0.2.8.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi__0_3_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.3.6.crate",
        type = "tar.gz",
        sha256 = "92c1eb33641e276cfa214a0522acad57be5c56b10cb348b3c5117db75f3ac4b0",
        strip_prefix = "winapi-0.3.6",
        build_file = Label("//cargo/remote:winapi-0.3.6.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_build__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-build/winapi-build-0.1.1.crate",
        type = "tar.gz",
        sha256 = "2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc",
        strip_prefix = "winapi-build-0.1.1",
        build_file = Label("//cargo/remote:winapi-build-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-i686-pc-windows-gnu-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-x86_64-pc-windows-gnu-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__winreg__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winreg/winreg-0.5.1.crate",
        type = "tar.gz",
        sha256 = "a27a759395c1195c4cc5cda607ef6f8f6498f64e78f7900f5de0a127a424704a",
        strip_prefix = "winreg-0.5.1",
        build_file = Label("//cargo/remote:winreg-0.5.1.BUILD")
    )

    _new_http_archive(
        name = "raze__winutil__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winutil/winutil-0.1.1.crate",
        type = "tar.gz",
        sha256 = "7daf138b6b14196e3830a588acf1e86966c694d3e8fb026fb105b8b5dca07e6e",
        strip_prefix = "winutil-0.1.1",
        build_file = Label("//cargo/remote:winutil-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__ws2_32_sys__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ws2_32-sys/ws2_32-sys-0.2.1.crate",
        type = "tar.gz",
        sha256 = "d59cefebd0c892fa2dd6de581e937301d8552cb44489cdff035c6187cb63fa5e",
        strip_prefix = "ws2_32-sys-0.2.1",
        build_file = Label("//cargo/remote:ws2_32-sys-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__yaml_rust__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/yaml-rust/yaml-rust-0.4.2.crate",
        type = "tar.gz",
        sha256 = "95acf0db5515d07da9965ec0e0ba6cc2d825e2caeb7303b66ca441729801254e",
        strip_prefix = "yaml-rust-0.4.2",
        build_file = Label("//cargo/remote:yaml-rust-0.4.2.BUILD")
    )


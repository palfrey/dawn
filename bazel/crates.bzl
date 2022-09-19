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
        name = "raze__actix_codec__0_5_0",
        url = "https://crates.io/api/v1/crates/actix-codec/0.5.0/download",
        type = "tar.gz",
        sha256 = "57a7559404a7f3573127aab53c08ce37a6c6a315c374a31070f3c91cd1b4a7fe",
        strip_prefix = "actix-codec-0.5.0",
        build_file = Label("//bazel/remote:BUILD.actix-codec-0.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_http__3_2_2",
        url = "https://crates.io/api/v1/crates/actix-http/3.2.2/download",
        type = "tar.gz",
        sha256 = "0c83abf9903e1f0ad9973cc4f7b9767fd5a03a583f51a5b7a339e07987cd2724",
        strip_prefix = "actix-http-3.2.2",
        build_file = Label("//bazel/remote:BUILD.actix-http-3.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_macros__0_2_3",
        url = "https://crates.io/api/v1/crates/actix-macros/0.2.3/download",
        type = "tar.gz",
        sha256 = "465a6172cf69b960917811022d8f29bc0b7fa1398bc4f78b3c466673db1213b6",
        strip_prefix = "actix-macros-0.2.3",
        build_file = Label("//bazel/remote:BUILD.actix-macros-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_router__0_5_0",
        url = "https://crates.io/api/v1/crates/actix-router/0.5.0/download",
        type = "tar.gz",
        sha256 = "eb60846b52c118f2f04a56cc90880a274271c489b2498623d58176f8ca21fa80",
        strip_prefix = "actix-router-0.5.0",
        build_file = Label("//bazel/remote:BUILD.actix-router-0.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_rt__2_7_0",
        url = "https://crates.io/api/v1/crates/actix-rt/2.7.0/download",
        type = "tar.gz",
        sha256 = "7ea16c295198e958ef31930a6ef37d0fb64e9ca3b6116e6b93a8bdae96ee1000",
        strip_prefix = "actix-rt-2.7.0",
        build_file = Label("//bazel/remote:BUILD.actix-rt-2.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_server__2_1_1",
        url = "https://crates.io/api/v1/crates/actix-server/2.1.1/download",
        type = "tar.gz",
        sha256 = "0da34f8e659ea1b077bb4637948b815cd3768ad5a188fdcd74ff4d84240cd824",
        strip_prefix = "actix-server-2.1.1",
        build_file = Label("//bazel/remote:BUILD.actix-server-2.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_service__2_0_2",
        url = "https://crates.io/api/v1/crates/actix-service/2.0.2/download",
        type = "tar.gz",
        sha256 = "3b894941f818cfdc7ccc4b9e60fa7e53b5042a2e8567270f9147d5591893373a",
        strip_prefix = "actix-service-2.0.2",
        build_file = Label("//bazel/remote:BUILD.actix-service-2.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_utils__3_0_0",
        url = "https://crates.io/api/v1/crates/actix-utils/3.0.0/download",
        type = "tar.gz",
        sha256 = "e491cbaac2e7fc788dfff99ff48ef317e23b3cf63dbaf7aaab6418f40f92aa94",
        strip_prefix = "actix-utils-3.0.0",
        build_file = Label("//bazel/remote:BUILD.actix-utils-3.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_web__4_2_1",
        url = "https://crates.io/api/v1/crates/actix-web/4.2.1/download",
        type = "tar.gz",
        sha256 = "d48f7b6534e06c7bfc72ee91db7917d4af6afe23e7d223b51e68fffbb21e96b9",
        strip_prefix = "actix-web-4.2.1",
        build_file = Label("//bazel/remote:BUILD.actix-web-4.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__actix_web_codegen__4_1_0",
        url = "https://crates.io/api/v1/crates/actix-web-codegen/4.1.0/download",
        type = "tar.gz",
        sha256 = "1fa9362663c8643d67b2d5eafba49e4cb2c8a053a29ed00a0bea121f17c76b13",
        strip_prefix = "actix-web-codegen-4.1.0",
        build_file = Label("//bazel/remote:BUILD.actix-web-codegen-4.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__adler__1_0_2",
        url = "https://crates.io/api/v1/crates/adler/1.0.2/download",
        type = "tar.gz",
        sha256 = "f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe",
        strip_prefix = "adler-1.0.2",
        build_file = Label("//bazel/remote:BUILD.adler-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ahash__0_7_6",
        url = "https://crates.io/api/v1/crates/ahash/0.7.6/download",
        type = "tar.gz",
        sha256 = "fcb51a0695d8f838b1ee009b3fbf66bda078cd64590202a864a8f3e8c4315c47",
        strip_prefix = "ahash-0.7.6",
        build_file = Label("//bazel/remote:BUILD.ahash-0.7.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__aho_corasick__0_7_19",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.7.19/download",
        type = "tar.gz",
        sha256 = "b4f55bd91a0978cbfd91c457a164bab8b4001c833b7f323132c0a4e1922dd44e",
        strip_prefix = "aho-corasick-0.7.19",
        build_file = Label("//bazel/remote:BUILD.aho-corasick-0.7.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__alloc_no_stdlib__2_0_4",
        url = "https://crates.io/api/v1/crates/alloc-no-stdlib/2.0.4/download",
        type = "tar.gz",
        sha256 = "cc7bb162ec39d46ab1ca8c77bf72e890535becd1751bb45f64c597edb4c8c6b3",
        strip_prefix = "alloc-no-stdlib-2.0.4",
        build_file = Label("//bazel/remote:BUILD.alloc-no-stdlib-2.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__alloc_stdlib__0_2_2",
        url = "https://crates.io/api/v1/crates/alloc-stdlib/0.2.2/download",
        type = "tar.gz",
        sha256 = "94fb8275041c72129eb51b7d0322c29b8387a0386127718b096429201a5d6ece",
        strip_prefix = "alloc-stdlib-0.2.2",
        build_file = Label("//bazel/remote:BUILD.alloc-stdlib-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__anyhow__1_0_38",
        url = "https://crates.io/api/v1/crates/anyhow/1.0.38/download",
        type = "tar.gz",
        sha256 = "afddf7f520a80dbf76e6f50a35bca42a2331ef227a28b3b6dc5c2e2338d114b1",
        strip_prefix = "anyhow-1.0.38",
        build_file = Label("//bazel/remote:BUILD.anyhow-1.0.38.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__arc_swap__0_4_8",
        url = "https://crates.io/api/v1/crates/arc-swap/0.4.8/download",
        type = "tar.gz",
        sha256 = "dabe5a181f83789739c194cbe5a897dde195078fac08568d09221fd6137a7ba8",
        strip_prefix = "arc-swap-0.4.8",
        build_file = Label("//bazel/remote:BUILD.arc-swap-0.4.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__assert_json_diff__2_0_2",
        url = "https://crates.io/api/v1/crates/assert-json-diff/2.0.2/download",
        type = "tar.gz",
        sha256 = "47e4f2b81832e72834d7518d8487a0396a28cc408186a2e8854c0f98011faf12",
        strip_prefix = "assert-json-diff-2.0.2",
        build_file = Label("//bazel/remote:BUILD.assert-json-diff-2.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_channel__1_7_1",
        url = "https://crates.io/api/v1/crates/async-channel/1.7.1/download",
        type = "tar.gz",
        sha256 = "e14485364214912d3b19cc3435dde4df66065127f05fa0d75c712f36f12c2f28",
        strip_prefix = "async-channel-1.7.1",
        build_file = Label("//bazel/remote:BUILD.async-channel-1.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_trait__0_1_42",
        url = "https://crates.io/api/v1/crates/async-trait/0.1.42/download",
        type = "tar.gz",
        sha256 = "8d3a45e77e34375a7923b1e8febb049bb011f064714a8e17a1a616fef01da13d",
        strip_prefix = "async-trait-0.1.42",
        build_file = Label("//bazel/remote:BUILD.async-trait-0.1.42.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atty__0_2_14",
        url = "https://crates.io/api/v1/crates/atty/0.2.14/download",
        type = "tar.gz",
        sha256 = "d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//bazel/remote:BUILD.atty-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__autocfg__1_0_1",
        url = "https://crates.io/api/v1/crates/autocfg/1.0.1/download",
        type = "tar.gz",
        sha256 = "cdb031dd78e28731d87d56cc8ffef4a8f36ca26c38fe2de700543e627f8a464a",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//bazel/remote:BUILD.autocfg-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_13_0",
        url = "https://crates.io/api/v1/crates/base64/0.13.0/download",
        type = "tar.gz",
        sha256 = "904dfeac50f3cdaba28fc6f57fdcddb75f49ed61346676a78c4ffe55877802fd",
        strip_prefix = "base64-0.13.0",
        build_file = Label("//bazel/remote:BUILD.base64-0.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitflags__1_2_1",
        url = "https://crates.io/api/v1/crates/bitflags/1.2.1/download",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//bazel/remote:BUILD.bitflags-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__block_buffer__0_10_3",
        url = "https://crates.io/api/v1/crates/block-buffer/0.10.3/download",
        type = "tar.gz",
        sha256 = "69cce20737498f97b993470a6e536b8523f0af7892a4f928cceb1ac5e52ebe7e",
        strip_prefix = "block-buffer-0.10.3",
        build_file = Label("//bazel/remote:BUILD.block-buffer-0.10.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__brotli__3_3_4",
        url = "https://crates.io/api/v1/crates/brotli/3.3.4/download",
        type = "tar.gz",
        sha256 = "a1a0b1dbcc8ae29329621f8d4f0d835787c1c38bb1401979b49d13b0b305ff68",
        strip_prefix = "brotli-3.3.4",
        build_file = Label("//bazel/remote:BUILD.brotli-3.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__brotli_decompressor__2_3_2",
        url = "https://crates.io/api/v1/crates/brotli-decompressor/2.3.2/download",
        type = "tar.gz",
        sha256 = "59ad2d4653bf5ca36ae797b1f4bb4dbddb60ce49ca4aed8a2ce4829f60425b80",
        strip_prefix = "brotli-decompressor-2.3.2",
        build_file = Label("//bazel/remote:BUILD.brotli-decompressor-2.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bumpalo__3_6_1",
        url = "https://crates.io/api/v1/crates/bumpalo/3.6.1/download",
        type = "tar.gz",
        sha256 = "63396b8a4b9de3f4fdfb320ab6080762242f66a8ef174c49d8e19b674db4cdbe",
        strip_prefix = "bumpalo-3.6.1",
        build_file = Label("//bazel/remote:BUILD.bumpalo-3.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytes__1_0_1",
        url = "https://crates.io/api/v1/crates/bytes/1.0.1/download",
        type = "tar.gz",
        sha256 = "b700ce4376041dcd0a327fd0097c41095743c4c8af8887265942faf1100bd040",
        strip_prefix = "bytes-1.0.1",
        build_file = Label("//bazel/remote:BUILD.bytes-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytestring__1_0_0",
        url = "https://crates.io/api/v1/crates/bytestring/1.0.0/download",
        type = "tar.gz",
        sha256 = "90706ba19e97b90786e19dc0d5e2abd80008d99d4c0c5d1ad0b5e72cec7c494d",
        strip_prefix = "bytestring-1.0.0",
        build_file = Label("//bazel/remote:BUILD.bytestring-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__c_linked_list__1_1_1",
        url = "https://crates.io/api/v1/crates/c_linked_list/1.1.1/download",
        type = "tar.gz",
        sha256 = "4964518bd3b4a8190e832886cdc0da9794f12e8e6c1613a9e90ff331c4c8724b",
        strip_prefix = "c_linked_list-1.1.1",
        build_file = Label("//bazel/remote:BUILD.c_linked_list-1.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cache_padded__1_2_0",
        url = "https://crates.io/api/v1/crates/cache-padded/1.2.0/download",
        type = "tar.gz",
        sha256 = "c1db59621ec70f09c5e9b597b220c7a2b43611f4710dc03ceb8748637775692c",
        strip_prefix = "cache-padded-1.2.0",
        build_file = Label("//bazel/remote:BUILD.cache-padded-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cc__1_0_67",
        url = "https://crates.io/api/v1/crates/cc/1.0.67/download",
        type = "tar.gz",
        sha256 = "e3c69b077ad434294d3ce9f1f6143a2a4b89a8a2d54ef813d85003a4fd1137fd",
        strip_prefix = "cc-1.0.67",
        build_file = Label("//bazel/remote:BUILD.cc-1.0.67.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//bazel/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__chrono__0_4_19",
        url = "https://crates.io/api/v1/crates/chrono/0.4.19/download",
        type = "tar.gz",
        sha256 = "670ad68c9088c2a963aaa298cb369688cf3f9465ce5e2d4ca10e6e0098a1ce73",
        strip_prefix = "chrono-0.4.19",
        build_file = Label("//bazel/remote:BUILD.chrono-0.4.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__concurrent_queue__1_2_4",
        url = "https://crates.io/api/v1/crates/concurrent-queue/1.2.4/download",
        type = "tar.gz",
        sha256 = "af4780a44ab5696ea9e28294517f1fffb421a83a25af521333c838635509db9c",
        strip_prefix = "concurrent-queue-1.2.4",
        build_file = Label("//bazel/remote:BUILD.concurrent-queue-1.2.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cookie__0_16_0",
        url = "https://crates.io/api/v1/crates/cookie/0.16.0/download",
        type = "tar.gz",
        sha256 = "94d4706de1b0fa5b132270cddffa8585166037822e260a944fe161acd137ca05",
        strip_prefix = "cookie-0.16.0",
        build_file = Label("//bazel/remote:BUILD.cookie-0.16.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cpufeatures__0_2_5",
        url = "https://crates.io/api/v1/crates/cpufeatures/0.2.5/download",
        type = "tar.gz",
        sha256 = "28d997bd5e24a5928dd43e46dc529867e207907fe0b239c3477d924f7f2ca320",
        strip_prefix = "cpufeatures-0.2.5",
        build_file = Label("//bazel/remote:BUILD.cpufeatures-0.2.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crc32fast__1_2_1",
        url = "https://crates.io/api/v1/crates/crc32fast/1.2.1/download",
        type = "tar.gz",
        sha256 = "81156fece84ab6a9f2afdb109ce3ae577e42b1228441eded99bd77f627953b1a",
        strip_prefix = "crc32fast-1.2.1",
        build_file = Label("//bazel/remote:BUILD.crc32fast-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crypto_common__0_1_6",
        url = "https://crates.io/api/v1/crates/crypto-common/0.1.6/download",
        type = "tar.gz",
        sha256 = "1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3",
        strip_prefix = "crypto-common-0.1.6",
        build_file = Label("//bazel/remote:BUILD.crypto-common-0.1.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__deadpool__0_9_5",
        url = "https://crates.io/api/v1/crates/deadpool/0.9.5/download",
        type = "tar.gz",
        sha256 = "421fe0f90f2ab22016f32a9881be5134fdd71c65298917084b0c7477cbc3856e",
        strip_prefix = "deadpool-0.9.5",
        build_file = Label("//bazel/remote:BUILD.deadpool-0.9.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__deadpool_runtime__0_1_2",
        url = "https://crates.io/api/v1/crates/deadpool-runtime/0.1.2/download",
        type = "tar.gz",
        sha256 = "eaa37046cc0f6c3cc6090fbdbf73ef0b8ef4cfcc37f6befc0020f63e8cf121e1",
        strip_prefix = "deadpool-runtime-0.1.2",
        build_file = Label("//bazel/remote:BUILD.deadpool-runtime-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__derivative__2_2_0",
        url = "https://crates.io/api/v1/crates/derivative/2.2.0/download",
        type = "tar.gz",
        sha256 = "fcc3dd5e9e9c0b295d6e1e4d811fb6f157d5ffd784b8d202fc62eac8035a770b",
        strip_prefix = "derivative-2.2.0",
        build_file = Label("//bazel/remote:BUILD.derivative-2.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__derive_more__0_99_11",
        url = "https://crates.io/api/v1/crates/derive_more/0.99.11/download",
        type = "tar.gz",
        sha256 = "41cb0e6161ad61ed084a36ba71fbba9e3ac5aee3606fb607fe08da6acbcf3d8c",
        strip_prefix = "derive_more-0.99.11",
        build_file = Label("//bazel/remote:BUILD.derive_more-0.99.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__digest__0_10_5",
        url = "https://crates.io/api/v1/crates/digest/0.10.5/download",
        type = "tar.gz",
        sha256 = "adfbc57365a37acbd2ebf2b64d7e69bb766e2fea813521ed536f5d0520dcf86c",
        strip_prefix = "digest-0.10.5",
        build_file = Label("//bazel/remote:BUILD.digest-0.10.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__dtoa__0_4_7",
        url = "https://crates.io/api/v1/crates/dtoa/0.4.7/download",
        type = "tar.gz",
        sha256 = "88d7ed2934d741c6b37e33e3832298e8850b53fd2d2bea03873375596c7cea4e",
        strip_prefix = "dtoa-0.4.7",
        build_file = Label("//bazel/remote:BUILD.dtoa-0.4.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__either__1_6_1",
        url = "https://crates.io/api/v1/crates/either/1.6.1/download",
        type = "tar.gz",
        sha256 = "e78d4f1cc4ae33bbfc157ed5d5a5ef3bc29227303d595861deb238fcec4e9457",
        strip_prefix = "either-1.6.1",
        build_file = Label("//bazel/remote:BUILD.either-1.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__encoding_rs__0_8_28",
        url = "https://crates.io/api/v1/crates/encoding_rs/0.8.28/download",
        type = "tar.gz",
        sha256 = "80df024fbc5ac80f87dfef0d9f5209a252f2a497f7f42944cff24d8253cac065",
        strip_prefix = "encoding_rs-0.8.28",
        build_file = Label("//bazel/remote:BUILD.encoding_rs-0.8.28.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__env_logger__0_8_3",
        url = "https://crates.io/api/v1/crates/env_logger/0.8.3/download",
        type = "tar.gz",
        sha256 = "17392a012ea30ef05a610aa97dfb49496e71c9f676b27879922ea5bdf60d9d3f",
        strip_prefix = "env_logger-0.8.3",
        build_file = Label("//bazel/remote:BUILD.env_logger-0.8.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__event_listener__2_5_3",
        url = "https://crates.io/api/v1/crates/event-listener/2.5.3/download",
        type = "tar.gz",
        sha256 = "0206175f82b8d6bf6652ff7d71a1e27fd2e4efde587fd368662814d6ec1d9ce0",
        strip_prefix = "event-listener-2.5.3",
        build_file = Label("//bazel/remote:BUILD.event-listener-2.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fastrand__1_8_0",
        url = "https://crates.io/api/v1/crates/fastrand/1.8.0/download",
        type = "tar.gz",
        sha256 = "a7a407cfaa3385c4ae6b23e84623d48c2798d06e3e6a1878f7f59f17b3f86499",
        strip_prefix = "fastrand-1.8.0",
        build_file = Label("//bazel/remote:BUILD.fastrand-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__firestorm__0_5_1",
        url = "https://crates.io/api/v1/crates/firestorm/0.5.1/download",
        type = "tar.gz",
        sha256 = "2c5f6c2c942da57e2aaaa84b8a521489486f14e75e7fa91dab70aba913975f98",
        strip_prefix = "firestorm-0.5.1",
        build_file = Label("//bazel/remote:BUILD.firestorm-0.5.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__flate2__1_0_20",
        url = "https://crates.io/api/v1/crates/flate2/1.0.20/download",
        type = "tar.gz",
        sha256 = "cd3aec53de10fe96d7d8c565eb17f2c687bb5518a2ec453b5b1252964526abe0",
        strip_prefix = "flate2-1.0.20",
        build_file = Label("//bazel/remote:BUILD.flate2-1.0.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fnv__1_0_7",
        url = "https://crates.io/api/v1/crates/fnv/1.0.7/download",
        type = "tar.gz",
        sha256 = "3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1",
        strip_prefix = "fnv-1.0.7",
        build_file = Label("//bazel/remote:BUILD.fnv-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__form_urlencoded__1_0_1",
        url = "https://crates.io/api/v1/crates/form_urlencoded/1.0.1/download",
        type = "tar.gz",
        sha256 = "5fc25a87fa4fd2094bffb06925852034d90a17f0d1e05197d4956d3555752191",
        strip_prefix = "form_urlencoded-1.0.1",
        build_file = Label("//bazel/remote:BUILD.form_urlencoded-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures__0_3_13",
        url = "https://crates.io/api/v1/crates/futures/0.3.13/download",
        type = "tar.gz",
        sha256 = "7f55667319111d593ba876406af7c409c0ebb44dc4be6132a783ccf163ea14c1",
        strip_prefix = "futures-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_channel__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-channel/0.3.13/download",
        type = "tar.gz",
        sha256 = "8c2dd2df839b57db9ab69c2c9d8f3e8c81984781937fe2807dc6dcf3b2ad2939",
        strip_prefix = "futures-channel-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-channel-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_core__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-core/0.3.13/download",
        type = "tar.gz",
        sha256 = "15496a72fabf0e62bdc3df11a59a3787429221dd0710ba8ef163d6f7a9112c94",
        strip_prefix = "futures-core-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-core-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_executor__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-executor/0.3.13/download",
        type = "tar.gz",
        sha256 = "891a4b7b96d84d5940084b2a37632dd65deeae662c114ceaa2c879629c9c0ad1",
        strip_prefix = "futures-executor-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-executor-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_io__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-io/0.3.13/download",
        type = "tar.gz",
        sha256 = "d71c2c65c57704c32f5241c1223167c2c3294fd34ac020c807ddbe6db287ba59",
        strip_prefix = "futures-io-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-io-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_lite__1_12_0",
        url = "https://crates.io/api/v1/crates/futures-lite/1.12.0/download",
        type = "tar.gz",
        sha256 = "7694489acd39452c77daa48516b894c153f192c3578d5a839b62c58099fcbf48",
        strip_prefix = "futures-lite-1.12.0",
        build_file = Label("//bazel/remote:BUILD.futures-lite-1.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_macro__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-macro/0.3.13/download",
        type = "tar.gz",
        sha256 = "ea405816a5139fb39af82c2beb921d52143f556038378d6db21183a5c37fbfb7",
        strip_prefix = "futures-macro-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-macro-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_sink__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-sink/0.3.13/download",
        type = "tar.gz",
        sha256 = "85754d98985841b7d4f5e8e6fbfa4a4ac847916893ec511a2917ccd8525b8bb3",
        strip_prefix = "futures-sink-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-sink-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_task__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-task/0.3.13/download",
        type = "tar.gz",
        sha256 = "fa189ef211c15ee602667a6fcfe1c1fd9e07d42250d2156382820fba33c9df80",
        strip_prefix = "futures-task-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-task-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_timer__3_0_2",
        url = "https://crates.io/api/v1/crates/futures-timer/3.0.2/download",
        type = "tar.gz",
        sha256 = "e64b03909df88034c26dc1547e8970b91f98bdb65165d6a4e9110d94263dbb2c",
        strip_prefix = "futures-timer-3.0.2",
        build_file = Label("//bazel/remote:BUILD.futures-timer-3.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_util__0_3_13",
        url = "https://crates.io/api/v1/crates/futures-util/0.3.13/download",
        type = "tar.gz",
        sha256 = "1812c7ab8aedf8d6f2701a43e1243acdbcc2b36ab26e2ad421eb99ac963d96d1",
        strip_prefix = "futures-util-0.3.13",
        build_file = Label("//bazel/remote:BUILD.futures-util-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gcc__0_3_55",
        url = "https://crates.io/api/v1/crates/gcc/0.3.55/download",
        type = "tar.gz",
        sha256 = "8f5f3913fa0bfe7ee1fd8248b6b9f42a5af4b9d65ec2dd2c3c26132b950ecfc2",
        strip_prefix = "gcc-0.3.55",
        build_file = Label("//bazel/remote:BUILD.gcc-0.3.55.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__generic_array__0_14_6",
        url = "https://crates.io/api/v1/crates/generic-array/0.14.6/download",
        type = "tar.gz",
        sha256 = "bff49e947297f3312447abdca79f45f4738097cc82b06e72054d2223f601f1b9",
        strip_prefix = "generic-array-0.14.6",
        build_file = Label("//bazel/remote:BUILD.generic-array-0.14.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__get_if_addrs__0_5_3",
        url = "https://crates.io/api/v1/crates/get_if_addrs/0.5.3/download",
        type = "tar.gz",
        sha256 = "abddb55a898d32925f3148bd281174a68eeb68bbfd9a5938a57b18f506ee4ef7",
        strip_prefix = "get_if_addrs-0.5.3",
        build_file = Label("//bazel/remote:BUILD.get_if_addrs-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__get_if_addrs_sys__0_1_1",
        url = "https://crates.io/api/v1/crates/get_if_addrs-sys/0.1.1/download",
        type = "tar.gz",
        sha256 = "0d04f9fb746cf36b191c00f3ede8bde9c8e64f9f4b05ae2694a9ccf5e3f5ab48",
        strip_prefix = "get_if_addrs-sys-0.1.1",
        build_file = Label("//bazel/remote:BUILD.get_if_addrs-sys-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__getrandom__0_1_16",
        url = "https://crates.io/api/v1/crates/getrandom/0.1.16/download",
        type = "tar.gz",
        sha256 = "8fc3cb4d91f53b50155bdcfd23f6a4c39ae1969c2ae85982b135750cccaf5fce",
        strip_prefix = "getrandom-0.1.16",
        build_file = Label("//bazel/remote:BUILD.getrandom-0.1.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__getrandom__0_2_7",
        url = "https://crates.io/api/v1/crates/getrandom/0.2.7/download",
        type = "tar.gz",
        sha256 = "4eb1a864a501629691edf6c15a593b7a51eebaa1e8468e9ddc623de7c9b58ec6",
        strip_prefix = "getrandom-0.2.7",
        build_file = Label("//bazel/remote:BUILD.getrandom-0.2.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__h2__0_3_13",
        url = "https://crates.io/api/v1/crates/h2/0.3.13/download",
        type = "tar.gz",
        sha256 = "37a82c6d637fc9515a4694bbf1cb2457b79d81ce52b3108bdeea58b07dd34a57",
        strip_prefix = "h2-0.3.13",
        build_file = Label("//bazel/remote:BUILD.h2-0.3.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hashbrown__0_9_1",
        url = "https://crates.io/api/v1/crates/hashbrown/0.9.1/download",
        type = "tar.gz",
        sha256 = "d7afe4a420e3fe79967a00898cc1f4db7c8a49a9333a29f8a4bd76a253d5cd04",
        strip_prefix = "hashbrown-0.9.1",
        build_file = Label("//bazel/remote:BUILD.hashbrown-0.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hermit_abi__0_1_18",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.18/download",
        type = "tar.gz",
        sha256 = "322f4de77956e22ed0e5032c359a0f1273f1f7f0d79bfa3b8ffbc730d7fbcc5c",
        strip_prefix = "hermit-abi-0.1.18",
        build_file = Label("//bazel/remote:BUILD.hermit-abi-0.1.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http__0_2_8",
        url = "https://crates.io/api/v1/crates/http/0.2.8/download",
        type = "tar.gz",
        sha256 = "75f43d41e26995c17e71ee126451dd3941010b0514a81a9d11f3b341debc2399",
        strip_prefix = "http-0.2.8",
        build_file = Label("//bazel/remote:BUILD.http-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http_body__0_4_5",
        url = "https://crates.io/api/v1/crates/http-body/0.4.5/download",
        type = "tar.gz",
        sha256 = "d5f38f16d184e36f2408a55281cd658ecbd3ca05cce6d6510a176eca393e26d1",
        strip_prefix = "http-body-0.4.5",
        build_file = Label("//bazel/remote:BUILD.http-body-0.4.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http_types__2_12_0",
        url = "https://crates.io/api/v1/crates/http-types/2.12.0/download",
        type = "tar.gz",
        sha256 = "6e9b187a72d63adbfba487f48095306ac823049cb504ee195541e91c7775f5ad",
        strip_prefix = "http-types-2.12.0",
        build_file = Label("//bazel/remote:BUILD.http-types-2.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__httparse__1_7_1",
        url = "https://crates.io/api/v1/crates/httparse/1.7.1/download",
        type = "tar.gz",
        sha256 = "496ce29bb5a52785b44e0f7ca2847ae0bb839c9bd28f69acac9b99d461c0c04c",
        strip_prefix = "httparse-1.7.1",
        build_file = Label("//bazel/remote:BUILD.httparse-1.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__httpdate__1_0_2",
        url = "https://crates.io/api/v1/crates/httpdate/1.0.2/download",
        type = "tar.gz",
        sha256 = "c4a1e36c821dbe04574f602848a19f742f4fb3c98d40449f11bcad18d6b17421",
        strip_prefix = "httpdate-1.0.2",
        build_file = Label("//bazel/remote:BUILD.httpdate-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__humantime__2_1_0",
        url = "https://crates.io/api/v1/crates/humantime/2.1.0/download",
        type = "tar.gz",
        sha256 = "9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4",
        strip_prefix = "humantime-2.1.0",
        build_file = Label("//bazel/remote:BUILD.humantime-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hyper__0_14_20",
        url = "https://crates.io/api/v1/crates/hyper/0.14.20/download",
        type = "tar.gz",
        sha256 = "02c929dc5c39e335a03c405292728118860721b10190d98c2a0f0efd5baafbac",
        strip_prefix = "hyper-0.14.20",
        build_file = Label("//bazel/remote:BUILD.hyper-0.14.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hyper_rustls__0_23_0",
        url = "https://crates.io/api/v1/crates/hyper-rustls/0.23.0/download",
        type = "tar.gz",
        sha256 = "d87c48c02e0dc5e3b849a2041db3029fd066650f8f717c07bf8ed78ccb895cac",
        strip_prefix = "hyper-rustls-0.23.0",
        build_file = Label("//bazel/remote:BUILD.hyper-rustls-0.23.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__idna__0_2_2",
        url = "https://crates.io/api/v1/crates/idna/0.2.2/download",
        type = "tar.gz",
        sha256 = "89829a5d69c23d348314a7ac337fe39173b61149a9864deabd260983aed48c21",
        strip_prefix = "idna-0.2.2",
        build_file = Label("//bazel/remote:BUILD.idna-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__indexmap__1_6_1",
        url = "https://crates.io/api/v1/crates/indexmap/1.6.1/download",
        type = "tar.gz",
        sha256 = "4fb1fa934250de4de8aef298d81c729a7d33d8c239daa3a7575e6b92bfc7313b",
        strip_prefix = "indexmap-1.6.1",
        build_file = Label("//bazel/remote:BUILD.indexmap-1.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__infer__0_2_3",
        url = "https://crates.io/api/v1/crates/infer/0.2.3/download",
        type = "tar.gz",
        sha256 = "64e9829a50b42bb782c1df523f78d332fe371b10c661e78b7a3c34b0198e9fac",
        strip_prefix = "infer-0.2.3",
        build_file = Label("//bazel/remote:BUILD.infer-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__instant__0_1_9",
        url = "https://crates.io/api/v1/crates/instant/0.1.9/download",
        type = "tar.gz",
        sha256 = "61124eeebbd69b8190558df225adf7e4caafce0d743919e5d6b19652314ec5ec",
        strip_prefix = "instant-0.1.9",
        build_file = Label("//bazel/remote:BUILD.instant-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ipnet__2_5_0",
        url = "https://crates.io/api/v1/crates/ipnet/2.5.0/download",
        type = "tar.gz",
        sha256 = "879d54834c8c76457ef4293a689b2a8c59b076067ad77b15efafbb05f92a592b",
        strip_prefix = "ipnet-2.5.0",
        build_file = Label("//bazel/remote:BUILD.ipnet-2.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itertools__0_10_0",
        url = "https://crates.io/api/v1/crates/itertools/0.10.0/download",
        type = "tar.gz",
        sha256 = "37d572918e350e82412fe766d24b15e6682fb2ed2bbe018280caa810397cb319",
        strip_prefix = "itertools-0.10.0",
        build_file = Label("//bazel/remote:BUILD.itertools-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itoa__0_4_7",
        url = "https://crates.io/api/v1/crates/itoa/0.4.7/download",
        type = "tar.gz",
        sha256 = "dd25036021b0de88a0aff6b850051563c6516d0bf53f8638938edbb9de732736",
        strip_prefix = "itoa-0.4.7",
        build_file = Label("//bazel/remote:BUILD.itoa-0.4.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itoa__1_0_2",
        url = "https://crates.io/api/v1/crates/itoa/1.0.2/download",
        type = "tar.gz",
        sha256 = "112c678d4050afce233f4f2852bb2eb519230b3cf12f33585275537d7e41578d",
        strip_prefix = "itoa-1.0.2",
        build_file = Label("//bazel/remote:BUILD.itoa-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__jobserver__0_1_24",
        url = "https://crates.io/api/v1/crates/jobserver/0.1.24/download",
        type = "tar.gz",
        sha256 = "af25a77299a7f711a01975c35a6a424eb6862092cc2d6c72c4ed6cbc56dfc1fa",
        strip_prefix = "jobserver-0.1.24",
        build_file = Label("//bazel/remote:BUILD.jobserver-0.1.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__js_sys__0_3_48",
        url = "https://crates.io/api/v1/crates/js-sys/0.3.48/download",
        type = "tar.gz",
        sha256 = "dc9f84f9b115ce7843d60706df1422a916680bfdfcbdb0447c5614ff9d7e4d78",
        strip_prefix = "js-sys-0.3.48",
        build_file = Label("//bazel/remote:BUILD.js-sys-0.3.48.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__language_tags__0_3_2",
        url = "https://crates.io/api/v1/crates/language-tags/0.3.2/download",
        type = "tar.gz",
        sha256 = "d4345964bb142484797b161f473a503a434de77149dd8c7427788c6e13379388",
        strip_prefix = "language-tags-0.3.2",
        build_file = Label("//bazel/remote:BUILD.language-tags-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//bazel/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_126",
        url = "https://crates.io/api/v1/crates/libc/0.2.126/download",
        type = "tar.gz",
        sha256 = "349d5a591cd28b49e1d1037471617a32ddcda5731b99419008085f72d5a53836",
        strip_prefix = "libc-0.2.126",
        build_file = Label("//bazel/remote:BUILD.libc-0.2.126.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__linked_hash_map__0_5_4",
        url = "https://crates.io/api/v1/crates/linked-hash-map/0.5.4/download",
        type = "tar.gz",
        sha256 = "7fb9b38af92608140b86b693604b9ffcc5824240a484d1ecd4795bacb2fe88f3",
        strip_prefix = "linked-hash-map-0.5.4",
        build_file = Label("//bazel/remote:BUILD.linked-hash-map-0.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__local_channel__0_1_3",
        url = "https://crates.io/api/v1/crates/local-channel/0.1.3/download",
        type = "tar.gz",
        sha256 = "7f303ec0e94c6c54447f84f3b0ef7af769858a9c4ef56ef2a986d3dcd4c3fc9c",
        strip_prefix = "local-channel-0.1.3",
        build_file = Label("//bazel/remote:BUILD.local-channel-0.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__local_waker__0_1_3",
        url = "https://crates.io/api/v1/crates/local-waker/0.1.3/download",
        type = "tar.gz",
        sha256 = "e34f76eb3611940e0e7d53a9aaa4e6a3151f69541a282fd0dad5571420c53ff1",
        strip_prefix = "local-waker-0.1.3",
        build_file = Label("//bazel/remote:BUILD.local-waker-0.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lock_api__0_4_2",
        url = "https://crates.io/api/v1/crates/lock_api/0.4.2/download",
        type = "tar.gz",
        sha256 = "dd96ffd135b2fd7b973ac026d28085defbe8983df057ced3eb4f2130b0831312",
        strip_prefix = "lock_api-0.4.2",
        build_file = Label("//bazel/remote:BUILD.lock_api-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_3_9",
        url = "https://crates.io/api/v1/crates/log/0.3.9/download",
        type = "tar.gz",
        sha256 = "e19e8d5c34a3e0e2223db8e060f9e8264aeeb5c5fc64a4ee9965c062211c024b",
        strip_prefix = "log-0.3.9",
        build_file = Label("//bazel/remote:BUILD.log-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_4_14",
        url = "https://crates.io/api/v1/crates/log/0.4.14/download",
        type = "tar.gz",
        sha256 = "51b9bbe6c47d51fc3e1a9b945965946b4c44142ab8792c50835a980d362c2710",
        strip_prefix = "log-0.4.14",
        build_file = Label("//bazel/remote:BUILD.log-0.4.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log_mdc__0_1_0",
        url = "https://crates.io/api/v1/crates/log-mdc/0.1.0/download",
        type = "tar.gz",
        sha256 = "a94d21414c1f4a51209ad204c1776a3d0765002c76c6abcb602a6f09f1e881c7",
        strip_prefix = "log-mdc-0.1.0",
        build_file = Label("//bazel/remote:BUILD.log-mdc-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log4rs__1_0_0",
        url = "https://crates.io/api/v1/crates/log4rs/1.0.0/download",
        type = "tar.gz",
        sha256 = "d1572a880d1115ff867396eee7ae2bc924554225e67a0d3c85c745b3e60ca211",
        strip_prefix = "log4rs-1.0.0",
        build_file = Label("//bazel/remote:BUILD.log4rs-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__matches__0_1_8",
        url = "https://crates.io/api/v1/crates/matches/0.1.8/download",
        type = "tar.gz",
        sha256 = "7ffc5c5338469d4d3ea17d269fa8ea3512ad247247c30bd2df69e68309ed0a08",
        strip_prefix = "matches-0.1.8",
        build_file = Label("//bazel/remote:BUILD.matches-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memchr__2_5_0",
        url = "https://crates.io/api/v1/crates/memchr/2.5.0/download",
        type = "tar.gz",
        sha256 = "2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d",
        strip_prefix = "memchr-2.5.0",
        build_file = Label("//bazel/remote:BUILD.memchr-2.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mime__0_3_16",
        url = "https://crates.io/api/v1/crates/mime/0.3.16/download",
        type = "tar.gz",
        sha256 = "2a60c7ce501c71e03a9c9c0d35b861413ae925bd979cc7a4e30d060069aaac8d",
        strip_prefix = "mime-0.3.16",
        build_file = Label("//bazel/remote:BUILD.mime-0.3.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miniz_oxide__0_4_4",
        url = "https://crates.io/api/v1/crates/miniz_oxide/0.4.4/download",
        type = "tar.gz",
        sha256 = "a92518e98c078586bc6c934028adcca4c92a53d6a958196de835170a01d84e4b",
        strip_prefix = "miniz_oxide-0.4.4",
        build_file = Label("//bazel/remote:BUILD.miniz_oxide-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mio__0_7_14",
        url = "https://crates.io/api/v1/crates/mio/0.7.14/download",
        type = "tar.gz",
        sha256 = "8067b404fe97c70829f082dec8bcf4f71225d7eaea1d8645349cb76fa06205cc",
        strip_prefix = "mio-0.7.14",
        build_file = Label("//bazel/remote:BUILD.mio-0.7.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mio__0_8_4",
        url = "https://crates.io/api/v1/crates/mio/0.8.4/download",
        type = "tar.gz",
        sha256 = "57ee1c23c7c63b0c9250c339ffdc69255f110b298b901b9f6c82547b7b87caaf",
        strip_prefix = "mio-0.8.4",
        build_file = Label("//bazel/remote:BUILD.mio-0.8.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miow__0_3_7",
        url = "https://crates.io/api/v1/crates/miow/0.3.7/download",
        type = "tar.gz",
        sha256 = "b9f1c5b025cda876f66ef43a113f91ebc9f4ccef34843000e0adf6ebbab84e21",
        strip_prefix = "miow-0.3.7",
        build_file = Label("//bazel/remote:BUILD.miow-0.3.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mustache__0_9_0",
        url = "https://crates.io/api/v1/crates/mustache/0.9.0/download",
        type = "tar.gz",
        sha256 = "51956ef1c5d20a1384524d91e616fb44dfc7d8f249bf696d49c97dd3289ecab5",
        strip_prefix = "mustache-0.9.0",
        build_file = Label("//bazel/remote:BUILD.mustache-0.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ntapi__0_3_7",
        url = "https://crates.io/api/v1/crates/ntapi/0.3.7/download",
        type = "tar.gz",
        sha256 = "c28774a7fd2fbb4f0babd8237ce554b73af68021b5f695a3cebd6c59bac0980f",
        strip_prefix = "ntapi-0.3.7",
        build_file = Label("//bazel/remote:BUILD.ntapi-0.3.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_integer__0_1_44",
        url = "https://crates.io/api/v1/crates/num-integer/0.1.44/download",
        type = "tar.gz",
        sha256 = "d2cc698a63b549a70bc047073d2949cce27cd1c7b0a4a862d08a8031bc2801db",
        strip_prefix = "num-integer-0.1.44",
        build_file = Label("//bazel/remote:BUILD.num-integer-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_traits__0_2_14",
        url = "https://crates.io/api/v1/crates/num-traits/0.2.14/download",
        type = "tar.gz",
        sha256 = "9a64b1ec5cda2586e284722486d802acf1f7dbdc623e2bfc57e65ca1cd099290",
        strip_prefix = "num-traits-0.2.14",
        build_file = Label("//bazel/remote:BUILD.num-traits-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_cpus__1_13_0",
        url = "https://crates.io/api/v1/crates/num_cpus/1.13.0/download",
        type = "tar.gz",
        sha256 = "05499f3756671c15885fee9034446956fff3f243d6077b91e5767df161f766b3",
        strip_prefix = "num_cpus-1.13.0",
        build_file = Label("//bazel/remote:BUILD.num_cpus-1.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_threads__0_1_6",
        url = "https://crates.io/api/v1/crates/num_threads/0.1.6/download",
        type = "tar.gz",
        sha256 = "2819ce041d2ee131036f4fc9d6ae7ae125a3a40e97ba64d04fe799ad9dabbb44",
        strip_prefix = "num_threads-0.1.6",
        build_file = Label("//bazel/remote:BUILD.num_threads-0.1.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__once_cell__1_14_0",
        url = "https://crates.io/api/v1/crates/once_cell/1.14.0/download",
        type = "tar.gz",
        sha256 = "2f7254b99e31cad77da24b08ebf628882739a608578bb1bcdfc1f9c21260d7c0",
        strip_prefix = "once_cell-1.14.0",
        build_file = Label("//bazel/remote:BUILD.once_cell-1.14.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ordered_float__2_1_1",
        url = "https://crates.io/api/v1/crates/ordered-float/2.1.1/download",
        type = "tar.gz",
        sha256 = "766f840da25490628d8e63e529cd21c014f6600c6b8517add12a6fa6167a6218",
        strip_prefix = "ordered-float-2.1.1",
        build_file = Label("//bazel/remote:BUILD.ordered-float-2.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking__2_0_0",
        url = "https://crates.io/api/v1/crates/parking/2.0.0/download",
        type = "tar.gz",
        sha256 = "427c3892f9e783d91cc128285287e70a59e206ca452770ece88a76f7a3eddd72",
        strip_prefix = "parking-2.0.0",
        build_file = Label("//bazel/remote:BUILD.parking-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot__0_11_1",
        url = "https://crates.io/api/v1/crates/parking_lot/0.11.1/download",
        type = "tar.gz",
        sha256 = "6d7744ac029df22dca6284efe4e898991d28e3085c706c972bcd7da4a27a15eb",
        strip_prefix = "parking_lot-0.11.1",
        build_file = Label("//bazel/remote:BUILD.parking_lot-0.11.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot_core__0_8_3",
        url = "https://crates.io/api/v1/crates/parking_lot_core/0.8.3/download",
        type = "tar.gz",
        sha256 = "fa7a782938e745763fe6907fc6ba86946d72f49fe7e21de074e08128a99fb018",
        strip_prefix = "parking_lot_core-0.8.3",
        build_file = Label("//bazel/remote:BUILD.parking_lot_core-0.8.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__paste__1_0_9",
        url = "https://crates.io/api/v1/crates/paste/1.0.9/download",
        type = "tar.gz",
        sha256 = "b1de2e551fb905ac83f73f7aedf2f0cb4a0da7e35efa24a202a936269f1f18e1",
        strip_prefix = "paste-1.0.9",
        build_file = Label("//bazel/remote:BUILD.paste-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__percent_encoding__1_0_1",
        url = "https://crates.io/api/v1/crates/percent-encoding/1.0.1/download",
        type = "tar.gz",
        sha256 = "31010dd2e1ac33d5b46a5b413495239882813e0369f8ed8a5e266f173602f831",
        strip_prefix = "percent-encoding-1.0.1",
        build_file = Label("//bazel/remote:BUILD.percent-encoding-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__percent_encoding__2_1_0",
        url = "https://crates.io/api/v1/crates/percent-encoding/2.1.0/download",
        type = "tar.gz",
        sha256 = "d4fd5641d01c8f18a23da7b6fe29298ff4b55afcccdf78973b24cf3175fee32e",
        strip_prefix = "percent-encoding-2.1.0",
        build_file = Label("//bazel/remote:BUILD.percent-encoding-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project_lite__0_2_9",
        url = "https://crates.io/api/v1/crates/pin-project-lite/0.2.9/download",
        type = "tar.gz",
        sha256 = "e0a7ae3ac2f1173085d398531c705756c94a4c56843785df85a60c1a0afac116",
        strip_prefix = "pin-project-lite-0.2.9",
        build_file = Label("//bazel/remote:BUILD.pin-project-lite-0.2.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_utils__0_1_0",
        url = "https://crates.io/api/v1/crates/pin-utils/0.1.0/download",
        type = "tar.gz",
        sha256 = "8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184",
        strip_prefix = "pin-utils-0.1.0",
        build_file = Label("//bazel/remote:BUILD.pin-utils-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ppv_lite86__0_2_10",
        url = "https://crates.io/api/v1/crates/ppv-lite86/0.2.10/download",
        type = "tar.gz",
        sha256 = "ac74c624d6b2d21f425f752262f42188365d7b8ff1aff74c82e45136510a4857",
        strip_prefix = "ppv-lite86-0.2.10",
        build_file = Label("//bazel/remote:BUILD.ppv-lite86-0.2.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_hack__0_5_19",
        url = "https://crates.io/api/v1/crates/proc-macro-hack/0.5.19/download",
        type = "tar.gz",
        sha256 = "dbf0c48bc1d91375ae5c3cd81e3722dff1abcf81a30960240640d223f59fe0e5",
        strip_prefix = "proc-macro-hack-0.5.19",
        build_file = Label("//bazel/remote:BUILD.proc-macro-hack-0.5.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_nested__0_1_7",
        url = "https://crates.io/api/v1/crates/proc-macro-nested/0.1.7/download",
        type = "tar.gz",
        sha256 = "bc881b2c22681370c6a780e47af9840ef841837bc98118431d4e1868bd0c1086",
        strip_prefix = "proc-macro-nested-0.1.7",
        build_file = Label("//bazel/remote:BUILD.proc-macro-nested-0.1.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_24",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.24/download",
        type = "tar.gz",
        sha256 = "1e0704ee1a7e00d7bb417d0770ea303c1bccbabf0ef1667dae92b5967f5f8a71",
        strip_prefix = "proc-macro2-1.0.24",
        build_file = Label("//bazel/remote:BUILD.proc-macro2-1.0.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_9",
        url = "https://crates.io/api/v1/crates/quote/1.0.9/download",
        type = "tar.gz",
        sha256 = "c3d0b9745dc2debf507c8422de05d7226cc1f0644216dfdfead988f9b1ab32a7",
        strip_prefix = "quote-1.0.9",
        build_file = Label("//bazel/remote:BUILD.quote-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand__0_7_3",
        url = "https://crates.io/api/v1/crates/rand/0.7.3/download",
        type = "tar.gz",
        sha256 = "6a6b1679d49b24bbfe0c803429aa1874472f50d9b363131f0e89fc356b544d03",
        strip_prefix = "rand-0.7.3",
        build_file = Label("//bazel/remote:BUILD.rand-0.7.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand__0_8_5",
        url = "https://crates.io/api/v1/crates/rand/0.8.5/download",
        type = "tar.gz",
        sha256 = "34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404",
        strip_prefix = "rand-0.8.5",
        build_file = Label("//bazel/remote:BUILD.rand-0.8.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_chacha__0_2_2",
        url = "https://crates.io/api/v1/crates/rand_chacha/0.2.2/download",
        type = "tar.gz",
        sha256 = "f4c8ed856279c9737206bf725bf36935d8666ead7aa69b52be55af369d193402",
        strip_prefix = "rand_chacha-0.2.2",
        build_file = Label("//bazel/remote:BUILD.rand_chacha-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_chacha__0_3_1",
        url = "https://crates.io/api/v1/crates/rand_chacha/0.3.1/download",
        type = "tar.gz",
        sha256 = "e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88",
        strip_prefix = "rand_chacha-0.3.1",
        build_file = Label("//bazel/remote:BUILD.rand_chacha-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_core__0_5_1",
        url = "https://crates.io/api/v1/crates/rand_core/0.5.1/download",
        type = "tar.gz",
        sha256 = "90bde5296fc891b0cef12a6d03ddccc162ce7b2aff54160af9338f8d40df6d19",
        strip_prefix = "rand_core-0.5.1",
        build_file = Label("//bazel/remote:BUILD.rand_core-0.5.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_core__0_6_4",
        url = "https://crates.io/api/v1/crates/rand_core/0.6.4/download",
        type = "tar.gz",
        sha256 = "ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c",
        strip_prefix = "rand_core-0.6.4",
        build_file = Label("//bazel/remote:BUILD.rand_core-0.6.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_hc__0_2_0",
        url = "https://crates.io/api/v1/crates/rand_hc/0.2.0/download",
        type = "tar.gz",
        sha256 = "ca3129af7b92a17112d59ad498c6f81eaf463253766b90396d39ea7a39d6613c",
        strip_prefix = "rand_hc-0.2.0",
        build_file = Label("//bazel/remote:BUILD.rand_hc-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_1_57",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.1.57/download",
        type = "tar.gz",
        sha256 = "41cc0f7e4d5d4544e8861606a285bb08d3e70712ccc7d2b84d7c0ccfaf4b05ce",
        strip_prefix = "redox_syscall-0.1.57",
        build_file = Label("//bazel/remote:BUILD.redox_syscall-0.1.57.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_2_5",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.2.5/download",
        type = "tar.gz",
        sha256 = "94341e4e44e24f6b591b59e47a8a027df12e008d73fd5672dbea9cc22f4507d9",
        strip_prefix = "redox_syscall-0.2.5",
        build_file = Label("//bazel/remote:BUILD.redox_syscall-0.2.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__1_6_0",
        url = "https://crates.io/api/v1/crates/regex/1.6.0/download",
        type = "tar.gz",
        sha256 = "4c4eb3267174b8c6c2f654116623910a0fef09c4753f8dd83db29c48a0df988b",
        strip_prefix = "regex-1.6.0",
        build_file = Label("//bazel/remote:BUILD.regex-1.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_6_27",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.27/download",
        type = "tar.gz",
        sha256 = "a3f87b73ce11b1619a3c6332f45341e0047173771e8b8b73f87bfeefb7b56244",
        strip_prefix = "regex-syntax-0.6.27",
        build_file = Label("//bazel/remote:BUILD.regex-syntax-0.6.27.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__reqwest__0_11_11",
        url = "https://crates.io/api/v1/crates/reqwest/0.11.11/download",
        type = "tar.gz",
        sha256 = "b75aa69a3f06bbcc66ede33af2af253c6f7a86b1ca0033f60c580a27074fbf92",
        strip_prefix = "reqwest-0.11.11",
        build_file = Label("//bazel/remote:BUILD.reqwest-0.11.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__retain_mut__0_1_9",
        url = "https://crates.io/api/v1/crates/retain_mut/0.1.9/download",
        type = "tar.gz",
        sha256 = "4389f1d5789befaf6029ebd9f7dac4af7f7e3d61b69d4f30e2ac02b57e7712b0",
        strip_prefix = "retain_mut-0.1.9",
        build_file = Label("//bazel/remote:BUILD.retain_mut-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ring__0_16_20",
        url = "https://crates.io/api/v1/crates/ring/0.16.20/download",
        type = "tar.gz",
        sha256 = "3053cf52e236a3ed746dfc745aa9cacf1b791d846bdaf412f60a8d7d6e17c8fc",
        strip_prefix = "ring-0.16.20",
        build_file = Label("//bazel/remote:BUILD.ring-0.16.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustls__0_20_6",
        url = "https://crates.io/api/v1/crates/rustls/0.20.6/download",
        type = "tar.gz",
        sha256 = "5aab8ee6c7097ed6057f43c187a62418d0c05a4bd5f18b3571db50ee0f9ce033",
        strip_prefix = "rustls-0.20.6",
        build_file = Label("//bazel/remote:BUILD.rustls-0.20.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustls_pemfile__1_0_1",
        url = "https://crates.io/api/v1/crates/rustls-pemfile/1.0.1/download",
        type = "tar.gz",
        sha256 = "0864aeff53f8c05aa08d86e5ef839d3dfcf07aeba2db32f12db0ef716e87bd55",
        strip_prefix = "rustls-pemfile-1.0.1",
        build_file = Label("//bazel/remote:BUILD.rustls-pemfile-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ryu__1_0_5",
        url = "https://crates.io/api/v1/crates/ryu/1.0.5/download",
        type = "tar.gz",
        sha256 = "71d301d4193d031abdd79ff7e3dd721168a9572ef3fe51a1517aba235bd8f86e",
        strip_prefix = "ryu-1.0.5",
        build_file = Label("//bazel/remote:BUILD.ryu-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__scopeguard__1_1_0",
        url = "https://crates.io/api/v1/crates/scopeguard/1.1.0/download",
        type = "tar.gz",
        sha256 = "d29ab0c6d3fc0ee92fe66e2d99f700eab17a8d57d1c1d3b748380fb20baa78cd",
        strip_prefix = "scopeguard-1.1.0",
        build_file = Label("//bazel/remote:BUILD.scopeguard-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sct__0_7_0",
        url = "https://crates.io/api/v1/crates/sct/0.7.0/download",
        type = "tar.gz",
        sha256 = "d53dcdb7c9f8158937a7981b48accfd39a43af418591a5d008c7b22b5e1b7ca4",
        strip_prefix = "sct-0.7.0",
        build_file = Label("//bazel/remote:BUILD.sct-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde__1_0_123",
        url = "https://crates.io/api/v1/crates/serde/1.0.123/download",
        type = "tar.gz",
        sha256 = "92d5161132722baa40d802cc70b15262b98258453e85e5d1d365c757c73869ae",
        strip_prefix = "serde-1.0.123",
        build_file = Label("//bazel/remote:BUILD.serde-1.0.123.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_value__0_7_0",
        url = "https://crates.io/api/v1/crates/serde-value/0.7.0/download",
        type = "tar.gz",
        sha256 = "f3a1a3341211875ef120e117ea7fd5228530ae7e7036a779fdc9117be6b3282c",
        strip_prefix = "serde-value-0.7.0",
        build_file = Label("//bazel/remote:BUILD.serde-value-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_derive__1_0_123",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.123/download",
        type = "tar.gz",
        sha256 = "9391c295d64fc0abb2c556bad848f33cb8296276b1ad2677d1ae1ace4f258f31",
        strip_prefix = "serde_derive-1.0.123",
        build_file = Label("//bazel/remote:BUILD.serde_derive-1.0.123.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_json__1_0_63",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.63/download",
        type = "tar.gz",
        sha256 = "43535db9747a4ba938c0ce0a98cc631a46ebf943c9e1d604e091df6007620bf6",
        strip_prefix = "serde_json-1.0.63",
        build_file = Label("//bazel/remote:BUILD.serde_json-1.0.63.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_qs__0_8_5",
        url = "https://crates.io/api/v1/crates/serde_qs/0.8.5/download",
        type = "tar.gz",
        sha256 = "c7715380eec75f029a4ef7de39a9200e0a63823176b759d055b613f5a87df6a6",
        strip_prefix = "serde_qs-0.8.5",
        build_file = Label("//bazel/remote:BUILD.serde_qs-0.8.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_urlencoded__0_7_1",
        url = "https://crates.io/api/v1/crates/serde_urlencoded/0.7.1/download",
        type = "tar.gz",
        sha256 = "d3491c14715ca2294c4d6a88f15e84739788c1d030eed8c110436aafdaa2f3fd",
        strip_prefix = "serde_urlencoded-0.7.1",
        build_file = Label("//bazel/remote:BUILD.serde_urlencoded-0.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_yaml__0_8_17",
        url = "https://crates.io/api/v1/crates/serde_yaml/0.8.17/download",
        type = "tar.gz",
        sha256 = "15654ed4ab61726bf918a39cb8d98a2e2995b002387807fa6ba58fdf7f59bb23",
        strip_prefix = "serde_yaml-0.8.17",
        build_file = Label("//bazel/remote:BUILD.serde_yaml-0.8.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sha1__0_10_5",
        url = "https://crates.io/api/v1/crates/sha1/0.10.5/download",
        type = "tar.gz",
        sha256 = "f04293dc80c3993519f2d7f6f511707ee7094fe0c6d3406feb330cdb3540eba3",
        strip_prefix = "sha1-0.10.5",
        build_file = Label("//bazel/remote:BUILD.sha1-0.10.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__signal_hook_registry__1_3_0",
        url = "https://crates.io/api/v1/crates/signal-hook-registry/1.3.0/download",
        type = "tar.gz",
        sha256 = "16f1d0fef1604ba8f7a073c7e701f213e056707210e9020af4528e0101ce11a6",
        strip_prefix = "signal-hook-registry-1.3.0",
        build_file = Label("//bazel/remote:BUILD.signal-hook-registry-1.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__slab__0_4_2",
        url = "https://crates.io/api/v1/crates/slab/0.4.2/download",
        type = "tar.gz",
        sha256 = "c111b5bd5695e56cffe5129854aa230b39c93a305372fdbb2668ca2394eea9f8",
        strip_prefix = "slab-0.4.2",
        build_file = Label("//bazel/remote:BUILD.slab-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__smallvec__1_6_1",
        url = "https://crates.io/api/v1/crates/smallvec/1.6.1/download",
        type = "tar.gz",
        sha256 = "fe0f37c9e8f3c5a4a66ad655a93c74daac4ad00c441533bf5c6e7990bb42604e",
        strip_prefix = "smallvec-1.6.1",
        build_file = Label("//bazel/remote:BUILD.smallvec-1.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__socket2__0_4_4",
        url = "https://crates.io/api/v1/crates/socket2/0.4.4/download",
        type = "tar.gz",
        sha256 = "66d72b759436ae32898a2af0a14218dbf55efde3feeb170eb623637db85ee1e0",
        strip_prefix = "socket2-0.4.4",
        build_file = Label("//bazel/remote:BUILD.socket2-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__spin__0_5_2",
        url = "https://crates.io/api/v1/crates/spin/0.5.2/download",
        type = "tar.gz",
        sha256 = "6e63cff320ae2c57904679ba7cb63280a3dc4613885beafb148ee7bf9aa9042d",
        strip_prefix = "spin-0.5.2",
        build_file = Label("//bazel/remote:BUILD.spin-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_60",
        url = "https://crates.io/api/v1/crates/syn/1.0.60/download",
        type = "tar.gz",
        sha256 = "c700597eca8a5a762beb35753ef6b94df201c81cca676604f547495a0d7f0081",
        strip_prefix = "syn-1.0.60",
        build_file = Label("//bazel/remote:BUILD.syn-1.0.60.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__termcolor__1_1_2",
        url = "https://crates.io/api/v1/crates/termcolor/1.1.2/download",
        type = "tar.gz",
        sha256 = "2dfed899f0eb03f32ee8c6a0aabdb8a7949659e3466561fc0adf54e26d88c5f4",
        strip_prefix = "termcolor-1.1.2",
        build_file = Label("//bazel/remote:BUILD.termcolor-1.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror__1_0_24",
        url = "https://crates.io/api/v1/crates/thiserror/1.0.24/download",
        type = "tar.gz",
        sha256 = "e0f4a65597094d4483ddaed134f409b2cb7c1beccf25201a9f73c719254fa98e",
        strip_prefix = "thiserror-1.0.24",
        build_file = Label("//bazel/remote:BUILD.thiserror-1.0.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror_impl__1_0_24",
        url = "https://crates.io/api/v1/crates/thiserror-impl/1.0.24/download",
        type = "tar.gz",
        sha256 = "7765189610d8241a44529806d6fd1f2e0a08734313a35d5b3a556f92b381f3c0",
        strip_prefix = "thiserror-impl-1.0.24",
        build_file = Label("//bazel/remote:BUILD.thiserror-impl-1.0.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thread_id__3_3_0",
        url = "https://crates.io/api/v1/crates/thread-id/3.3.0/download",
        type = "tar.gz",
        sha256 = "c7fbf4c9d56b320106cd64fd024dadfa0be7cb4706725fc44a7d7ce952d820c1",
        strip_prefix = "thread-id-3.3.0",
        build_file = Label("//bazel/remote:BUILD.thread-id-3.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_1_44",
        url = "https://crates.io/api/v1/crates/time/0.1.44/download",
        type = "tar.gz",
        sha256 = "6db9e6914ab8b1ae1c260a4ae7a49b6c5611b40328a735b21862567685e73255",
        strip_prefix = "time-0.1.44",
        build_file = Label("//bazel/remote:BUILD.time-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_3_14",
        url = "https://crates.io/api/v1/crates/time/0.3.14/download",
        type = "tar.gz",
        sha256 = "3c3f9a28b618c3a6b9251b6908e9c99e04b9e5c02e6581ccbb67d59c34ef7f9b",
        strip_prefix = "time-0.3.14",
        build_file = Label("//bazel/remote:BUILD.time-0.3.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time_macros__0_2_4",
        url = "https://crates.io/api/v1/crates/time-macros/0.2.4/download",
        type = "tar.gz",
        sha256 = "42657b1a6f4d817cda8e7a0ace261fe0cc946cf3a80314390b22cc61ae080792",
        strip_prefix = "time-macros-0.2.4",
        build_file = Label("//bazel/remote:BUILD.time-macros-0.2.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tinyvec__1_1_1",
        url = "https://crates.io/api/v1/crates/tinyvec/1.1.1/download",
        type = "tar.gz",
        sha256 = "317cca572a0e89c3ce0ca1f1bdc9369547fe318a683418e42ac8f59d14701023",
        strip_prefix = "tinyvec-1.1.1",
        build_file = Label("//bazel/remote:BUILD.tinyvec-1.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tinyvec_macros__0_1_0",
        url = "https://crates.io/api/v1/crates/tinyvec_macros/0.1.0/download",
        type = "tar.gz",
        sha256 = "cda74da7e1a664f795bb1f8a87ec406fb89a02522cf6e50620d016add6dbbf5c",
        strip_prefix = "tinyvec_macros-0.1.0",
        build_file = Label("//bazel/remote:BUILD.tinyvec_macros-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio__1_16_1",
        url = "https://crates.io/api/v1/crates/tokio/1.16.1/download",
        type = "tar.gz",
        sha256 = "0c27a64b625de6d309e8c57716ba93021dccf1b3b5c97edd6d3dd2d2135afc0a",
        strip_prefix = "tokio-1.16.1",
        build_file = Label("//bazel/remote:BUILD.tokio-1.16.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_macros__1_8_0",
        url = "https://crates.io/api/v1/crates/tokio-macros/1.8.0/download",
        type = "tar.gz",
        sha256 = "9724f9a975fb987ef7a3cd9be0350edcbe130698af5b8f7a631e23d42d052484",
        strip_prefix = "tokio-macros-1.8.0",
        build_file = Label("//bazel/remote:BUILD.tokio-macros-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_rustls__0_23_4",
        url = "https://crates.io/api/v1/crates/tokio-rustls/0.23.4/download",
        type = "tar.gz",
        sha256 = "c43ee83903113e03984cb9e5cebe6c04a5116269e900e3ddba8f068a62adda59",
        strip_prefix = "tokio-rustls-0.23.4",
        build_file = Label("//bazel/remote:BUILD.tokio-rustls-0.23.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_util__0_7_2",
        url = "https://crates.io/api/v1/crates/tokio-util/0.7.2/download",
        type = "tar.gz",
        sha256 = "f988a1a1adc2fb21f9c12aa96441da33a1728193ae0b95d2be22dbd17fcb4e5c",
        strip_prefix = "tokio-util-0.7.2",
        build_file = Label("//bazel/remote:BUILD.tokio-util-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tower_service__0_3_2",
        url = "https://crates.io/api/v1/crates/tower-service/0.3.2/download",
        type = "tar.gz",
        sha256 = "b6bc1c9ce2b5135ac7f93c72918fc37feb872bdc6a5533a8b85eb4b86bfdae52",
        strip_prefix = "tower-service-0.3.2",
        build_file = Label("//bazel/remote:BUILD.tower-service-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tracing__0_1_35",
        url = "https://crates.io/api/v1/crates/tracing/0.1.35/download",
        type = "tar.gz",
        sha256 = "a400e31aa60b9d44a52a8ee0343b5b18566b03a8321e0d321f695cf56e940160",
        strip_prefix = "tracing-0.1.35",
        build_file = Label("//bazel/remote:BUILD.tracing-0.1.35.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tracing_attributes__0_1_22",
        url = "https://crates.io/api/v1/crates/tracing-attributes/0.1.22/download",
        type = "tar.gz",
        sha256 = "11c75893af559bc8e10716548bdef5cb2b983f8e637db9d0e15126b61b484ee2",
        strip_prefix = "tracing-attributes-0.1.22",
        build_file = Label("//bazel/remote:BUILD.tracing-attributes-0.1.22.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tracing_core__0_1_29",
        url = "https://crates.io/api/v1/crates/tracing-core/0.1.29/download",
        type = "tar.gz",
        sha256 = "5aeea4303076558a00714b823f9ad67d58a3bbda1df83d8827d21193156e22f7",
        strip_prefix = "tracing-core-0.1.29",
        build_file = Label("//bazel/remote:BUILD.tracing-core-0.1.29.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__traitobject__0_1_0",
        url = "https://crates.io/api/v1/crates/traitobject/0.1.0/download",
        type = "tar.gz",
        sha256 = "efd1f82c56340fdf16f2a953d7bda4f8fdffba13d93b00844c25572110b26079",
        strip_prefix = "traitobject-0.1.0",
        build_file = Label("//bazel/remote:BUILD.traitobject-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__try_lock__0_2_3",
        url = "https://crates.io/api/v1/crates/try-lock/0.2.3/download",
        type = "tar.gz",
        sha256 = "59547bce71d9c38b83d9c0e92b6066c4253371f15005def0c30d9657f50c7642",
        strip_prefix = "try-lock-0.2.3",
        build_file = Label("//bazel/remote:BUILD.try-lock-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__typemap__0_3_3",
        url = "https://crates.io/api/v1/crates/typemap/0.3.3/download",
        type = "tar.gz",
        sha256 = "653be63c80a3296da5551e1bfd2cca35227e13cdd08c6668903ae2f4f77aa1f6",
        strip_prefix = "typemap-0.3.3",
        build_file = Label("//bazel/remote:BUILD.typemap-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__typenum__1_15_0",
        url = "https://crates.io/api/v1/crates/typenum/1.15.0/download",
        type = "tar.gz",
        sha256 = "dcf81ac59edc17cc8697ff311e8f5ef2d99fcbd9817b34cec66f90b6c3dfd987",
        strip_prefix = "typenum-1.15.0",
        build_file = Label("//bazel/remote:BUILD.typenum-1.15.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_bidi__0_3_4",
        url = "https://crates.io/api/v1/crates/unicode-bidi/0.3.4/download",
        type = "tar.gz",
        sha256 = "49f2bd0c6468a8230e1db229cff8029217cf623c767ea5d60bfbd42729ea54d5",
        strip_prefix = "unicode-bidi-0.3.4",
        build_file = Label("//bazel/remote:BUILD.unicode-bidi-0.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_normalization__0_1_17",
        url = "https://crates.io/api/v1/crates/unicode-normalization/0.1.17/download",
        type = "tar.gz",
        sha256 = "07fbfce1c8a97d547e8b5334978438d9d6ec8c20e38f56d4a4374d181493eaef",
        strip_prefix = "unicode-normalization-0.1.17",
        build_file = Label("//bazel/remote:BUILD.unicode-normalization-0.1.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_2_1",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.1/download",
        type = "tar.gz",
        sha256 = "f7fe0bb3479651439c9112f72b6c505038574c9fbb575ed1bf3b797fa39dd564",
        strip_prefix = "unicode-xid-0.2.1",
        build_file = Label("//bazel/remote:BUILD.unicode-xid-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unsafe_any__0_4_2",
        url = "https://crates.io/api/v1/crates/unsafe-any/0.4.2/download",
        type = "tar.gz",
        sha256 = "f30360d7979f5e9c6e6cea48af192ea8fab4afb3cf72597154b8f08935bc9c7f",
        strip_prefix = "unsafe-any-0.4.2",
        build_file = Label("//bazel/remote:BUILD.unsafe-any-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__untrusted__0_7_1",
        url = "https://crates.io/api/v1/crates/untrusted/0.7.1/download",
        type = "tar.gz",
        sha256 = "a156c684c91ea7d62626509bce3cb4e1d9ed5c4d978f7b4352658f96a4c26b4a",
        strip_prefix = "untrusted-0.7.1",
        build_file = Label("//bazel/remote:BUILD.untrusted-0.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__url__2_2_1",
        url = "https://crates.io/api/v1/crates/url/2.2.1/download",
        type = "tar.gz",
        sha256 = "9ccd964113622c8e9322cfac19eb1004a07e636c545f325da085d5cdde6f1f8b",
        strip_prefix = "url-2.2.1",
        build_file = Label("//bazel/remote:BUILD.url-2.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_9_2",
        url = "https://crates.io/api/v1/crates/version_check/0.9.2/download",
        type = "tar.gz",
        sha256 = "b5a972e5669d67ba988ce3dc826706fb0a8b01471c088cb0b6110b805cc36aed",
        strip_prefix = "version_check-0.9.2",
        build_file = Label("//bazel/remote:BUILD.version_check-0.9.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__waker_fn__1_1_0",
        url = "https://crates.io/api/v1/crates/waker-fn/1.1.0/download",
        type = "tar.gz",
        sha256 = "9d5b2c62b4012a3e1eca5a7e077d13b3bf498c4073e33ccd58626607748ceeca",
        strip_prefix = "waker-fn-1.1.0",
        build_file = Label("//bazel/remote:BUILD.waker-fn-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__want__0_3_0",
        url = "https://crates.io/api/v1/crates/want/0.3.0/download",
        type = "tar.gz",
        sha256 = "1ce8a968cb1cd110d136ff8b819a556d6fb6d919363c61534f6860c7eb172ba0",
        strip_prefix = "want-0.3.0",
        build_file = Label("//bazel/remote:BUILD.want-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_10_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.10.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "1a143597ca7c7793eff794def352d41792a93c481eb1042423ff7ff72ba2c31f",
        strip_prefix = "wasi-0.10.0+wasi-snapshot-preview1",
        build_file = Label("//bazel/remote:BUILD.wasi-0.10.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_11_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.11.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423",
        strip_prefix = "wasi-0.11.0+wasi-snapshot-preview1",
        build_file = Label("//bazel/remote:BUILD.wasi-0.11.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_9_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.9.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "cccddf32554fecc6acb585f82a32a72e28b48f8c4c1883ddfeeeaa96f7d8e519",
        strip_prefix = "wasi-0.9.0+wasi-snapshot-preview1",
        build_file = Label("//bazel/remote:BUILD.wasi-0.9.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen__0_2_71",
        url = "https://crates.io/api/v1/crates/wasm-bindgen/0.2.71/download",
        type = "tar.gz",
        sha256 = "7ee1280240b7c461d6a0071313e08f34a60b0365f14260362e5a2b17d1d31aa7",
        strip_prefix = "wasm-bindgen-0.2.71",
        build_file = Label("//bazel/remote:BUILD.wasm-bindgen-0.2.71.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_backend__0_2_71",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-backend/0.2.71/download",
        type = "tar.gz",
        sha256 = "5b7d8b6942b8bb3a9b0e73fc79b98095a27de6fa247615e59d096754a3bc2aa8",
        strip_prefix = "wasm-bindgen-backend-0.2.71",
        build_file = Label("//bazel/remote:BUILD.wasm-bindgen-backend-0.2.71.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_futures__0_4_21",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-futures/0.4.21/download",
        type = "tar.gz",
        sha256 = "8e67a5806118af01f0d9045915676b22aaebecf4178ae7021bc171dab0b897ab",
        strip_prefix = "wasm-bindgen-futures-0.4.21",
        build_file = Label("//bazel/remote:BUILD.wasm-bindgen-futures-0.4.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro__0_2_71",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro/0.2.71/download",
        type = "tar.gz",
        sha256 = "e5ac38da8ef716661f0f36c0d8320b89028efe10c7c0afde65baffb496ce0d3b",
        strip_prefix = "wasm-bindgen-macro-0.2.71",
        build_file = Label("//bazel/remote:BUILD.wasm-bindgen-macro-0.2.71.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro_support__0_2_71",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro-support/0.2.71/download",
        type = "tar.gz",
        sha256 = "cc053ec74d454df287b9374ee8abb36ffd5acb95ba87da3ba5b7d3fe20eb401e",
        strip_prefix = "wasm-bindgen-macro-support-0.2.71",
        build_file = Label("//bazel/remote:BUILD.wasm-bindgen-macro-support-0.2.71.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_shared__0_2_71",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-shared/0.2.71/download",
        type = "tar.gz",
        sha256 = "7d6f8ec44822dd71f5f221a5847fb34acd9060535c1211b70a05844c0f6383b1",
        strip_prefix = "wasm-bindgen-shared-0.2.71",
        build_file = Label("//bazel/remote:BUILD.wasm-bindgen-shared-0.2.71.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__web_sys__0_3_48",
        url = "https://crates.io/api/v1/crates/web-sys/0.3.48/download",
        type = "tar.gz",
        sha256 = "ec600b26223b2948cedfde2a0aa6756dcf1fef616f43d7b3097aaf53a6c4d92b",
        strip_prefix = "web-sys-0.3.48",
        build_file = Label("//bazel/remote:BUILD.web-sys-0.3.48.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__webpki__0_22_0",
        url = "https://crates.io/api/v1/crates/webpki/0.22.0/download",
        type = "tar.gz",
        sha256 = "f095d78192e208183081cc07bc5515ef55216397af48b873e5edcd72637fa1bd",
        strip_prefix = "webpki-0.22.0",
        build_file = Label("//bazel/remote:BUILD.webpki-0.22.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__webpki_roots__0_22_4",
        url = "https://crates.io/api/v1/crates/webpki-roots/0.22.4/download",
        type = "tar.gz",
        sha256 = "f1c760f0d366a6c24a02ed7816e23e691f5d92291f94d15e836006fd11b04daf",
        strip_prefix = "webpki-roots-0.22.4",
        build_file = Label("//bazel/remote:BUILD.webpki-roots-0.22.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_2_8",
        url = "https://crates.io/api/v1/crates/winapi/0.2.8/download",
        type = "tar.gz",
        sha256 = "167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//bazel/remote:BUILD.winapi-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//bazel/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//bazel/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_util__0_1_5",
        url = "https://crates.io/api/v1/crates/winapi-util/0.1.5/download",
        type = "tar.gz",
        sha256 = "70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178",
        strip_prefix = "winapi-util-0.1.5",
        build_file = Label("//bazel/remote:BUILD.winapi-util-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//bazel/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_sys__0_36_1",
        url = "https://crates.io/api/v1/crates/windows-sys/0.36.1/download",
        type = "tar.gz",
        sha256 = "ea04155a16a59f9eab786fe12a4a450e75cdb175f9e0d80da1e17db09f55b8d2",
        strip_prefix = "windows-sys-0.36.1",
        build_file = Label("//bazel/remote:BUILD.windows-sys-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_aarch64_msvc__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_aarch64_msvc/0.36.1/download",
        type = "tar.gz",
        sha256 = "9bb8c3fd39ade2d67e9874ac4f3db21f0d710bee00fe7cab16949ec184eeaa47",
        strip_prefix = "windows_aarch64_msvc-0.36.1",
        build_file = Label("//bazel/remote:BUILD.windows_aarch64_msvc-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_i686_gnu__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_i686_gnu/0.36.1/download",
        type = "tar.gz",
        sha256 = "180e6ccf01daf4c426b846dfc66db1fc518f074baa793aa7d9b9aaeffad6a3b6",
        strip_prefix = "windows_i686_gnu-0.36.1",
        build_file = Label("//bazel/remote:BUILD.windows_i686_gnu-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_i686_msvc__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_i686_msvc/0.36.1/download",
        type = "tar.gz",
        sha256 = "e2e7917148b2812d1eeafaeb22a97e4813dfa60a3f8f78ebe204bcc88f12f024",
        strip_prefix = "windows_i686_msvc-0.36.1",
        build_file = Label("//bazel/remote:BUILD.windows_i686_msvc-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_x86_64_gnu__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_x86_64_gnu/0.36.1/download",
        type = "tar.gz",
        sha256 = "4dcd171b8776c41b97521e5da127a2d86ad280114807d0b2ab1e462bc764d9e1",
        strip_prefix = "windows_x86_64_gnu-0.36.1",
        build_file = Label("//bazel/remote:BUILD.windows_x86_64_gnu-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_x86_64_msvc__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_x86_64_msvc/0.36.1/download",
        type = "tar.gz",
        sha256 = "c811ca4a8c853ef420abd8592ba53ddbbac90410fab6903b3e79972a631f7680",
        strip_prefix = "windows_x86_64_msvc-0.36.1",
        build_file = Label("//bazel/remote:BUILD.windows_x86_64_msvc-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winreg__0_10_1",
        url = "https://crates.io/api/v1/crates/winreg/0.10.1/download",
        type = "tar.gz",
        sha256 = "80d0f4e272c85def139476380b12f9ac60926689dd2e01d4923222f40580869d",
        strip_prefix = "winreg-0.10.1",
        build_file = Label("//bazel/remote:BUILD.winreg-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wiremock__0_5_14",
        url = "https://crates.io/api/v1/crates/wiremock/0.5.14/download",
        type = "tar.gz",
        sha256 = "cc3c7b7557dbfdad6431b5a51196c9110cef9d83f6a9b26699f35cdc0ae113ec",
        strip_prefix = "wiremock-0.5.14",
        build_file = Label("//bazel/remote:BUILD.wiremock-0.5.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__yaml_rust__0_4_5",
        url = "https://crates.io/api/v1/crates/yaml-rust/0.4.5/download",
        type = "tar.gz",
        sha256 = "56c1936c4cc7a1c9ab21a1ebb602eb942ba868cbd44a99cb7cdc5892335e1c85",
        strip_prefix = "yaml-rust-0.4.5",
        build_file = Label("//bazel/remote:BUILD.yaml-rust-0.4.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__zstd__0_11_2_zstd_1_5_2",
        url = "https://crates.io/api/v1/crates/zstd/0.11.2+zstd.1.5.2/download",
        type = "tar.gz",
        sha256 = "20cc960326ece64f010d2d2107537f26dc589a6573a316bd5b1dba685fa5fde4",
        strip_prefix = "zstd-0.11.2+zstd.1.5.2",
        build_file = Label("//bazel/remote:BUILD.zstd-0.11.2+zstd.1.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__zstd_safe__5_0_2_zstd_1_5_2",
        url = "https://crates.io/api/v1/crates/zstd-safe/5.0.2+zstd.1.5.2/download",
        type = "tar.gz",
        sha256 = "1d2a5585e04f9eea4b2a3d1eca508c4dee9592a89ef6f450c11719da0726f4db",
        strip_prefix = "zstd-safe-5.0.2+zstd.1.5.2",
        build_file = Label("//bazel/remote:BUILD.zstd-safe-5.0.2+zstd.1.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__zstd_sys__2_0_1_zstd_1_5_2",
        url = "https://crates.io/api/v1/crates/zstd-sys/2.0.1+zstd.1.5.2/download",
        type = "tar.gz",
        sha256 = "9fd07cbbc53846d9145dbffdf6dd09a7a0aa52be46741825f5c97bdd4f73f12b",
        strip_prefix = "zstd-sys-2.0.1+zstd.1.5.2",
        build_file = Label("//bazel/remote:BUILD.zstd-sys-2.0.1+zstd.1.5.2.bazel"),
    )

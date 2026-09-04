"""Unit tests for static/indicators.py - the boundary-1 unattributed
detection-indicator scan. Pure module: feed a file's text, get the detection
categories whose technique-agnostic idioms are present. No I/O, no toolchain."""

from static.indicators import find_indicator_categories, find_native_indicator_categories


def test_clean_file_no_indicators():
    assert find_indicator_categories(
        "public class MainActivity { void onCreate() { } }"
    ) == set()


def test_is_rooted_call_is_root_indicator():
    # A method literally named isRooted() signals root-DETECTION logic exists,
    # even if no hand-authored signature recognizes the technique.
    assert find_indicator_categories(
        "boolean isRooted() { return new File('/system/bin/su').exists(); }"
    ) == {"root"}


def test_check_root_family_root_indicator():
    assert find_indicator_categories(
        "if (checkForRoot() || isDeviceRooted() || hasRootAccess()) { }"
    ) == {"root"}


def test_anonymous_x509trustmanager_is_ssl_indicator():
    # The ANONYMOUS `new X509TrustManager(){...}` form is a custom TLS
    # validation implementation - distinct from `implements X509TrustManager`
    # (a dedicated ssl_pinning.yaml signature). It signals SSL-control code the
    # corpus may not have a technique for.
    assert find_indicator_categories(
        "TrustManager tm = new X509TrustManager() { public void checkServerTrusted(X509Certificate[] c, String a) {} };"
    ) == {"ssl"}


def test_check_server_trusted_override_is_ssl_indicator():
    assert find_indicator_categories(
        "public void checkServerTrusted(X509Certificate[] chain, String authType) { }"
    ) == {"ssl"}


def test_benign_http_has_no_indicator():
    # Ordinary app code - no root or SSL-decision idioms - stays clean.
    assert find_indicator_categories(
        "okhttp3.Response r = client.newCall(req).execute();"
    ) == set()


def test_superuser_library_ref_is_root_indicator():
    # The Superuser helper library is a root-detection signal with no dedicated
    # signature (distinct from RootTools, which IS a signature).
    assert find_indicator_categories(
        "import com.koushikdutta.superuser.Su;"
    ) == {"root"}


# --- boundary-2: native-surface indicators --------------------------------


def test_clean_native_corpus_no_indicator():
    # A benign lib with no runtime-state idioms stays clean - even a lib that
    # links OpenSSL for ordinary TLS (no verify control) trips nothing.
    assert find_native_indicator_categories(
        "EVP_PKEY_decapsulate\nSSL_add_dir_cert_subjects_to_stack\nJNI_OnLoad\n"
    ) == set()


def test_native_su_path_is_root_indicator():
    # A su path the SIGNATURE set does not carry (/sbin/su) is an unrecognized
    # native root idiom. /system/bin/su and /system/xbin/su ARE signatures, so
    # they are deliberately NOT indicators (the category would be matched).
    assert find_native_indicator_categories("/sbin/su") == {"root"}


def test_native_proc_self_inspection_is_root_indicator():
    # Reading /proc/self/maps is the classic native anti-debug/root probe.
    assert find_native_indicator_categories("fopen(\"/proc/self/maps\",\"r\")") == {"root"}


def test_native_uid_zero_check_is_root_indicator():
    # A uid==0 test visible in a decompiled body. Bare getuid (export-only) is
    # deliberately NOT an indicator - too generic; only the == shape signals a
    # root check.
    assert find_native_indicator_categories("if (getuid() == 0) { system(\"/system/xbin/su\"); }") == {"root"}
    assert find_native_indicator_categories("getuid") == set()


def test_native_cacerts_read_is_ssl_indicator():
    # Reading the system CA store signals native certificate-validation logic.
    assert find_native_indicator_categories("/system/etc/security/cacerts") == {"ssl"}


def test_native_generic_openssl_verify_is_ssl_indicator_not_scored_sig():
    # SSL_CTX_set_verify is present for SSL_VERIFY_NONE too, so it is an
    # indicator (unknown capability) - NOT a scored pinning signature.
    assert find_native_indicator_categories("SSL_CTX_set_verify(ctx, SSL_VERIFY_NONE)") == {"ssl"}


def test_native_boringssl_custom_verify_is_ssl_indicator_not_scored_sig():
    # The modern custom-verify API is stripped/renamed in production BoringSSL
    # (verified on real libcronet.so), so it is an indicator, never a scored sig.
    assert find_native_indicator_categories("SSL_CTX_set_custom_verify(ctx, mode, cb)") == {"ssl"}
    assert find_native_indicator_categories("SSL_set_custom_verify(ssl, mode, cb)") == {"ssl"}


def test_native_mono_runtime_is_ssl_indicator_not_scored_sig():
    # Xamarin/Mono entrypoints flag the SSL category coverage-limited (TLS likely
    # handled natively), without claiming pinning.
    assert find_native_indicator_categories("mono_jit_init") == {"ssl"}
    assert find_native_indicator_categories("mono_assembly_load") == {"ssl"}


def test_native_root_and_ssl_indicators_independent():
    assert find_native_indicator_categories("/sbin/su\n/system/etc/security/cacerts") == {"root", "ssl"}


def test_native_mbedtls_verify_control_is_ssl_indicator_not_scored_sig():
    # MBEDTLS-IND1. The native SSL surface previously recognized only the
    # OpenSSL/BoringSSL symbol namespace, so an NDK/curl/Unity/IoT component that
    # controls certificate validation through mbedTLS was invisible and the SSL
    # category could certify a clean negative over a TLS stack it never read.
    # All four symbols below are `FUNC GLOBAL` exports of a real shipping library
    # (aves' lib/x86_64/libmpv.so), which is exactly why they are indicators and
    # not scored: static linking re-exports the whole mbedTLS API whether the app
    # calls it or not, so scoring would repeat the bundled-SDK-plumbing false
    # positive (Volley/HurlStack, OkHttp CertificateChainCleaner).
    for symbol in (
        "mbedtls_ssl_conf_verify",
        "mbedtls_ssl_set_verify",
        "mbedtls_ssl_conf_authmode",
        "mbedtls_ssl_conf_ca_chain",
        "mbedtls_ssl_set_hostname",
        "mbedtls_x509_crt_verify",
    ):
        assert find_native_indicator_categories(symbol) == {"ssl"}, symbol
    # Non-TLS mbedTLS crypto primitives must NOT flag the SSL surface: the same
    # statically linked library exports hundreds of them (mbedtls_rsa_*,
    # psa_verify_hash, mbedtls_ecdsa_verify), and treating "bundles a crypto
    # library" as "controls certificate validation" would make every app with a
    # media/networking .so permanently coverage-limited on SSL.
    for benign in ("mbedtls_ecdsa_verify", "mbedtls_rsa_pkcs1_verify", "psa_verify_hash"):
        assert find_native_indicator_categories(benign) == set(), benign
    # Never a root indicator, and never promoted out of the indicator layer: the
    # native signature corpus must carry no mbedTLS pattern.
    assert "root" not in find_native_indicator_categories("mbedtls_ssl_conf_verify")
    from pathlib import Path
    from static.native import load_native_signatures

    sigs = load_native_signatures(
        Path(__file__).resolve().parents[2] / "config" / "signatures" / "native_detection.yaml"
    )
    assert not [
        s for s in sigs for p in s.patterns if "mbedtls" in p.lower()
    ], "mbedTLS verify-control must stay an indicator, never a scored signature"


def test_compile_returns_cached_patterns():
    # _compile: compiles (and caches by raw string) the indicator regexes for a
    # category. Returns a tuple that actually matches; a repeat call reuses the
    # cached compiled object (identity) instead of recompiling. Had zero coverage.
    from static.indicators import _compile
    table = {"root": (r"/system/bin/su", r"\bmagisk\b")}
    pats = _compile("root", table)
    assert isinstance(pats, tuple)
    assert len(pats) == 2
    assert pats[0].search("/system/bin/su") is not None
    assert pats[1].search("com.topjohnwu.magisk") is not None
    assert _compile("root", table)[0] is pats[0]  # cache hit reuses the object

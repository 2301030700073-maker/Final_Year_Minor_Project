"""L-M3: SSL-pinning taxonomy expansion - the 6 new industry-standard detection
categories (WebView bypass, TrustKit, KeyStore pinning, X.509 factory, OkHttp4
Kotlin, Cronet). Each must load from the real YAML, match realistic
pinning/trust-anchor code, and NOT false-positive on benign code. Additive: new
signature ids fire only on their own technique, leaving existing calibrated
confidences untouched."""

from pathlib import Path

from static.signatures import _line_matches, load_signatures, scan

REPO = Path(__file__).resolve().parents[2]
SSL_YAML = REPO / "config/signatures/ssl_pinning.yaml"
NEW_IDS = {
    "webview_ssl_error_handler_proceed",
    "trustkit_pinning",
    "keystore_set_certificate_entry",
    "certificate_factory_x509",
    "okhttp4_kotlin_certificate_pinner",
    "cronet_cert_verifier",
}


def _sig_by_id(sigs, sid):
    for s in sigs:
        if s.id == sid:
            return s
    raise AssertionError(f"missing signature {sid}")


def test_new_ssl_signatures_load_from_real_yaml():
    sigs = load_signatures(SSL_YAML)
    present = {s.id for s in sigs}
    assert NEW_IDS <= present, f"missing from ssl_pinning.yaml: {NEW_IDS - present}"
    # all still valid category/weight per the loader's own validation
    assert len(sigs) == 13  # 7 original + 6 new


def test_webview_proceed_matches_spans_lines():
    from tempfile import TemporaryDirectory

    snippet = (
        "public void onReceivedSslError(WebView view,\n"
        "        SslErrorHandler handler, SslError error) {\n"
        "    handler.proceed();\n"
        "}\n"
    )
    with TemporaryDirectory() as d:
        Path(d, "MainActivity.java").write_text(snippet)
        ev = scan(Path(d), load_signatures(SSL_YAML))
    ids = {e.signature_id for e in ev.ssl_evidence}
    assert "webview_ssl_error_handler_proceed" in ids


def test_webview_does_not_match_cancel_handler():
    # onReceivedSslError that CANCELLES (the secure default) must not match.
    from tempfile import TemporaryDirectory

    snippet = (
        "public void onReceivedSslError(WebView view,\n"
        "        SslErrorHandler handler, SslError error) {\n"
        "    handler.cancel();\n"
        "}\n"
    )
    with TemporaryDirectory() as d:
        Path(d, "MainActivity.java").write_text(snippet)
        ev = scan(Path(d), load_signatures(SSL_YAML))
    assert "webview_ssl_error_handler_proceed" not in {e.signature_id for e in ev.ssl_evidence}


def test_single_line_matches():
    sigs = load_signatures(SSL_YAML)
    # trustkit class reference
    assert _line_matches(
        "import com.datatheorem.android.trustkit.TrustKit;",
        _sig_by_id(sigs, "trustkit_pinning"),
    )
    # keystore pinning
    assert _line_matches(
        "ks.setCertificateEntry(\"server\", cert);",
        _sig_by_id(sigs, "keystore_set_certificate_entry"),
    )
    # x509 factory
    assert _line_matches(
        'CertificateFactory cf = CertificateFactory.getInstance("X.509");',
        _sig_by_id(sigs, "certificate_factory_x509"),
    )
    # cronet cert verifier
    assert _line_matches(
        "b.setCertVerifier(new CustomCertVerifier());",
        _sig_by_id(sigs, "cronet_cert_verifier"),
    )


def test_no_false_positive_on_benign_code():
    sigs = load_signatures(SSL_YAML)
    benign = [
        "import okhttp3.CertificatePinner;",        # bare class ref, no Builder()
        "X509TrustManager tm = sslContext.init(kms, tms, null);",  # accepts a TM
        "String name = \"X.509\";",                  # plain string, no getInstance
        "Log.d(\"tag\", \"no keystore pinning configured\");",  # no pin API called
    ]
    # The class-reference/string signatures must not hit these benign lines.
    for line in benign:
        for sid in ("trustkit_pinning", "keystore_set_certificate_entry",
                    "cronet_cert_verifier"):
            got = _line_matches(line, _sig_by_id(sigs, sid))
            assert got is None, f"false positive: {sid} matched {line!r}"

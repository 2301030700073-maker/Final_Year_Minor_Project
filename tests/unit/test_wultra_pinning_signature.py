"""Wultra SSL Pinning SDK coverage (ssl_pinning.yaml, 2026-09-04).

The 2026 gap sweep found exactly one genuinely-missing published pinning library:
Wultra SSL Pinning (Maven `com.wultra.android.sslpinning:wultra-ssl-pinning`), a
dynamic fingerprint-based pinning SDK from the banking/fintech world. It is the
same class of signal as the TrustKit signature already in the corpus - the app
does not hand-roll a TrustManager, it delegates chain validation to the library.

These tests pin the four accepted patterns, and - more importantly - pin the
three spellings that were deliberately REJECTED, because the reason for rejecting
them is not visible from the YAML alone once the block is read out of context.
"""
from __future__ import annotations

from pathlib import Path

import pytest

from static.signatures import _line_matches, load_signatures

SSL_YAML = Path("config/signatures/ssl_pinning.yaml")
ROOT_YAML = Path("config/signatures/root_detection.yaml")
SIG_ID = "pin_wultra_ssl_pinning"


@pytest.fixture(scope="module")
def ssl_sigs():
    return load_signatures(SSL_YAML)


@pytest.fixture(scope="module")
def all_sigs():
    return load_signatures(ROOT_YAML) + load_signatures(SSL_YAML)


def _matching_ids(line: str, sigs) -> set[str]:
    return {s.id for s in sigs if _line_matches(line, s) is not None}


# --- the accepted patterns fire, in both source and smali spellings ----------

@pytest.mark.parametrize(
    "line",
    [
        # dotted spelling: jadx / CFR decompiled source
        "import com.wultra.android.sslpinning.CertStore;",
        "import com.wultra.android.sslpinning.integration.powerauth.PowerAuthCertStore;",
        # slash spelling: apktool smali carries ONLY this form (SMALI-SPELL1)
        "    const-class v0, Lcom/wultra/android/sslpinning/CertStore;",
        "invoke-virtual {p0, p1}, Lcom/wultra/android/sslpinning/CertStore;"
        "->validateFingerprint(Ljava/lang/String;[B)"
        "Lcom/wultra/android/sslpinning/model/ValidationResult;",
    ],
)
def test_wultra_package_matches_both_spellings(line, ssl_sigs):
    assert SIG_ID in _matching_ids(line, ssl_sigs)


@pytest.mark.parametrize(
    "line",
    [
        # the TLS wiring points - where the library's validation enters the
        # handshake path. These survive even if the package string is minified out
        # of a particular file.
        "        SSLSocketFactory f = SSLPinningIntegration.createSSLPinningSocketFactory(store);",
        "    public class SSLPinningX509TrustManager implements X509TrustManager {",
        "        strategy = new PowerAuthSslPinningValidationStrategy(certStore);",
        "    const-string v3, \"SSLPinningX509TrustManager\"",
    ],
)
def test_wultra_tls_wiring_points_match(line, ssl_sigs):
    assert SIG_ID in _matching_ids(line, ssl_sigs)


# --- the rejected spellings: why this block is 4 patterns and not 7 ---------

def test_bare_certstore_is_not_a_pattern_because_the_jdk_owns_that_name(all_sigs):
    """`CertStore` is also java.security.cert.CertStore. Measured across every APK
    on disk, the DEX string `java/security/cert/CertStore` is present in
    PropertyGuru, Netflix and WhatsApp - three production apps with no Wultra
    relationship. A bare pattern would therefore be a guaranteed false positive,
    which is why only the package-qualified and SSLPinning*-qualified forms are
    listed. This asserts the FP directly rather than trusting the comment.
    """
    owners = {s.id for s in all_sigs for p in s.patterns if p.strip("'\"") == "CertStore"}
    assert owners == set(), "bare CertStore must never be a pattern"

    for jdk_line in (
        "import java.security.cert.CertStore;",
        "    const-class v0, Ljava/security/cert/CertStore;",
        "        CertStore cs = CertStore.getInstance(\"Collection\", params);",
    ):
        assert SIG_ID not in _matching_ids(jdk_line, all_sigs), jdk_line


def test_the_unverified_readme_spelling_was_not_asserted(ssl_sigs):
    """`SSLSocketIntegration.createSSLPinningSocketFactory` appears once in the
    library's README beside the `SSLPinningIntegration` spelling and looks like a
    documentation slip. It was not corroborated in source, so it is not a pattern -
    inventing an identifier that may not exist is the padding this corpus refuses.
    """
    sig = next(s for s in ssl_sigs if s.id == SIG_ID)
    assert not any("SSLSocketIntegration" in p for p in sig.patterns)
    assert SIG_ID not in _matching_ids(
        "    f = SSLSocketIntegration.createSSLPinningSocketFactory(store);", ssl_sigs
    )


def test_validate_fingerprint_alone_does_not_fire(ssl_sigs):
    """A method name generic enough to occur in unrelated crypto code is not
    evidence of this library on its own."""
    assert SIG_ID not in _matching_ids(
        "        boolean ok = helper.validateFingerprint(sha256, expected);", ssl_sigs
    )


def test_an_unqualified_certstore_call_site_does_not_fire(ssl_sigs):
    """The consequence of excluding bare `CertStore`, stated as a test so it is not
    mistaken for a bug later: a call site that names the type WITHOUT the package
    and without an SSLPinning* marker is unattributable, so it does not match.
    Recall is not lost in practice - the import/const-class line in the same file
    carries the qualified form, and that is what fires.
    """
    assert SIG_ID not in _matching_ids(
        "        CertStore store = CertStore.Companion.powerAuthCertStore(config, context);",
        ssl_sigs,
    )


@pytest.mark.parametrize(
    "line",
    [
        "import com.wultra.android.powerauth.networking.Client;",  # sibling SDK, not pinning
        "import com.wultraviolet.imaging.Scanner;",               # substring near-miss
        "        int wultra = 3;",
    ],
)
def test_near_miss_namespaces_do_not_fire(line, ssl_sigs):
    assert SIG_ID not in _matching_ids(line, ssl_sigs)


# --- wiring: a signature the pipeline can never reach is not a signature -----

def test_the_signature_is_actually_loaded_by_the_real_loader(ssl_sigs):
    ids = [s.id for s in ssl_sigs]
    assert SIG_ID in ids
    assert len(ids) == len(set(ids)), "duplicate signature id"


def test_wultra_namespace_is_not_vendor_classified(ssl_sigs):
    """Vendor classification SKIPS the file outright, so if this namespace were in
    KNOWN_VENDOR_PREFIXES the signature would be unfirable - dead YAML that looks
    like coverage. The same trap the RASP additions had to clear.

    Asserted for TrustKit too: it is the precedent this block copies, and if a
    future vendor-taxonomy edit ever swept pinning libraries in, BOTH signatures
    would die silently and this test is where that shows up.
    """
    from common import is_known_third_party

    for ns in (
        "com.wultra.android.sslpinning",
        "com.wultra.android.sslpinning.integration.powerauth",
        "com.datatheorem.android.trustkit",
    ):
        assert not is_known_third_party(ns), f"{ns} must stay scannable"


def test_weight_matches_the_trustkit_precedent_and_cannot_self_detect(ssl_sigs):
    """Wultra and TrustKit are the same signal - a dedicated pinning library whose
    presence means pinning is enforced through its evaluator - so they carry the
    same weight. And like every signature in the corpus it must sit below the 0.70
    DETECTED threshold, so one match alone can never certify a finding.
    """
    wultra = next(s for s in ssl_sigs if s.id == SIG_ID)
    trustkit = next(s for s in ssl_sigs if s.id == "trustkit_pinning")
    assert wultra.weight == trustkit.weight == 0.45
    assert wultra.weight < 0.70


def test_no_pattern_collides_with_another_signatures_literal(all_sigs):
    """A literal that is a substring of another ID's literal double-counts on every
    app that matched the original and silently inflates its confidence."""
    literals = [
        (s.id, p.strip("'\""))
        for s in all_sigs
        if s.pattern_type in ("string_literal", "class_reference")
        for p in s.patterns
    ]
    collisions = [
        (a, pa, b, pb)
        for a, pa in literals
        for b, pb in literals
        if a != b and (pa in pb or pb in pa) and SIG_ID in (a, b)
    ]
    assert collisions == []

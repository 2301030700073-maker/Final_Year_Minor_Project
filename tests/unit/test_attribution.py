"""Pure attribution logic - no device, no toolchain, unit-testable anywhere."""

from dataclasses import dataclass

from report import attribution


@dataclass
class _FakeEvidence:
    file: str


PG = "com.allproperty.android.consumer.my"


def test_derive_namespace_from_sources_path():
    ns = attribution.derive_namespace("sources/io/sentry/android/core/internal/util/RootChecker.java")
    assert ns == "io.sentry.android.core.internal.util"


def test_derive_namespace_stops_at_class_filename():
    ns = attribution.derive_namespace("sources/com/allproperty/foo/Bar.java")
    assert ns == "com.allproperty.foo"


def test_derive_namespace_none_for_bare_filename():
    assert attribution.derive_namespace("Bar.java") is None
    assert attribution.derive_namespace("") is None


def test_derive_namespace_keeps_uppercase_package_segment():
    # ReactNativeBlobUtil is a real package with an uppercase segment. The old
    # lowercase-initial guard truncated this to "com", so the com.ReactNativeBlobUtil
    # vendor prefix could never match and its evidence counted as app-owned. Only
    # the extension (the '.java') marks a class file; dotless segments are packages.
    ns = attribution.derive_namespace("sources/com/ReactNativeBlobUtil/BlobUtil.java")
    assert ns == "com.ReactNativeBlobUtil"
    assert attribution.is_known_third_party(ns) is True


def test_known_third_party_vendors():
    assert attribution.is_known_third_party("io.sentry.android.core") is True
    assert attribution.is_known_third_party("com.google.android.gms.ads") is True
    assert attribution.is_known_third_party("expo.modules.device") is True
    assert attribution.is_known_third_party("com.allproperty.android.consumer.my") is False
    # UnCrackable's own root code - MUST NOT be called third-party even though
    # its namespace differs from its manifest package (owasp.mstg.uncrackable1).
    assert attribution.is_known_third_party("sg.vantagepoint.a") is False
    # APM/root-checking SDKs are recognized as third-party.
    assert attribution.is_known_third_party("com.datadog.android") is True
    assert attribution.is_known_third_party("com.newrelic.agent.android") is True
    assert attribution.is_known_third_party("com.appdynamics.android") is True
    assert attribution.is_known_third_party("androidx.work") is True
    # The dead com.datadoghq Maven group is gone - it never appears in code.
    assert attribution.is_known_third_party("com.datadoghq") is False


def test_gate_all_third_party_nulls_flag_when_not_detected():
    # ADR-0010: the qualifier annotates a DETECTED verdict only. A non-detected
    # category must not carry all_third_party=True (in JSON or report), or a
    # consumer infers a detection that doesn't exist. Counts are kept.
    attr = {"app_owned": 0, "third_party": 3, "all_third_party": True, "vendors": ["okhttp3"]}
    gated = attribution.gate_all_third_party(attr, detected=False)
    assert gated["all_third_party"] is False
    assert gated["third_party"] == 3  # evidence counts survive
    assert gated["vendors"] == ["okhttp3"]
    # detected=True leaves it intact
    assert attribution.gate_all_third_party(attr, detected=True)["all_third_party"] is True
    # None passthrough
    assert attribution.gate_all_third_party(None, True) is None


def test_attribute_all_third_party_flags_it():
    # The real PropertyGuru case: every match is a recognized SDK.
    evidence = [
        _FakeEvidence("sources/io/sentry/android/core/internal/util/RootChecker.java"),
        _FakeEvidence("sources/expo/modules/device/DeviceModule.java"),
        _FakeEvidence("sources/com/google/firebase/crashlytics/internal/common/CommonUtils.java"),
    ]
    result = attribution.attribute_root_evidence(PG, evidence)
    assert result["app_owned"] == 0
    assert result["third_party"] == 3
    assert result["all_third_party"] is True
    assert result["mixed"] is False
    assert result["vendors"] == ["com.google", "expo.modules", "io.sentry"]


def test_attribute_app_own_code_not_flagged_third_party():
    # UnCrackable's root code lives under sg.vantagepoint, not its manifest
    # package - this must be treated as the app's own code, never third-party.
    evidence = [
        _FakeEvidence("sources/sg/vantagepoint/a/c.java"),
        _FakeEvidence("sources/sg/vantagepoint/a/c.java"),
    ]
    result = attribution.attribute_root_evidence("owasp.mstg.uncrackable1", evidence)
    assert result["app_owned"] == 2
    assert result["third_party"] == 0
    assert result["all_third_party"] is False
    assert result["mixed"] is False
    assert result["vendors"] == []


def test_attribute_mixed_app_and_third_party():
    evidence = [
        _FakeEvidence("sources/sg/vantagepoint/util/RootDetection.java"),
        _FakeEvidence("sources/io/sentry/android/core/internal/util/RootChecker.java"),
    ]
    result = attribution.attribute_root_evidence("owasp.mstg.uncrackable1", evidence)
    assert result["app_owned"] == 1
    assert result["third_party"] == 1
    assert result["all_third_party"] is False
    assert result["mixed"] is True


def test_attribute_no_evidence_returns_none():
    assert attribution.attribute_root_evidence(PG, []) is None


def test_attribute_handles_dict_evidence_and_okhttp_as_third_party():
    # Two properties the re-attribute backfill relies on: (1) evidence given as
    # plain dicts (asdict shape of a stored classification_json) is tolerated,
    # not just dataclass Evidence; (2) okhttp3 - the dominant SSL-pinning SDK -
    # is recognized as third-party, so a bundled OkHttp CertificatePinner match
    # is not mislabeled the app's own code.
    evidence = [
        {"signature_id": "ssl_okhttp_certificate_pinner", "file": "sources/okhttp3/internal/tls/CertificateChainCleaner.java", "line_or_offset": 1, "matched_text": "CertificatePinner"},
        {"signature_id": "root_su_binary_paths", "file": "sources/sg/vantagepoint/a/c.java", "line_or_offset": 1, "matched_text": "/system/bin/su"},
    ]
    result = attribution.attribute_root_evidence("com.example.app", evidence)
    assert result["third_party"] == 1          # okhttp3 counted third-party
    assert result["app_owned"] == 1            # sg.vantagepoint counted app-owned
    # vendor_namespace collapses to the top two segments -> "okhttp3.internal"
    assert result["vendors"] == ["okhttp3.internal"]
    assert result["all_third_party"] is False
    assert result["mixed"] is True

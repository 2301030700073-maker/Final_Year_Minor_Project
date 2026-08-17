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


def test_attribute_app_own_package_with_vendor_prefix_is_app_owned():
    # Bug-B parity: an app whose OWN package shares a vendor prefix (com.google)
    # must keep its root-detection code app-owned, never asserted a bundled SDK.
    evidence = [_FakeEvidence("sources/com/google/mybankapp/RootCheck.java")]
    result = attribution.attribute_root_evidence("com.google.mybankapp", evidence)
    assert result["app_owned"] == 1
    assert result["third_party"] == 0
    assert result["all_third_party"] is False
    assert result["vendors"] == []


def test_attribute_known_native_sdk_lib_is_third_party():
    # A bundled native SDK doing root/SSL checks is third-party by basename.
    evidence = [_FakeEvidence("outputs/.../native/lib/x86_64/libsentry.so")]
    result = attribution.attribute_root_evidence("com.example.app", evidence)
    assert result["third_party"] == 1
    assert result["app_owned"] == 0
    assert result["all_third_party"] is True
    assert result["vendors"] == ["libsentry.so"]


def test_attribute_native_lib_not_namespace_derived():
    # Native evidence file is `{abi}/{lib}.so` (native.py) - e.g. the real
    # 'arm64-v8a/libsentry.so'. It carries no package namespace, so attribution
    # keys off the basename and must NEVER try to namespace-derive the abi dir
    # (which would yield the garbage ns 'arm64-v8a'). The reorder checks the
    # native branch before derive_namespace; this pins that behavior: a known
    # native lib reads third-party by basename, an unknown one reads app-owned,
    # and neither is ever attributed via a bogus namespace.
    known = attribution.attribute_root_evidence(
        "com.example.app", [_FakeEvidence("arm64-v8a/libsentry.so")]
    )
    assert known["third_party"] == 1 and known["app_owned"] == 0
    assert known["vendors"] == ["libsentry.so"]
    unknown = attribution.attribute_root_evidence(
        "com.example.app", [_FakeEvidence("arm64-v8a/libmyapp.so")]
    )
    assert unknown["app_owned"] == 1 and unknown["third_party"] == 0


def test_attribute_unknown_native_lib_is_app_owned():
    # An unrecognized .so (e.g. the app's own libfoo.so) is conservatively the
    # app's own native code, never asserted third-party (ADR-0006).
    evidence = [_FakeEvidence("outputs/.../native/lib/x86_64/libfoo.so")]
    result = attribution.attribute_root_evidence("com.example.app", evidence)
    assert result["app_owned"] == 1
    assert result["third_party"] == 0
    assert result["all_third_party"] is False


def test_attribute_mixed_native_and_java_sdk():
    # Native SDK + recognized Java vendor both count third-party; app's own
    # native lib counts app-owned.
    evidence = [
        _FakeEvidence("outputs/.../native/lib/x86_64/libhermes.so"),   # RN SDK
        _FakeEvidence("sources/io/sentry/android/core/RootChecker.java"),
        _FakeEvidence("outputs/.../native/lib/x86_64/libfoo.so"),      # app's own
    ]
    result = attribution.attribute_root_evidence("com.example.app", evidence)
    assert result["third_party"] == 2
    assert result["app_owned"] == 1
    assert result["mixed"] is True
    assert "io.sentry" in result["vendors"] and "libhermes.so" in result["vendors"]


def test_broadened_vendor_prefixes_recognized():
    # The boundary-4 vendor broadening: these SDK namespaces are third-party.
    assert attribution.is_known_third_party("com.tencent.bugly") is True
    assert attribution.is_known_third_party("cn.jpush.android") is True
    assert attribution.is_known_third_party("com.umeng.commonsdk") is True
    assert attribution.is_known_third_party("com.baidu.location") is True
    assert attribution.is_known_third_party("com.alibaba.sdk") is True
    assert attribution.is_known_third_party("org.telegram.messenger") is True
    assert attribution.is_known_third_party("retrofit2") is True
    # Still conservative: an unknown app namespace is NOT third-party.
    assert attribution.is_known_third_party("com.example.myapp") is False


# --- boundary #5: matched-string namespace attribution ---


def test_string_vendor_is_dotted_reference():
    # _is_dotted_reference accepts a fully-qualified class reference but rejects
    # bare identifiers, filesystem paths, and non-Java tokens.
    assert attribution._is_dotted_reference("com.google.android.gms.safetynet.SafetyNetApi") is True
    assert attribution._is_dotted_reference("okhttp3.internal.tls.CertificateChainCleaner") is True
    assert attribution._is_dotted_reference("CertificatePinner") is False        # bare token
    assert attribution._is_dotted_reference("/system/bin/su") is False           # path
    assert attribution._is_dotted_reference("io.sentry:sentry-android") is False  # gradle coord
    assert attribution._is_dotted_reference("com.google .x") is False            # whitespace


def test_string_vendor_recognizes_known_vendor():
    assert attribution._string_vendor("com.google.android.gms.safetynet.SafetyNetApi") == "com.google"
    # vendor_namespace collapses to the top two segments -> "okhttp3.internal".
    assert attribution._string_vendor("okhttp3.internal.tls.CertificateChainCleaner") == "okhttp3.internal"
    # Unknown / non-dotted / None never assert a vendor.
    assert attribution._string_vendor("com.example.myapp.RootCheck") is None
    assert attribution._string_vendor("/system/bin/su") is None
    assert attribution._string_vendor("CertificatePinner") is None
    assert attribution._string_vendor(None) is None


def test_attribute_dex_string_referencing_sdk_is_third_party():
    # Boundary #5: the matched STRING is a SafetyNet API reference living in the
    # app's own class. The file namespace is the app's package, but the string
    # names Google's SDK - a strict reader expects Google flagged, not app-owned.
    evidence = [
        {"file": "sources/com/android/insecurebankv2/util/RootCheck.java",
         "matched_text": "com.google.android.gms.safetynet.SafetyNetApi"},
    ]
    result = attribution.attribute_root_evidence("com.android.insecurebankv2", evidence)
    assert result["third_party"] == 1
    assert result["app_owned"] == 0
    assert result["vendors"] == ["com.google"]
    assert result["all_third_party"] is True


def test_attribute_string_vendor_preserves_app_own_path_string():
    # A path-string match (the app's own su-path check) is NOT a dotted vendor
    # reference, so it still falls through to the file-namespace logic and reads
    # app-owned even when the file sits in a vendor-prefixed package.
    evidence = [
        {"file": "sources/com/google/mybankapp/RootCheck.java",
         "matched_text": "/system/bin/su"},
    ]
    result = attribution.attribute_root_evidence("com.google.mybankapp", evidence)
    assert result["app_owned"] == 1
    assert result["third_party"] == 0
    assert result["vendors"] == []


def test_attribute_string_vendor_overrides_app_package_for_sdk_reference():
    # Bug-B preserved for ordinary code (path string -> app-owned), but an app
    # whose package shares a vendor prefix AND genuinely calls the SDK (the
    # matched string is that SDK's dotted class) is correctly attributed to the
    # SDK - the string is a definite vendor reference, not a shared-prefix guess.
    evidence = [
        {"file": "sources/com/google/mybankapp/RootCheck.java",
         "matched_text": "com.google.android.gms.safetynet.SafetyNetApi"},
    ]
    result = attribution.attribute_root_evidence("com.google.mybankapp", evidence)
    assert result["third_party"] == 1
    assert result["app_owned"] == 0
    assert result["vendors"] == ["com.google"]


def test_attribute_dataclass_evidence_without_matched_text_unchanged():
    # The existing _FakeEvidence dataclass has no matched_text attr; getattr
    # default returns None and the file-namespace logic is untouched.
    evidence = [_FakeEvidence("sources/sg/vantagepoint/a/c.java")]
    result = attribution.attribute_root_evidence("owasp.mstg.uncrackable1", evidence)
    assert result["app_owned"] == 1
    assert result["third_party"] == 0

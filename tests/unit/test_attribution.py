"""Pure attribution logic - no device, no toolchain, unit-testable anywhere."""

from dataclasses import dataclass

from report import attribution
from common import is_under_package


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


def test_derive_namespace_strips_smali_classes_output_dirs():
    # apktool's multi-dex output uses smali_classes2..N as *layout* dirs, not
    # package segments. A root match under smali_classes2/coil/util/ must derive
    # to 'coil.util' (a recognized vendor) so bundled-SDK evidence is not
    # mis-attributed as app-owned (real Jerboa case: smali_classes2.coil.util was
    # never a vendor prefix, so all_third_party stayed False).
    ns = attribution.derive_namespace("smali_classes2/coil/util/-SvgUtils.smali")
    assert ns == "coil.util"
    assert attribution.is_known_third_party(ns) is True
    # single-dex smali/ and higher smali_classes3/ are stripped too
    assert attribution.derive_namespace("smali/coil/util/SvgUtils.smali") == "coil.util"
    assert attribution.derive_namespace("smali_classes3/coil/util/SvgUtils.smali") == "coil.util"
    # a real package segment that merely resembles the marker is not stripped
    assert attribution.derive_namespace("sources/coilclasses/util/A.java") == "coilclasses.util"


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
    # Image loaders (Glide already recognized) - coil.util evidence is bundled
    # third-party, so a root match there is a bundled-SDK signal, not the app's
    # own code (real Jerboa case).
    assert attribution.is_known_third_party("coil.util") is True
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


def test_under_app_package_recognizes_own_subtree():
    # The Bug-B parity guard: a class under the app's OWN package is the app's
    # code even when it shares a vendor prefix, so it must be app-owned - never
    # asserted third-party. Exact match and subtree both qualify.
    assert is_under_package("com.google.mybankapp", "com.google.mybankapp") is True
    assert is_under_package("com.google.mybankapp.x", "com.google.mybankapp") is True
    # a sibling under the same vendor prefix but NOT under the app's package is
    # not app-owned (the app is com.google.mybankapp, not com.google.*)
    assert is_under_package("com.google.other", "com.google.mybankapp") is False
    assert is_under_package("com.android.systemui", "com.android.insecurebankv2") is False
    assert is_under_package(None, "com.example.app") is False
    assert is_under_package("com.example.app", None) is False


def test_is_native_lib_detects_so_paths():
    assert attribution._is_native_lib("lib/arm64-v8a/libsentry.so") is True
    assert attribution._is_native_lib("libfoo.SO") is True  # case-insensitive
    assert attribution._is_native_lib("MainActivity.java") is False
    assert attribution._is_native_lib("") is False


def test_native_vendor_returns_known_bundled_lib_basename():
    # A recognized bundled native SDK returns its basename; an unknown .so is
    # conservatively the app's OWN native code (never asserted third-party), so
    # it returns None - the caller then counts it app-owned.
    assert attribution._native_vendor("/lib/arm64-v8a/libsentry.so") == "libsentry.so"
    assert attribution._native_vendor("libsentry.so") == "libsentry.so"
    assert attribution._native_vendor("/lib/x86_64/libflutter.so") == "libflutter.so"
    assert attribution._native_vendor("/lib/arm64-v8a/libfoo.so") is None  # unknown .so -> app-owned
    assert attribution._native_vendor("MainActivity.java") is None


def test_derive_namespace_modern_jadx_classes_layout():
    # The modern jadx (>= 1.5) multidex-split layout:
    # 'classes-<hash>-<ver>/sources/<pkg>/...'. Both the classes-* prefix AND the
    # 'sources' marker are decompiler layout, not package - so the namespace
    # starts after 'sources'. This layout is the function's reason for existing
    # (jadx >= 1.5 multidex APKs), yet it had no test - a regression here would
    # silently misattribute namespaces on multidex targets.
    ns = attribution.derive_namespace(
        "classes-7c8ed94a0b1d-1.5.6/sources/com/google/android/gms/common/net/zza.java"
    )
    assert ns == "com.google.android.gms.common.net"


def test_derive_namespace_apktool_smali_layout():
    # apktool smali tree: 'smali/<pkg>/...' with a .smali class file excluded.
    ns = attribution.derive_namespace("smali/sg/vantagepoint/a/c.smali")
    assert ns == "sg.vantagepoint.a"


def test_vendor_namespace_collapses_to_top_two_segments():
    # The readable vendor label behind attribution: a full namespace collapses to
    # its top two segments ('io.sentry.android.core.internal.util' -> 'io.sentry').
    # This is what renders as the vendor name in the report's Attribution blocks,
    # yet the function itself had no direct test - a regression here would garble
    # the vendor labels without any suite failing.
    assert attribution.vendor_namespace("io.sentry.android.core.internal.util") == "io.sentry"
    assert attribution.vendor_namespace("com.google.android.gms.ads") == "com.google"
    assert attribution.vendor_namespace("cn.jpush.android") == "cn.jpush"
    assert attribution.vendor_namespace("retrofit2") == "retrofit2"  # single segment is stable


def test_collect_exported_components_resolves_effective_exported():
    # The manifest exported-components extraction (reachable attack surface) had
    # zero direct coverage - the report rendering of its output was tested, but
    # not the resolution logic: the exported attribute, the Android platform
    # intent-filter default, and the provider default. A regression here would
    # silently misreport which components are externally reachable.
    import xml.etree.ElementTree as ET

    from static.manifest import _collect_exported_components

    root = ET.fromstring(
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android"><application>'
        '<activity android:name=".Launcher" android:exported="true"/>'
        '<activity android:name=".Filtered"><intent-filter/></activity>'
        '<activity android:name=".NoFilter"/>'
        '<service android:name=".Svc" android:exported="false"/>'
        '<provider android:name=".Provider"/>'
        '<receiver android:name=""/>'
        "</application></manifest>"
    )
    app = root.find("application")
    flags = {c["name"]: c["exported"] for c in _collect_exported_components(app)}
    assert flags[".Launcher"] is True      # explicit android:exported="true"
    assert flags[".Filtered"] is True      # no attr, but intent-filter -> exported by platform default
    assert flags[".NoFilter"] is False     # no attr, no intent-filter -> not exported
    assert flags[".Svc"] is False          # explicit android:exported="false"
    assert flags[".Provider"] is True      # provider default: exported regardless of intent-filter
    assert "" not in flags                 # name-less component skipped


def test_manifest_device_admin_and_permissions():
    # Device-admin detection: a receiver is a device-admin signature only when it
    # declares BOTH the BIND_DEVICE_ADMIN permission AND an intent-filter. A
    # receiver with the permission but no filter, or a filter without the
    # permission, must not count. Plus ordered permission collection. Both had
    # zero direct coverage.
    import xml.etree.ElementTree as ET

    from static import manifest

    root = ET.fromstring(
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android">'
        '<uses-permission android:name="android.permission.INTERNET"/>'
        '<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>'
        '<receiver android:name=".Admin" android:permission="android.permission.BIND_DEVICE_ADMIN"><intent-filter/></receiver>'
        '<receiver android:name=".NoFilter" android:permission="android.permission.BIND_DEVICE_ADMIN"/>'
        '<receiver android:name=".NoPerm"><intent-filter/></receiver>'
        "</manifest>"
    )
    assert manifest._has_device_admin(root) is True

    plain = ET.fromstring(
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android"><application/></manifest>'
    )
    assert manifest._has_device_admin(plain) is False

    assert manifest._collect_permissions(root) == [
        "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE",
    ]


def test_manifest_nsc_file_resolution(tmp_path):
    # RESID-5C: the report's "is the declared NSC actually present" check. Only
    # an @xml/<name> reference against a decoded res/xml/<name>.xml resolves.
    from pathlib import Path

    from static import manifest

    (tmp_path / "res" / "xml").mkdir(parents=True)
    (tmp_path / "res" / "xml" / "network_security_config.xml").write_text("<network-security-config/>")
    assert manifest._resolve_nsc_file("@xml/network_security_config", tmp_path) is True
    assert manifest._resolve_nsc_file("@xml/missing", tmp_path) is False
    assert manifest._resolve_nsc_file(None, tmp_path) is None      # nothing to resolve
    assert manifest._resolve_nsc_file("@xml/x", None) is None      # no resource root
    assert manifest._resolve_nsc_file("@raw/not_xml", tmp_path) is None  # not @xml/


def test_manifest_nsc_cleartext_policy(tmp_path):
    # The app's default cleartext policy from the resolved NSC base-config,
    # accepting both namespaced and unprefixed attributes (apktool's AndroGoat
    # output uses the unprefixed form) and tolerating unreadable files.
    from static import manifest

    (tmp_path / "res" / "xml").mkdir(parents=True)
    p = tmp_path / "res" / "xml" / "nsc.xml"
    p.write_text('<network-security-config><base-config cleartextTrafficPermitted="true"/></network-security-config>')
    assert manifest._nsc_cleartext_permitted(p) is True
    p.write_text('<network-security-config><base-config cleartextTrafficPermitted="false"/></network-security-config>')
    assert manifest._nsc_cleartext_permitted(p) is False
    p.write_text(
        '<network-security-config xmlns:android="http://schemas.android.com/apk/res/android">'
        '<base-config android:cleartextTrafficPermitted="true"/></network-security-config>'
    )
    assert manifest._nsc_cleartext_permitted(p) is True
    p.write_text('<network-security-config/>')
    assert manifest._nsc_cleartext_permitted(p) is None  # no base-config policy
    assert manifest._nsc_cleartext_permitted(None) is None
    bad = tmp_path / "bad.xml"
    bad.write_text("not xml")
    assert manifest._nsc_cleartext_permitted(bad) is None  # unparseable


def test_manifest_resource_id_int():
    # The integer key behind a resource reference, from both hex and decimal
    # forms. Had zero direct coverage.
    from static import manifest
    assert manifest._resource_id_int("@0x7f030000") == int("7f030000", 16)
    assert manifest._resource_id_int("@2131230736") == int("2131230736", 16)


def test_manifest_resolve_nsc_path(tmp_path):
    # _resolve_nsc_path mirrors _resolve_nsc_file but returns the decoded path.
    from pathlib import Path

    from static import manifest

    (tmp_path / "res" / "xml").mkdir(parents=True)
    target = tmp_path / "res" / "xml" / "nsc.xml"
    target.write_text("<network-security-config/>")
    assert manifest._resolve_nsc_path("@xml/nsc", tmp_path) == target
    assert manifest._resolve_nsc_path("@xml/missing", tmp_path) is None
    assert manifest._resolve_nsc_path(None, tmp_path) is None
    assert manifest._resolve_nsc_path("@raw/x", tmp_path) is None


def test_manifest_resources_complete(tmp_path):
    # G9/H2: every referenced resource resolved cleanly, or the manifest surface
    # degrades to partial - it must never certify a clean SSL surface over a
    # config it never actually read.
    from static import manifest

    (tmp_path / "res" / "xml").mkdir(parents=True)
    good = tmp_path / "res" / "xml" / "nsc.xml"
    good.write_text("<network-security-config/>")
    bad = tmp_path / "res" / "xml" / "bad.xml"
    bad.write_text("not xml")
    assert manifest._resources_complete(None, tmp_path) is True          # nothing referenced
    assert manifest._resources_complete("@xml/nsc", tmp_path) is True    # present and parses
    assert manifest._resources_complete("@xml/missing", tmp_path) is False
    assert manifest._resources_complete("@xml/bad", tmp_path) is False   # unparseable
    assert manifest._resources_complete("@xml/nsc", None) is False       # NSC declared, no tree
    assert manifest._resources_complete("@7F0E0000", tmp_path) is False  # raw id, unresolvable
    assert manifest._resources_complete("@raw/x", tmp_path) is True      # non-@xml ref


def test_manifest_count_stored_certs(tmp_path):
    # Stored-cert trust anchors weaken pinning - the count feeds the SSL signal.
    # Counts system/user/@raw sources from both namespaced and unprefixed src.
    from static import manifest

    assert manifest._count_stored_certs(None) == 0
    p = tmp_path / "nsc.xml"
    p.write_text(
        '<network-security-config><trust-anchors>'
        '<certificates src="system"/><certificates src="user"/>'
        '<certificates src="@raw/extra"/>'
        '<certificates src="unknown"/>'
        "</trust-anchors></network-security-config>"
    )
    assert manifest._count_stored_certs(p) == 3
    p.write_text(
        '<network-security-config xmlns:android="http://schemas.android.com/apk/res/android">'
        '<trust-anchors><certificates android:src="system"/></trust-anchors></network-security-config>'
    )
    assert manifest._count_stored_certs(p) == 1


def test_is_dotted_reference_rejects_invalid_segments():
    # attribution.py:95, 97: _is_dotted_reference must reject segments that
    # start with a non-alpha/_$ char (line 95) or contain a non-alnum/_$ char
    # (line 97). The sibling test covered the well-formed and whitespace forms;
    # these two invalid-segment branches were uncovered.
    assert attribution._is_dotted_reference("com.1abc") is False   # digit-start seg
    assert attribution._is_dotted_reference("com..x") is False     # empty segment
    assert attribution._is_dotted_reference("com.a-b") is False    # hyphen in segment


def test_attribute_evidence_without_file_counts_app_owned():
    # attribution.py:176-178: an evidence item with no file (empty/missing) is
    # not attributable to any namespace, so it conservatively counts as the
    # app's own code (ADR-0006 - never assert third-party without a name).
    result = attribution.attribute_root_evidence(PG, [_FakeEvidence(file="")])
    assert result is not None
    assert result["app_owned"] == 1
    assert result["third_party"] == 0


def test_vendor_platform1_android_platform_tree_is_vendor_not_app_code():
    # VENDOR-PLATFORM1. A corpus-wide survey of every namespace holding classes
    # that was NOT recognized as a vendor put the `android.*` tree at the top by
    # app count (android.app/view/window/graphics/text/os/util/media/location/
    # telephony/print/hardware.biometrics/view.translation across 4 unrelated
    # APKs). `android.support` and `android.arch` were already excluded but their
    # PARENT never was, so the rest of the platform tree was read as the app's
    # own code - the GAP-1/Paytm false-positive direction, whose worst case is
    # that android.security.net.config IS the framework's network-security-config
    # (pin sets, trust anchors) and android.net.http.X509TrustManagerExtensions /
    # android.webkit carry the platform's TLS and WebView cert handling.
    for ns in ("android.app", "android.view", "android.window", "android.os",
               "android.security.net.config", "android.net.http", "android.webkit",
               "dalvik.system"):
        assert attribution.is_known_third_party(ns) is True, ns
    # Already-excluded leaves keep working through the new parent.
    assert attribution.is_known_third_party("android.support.v4.app") is True
    assert attribution.is_known_third_party("android.arch.lifecycle") is True
    # `androidx` is a DIFFERENT namespace, not a child of `android` - the prefix
    # test is `ns == p or ns.startswith(p + ".")`, so this must hold on its own
    # entry rather than by accident.
    assert attribution.is_known_third_party("androidx.work") is True


def test_vendor_platform1_leaves_javax_net_ssl_app_owned_on_purpose():
    # The deliberate boundary on VENDOR-PLATFORM1: `java`/`javax` are NOT taken as
    # whole trees. javax.net.ssl is exactly where a VENDORED custom TrustManager
    # gets rendered, so excluding it would convert a real app-owned pinning class
    # into a confident false negative - ADR-0006's unsafe direction. Only the shim
    # leaves the survey actually observed are vendor. (test_dynload's VENDOR-ARCH1
    # test encodes the same rule from the dynamic-loading side; this pins it at the
    # taxonomy level so a future "just add bare javax" edit fails here first.)
    assert attribution.is_known_third_party("javax.net.ssl") is False
    assert attribution.is_known_third_party("java.security") is False
    assert attribution.is_known_third_party("javax.inject") is True
    assert attribution.is_known_third_party("javax.annotation.meta") is True
    assert attribution.is_known_third_party("java.util.function") is True
    # com.android.* stays app-owned: com.android.insecurebankv2 is a real app in
    # this corpus, and com.android.contacts is the registered negative control.
    assert attribution.is_known_third_party("com.android") is False
    assert attribution.is_known_third_party("com.android.insecurebankv2") is False


def test_vendor_oss1_measured_false_positive_namespaces_are_vendor():
    # VENDOR-OSS1. These two were not speculative additions - each was measured
    # to be feeding a scored match that read as the app's own logic:
    #   org.webrtc  - root's emulator_detection matched `const-string v1,
    #                 "goldfish"` in org/webrtc/voiceengine/WebRtcAudioUtils.smali.
    #                 WebRTC probes for the emulator to route around its broken
    #                 audio path; a compatibility check, not anti-tampering.
    #   org.slf4j / io.noties - ssl's weak-tier ktor_tls_pinning matched the jadx
    #                 `import io.ktor.client.plugins...` line inside slf4j's
    #                 Util.java and markwon's RegistryImpl.java, pointing the
    #                 evidence at a logging and a markdown library.
    for ns in ("org.webrtc.voiceengine", "org.slf4j.helpers", "io.noties.markwon"):
        assert attribution.is_known_third_party(ns) is True, ns
    # The TLS-bearing libraries are the highest-value part: their cert code must
    # not read as the app's pinning. The app's own call INTO them still scores.
    for ns in ("org.chromium.net", "org.conscrypt", "org.apache.http", "com.fasterxml.jackson"):
        assert attribution.is_known_third_party(ns) is True, ns


def test_vendor_oss1_rejects_short_r8_namespaces_to_avoid_skipping_app_code():
    # The R8-collision guard that shaped the list. Marking a namespace vendor
    # makes signatures.scan SKIP the file, so a prefix that an obfuscator could
    # emit would silently drop app code from the primary scan (Bug-B's confident
    # false negative). RxJava 1's real package is the 2-char `rx`, which R8 can
    # and does generate - so `io.reactivex` is listed and bare `rx` deliberately
    # is not. Every short obfuscated namespace observed in this corpus must stay
    # app-owned.
    assert attribution.is_known_third_party("io.reactivex.rxjava3") is True
    for ns in ("rx", "rx.exceptions", "ga", "ha", "y9", "a", "b0", "za"):
        assert attribution.is_known_third_party(ns) is False, ns


def test_vendor_additions_still_honor_the_app_package_override():
    # Bug-B parity: a namespace is third-party only when it is a recognized vendor
    # AND is not under the app's own declared package. Every prefix added here
    # inherits that, so the pathological app that declares one as its own package
    # keeps its own code scanned.
    from common import is_third_party_file
    assert is_third_party_file("org.webrtc.internal", None) is True
    assert is_third_party_file("org.webrtc.internal", "org.webrtc") is False
    assert is_third_party_file("android.foo", "android.foo") is False
    assert is_third_party_file("dagger.internal", "dagger") is False

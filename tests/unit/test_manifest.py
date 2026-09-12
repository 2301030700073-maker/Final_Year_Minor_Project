from pathlib import Path

import pytest

from static.manifest import parse_manifest

MANIFEST_WITH_NSC = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="owasp.mstg.uncrackable1">
    <application android:debuggable="false"
        android:networkSecurityConfig="@xml/network_security_config">
    </application>
</manifest>
"""

MANIFEST_MINIMAL = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="owasp.mstg.uncrackable1">
    <application>
    </application>
</manifest>
"""


def test_parse_manifest_extracts_network_security_config(tmp_path):
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path)

    assert info.debuggable is False
    assert info.network_security_config == "@xml/network_security_config"


def test_parse_manifest_defaults_when_attributes_absent(tmp_path):
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_MINIMAL)

    info = parse_manifest(manifest_path)

    assert info.debuggable is False
    assert info.network_security_config is None


def test_parse_manifest_flags_missing_application_element(tmp_path):
    # 5-2: a manifest with no <application> element must not silently look like
    # a real read - the consumer needs to know the fields are defaults.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="x.y.z"/>\n'
    )

    info = parse_manifest(manifest_path)

    assert info.application_present is False
    assert info.debuggable is False
    assert info.network_security_config is None


def test_parse_manifest_accepts_noncanonical_true_boolean(tmp_path):
    # RESID-5B: True/TRUE and "1" are legal non-canonical boolean encodings in
    # Android XML but a strict == "true" read them as False - a debuggable app
    # silently reported as not debuggable.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="x.y.z">\n'
        '    <application android:debuggable="TRUE"/>\n'
        '</manifest>\n'
    )

    info = parse_manifest(manifest_path)

    assert info.debuggable is True


def test_parse_manifest_accepts_one_boolean(tmp_path):
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="x.y.z">\n'
        '    <application android:debuggable="1"/>\n'
        '</manifest>\n'
    )

    assert parse_manifest(manifest_path).debuggable is True


def test_parse_manifest_resolves_nsc_file_presence(tmp_path):
    # RESID-5C: with a resource_root, the @xml/<name> reference is resolved to
    # res/xml/<name>.xml so the report can say whether it exists.
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    (resource_root / "res" / "xml" / "network_security_config.xml").write_text(
        "<network-security-config/>"
    )
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, resource_root)

    assert info.nsc_file_present is True


def test_parse_manifest_flags_missing_nsc_file(tmp_path):
    # RESID-5C: declared but absent - the report must not present a pinning
    # config as scanned when the referenced file doesn't exist in the output.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, tmp_path)  # no res/xml/... under tmp_path

    assert info.nsc_file_present is False


def test_parse_manifest_nsc_presence_is_none_without_resource_root(tmp_path):
    # No resource root to resolve against - nothing to assert, stays None (the
    # pre-existing parse path is unchanged for unit tests that only pass a path).
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    assert parse_manifest(manifest_path).nsc_file_present is None


def test_parse_manifest_rejects_wrong_root_tag(tmp_path):
    # 5-4: a non-manifest XML used to silently yield defaults - fail loudly.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text("<not-a-manifest/>")

    with pytest.raises(ValueError, match="manifest"):
        parse_manifest(manifest_path)


def test_parse_manifest_counts_stored_certs_from_nsc_file(tmp_path):
    # ADR-0008 item 7: stored-certificate trust anchors live in the
    # networkSecurityConfig XML, not the manifest - parse the resolved NSC file.
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    (resource_root / "res" / "xml" / "network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<network-security-config xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '    <trust-anchors>\n'
        '        <certificates android:src="system"/>\n'
        '        <certificates android:src="user"/>\n'
        '    </trust-anchors>\n'
        '</network-security-config>\n'
    )
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, resource_root)

    assert info.stored_certs == 2


def test_debug_overrides_trust_anchors_excluded_from_stored_certs(tmp_path):
    # <debug-overrides> applies ONLY on a debuggable build; it is inert in
    # production. A trust anchor declared inside it is not production SSL attack
    # surface, so it must NOT be counted as a stored cert - counting it would
    # surface a debug-only trust anchor as a real production SSL weakness (a
    # false signal, the same class the nsc_debug_overrides precision fix guards).
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    (resource_root / "res" / "xml" / "network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<network-security-config>\n'
        '    <base-config cleartextTrafficPermitted="false"/>\n'
        '    <trust-anchors>\n'
        '        <certificates src="system"/>\n'          # production: counted
        '    </trust-anchors>\n'
        '    <debug-overrides>\n'
        '        <trust-anchors>\n'
        '            <certificates src="user"/>\n'         # debug-only: excluded
        '        </trust-anchors>\n'
        '    </debug-overrides>\n'
        '</network-security-config>\n'
    )
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, resource_root)

    # only the production trust anchor counts, not the debug-overrides one
    assert info.stored_certs == 1


def test_debug_overrides_cleartext_domains_excluded(tmp_path):
    # A <domain-config cleartextTrafficPermitted="true"> under <debug-overrides>
    # exposes its domain to cleartext ONLY on a debug build - it is not a
    # production cleartext attack-surface domain and must not be reported as one.
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    (resource_root / "res" / "xml" / "network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<network-security-config>\n'
        '    <base-config cleartextTrafficPermitted="false"/>\n'
        '    <domain-config cleartextTrafficPermitted="true">\n'
        '        <domain>prod.example.com</domain>\n'      # production: reported
        '    </domain-config>\n'
        '    <debug-overrides>\n'
        '        <domain-config cleartextTrafficPermitted="true">\n'
        '            <domain>debug.local</domain>\n'        # debug-only: excluded
        '        </domain-config>\n'
        '    </debug-overrides>\n'
        '</network-security-config>\n'
    )
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, resource_root)

    assert info.cleartext_domains == ["prod.example.com"]


def test_parse_manifest_counts_stored_certs_from_unprefixed_src(tmp_path):
    # Regression: apktool's decoded NSC emits <certificates src="system"/> with
    # the `src` attribute UNPREFIXED (not android:src). _count_stored_certs must
    # fall back to the bare attribute, exactly as the cleartextTrafficPermitted
    # reader does. Before the fix this silently returned 0 for a 2-cert NSC.
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    (resource_root / "res" / "xml" / "network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<network-security-config xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '    <trust-anchors>\n'
        '        <certificates src="system"/>\n'
        '        <certificates src="user"/>\n'
        '    </trust-anchors>\n'
        '</network-security-config>\n'
    )
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, resource_root)

    assert info.stored_certs == 2


def test_parse_manifest_zero_stored_certs_when_no_nsc(tmp_path):
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_MINIMAL)

    info = parse_manifest(manifest_path)

    assert info.stored_certs == 0


def test_parse_manifest_detects_device_admin(tmp_path):
    # A <receiver> declaring BIND_DEVICE_ADMIN => device_admin True.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="x.y.z">\n'
        '    <application>\n'
        '        <receiver android:name=".AdminReceiver"\n'
        '            android:permission="android.permission.BIND_DEVICE_ADMIN">\n'
        '            <intent-filter>\n'
        '                <action android:name="android.app.action.DEVICE_ADMIN_ENABLED"/>\n'
        '            </intent-filter>\n'
        '        </receiver>\n'
        '    </application>\n'
        '</manifest>\n'
    )

    info = parse_manifest(manifest_path)

    assert info.device_admin is True


def test_parse_manifest_no_device_admin_by_default(tmp_path):
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_MINIMAL)

    assert parse_manifest(manifest_path).device_admin is False


def test_parse_manifest_resources_incomplete_when_nsc_missing(tmp_path):
    # H2: a declared-but-missing NSC must degrade resources_complete to False,
    # so the manifest surface goes partial and can't certify a confident SSL
    # negative - not silently read as a clean fully_analyzed scan.
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)  # references @xml/network_security_config

    info = parse_manifest(manifest_path, resource_root)

    assert info.resources_complete is False


def test_parse_manifest_provider_default_is_exported_true(tmp_path):
    # Android platform default: a <provider> with no android:exported is
    # exported=TRUE regardless of intent-filter (unlike activity/service/
    # receiver, which default to exported only when they declare an
    # intent-filter). Reporting an unset provider as false under-reports an
    # externally reachable content-provider surface.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="x.y.z">\n'
        '    <application>\n'
        '        <provider android:name=".DataProvider" android:authorities="x.y.z.data"/>\n'
        '        <activity android:name=".HiddenActivity"/>\n'
        '        <provider android:name=".PrivateProvider" android:exported="false"\n'
        '            android:authorities="x.y.z.private"/>\n'
        '    </application>\n'
        '</manifest>\n'
    )

    comps = {c["name"]: c["exported"] for c in parse_manifest(manifest_path).exported_components}

    assert comps[".DataProvider"] is True      # unset provider -> reachable
    assert comps[".HiddenActivity"] is False   # activity, no intent-filter -> not exported
    assert comps[".PrivateProvider"] is False  # explicit false honored


def test_parse_manifest_resources_incomplete_when_nsc_malformed(tmp_path):
    # H2: a present-but-unparseable NSC also degrades coverage; the malformed
    # config is never swallowed into stored_certs=0 with a clean surface.
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    (resource_root / "res" / "xml" / "network_security_config.xml").write_text(
        '<network-security-config><trust-anchors><!-- truncated'  # not well-formed
    )
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, resource_root)

    assert info.resources_complete is False
    assert info.stored_certs == 0


def test_parse_manifest_resources_complete_when_nsc_resolves(tmp_path):
    # H3 counterpart: a present + well-formed NSC is a complete resource read.
    resource_root = tmp_path / "apktool"
    (resource_root / "res" / "xml").mkdir(parents=True)
    (resource_root / "res" / "xml" / "network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<network-security-config xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '    <trust-anchors>\n'
        '        <certificates android:src="system"/>\n'
        '    </trust-anchors>\n'
        '</network-security-config>\n'
    )
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path, resource_root)

    assert info.resources_complete is True
    assert info.stored_certs == 1


def test_parse_manifest_apk_reads_binary_manifest():
    # Limitation 9: parse the BINARY AndroidManifest.xml straight from an APK
    # (pyaxmlparser), with no apktool decode - the manifest stage is decoupled
    # from apktool's full resource/smali decode. Verified against a real APK
    # when one is present in the repo's APK_Test dir; skipped elsewhere so the
    # unit suite stays runnable anywhere (NFR-6/NFR-17).
    from static.manifest import parse_manifest_apk

    repo = Path(__file__).resolve().parents[2]
    apk = next((repo / "APK_Test").glob("*.apk"), None)
    if apk is None:
        pytest.skip("no real APK present to parse the binary manifest from")

    info = parse_manifest_apk(apk)

    # A real APK always has a package + manifest root (validated in the parser).
    assert isinstance(info.package_name, str) and info.package_name
    assert info.network_security_config is None or isinstance(info.network_security_config, str)
    assert isinstance(info.permissions, list)


def test_parse_manifest_apk_debuggable_matches_android_encoding(tmp_path, monkeypatch):
    # The binary manifest uses the SAME android namespace the decoded path reads,
    # so non-canonical booleans ("1") normalize identically - the shared
    # _parse_manifest_root guarantees the two paths cannot drift. Build a fake
    # AXMLPrinter returning a decoded-format root and confirm the APK path maps
    # it through the same parser as parse_manifest.
    from static.manifest import parse_manifest_apk

    class FakeZip:
        def __enter__(self):
            return self
        def __exit__(self, *a):
            return False
        def read(self, name):
            assert name == "AndroidManifest.xml"
            return b"<binary>"
    class FakePrinter:
        def __init__(self, data):
            self._data = data

        def get_xml_obj(self):
            import xml.etree.ElementTree as ET
            return ET.fromstring(
                '<manifest xmlns:android="http://schemas.android.com/apk/res/android" '
                'package="com.example"><application android:debuggable="1"/></manifest>'
            )

    monkeypatch.setattr("zipfile.ZipFile", lambda *a, **k: FakeZip())
    # parse_manifest_apk imports AXMLPrinter lazily inside the function; patch the
    # pyaxmlparser symbol it actually binds.
    import pyaxmlparser.axmlprinter as ap
    monkeypatch.setattr(ap, "AXMLPrinter", FakePrinter)

    info = parse_manifest_apk(Path("fake.apk"))
    assert info.debuggable is True          # "1" normalized to True
    assert info.package_name == "com.example"


def test_parse_manifest_apk_resolves_resource_id_nsc(tmp_path, monkeypatch):
    # A8: the BINARY manifest carries networkSecurityConfig as a raw resource ID
    # (@7F0E0000), not @xml/<name>. Without resolution it read as an opaque ID
    # that _resources_complete treated as "nothing referenced" - a real NSC was
    # silently missed and the SSL surface could certify clean. The resolver maps
    # the ID to @xml/network_security_config via the APK resource table. With no
    # res tree the name resolves but the surface honestly degrades to partial.
    from static.manifest import parse_manifest_apk

    class FakeZip:
        def __enter__(self): return self
        def __exit__(self, *a): return False
        def read(self, name):
            assert name == "AndroidManifest.xml"
            return b"<binary>"
    class FakePrinter:
        def __init__(self, data): self._data = data
        def get_xml_obj(self):
            import xml.etree.ElementTree as ET
            return ET.fromstring(
                '<manifest xmlns:android="http://schemas.android.com/apk/res/android" '
                'package="owasp.sat.agoat">'
                '<application android:networkSecurityConfig="@7F0E0000"/></manifest>')
    class FakeTable:
        def get_resource_xml_name(self, rid):
            assert rid == 0x7F0E0000
            return "@owasp.sat.agoat:xml/network_security_config"
    class FakeAPK:
        def __init__(self, *a, **k): pass
        def get_android_resources(self): return FakeTable()

    monkeypatch.setattr("zipfile.ZipFile", lambda *a, **k: FakeZip())
    import pyaxmlparser.axmlprinter as ap
    monkeypatch.setattr(ap, "AXMLPrinter", FakePrinter)
    import pyaxmlparser as px
    monkeypatch.setattr(px, "APK", FakeAPK)

    info = parse_manifest_apk(Path("fake.apk"))
    assert info.network_security_config == "@xml/network_security_config"
    assert info.resources_complete is False   # no res tree to read the file


def test_parse_manifest_apk_resolves_0x_prefixed_resource_id_nsc(tmp_path, monkeypatch):
    # A8: the binary manifest may reference its NSC as the @0x... resource-ID
    # spelling (legal per _RESOURCE_ID_NSC). The resolver must strip the 0x prefix
    # (_resource_id_int) before querying the resource table, so both spellings
    # resolve to the same integer. The plain @7F0E0000 form is covered above; this
    # pins the 0x-prefix branch of _resource_id_int, which nothing else reaches.
    from static.manifest import parse_manifest_apk

    class FakeZip:
        def __enter__(self): return self
        def __exit__(self, *a): return False
        def read(self, name):
            assert name == "AndroidManifest.xml"
            return b"<binary>"
    class FakePrinter:
        def __init__(self, data): self._data = data
        def get_xml_obj(self):
            import xml.etree.ElementTree as ET
            return ET.fromstring(
                '<manifest xmlns:android="http://schemas.android.com/apk/res/android" '
                'package="owasp.sat.agoat">'
                '<application android:networkSecurityConfig="@0x7f0e0000"/></manifest>')
    class FakeTable:
        def get_resource_xml_name(self, rid):
            assert rid == 0x7F0E0000   # the 0x prefix was stripped, same int
            return "@owasp.sat.agoat:xml/network_security_config"
    class FakeAPK:
        def __init__(self, *a, **k): pass
        def get_android_resources(self): return FakeTable()

    monkeypatch.setattr("zipfile.ZipFile", lambda *a, **k: FakeZip())
    import pyaxmlparser.axmlprinter as ap
    monkeypatch.setattr(ap, "AXMLPrinter", FakePrinter)
    import pyaxmlparser as px
    monkeypatch.setattr(px, "APK", FakeAPK)

    info = parse_manifest_apk(Path("fake.apk"))
    assert info.network_security_config == "@xml/network_security_config"
    assert info.resources_complete is False   # no res tree to read the file


def test_parse_manifest_apk_nsc_pass_through_when_not_resource_id(tmp_path, monkeypatch):
    # A8: the binary-manifest resolver must pass through a NSC that is NOT a raw
    # resource ID (e.g. an already-readable @xml/<name> reference) unchanged -
    # it must not treat a non-ID reference as opaque. Covers the nsc_resolver
    # early-return branch (manifest.py:128), which real coverage proved untested.
    from static.manifest import parse_manifest_apk

    class FakeZip:
        def __enter__(self): return self
        def __exit__(self, *a): return False
        def read(self, name):
            assert name == "AndroidManifest.xml"
            return b"<binary>"
    class FakePrinter:
        def __init__(self, data): self._data = data
        def get_xml_obj(self):
            import xml.etree.ElementTree as ET
            return ET.fromstring(
                '<manifest xmlns:android="http://schemas.android.com/apk/res/android" '
                'package="owasp.sat.agoat">'
                '<application android:networkSecurityConfig="@xml/network_security_config"/></manifest>')

    monkeypatch.setattr("zipfile.ZipFile", lambda *a, **k: FakeZip())
    import pyaxmlparser.axmlprinter as ap
    monkeypatch.setattr(ap, "AXMLPrinter", FakePrinter)

    info = parse_manifest_apk(Path("fake.apk"))
    # non-ID NSC passed through unchanged, not left as / resolved to something else
    assert info.network_security_config == "@xml/network_security_config"


def test_parse_manifest_apk_unresolvable_resource_id_nsc_degrades_to_opaque(tmp_path, monkeypatch):
    # A8 honesty: when the resource table either yields a name with no :xml/ part
    # (manifest.py:141) or raises while resolving (manifest.py:134-135), the NSC
    # stays as the opaque raw ID and the surface degrades to partial - it is a
    # real NSC we cannot read, never "no NSC". Real coverage proved both branches
    # untested (only the successful :xml/ resolution path was).
    from static.manifest import parse_manifest_apk

    class FakeZip:
        def __enter__(self): return self
        def __exit__(self, *a): return False
        def read(self, name):
            return b"<binary>"
    class FakePrinter:
        def __init__(self, data): self._data = data
        def get_xml_obj(self):
            import xml.etree.ElementTree as ET
            return ET.fromstring(
                '<manifest xmlns:android="http://schemas.android.com/apk/res/android" '
                'package="owasp.sat.agoat">'
                '<application android:networkSecurityConfig="@7F0E0000"/></manifest>')

    monkeypatch.setattr("zipfile.ZipFile", lambda *a, **k: FakeZip())
    import pyaxmlparser.axmlprinter as ap
    monkeypatch.setattr(ap, "AXMLPrinter", FakePrinter)
    import pyaxmlparser as px

    # case 1: resolved name lacks the :xml/ separator -> None (stays opaque)
    class NoXmlNameTable:
        def get_resource_xml_name(self, rid): return "not_a_resource_path"
    class NoXmlNameAPK:
        def __init__(self, *a, **k): pass
        def get_android_resources(self): return NoXmlNameTable()
    monkeypatch.setattr(px, "APK", NoXmlNameAPK)
    info = parse_manifest_apk(Path("fake.apk"))
    assert info.network_security_config == "@7F0E0000"   # unresolved, opaque
    assert info.resources_complete is False

    # case 2: the resource table raises -> caught, NSC stays opaque
    class BoomAPK:
        def __init__(self, *a, **k): pass
        def get_android_resources(self): raise RuntimeError("no table")
    monkeypatch.setattr(px, "APK", BoomAPK)
    info = parse_manifest_apk(Path("fake.apk"))
    assert info.network_security_config == "@7F0E0000"
    assert info.resources_complete is False


def test_parse_manifest_apk_resource_id_nsc_reads_resolved_file(tmp_path, monkeypatch):
    # A8 with an apktool res tree present: the resolved @xml/network_security_config
    # must find the decoded file, count it as read (resources_complete=True) and
    # surface its cleartext policy - the config that a raw opaque ID previously hid.
    from static.manifest import parse_manifest_apk

    class FakeZip:
        def __enter__(self): return self
        def __exit__(self, *a): return False
        def read(self, name):
            assert name == "AndroidManifest.xml"
            return b"<binary>"
    class FakePrinter:
        def __init__(self, data): self._data = data
        def get_xml_obj(self):
            import xml.etree.ElementTree as ET
            return ET.fromstring(
                '<manifest xmlns:android="http://schemas.android.com/apk/res/android" '
                'package="owasp.sat.agoat">'
                '<application android:networkSecurityConfig="@7F0E0000"/></manifest>')
    class FakeTable:
        def get_resource_xml_name(self, rid):
            return "@owasp.sat.agoat:xml/network_security_config"
    class FakeAPK:
        def __init__(self, *a, **k): pass
        def get_android_resources(self): return FakeTable()

    monkeypatch.setattr("zipfile.ZipFile", lambda *a, **k: FakeZip())
    import pyaxmlparser.axmlprinter as ap
    monkeypatch.setattr(ap, "AXMLPrinter", FakePrinter)
    import pyaxmlparser as px
    monkeypatch.setattr(px, "APK", FakeAPK)

    resroot = tmp_path / "apktool"
    (resroot / "res" / "xml").mkdir(parents=True)
    (resroot / "res" / "xml" / "network_security_config.xml").write_text(
        '<network-security-config xmlns:android="http://schemas.android.com/apk/res/android">'
        '<base-config cleartextTrafficPermitted="true"/>'
        '</network-security-config>'
    )

    info = parse_manifest_apk(Path("fake.apk"), resroot)
    assert info.network_security_config == "@xml/network_security_config"
    assert info.nsc_file_present is True
    assert info.resources_complete is True
    assert info.cleartext_permitted is True


def test_resources_complete_flags_opaque_resource_id_nsc(tmp_path):
    # A8 honesty: an NSC referenced as a raw resource ID that is NOT resolved to
    # a readable @xml/<name> (decoded path, or resolver failure) must degrade the
    # surface to partial - it is a real NSC we cannot read, never "no NSC".
    from static.manifest import _resources_complete

    resroot = tmp_path  # a res tree IS present, yet the ID is opaque
    assert _resources_complete("@7F0E0000", resroot) is False
    assert _resources_complete("@0x7f0e0000", resroot) is False


def test_parse_manifest_apk_resolves_real_resource_id_nsc():
    # A8 against a real APK: if the binary manifest declares its NSC as a raw
    # resource ID (AndroGoat does - @7F0E0000), it must be resolved to the
    # readable @xml/<name> form, never left as an opaque ID. Skipped when no
    # real APK is present so the unit suite stays runnable anywhere (NFR).
    from static.manifest import parse_manifest_apk, _RESOURCE_ID_NSC

    repo = Path(__file__).resolve().parents[2]
    apk = next((repo / "APK_Test").glob("*.apk"), None)
    if apk is None:
        pytest.skip("no real APK present to parse the binary manifest from")

    info = parse_manifest_apk(apk)
    if info.network_security_config is not None and _RESOURCE_ID_NSC.match(info.network_security_config):
        pytest.fail(f"resource-ID NSC left unresolved on {apk.name}: {info.network_security_config!r}")


def test_resources_complete_degrades_when_nsc_without_resource_root(tmp_path):
    # Honesty fix: an NSC is declared but no resource tree is provided to resolve
    # it against (reachable via the binary-manifest path when apktool output is
    # absent). This must degrade the manifest surface to partial (False), not
    # certify clean (True) - otherwise a clean SSL surface whose NSC was never
    # read would be certified (ADR-0006). The decoded path, run without a
    # resource root, now reflects the same honest degradation.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text(MANIFEST_WITH_NSC)

    info = parse_manifest(manifest_path)  # resource_root=None
    assert info.resources_complete is False
    assert info.network_security_config == "@xml/network_security_config"


# --- APKTOOL-XML1: distinguish a DECODED manifest from a binary AXML ---------
# An apktool run that cannot decode the resource table - the `apktool d --no-res`
# smali fallback (decompile.py) - still writes <apktool_dir>/AndroidManifest.xml,
# but its bytes are the APK's original BINARY AXML. The CLI used bare
# `manifest_path.exists()` to choose the decoded parser, so a binary manifest was
# handed to ET.parse and failed the whole manifest stage with ParseError while the
# binary reader (parse_manifest_apk) would have read the same APK fine.

def _binary_axml_bytes() -> bytes:
    """The leading bytes of a real binary AXML: the little-endian RES_XML_TYPE
    (0x0003) resChunk_header aapt2 emits. Enough shape for a content sniff."""
    return b"\x03\x00\x08\x00" + b"\x70\x06\x00\x00" + b"\x00" * 16


def test_is_decoded_manifest_accepts_a_real_decoded_manifest(tmp_path):
    from static.manifest import is_decoded_manifest

    p = tmp_path / "AndroidManifest.xml"
    p.write_text(MANIFEST_WITH_NSC, encoding="utf-8")
    assert is_decoded_manifest(p) is True


def test_is_decoded_manifest_rejects_binary_axml(tmp_path):
    # The regression: this is what apktool's --no-res fallback writes, and what
    # used to be fed to ET.parse.
    from static.manifest import is_decoded_manifest

    p = tmp_path / "AndroidManifest.xml"
    p.write_bytes(_binary_axml_bytes())
    assert is_decoded_manifest(p) is False


def test_binary_axml_manifest_would_fail_the_decoded_parser(tmp_path):
    # Establishes the defect the predicate exists to prevent, so the test cannot
    # silently pass on a future refactor that re-widens the decoded-path call.
    import xml.etree.ElementTree as ET

    p = tmp_path / "AndroidManifest.xml"
    p.write_bytes(_binary_axml_bytes())
    with pytest.raises(ET.ParseError):
        parse_manifest(p)


def test_is_decoded_manifest_rejects_empty_and_missing(tmp_path):
    from static.manifest import is_decoded_manifest

    empty = tmp_path / "AndroidManifest.xml"
    empty.write_bytes(b"")
    assert is_decoded_manifest(empty) is False
    assert is_decoded_manifest(tmp_path / "does-not-exist.xml") is False


def test_is_decoded_manifest_accepts_utf8_bom_and_leading_space(tmp_path):
    from static.manifest import is_decoded_manifest

    bom = tmp_path / "bom.xml"
    bom.write_bytes(b"\xef\xbb\xbf" + MANIFEST_MINIMAL.encode("utf-8"))
    assert is_decoded_manifest(bom) is True

    padded = tmp_path / "padded.xml"
    padded.write_bytes(b"\n   " + MANIFEST_MINIMAL.encode("utf-8"))
    assert is_decoded_manifest(padded) is True


def test_binary_manifest_input_falls_back_to_the_apk_reader(tmp_path):
    # End-to-end shape of the fix: given a binary manifest on disk, the CLI's
    # predicate routes to parse_manifest_apk, which reads the manifest from the
    # APK itself. Assert the two halves compose - the predicate says "not
    # decoded" and the fallback reader is the one that succeeds.
    from static.manifest import is_decoded_manifest, parse_manifest_apk

    repo = Path(__file__).resolve().parents[2]
    apk = next((repo / "APK_Test").glob("*.apk"), None)
    if apk is None:
        pytest.skip("no real APK present to exercise the fallback reader")

    binary = tmp_path / "AndroidManifest.xml"
    binary.write_bytes(_binary_axml_bytes())
    assert is_decoded_manifest(binary) is False
    # ...and the fallback the CLI now selects reads the real APK fine.
    info = parse_manifest_apk(apk)
    assert isinstance(info.package_name, str) and info.package_name

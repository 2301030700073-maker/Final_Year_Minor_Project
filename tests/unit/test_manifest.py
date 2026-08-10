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

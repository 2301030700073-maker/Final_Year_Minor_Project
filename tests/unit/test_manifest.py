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

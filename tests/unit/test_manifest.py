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


def test_parse_manifest_rejects_wrong_root_tag(tmp_path):
    # 5-4: a non-manifest XML used to silently yield defaults - fail loudly.
    manifest_path = tmp_path / "AndroidManifest.xml"
    manifest_path.write_text("<not-a-manifest/>")

    with pytest.raises(ValueError, match="manifest"):
        parse_manifest(manifest_path)

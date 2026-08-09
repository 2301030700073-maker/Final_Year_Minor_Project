"""Tests for the pure parts of ingest/metadata.py.

The aapt2/apksigner output strings below are hand-written, representative of
the real tools' documented output format - they are NOT a captured real run
against UnCrackable1. That capture is a follow-up task for whoever has the
Android toolchain (see docs/plans/research/), and should be added as
tests/fixtures/aapt2_uncrackable1_dump.txt / apksigner_uncrackable1_verify.txt
once available, per the plan. These tests only verify the parsing logic
itself behaves correctly against realistically-shaped input.
"""

import hashlib

import pytest

from ingest.metadata import (
    _assert_zip_magic,
    compute_hashes,
    file_size,
    ingest,
    parse_aapt2_output,
    parse_signer_info,
    tool_versions,
)

AAPT2_SAMPLE = """\
package: name='owasp.mstg.uncrackable1' versionCode='1' versionName='1.0' platformBuildVersionName='6.0'
sdkVersion:'21'
targetSdkVersion:'23'
uses-permission: name='android.permission.INTERNET'
uses-permission: name='android.permission.ACCESS_NETWORK_STATE'
application-label:'UnCrackable1'
"""

APKSIGNER_SAMPLE = """\
Verifies
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): false
Verified using v3 scheme (APK Signature Scheme v3): false
Number of signers: 1
Signer #1 certificate DN: CN=Android Debug, O=Android, C=US
Signer #1 certificate SHA-256 digest: aa:bb:cc:dd:ee:ff:00:11:22:33:44:55:66:77:88:99
"""


def test_parse_aapt2_output_extracts_package_fields():
    metadata = parse_aapt2_output(AAPT2_SAMPLE)
    assert metadata.package_name == "owasp.mstg.uncrackable1"
    assert metadata.version_code == "1"
    assert metadata.version_name == "1.0"
    assert metadata.min_sdk == "21"
    assert metadata.target_sdk == "23"
    assert metadata.permissions == [
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
    ]


def test_parse_aapt2_output_missing_fields_are_none():
    metadata = parse_aapt2_output("")
    assert metadata.package_name is None
    assert metadata.permissions == []


def test_parse_signer_info_extracts_scheme_verification_and_cert():
    signer = parse_signer_info(APKSIGNER_SAMPLE)
    assert signer.v1_verified is True
    assert signer.v2_verified is False
    assert signer.v3_verified is False
    assert signer.v4_verified is False  # sample carries no v4 line (LIM-2)
    assert signer.certificate_dn == "CN=Android Debug, O=Android, C=US"
    assert signer.certificate_sha256 == "aa:bb:cc:dd:ee:ff:00:11:22:33:44:55:66:77:88:99"


def test_parse_signer_info_v4_scheme_true_when_present():
    raw = APKSIGNER_SAMPLE + "Verified using v4 scheme (APK Signature Scheme v4): true\n"
    signer = parse_signer_info(raw)
    assert signer.v4_verified is True  # v4 (LIM-2) parsed from its own line


def test_ingest_preserves_partial_evidence_on_failure(tmp_path, monkeypatch):
    """LIM-1/G3: a failed ingest must still carry the hash/size already computed,
    so the audit record (cli.py record_ingest_failure) has a real hash (ADR-0005).
    Monkeypatches only the tool call to raise - no fabricated evidence."""
    sample = tmp_path / "sample.apk"
    # Must start with a real zip magic header: NEW-C's fail-fast check runs
    # before hashing, so a non-APK fixture would never reach the aapt2 call.
    sample.write_bytes(b"PK\x03\x04partial evidence retained on aapt2 failure")

    def _boom(*args, **kwargs):
        raise RuntimeError("aapt2 exploded after hashing")

    monkeypatch.setattr("ingest.metadata.run_aapt2_dump", _boom)

    result = ingest(sample)

    assert result.status == "failed"
    assert result.error == "aapt2 exploded after hashing"
    assert "hashes" in result.evidence
    assert result.evidence["hashes"]["sha256"] == hashlib.sha256(sample.read_bytes()).hexdigest()
    assert result.evidence["size_bytes"] == sample.stat().st_size


def test_compute_hashes_matches_hashlib(tmp_path):
    sample = tmp_path / "sample.apk"
    sample.write_bytes(b"not a real apk, just bytes for hashing")

    result = compute_hashes(sample)

    assert result.sha256 == hashlib.sha256(sample.read_bytes()).hexdigest()
    assert result.sha1 == hashlib.sha1(sample.read_bytes()).hexdigest()
    assert result.md5 == hashlib.md5(sample.read_bytes()).hexdigest()


def test_file_size_matches_actual_size(tmp_path):
    sample = tmp_path / "sample.apk"
    sample.write_bytes(b"twelve bytes")
    assert file_size(sample) == 12


MULTI_APKSIGNER_SAMPLE = """\
Verifies
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): true
Verified using v3 scheme (APK Signature Scheme v3): false
Verified using v4 scheme (APK Signature Scheme v4): false
Number of signers: 2
Signer #1 certificate DN: CN=App, O=Example, C=US
Signer #1 certificate SHA-256 digest: aa:bb:cc:dd:ee:ff:00:11:22:33:44:55:66:77:88:99
Signer #2 certificate DN: CN=Rotation Key, O=Example, C=US
Signer #2 certificate SHA-256 digest: 12:34:56:78:9a:bc:de:f0:12:34:56:78:9a:bc:de:f0
"""


def test_parse_signer_info_captures_all_signers():
    # LIM-3: key-rotation APKs carry multiple signers; all must be captured,
    # with signer #1 still exposed as the primary fields.
    signer = parse_signer_info(MULTI_APKSIGNER_SAMPLE)
    assert signer.signer_count == 2
    assert len(signer.signers) == 2
    assert signer.certificate_dn == "CN=App, O=Example, C=US"  # first signer preserved
    assert signer.certificate_sha256 == "aa:bb:cc:dd:ee:ff:00:11:22:33:44:55:66:77:88:99"
    assert signer.signers[1].dn == "CN=Rotation Key, O=Example, C=US"
    assert signer.signers[1].sha256 == "12:34:56:78:9a:bc:de:f0:12:34:56:78:9a:bc:de:f0"


def test_parse_aapt2_output_min_sdk_not_confused_by_target():
    # NEW-A: the sdkVersion regex is anchored to the line start so it can't
    # grab the substring inside targetSdkVersion. Here target is printed first;
    # without the anchor, min_sdk would wrongly read 23.
    metadata = parse_aapt2_output("targetSdkVersion:'23'\nsdkVersion:'21'\n")
    assert metadata.min_sdk == "21"
    assert metadata.target_sdk == "23"


def test_assert_zip_magic_rejects_non_apk(tmp_path):
    bad = tmp_path / "not.apk"
    bad.write_bytes(b"MZ\x90\x00\x03\x00")  # PE header, not a zip
    with pytest.raises(ValueError, match="magic"):
        _assert_zip_magic(bad)


def test_assert_zip_magic_accepts_zip(tmp_path):
    good = tmp_path / "ok.apk"
    good.write_bytes(b"PK\x03\x04" + b"rest of archive")
    _assert_zip_magic(good)  # must not raise


def test_tool_versions_reports_all_known_tools():
    # NEW-B: must return an entry for every tool we record, degrading to
    # "unknown" for any that's absent - never raising (informational, optional).
    versions = tool_versions()
    assert {"aapt2", "apksigner", "jadx", "apktool"}.issubset(versions.keys())
    assert all(isinstance(v, str) and v for v in versions.values())

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

from ingest.metadata import compute_hashes, file_size, parse_aapt2_output, parse_signer_info

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

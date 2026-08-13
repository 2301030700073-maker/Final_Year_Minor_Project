"""L-M10: cross-version apksigner robustness for signer-scheme parsing.

Verified against real `apksigner verify --verbose --print-certs` output from two
genuinely different versions on the same APK (propertyguru-2026-5-4.apk): Debian
31.0.2 and Android build-tools 34.0.0. The 34.0.0 output carries a "v3.1 scheme"
line that 31.0.2 does not - the exact case the old v1..v4-only parser would have
silently dropped. The parser is version-agnostic: it captures every scheme line
by label, so v3.1 (and any future scheme) is never lost."""
from pathlib import Path

from ingest.metadata import parse_signer_info

FIX = Path(__file__).parent.parent / "fixtures"


def _read(name: str) -> str:
    return (FIX / name).read_text(encoding="utf-8")


def test_second_apksigner_v31_line_is_captured():
    raw34 = _read("apksigner_3400_propertyguru.txt")
    info = parse_signer_info(raw34)
    # The 34.0.0 output reports five schemes, including the v3.1 line 31.0.2 lacks.
    assert "v3.1 scheme (APK Signature Scheme v3.1)" in info.schemes
    assert info.schemes["v3.1 scheme (APK Signature Scheme v3.1)"] is False
    assert len(info.schemes) == 5
    # Backward-compat specific fields still correct on the real 34.0.0 output.
    assert info.v1_verified is False
    assert info.v2_verified is True
    assert info.v3_verified is False
    assert info.v4_verified is False
    assert info.signer_count == 1
    assert "CN=Dang Chien Duong" in info.certificate_dn
    assert info.certificate_sha256.startswith("7814fb2b")


def test_both_apksigner_versions_agree_on_shared_schemes():
    a = parse_signer_info(_read("apksigner_3102_propertyguru.txt"))
    b = parse_signer_info(_read("apksigner_3400_propertyguru.txt"))
    # The only cross-version difference is 34.0.0's extra v3.1 line; the shared
    # v1..v4 verdicts and signer identity must be identical across versions.
    assert (a.v1_verified, a.v2_verified, a.v3_verified, a.v4_verified) == (
        b.v1_verified, b.v2_verified, b.v3_verified, b.v4_verified)
    assert a.signer_count == b.signer_count
    assert a.certificate_dn == b.certificate_dn
    assert a.certificate_sha256 == b.certificate_sha256
    # b's scheme set = a's set plus exactly the v3.1 line.
    assert set(b.schemes) == set(a.schemes) | {"v3.1 scheme (APK Signature Scheme v3.1)"}


def test_scheme_parser_is_version_agnostic():
    # A hypothetical future scheme (v5) is captured generically, never dropped -
    # the property that makes the parser robust to apksigner versions we have
    # not seen yet, not just the two fixtures in this suite.
    synthetic = (
        "Verified using v1 scheme (JAR signing): true\n"
        "Verified using v5 scheme (APK Signature Scheme v5): true\n"
    )
    info = parse_signer_info(synthetic)
    assert info.schemes["v5 scheme (APK Signature Scheme v5)"] is True
    assert len(info.schemes) == 2

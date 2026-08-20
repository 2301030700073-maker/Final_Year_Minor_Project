"""Hermes / binary JS-bundle string recovery - pure, no device, testable anywhere."""

from pathlib import Path

from static import hermes
from static.hermes import (
    extract_ascii_strings,
    is_binary_bundle,
    is_bundle_candidate,
    scan_bundle,
)


def _write_bytes(tmp_path: Path, name: str, data: bytes) -> Path:
    p = tmp_path / name
    p.write_bytes(data)
    return p


def test_is_bundle_candidate_filters_by_suffix():
    assert is_bundle_candidate(Path("index.android.bundle"))
    assert is_bundle_candidate(Path("app.hbc"))
    assert is_bundle_candidate(Path("index.js"))
    assert not is_bundle_candidate(Path("mapping.txt"))
    assert not is_bundle_candidate(Path("libfoo.so"))


def test_is_binary_bundle_probes_nul(tmp_path):
    plain = _write_bytes(tmp_path, "dev.bundle", b"function f() { return 'x'; }\n")
    binary = _write_bytes(tmp_path, "rel.bundle", b"\x1f\xbc\x0c\x00\x00\x00\x00\x00payload")
    assert not is_binary_bundle(plain)
    assert is_binary_bundle(binary)


def test_extract_ascii_strings_recovers_constants(tmp_path):
    p = _write_bytes(
        tmp_path,
        "app.bundle",
        b"\x1f\xbc\x0c\x00" + b"\x00" + b"/system/bin/su\x00detectRootChecks\x00" + b"\x00",
    )
    strings = extract_ascii_strings(p)
    assert "/system/bin/su" in strings
    assert "detectRootChecks" in strings


def test_scan_bundle_hermes_recovers_root_and_ssl(tmp_path):
    p = _write_bytes(
        tmp_path,
        "app.bundle",
        b"\x1f\xbc\x0c\x00" + b"\x00"
        + b"/system/bin/su\x00RootBeer\x00certificatePinner\x00sha256/AAAA==\x00",
    )
    res = scan_bundle(p)
    assert res["kind"] == "hermes"
    cats = {c for _, c, _ in res["matches"]}
    assert "root" in cats and "ssl" in cats
    sigs = {s for s, _, _ in res["matches"]}
    assert "js_root_su" in sigs
    assert "js_ssl_pinner" in sigs


def test_scan_bundle_binary_non_hermes_magic(tmp_path):
    p = _write_bytes(
        tmp_path,
        "app.bundle",
        b"\x00\x01\x02\x03" + b"busybox\x00some other string\x00",
    )
    res = scan_bundle(p)
    assert res["kind"] == "binary"
    assert any(s == "js_root_busybox" for s, _, _ in res["matches"])


def test_scan_bundle_opaque_when_no_strings(tmp_path):
    p = _write_bytes(tmp_path, "opaque.hbc", b"\x1f\xbc\x0c\x00" + b"\x01\x02\x03\x04" * 20)
    res = scan_bundle(p)
    assert res["kind"] == "opaque"
    assert res["strings"] == 0
    assert res["matches"] == []


def test_scan_bundle_plain_text_left_to_engine(tmp_path):
    p = _write_bytes(tmp_path, "dev.bundle", b"function check() { return '/system/bin/su'; }\n")
    res = scan_bundle(p)
    assert res["kind"] == "plain"
    assert res["matches"] == []


def test_scan_bundle_hermes_no_idiom_no_matches(tmp_path):
    p = _write_bytes(
        tmp_path,
        "app.bundle",
        b"\x1f\xbc\x0c\x00" + b"some unrelated constant\x00another one\x00",
    )
    res = scan_bundle(p)
    assert res["kind"] == "hermes"
    assert res["matches"] == []

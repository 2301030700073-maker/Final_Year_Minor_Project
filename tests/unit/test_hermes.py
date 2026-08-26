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


def test_hermes_degrades_honestly_on_unreadable_bundle(tmp_path):
    # hermes.py:95-97, 108-109, 143-144: an UNREADABLE bundle (open/read raises
    # OSError - a directory path is IsADirectoryError) must degrade honestly and
    # never crash: is_binary_bundle -> True (treated as binary so coverage is not
    # silently certified), extract_ascii_strings -> [], scan_bundle -> opaque.
    # Real coverage proved all three OSError branches untested.
    d = tmp_path / "unreadable.bundle"
    d.mkdir()  # a directory: open()/read_bytes() raise OSError
    assert is_binary_bundle(d) is True
    assert extract_ascii_strings(d) == []
    assert scan_bundle(d)["kind"] == "opaque"


def test_extract_ascii_strings_flushes_run_at_end_of_file(tmp_path):
    # hermes.py:120: a printable-ASCII run that reaches the very END of the file
    # (no trailing non-printable byte) must still be appended - the trailing-run
    # flush after the loop. The sibling recover-constants test only had runs
    # followed by \x00, so this EOF-flush branch was uncovered. Real coverage
    # proved line 120 untested.
    p = _write_bytes(tmp_path, "eof.bundle", b"\x00prefix\x00trailingrun")
    strings = extract_ascii_strings(p)
    assert "trailingrun" in strings   # the EOF run was not dropped
    assert "prefix" in strings


def test_scan_bundle_hermes_no_idiom_no_matches(tmp_path):
    p = _write_bytes(
        tmp_path,
        "app.bundle",
        b"\x1f\xbc\x0c\x00" + b"some unrelated constant\x00another one\x00",
    )
    res = scan_bundle(p)
    assert res["kind"] == "hermes"
    assert res["matches"] == []


def test_scan_bundle_recovers_utf16le_wide_stored_idiom(tmp_path):
    # HERM1: a detection idiom stored UTF-16LE (each Latin char is a printable byte
    # then 0x00) is invisible to the ASCII pass - every char is isolated by a NUL
    # and dropped as a length-1 run. extract_utf16le_strings recovers it, so
    # scan_bundle matches an idiom the ASCII-only pass would have missed entirely.
    from static.hermes import extract_utf16le_strings
    wide = "/system/bin/su".encode("utf-16-le")
    p = _write_bytes(tmp_path, "wide.bundle", b"\x1f\xbc\x0c\x00" + wide)
    # the ASCII pass alone recovers nothing usable from the wide-stored token
    assert "/system/bin/su" not in extract_ascii_strings(p)
    # the UTF-16LE pass recovers it
    assert "/system/bin/su" in extract_utf16le_strings(p)
    # and scan_bundle now matches the root idiom that would otherwise be missed
    res = scan_bundle(p)
    assert res["kind"] == "hermes"
    assert any(mt == "/system/bin/su" for _sid, _cat, mt in res["matches"])

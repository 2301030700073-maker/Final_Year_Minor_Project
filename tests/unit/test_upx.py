"""Unit tests for static/upx.py - Gap-4 UPX/native packing detection and unpack.

The detector is pure (raw bytes + section names), fixture-testable anywhere with
synthetic data (NFR). The unpack shell-out is driven by an injected fake `upx`
binary so the success/failure/missing-tool branches are all covered without the
real toolchain. Real-ELF verification against the extracted .so corpus is an
env-guarded test (runs when libs are present)."""

from pathlib import Path

import pytest

from static.upx import (
    find_upx,
    is_upx_packed,
    is_upx_packed_bytes,
    unpack_upx,
)


def test_is_upx_packed_bytes_magic_only():
    # The UPX! stub magic alone is enough - even with no section table (headers
    # further mangled or not parseable by pyelftools).
    assert is_upx_packed_bytes(set(), b"\x7fELF...UPX!\x00rest") is True


def test_is_upx_packed_bytes_upx_section():
    # A .UPX* section name is the strong structural signal - no magic needed.
    assert is_upx_packed_bytes({".UPX0", ".UPX1"}, b"\x7fELF plain") is True


def test_is_upx_packed_bytes_clean_elf_is_false():
    assert is_upx_packed_bytes({".text", ".dynsym"}, b"\x7fELF no markers") is False


def test_is_upx_packed_bytes_no_markers_empty_sections_false():
    assert is_upx_packed_bytes(set(), b"\x7fELF") is False


def test_is_upx_packed_real_elf_corpus_is_not_upx():
    # Across the extracted .so corpus, real libs read as NOT packed - this is
    # the honest baseline (no false positives on the 114 known-good libs). Skipped
    # when no extracted libs are present so the suite runs anywhere (NFR).
    import glob

    libs = glob.glob("outputs/analysis/*/native/*/*.so")
    libs += glob.glob("outputs/analysis/*/native/*/*/*.so")
    if not libs:
        pytest.skip("no extracted .so present to baseline UPX detection on")
    seen = set()
    for p in libs:
        if p in seen:
            continue
        seen.add(p)
        assert is_upx_packed(Path(p)) is False, p


def test_unpack_upx_missing_tool_returns_false(monkeypatch):
    monkeypatch.setattr("static.upx.find_upx", lambda: None)
    ok, err = unpack_upx(Path("/tmp/x.so"), Path("/tmp/x.unpacked.so"))
    assert ok is False
    assert "upx not found" in err


def test_unpack_upx_success(tmp_path, monkeypatch):
    src = tmp_path / "packed.so"
    src.write_bytes(b"\x7fELFpacked")
    out = tmp_path / "real.so"

    # A fake `upx -d` that just copies input -> output (stands in for real unpack).
    def fake_run(cmd, capture_output, text, timeout):
        assert cmd[0] == "upx"
        assert cmd[1] == "-d"
        assert "-o" in cmd
        Path(cmd[cmd.index("-o") + 1]).write_bytes(Path(cmd[-1]).read_bytes())
        return type("P", (), {"returncode": 0, "stderr": "", "stdout": ""})()

    monkeypatch.setattr("static.upx.subprocess.run", fake_run)
    ok, err = unpack_upx(src, out, upx_bin="upx")
    assert ok is True
    assert err is None
    assert out.read_bytes() == b"\x7fELFpacked"


def test_unpack_upx_idempotent_over_stale_output(tmp_path, monkeypatch):
    # Regression: `analyze_so` derives the unpack path deterministically, so a
    # prior run leaves a stale `.unpacked.so`. Real upx refuses to overwrite an
    # existing `-o` target (FileAlreadyExistsException), which made the SECOND
    # unpack of the same lib fail and degrade it to `partial` (0 symbols) even
    # though upx was present. unpack_upx must drop the stale output first so
    # re-runs succeed. This fake EMULATES upx's refusal (nonzero when the output
    # already exists) - it fails on the un-fixed code and passes with the fix.
    src = tmp_path / "packed.so"
    src.write_bytes(b"\x7fELFreal-code")
    out = tmp_path / "packed.unpacked.so"
    out.write_bytes(b"STALE-FROM-PREVIOUS-RUN")  # simulate a prior successful unpack

    def fake_run(cmd, capture_output, text, timeout):
        target = Path(cmd[cmd.index("-o") + 1])
        if target.exists():  # upx: FileAlreadyExistsException
            return type("P", (), {"returncode": 1, "stderr": "File already exists", "stdout": ""})()
        target.write_bytes(Path(cmd[-1]).read_bytes())
        return type("P", (), {"returncode": 0, "stderr": "", "stdout": ""})()

    monkeypatch.setattr("static.upx.subprocess.run", fake_run)
    ok, err = unpack_upx(src, out, upx_bin="upx")
    assert ok is True, err
    assert err is None
    assert out.read_bytes() == b"\x7fELFreal-code"  # regenerated, not stale


def test_unpack_upx_nonzero_exit_returns_false(tmp_path, monkeypatch):
    src = tmp_path / "packed.so"
    src.write_bytes(b"x")
    out = tmp_path / "real.so"

    def fake_run(cmd, capture_output, text, timeout):
        return type("P", (), {"returncode": 1, "stderr": "corrupt file", "stdout": ""})()

    monkeypatch.setattr("static.upx.subprocess.run", fake_run)
    ok, err = unpack_upx(src, out, upx_bin="upx")
    assert ok is False
    assert "corrupt file" in err


def test_unpack_upx_timeout_returns_false(tmp_path, monkeypatch):
    import subprocess

    src = tmp_path / "packed.so"
    src.write_bytes(b"x")
    out = tmp_path / "real.so"

    def fake_run(cmd, capture_output, text, timeout):
        raise subprocess.TimeoutExpired(cmd=cmd, timeout=timeout)

    monkeypatch.setattr("static.upx.subprocess.run", fake_run)
    ok, err = unpack_upx(src, out, upx_bin="upx")
    assert ok is False
    assert "timed out" in err


def test_find_upx_returns_none_or_path():
    # Deterministic shape only - real presence depends on the environment. This
    # guards the optional-toolchain contract: None is a valid, graceful answer.
    assert find_upx() is None or isinstance(find_upx(), str)

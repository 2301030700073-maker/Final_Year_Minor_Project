"""Cross-platform toolchain-resolution regression tests (WINLAUNCH1 / WINBINUTILS1).

These pin down two real defects found by running the pipeline on Windows:

WINLAUNCH1 - decompile._find_jadx() returned the POSIX extensionless launcher
(tools/jadx/bin/jadx) unconditionally. On Windows that file is a shell script
and CreateProcess rejects it with OSError [WinError 193] '%1 is not a valid
Win32 application', so EVERY jadx invocation failed. The per-DEX path caught
the OSError and recorded a generic 'jadx failed', so the Java surface silently
degraded to partial with 0 files and no actionable cause on the report - the
opposite of principle 3.

WINBINUTILS1 - native.analyze_so() called require_tool("readelf"/"nm"/
"strings") and extract_native_libs() called require_tool("unzip") at the top,
even though the module documents a pure-Python pyelftools path that runs FIRST.
On a host without GNU binutils (any Windows box) the whole native stage
hard-failed before that path could run, halting the pipeline. The tools are now
optional and the stdlib paths are used instead.

None of these tests need a real toolchain - they assert on resolution/selection
logic directly, per ADR-0007 (the unit suite must run anywhere).
"""
from __future__ import annotations

import zipfile
from pathlib import Path

import pytest

from static import native as native_mod
from static.decompile import _launcher_candidates

# --------------------------------------------------------------------------
# WINLAUNCH1 - platform-aware launcher selection
# --------------------------------------------------------------------------


def test_launcher_candidates_prefers_bat_on_windows(monkeypatch):
    import static.decompile as d

    # Patch the module's own import-time platform flag. Do NOT patch os.name:
    # `d.os` IS the global os module, so that would flip pathlib into
    # instantiating WindowsPath on a POSIX host and crash pytest's cache
    # teardown with "cannot instantiate 'WindowsPath' on your system".
    monkeypatch.setattr(d, "IS_WINDOWS", True)
    cands = _launcher_candidates(Path("/repo/tools/jadx/bin"), "jadx")
    # The Windows-executable form must come FIRST on Windows - an extensionless
    # POSIX script is not executable there (WinError 193).
    assert cands[0].name == "jadx.bat"
    assert [c.name for c in cands[:3]] == ["jadx.bat", "jadx.cmd", "jadx.exe"]


def test_launcher_candidates_both_platforms_include_extensionless():
    """Both platform orders must include the extensionless form, so a repo that
    vendors only one launcher style still resolves on either platform.

    Inspects the shared implementation in `common`, which is where the ordering
    lives now: the ingest stage records the version of whatever this resolution
    lands on, so a second copy of the order could name a build that never ran."""
    import inspect

    from common import launcher_candidates

    src = inspect.getsource(launcher_candidates)
    # The function builds `order` from a platform branch; assert both branches
    # mention the bare stem (the extensionless launcher).
    assert 'f"{stem}.bat"' in src
    assert "stem," in src or "[stem," in src
    posix_line = [ln for ln in src.splitlines() if "order = [" in ln]
    assert len(posix_line) == 2, "expected exactly two platform branches"


def test_find_jadx_returns_windows_executable_form(tmp_path, monkeypatch):
    """The vendored launcher must resolve to something CreateProcess can run."""
    import static.decompile as d

    bin_dir = tmp_path / "tools" / "jadx" / "bin"
    bin_dir.mkdir(parents=True)
    # Both launchers present, exactly as the real jadx distribution ships them.
    (bin_dir / "jadx").write_text("#!/bin/sh\n", encoding="utf-8")
    (bin_dir / "jadx.bat").write_text("@echo off\n", encoding="utf-8")

    # WINLAUNCH1 branch under test is Windows; patch the module flag, not the
    # global os.name (see test_launcher_candidates_prefers_bat_on_windows).
    monkeypatch.setattr(d, "IS_WINDOWS", True)
    # _find_jadx computes <repo> from Path(__file__).resolve().parents[2]. Point
    # __file__ at <tmp>/src/static/decompile.py so parents[2] is <tmp>, which
    # contains the tools/jadx/bin tree created above.
    src_dir = tmp_path / "src" / "static"
    src_dir.mkdir(parents=True)
    monkeypatch.setattr(d, "__file__", str(src_dir / "decompile.py"))

    resolved = d._find_jadx()
    assert resolved.endswith("jadx.bat"), (
        f"on Windows the .bat launcher must win, got {resolved!r} - returning the "
        "extensionless POSIX script makes every jadx run fail with WinError 193"
    )


def test_find_jadx_falls_back_to_path_when_not_vendored(tmp_path, monkeypatch):
    import static.decompile as d

    src_dir = tmp_path / "src" / "static"
    src_dir.mkdir(parents=True)
    monkeypatch.setattr(d, "__file__", str(src_dir / "decompile.py"))
    monkeypatch.setattr(d, "require_tool", lambda name: f"/usr/bin/{name}")
    assert d._find_jadx() == "/usr/bin/jadx"


# --------------------------------------------------------------------------
# WINBINUTILS1 - pure-Python substitutes
# --------------------------------------------------------------------------


def test_py_strings_extracts_printable_runs(tmp_path):
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x7fELF\x00\x00hello world\x00\x01\x02root\x00abcd\x00")
    out = native_mod._py_strings(so, min_len=4)
    assert "hello world" in out
    assert "root" in out
    assert "abcd" in out
    # A run shorter than min_len is not a string.
    assert not any(s.startswith("ELF") for s in out)


def test_py_strings_returns_none_on_unreadable_file(tmp_path):
    missing = tmp_path / "nope.so"
    assert native_mod._py_strings(missing) is None


def test_py_strings_matches_basic_strings_semantics(tmp_path):
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x00\x00RootBeer\x00SSLpinning\x00abc\x00\x00")
    out = native_mod._py_strings(so, min_len=4)
    assert "RootBeer" in out
    assert "SSLpinning" in out
    assert "abc" not in out  # below min_len


def test_analyze_so_uses_pure_python_when_binutils_absent(tmp_path, monkeypatch):
    """With no readelf/nm/strings on the host, analyze_so must still be able to
    analyze a real ELF via pyelftools + _py_strings instead of failing the stage.
    This asserts the RESOLUTION decision on a genuinely unparseable stub: honest
    unscannable, never a silent 'stripped' with no exports (ADR-0006)."""
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x7fELF but not a real shared object")
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)

    lib = native_mod.analyze_so(so)
    assert lib.unscannable is True
    assert "readelf is not installed" in lib.scan_error


def test_analyze_so_prefers_pyelftools_over_binutils(tmp_path, monkeypatch):
    """When pyelftools can read .dynsym, readelf must NOT be required at all."""
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x7fELF stub")
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)
    monkeypatch.setattr(native_mod, "_try_read_dynsym_pyelftools", lambda p: ["android_main", "JNI_OnLoad"])
    monkeypatch.setattr(native_mod, "_pyelftools_has_symtab", lambda p: True)
    monkeypatch.setattr(native_mod, "_py_strings", lambda p, min_len=4: ["/system/bin/su"])

    lib = native_mod.analyze_so(so)
    assert lib.unscannable is False
    assert "android_main" in lib.exports
    assert lib.jni_onload is True
    assert "/system/bin/su" in lib.strings


def test_extract_native_libs_uses_stdlib_zipfile_without_unzip(tmp_path, monkeypatch):
    """extract_native_libs must work with no `unzip` on the host - an APK IS a
    zip, so the stdlib path is a complete substitute, not a degraded one."""
    apk = tmp_path / "app.apk"
    with zipfile.ZipFile(apk, "w") as z:
        z.writestr("lib/arm64-v8a/libfoo.so", b"\x7fELFfoo")
        z.writestr("assets/libbar.so", b"\x7fELFbar")
        z.writestr("classes.dex", b"dex")

    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)
    dest = tmp_path / "out"
    libs = native_mod.extract_native_libs(apk, dest)

    names = sorted(p.name for p in libs)
    assert names == ["libbar.so", "libfoo.so"]
    # ABI dir is preserved (H5) so the lib reads with a real abi, not "unknown".
    assert (dest / "lib" / "arm64-v8a" / "libfoo.so").exists()
    assert (dest / "assets" / "libbar.so").exists()


def test_extract_native_libs_raises_on_non_zip(tmp_path, monkeypatch):
    apk = tmp_path / "broken.apk"
    apk.write_bytes(b"definitely not a zip")
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)
    with pytest.raises(native_mod.NativeToolError):
        native_mod.extract_native_libs(apk, tmp_path / "out")

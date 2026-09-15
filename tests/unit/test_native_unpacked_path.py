"""The UPX-recovered path: analyse the library you actually read, and never let
the recovery's own work file become a library the APK appears to ship.

Two defects met here. `_analyze_so_uncached` unpacks a UPX-packed .so and then
analyses the recovered file - but its stripped check still asked `readelf -S`
about the packed original, whose section table describes the compressed stub, and
a successful unpack was not recorded at all, so `_lib_coverage` held a fully
disassembled recovered library at `partial` with no way to say "packed, but we
read the real code". Separately, the recovered file was written into the same
per-APK directory the APK's own libraries are extracted into, and
`extract_native_libs` returned whatever `rglob("*.so")` found there - so the
second run of that APK reported the work file as a shipped library, and an APK
shipping no .so at all stopped reading as the provable absence
CALIB-NATIVE-VACUOUS rests on.

None of this needs a real `upx` binary to pin: `unpack_upx` is a one-call
boundary with its own tests in test_upx.py, so the recovery is faked here and
what gets asserted is what this module does with its result. The extraction half
needs no faking at all - an APK is a zip.
"""

from __future__ import annotations

import zipfile
from pathlib import Path

import pytest

import static.native as native_mod
from static.native import (
    _UNPACKED_WORK_SUFFIX,
    NativeLibrary,
    compute_degradation,
    extract_native_libs,
)

# One `readelf -Ws` dynamic-symbol line, in the shape the parser expects.
_READELF_WS = "     9: 0000000000000000    18 FUNC    GLOBAL DEFAULT   11 android_main\n"
# `readelf -S` output carries a .symtab, so the lib is not stripped.
_SECTIONS = "There are 28 section headers, starting at offset 0x1a2b:\n  .symtab\n"


def _fake_toolchain(monkeypatch, calls: list[list[str]], strings):
    """Force the readelf fallbacks and record every tool invocation.

    pyelftools is made unavailable for .dynsym/.symtab so the readelf path runs,
    and `strings` is absent so the in-process reader is used - the two branches
    the effective-path fix has to cover."""
    monkeypatch.setattr(
        native_mod.shutil, "which",
        lambda name: f"/usr/bin/{name}" if name == "readelf" else None,
    )
    monkeypatch.setattr(native_mod, "_try_read_dynsym_pyelftools", lambda p: None)
    monkeypatch.setattr(native_mod, "_pyelftools_has_symtab", lambda p: None)
    monkeypatch.setattr(native_mod, "_py_strings", strings)

    def _run(cmd, timeout, tool_name):
        calls.append(cmd)
        if "-Ws" in cmd:
            return _READELF_WS
        if "-S" in cmd:
            return _SECTIONS
        raise AssertionError(f"unexpected tool call: {cmd}")

    monkeypatch.setattr(native_mod, "_run_tool", _run)
    # Belt and braces: a lib this healthy never reaches the body pass, but a real
    # Ghidra install on the host must never be launched by a unit test.
    monkeypatch.setattr(native_mod, "ghidra_decompile", lambda *a, **k: (False, [], False, "stub"))


def _unpackable(monkeypatch, tmp_path: Path) -> Path:
    """A packaged .so that reports as UPX-packed and unpacks to real bytes."""
    abi_dir = tmp_path / "lib" / "arm64-v8a"
    abi_dir.mkdir(parents=True)
    packed = abi_dir / "libpacked.so"
    packed.write_bytes(b"UPX! compressed stub")
    monkeypatch.setattr(native_mod, "is_upx_packed", lambda p: True)

    def _unpack(so, out, upx_bin=None):
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_bytes(b"\x7fELF recovered real code")
        return True, None

    monkeypatch.setattr(native_mod, "unpack_upx", _unpack)
    return packed


def test_every_read_uses_the_recovered_file_not_the_stub(tmp_path, monkeypatch):
    # The stripped verdict and the string/symbol corpora have to describe the
    # bytes that were analysed. Reading the packed original told readelf about a
    # stub (.UPX0/.UPX1, no .symtab) while every other read in the block used the
    # recovered file, so the lib could be judged stripped on evidence from a file
    # it had already replaced.
    calls: list[list[str]] = []
    _fake_toolchain(monkeypatch, calls, lambda p, min_len=4: ["/system/bin/su"])
    packed = _unpackable(monkeypatch, tmp_path)

    lib = native_mod.analyze_so(packed)

    recovered = tmp_path / "lib" / "arm64-v8a" / f"libpacked{_UNPACKED_WORK_SUFFIX}"
    assert calls, "the readelf fallback must have run"
    assert all(cmd[-1] == str(recovered) for cmd in calls), calls
    assert all(str(packed) != cmd[-1] for cmd in calls)
    # The analysis is still reported under the name the APK ships, not the work
    # file's - the recovered file is how we read it, not what it is.
    assert lib.name == "libpacked.so"


def test_a_successful_unpack_is_recorded_and_distinguishable(tmp_path, monkeypatch):
    calls: list[list[str]] = []
    _fake_toolchain(monkeypatch, calls, lambda p, min_len=4: ["/system/bin/su"])
    packed = _unpackable(monkeypatch, tmp_path)

    lib = native_mod.analyze_so(packed)

    assert lib.packed is True and lib.packer == "UPX"  # what the APK ships
    assert lib.unpacked is True                        # and that we read through it
    assert lib.unscannable is False


def test_a_packed_lib_that_was_unpacked_and_disassembled_is_fully_analysed():
    # body_scanned describes the recovered real code, so it is the same honest
    # instruction-level scan the branch certifies for any other stripped lib.
    # Without the unpacked flag this read `partial`, under-claiming coverage over
    # a library whose whole call surface had been read.
    lib = NativeLibrary(
        abi="arm64-v8a", name="libupx.so",
        packed=True, unpacked=True, stripped=True, body_scanned=True,
    )
    assert compute_degradation([lib]) == {"arm64-v8a": "fully_analyzed"}


def test_a_packed_lib_whose_stub_was_disassembled_stays_partial():
    # The guard the flag exists for: without an unpack, body_scanned can only
    # describe the compressed stub, and inline/encrypted logic behind it is a
    # limit a call-surface scan cannot see through (ADR-0006).
    lib = NativeLibrary(
        abi="arm64-v8a", name="libupx.so",
        packed=True, stripped=True, body_scanned=True,
    )
    assert compute_degradation([lib]) == {"arm64-v8a": "partial"}


def _apk(tmp_path: Path, members: dict[str, bytes]) -> Path:
    apk = tmp_path / "app.apk"
    with zipfile.ZipFile(apk, "w") as z:
        for name, data in members.items():
            z.writestr(name, data)
    return apk


def test_a_recovered_work_file_is_not_returned_as_a_shipped_library(tmp_path, monkeypatch):
    # The second run of a UPX-packed APK: the first run's unpack left its work
    # file in the very directory this run extracts into.
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)
    apk = _apk(tmp_path, {"lib/arm64-v8a/libfoo.so": b"\x7fELF real"})
    dest = tmp_path / "native"
    stale = dest / "lib" / "arm64-v8a" / f"libfoo{_UNPACKED_WORK_SUFFIX}"
    stale.parent.mkdir(parents=True)
    stale.write_bytes(b"\x7fELF recovered last run")

    libs = extract_native_libs(apk, dest)

    assert [p.name for p in libs] == ["libfoo.so"]
    # Left on disk: it is reused as the unpack destination, not cleaned up here.
    assert stale.exists()


def test_a_library_the_apk_really_ships_under_that_name_is_still_returned(tmp_path, monkeypatch):
    # The member list decides, not the spelling - the filter may not silently drop
    # a native surface the APK genuinely ships.
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)
    member = f"lib/arm64-v8a/libweird{_UNPACKED_WORK_SUFFIX}"
    apk = _apk(tmp_path, {member: b"\x7fELF shipped"})

    libs = extract_native_libs(apk, tmp_path / "native")

    assert [p.name for p in libs] == [f"libweird{_UNPACKED_WORK_SUFFIX}"]


def test_an_apk_with_no_native_libs_stays_empty_despite_a_stale_work_file(tmp_path, monkeypatch):
    # CALIB-NATIVE-VACUOUS rests on this: the empty result is what certifies that
    # the APK provably ships no native surface. A leftover work file satisfying
    # the glob would have turned that into a reported library the APK never had.
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)
    apk = _apk(tmp_path, {"classes.dex": b"dex"})
    dest = tmp_path / "native"
    stale = dest / "lib" / "arm64-v8a" / f"libgone{_UNPACKED_WORK_SUFFIX}"
    stale.parent.mkdir(parents=True)
    stale.write_bytes(b"\x7fELF recovered last run")

    assert extract_native_libs(apk, dest) == []


def test_an_unreadable_apk_is_never_reported_as_having_no_native_libs(tmp_path, monkeypatch):
    # unzip exits non-zero on a corrupt APK and its return code is deliberately
    # unchecked (it exits non-zero for "nothing matched" too), so on the shell
    # path a broken archive used to yield [] - the same answer as a genuine
    # no-native-libs APK. The member read is what tells them apart.
    apk = tmp_path / "broken.apk"
    apk.write_bytes(b"definitely not a zip")
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: "/usr/bin/unzip")

    with pytest.raises(native_mod.NativeToolError):
        extract_native_libs(apk, tmp_path / "native")


def test_a_strings_read_failure_fails_loud_instead_of_parsing_empty(tmp_path, monkeypatch):
    # On a host with no `strings` binary the in-process reader is the string
    # layer. Returning None there and coercing it to [] would hand the matcher and
    # _classify_obfuscated an empty corpus as though the strings had been read and
    # found benign - the silent empty parse H1/H4 exist to prevent, and the one
    # verdict the binutils path never reaches (with `strings` present, a failed
    # run raises out of _run_tool). Same cause, same verdict, either host.
    so = tmp_path / "lib" / "arm64-v8a" / "libx.so"
    so.parent.mkdir(parents=True)
    so.write_bytes(b"\x7fELF x")
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: None)
    monkeypatch.setattr(native_mod, "_try_read_dynsym_pyelftools", lambda p: ["android_main"])
    monkeypatch.setattr(native_mod, "_pyelftools_has_symtab", lambda p: True)
    monkeypatch.setattr(native_mod, "_py_strings", lambda p, min_len=4: None)
    monkeypatch.setattr(
        native_mod, "ghidra_decompile", lambda *a, **k: (False, [], False, "ghidra absent")
    )

    lib = native_mod.analyze_so(so)

    assert lib.unscannable is True
    assert "strings" in (lib.scan_error or "")


def test_a_host_without_nm_degrades_to_the_readelf_exports(tmp_path, monkeypatch):
    # `nm` is optional like readelf/strings (WINBINUTILS1), and its call site was
    # the one that did not say so: with no `nm` on the host, _run_tool was handed
    # [None, "-D", path] and raised a TypeError that the surrounding
    # NativeToolError catch does not cover - so a missing OPTIONAL tool took the
    # whole native stage down instead of degrading to the readelf exports already
    # in hand. The assertion inside the fake is the defect: nothing may be
    # invoked with an unresolved tool path.
    so = tmp_path / "lib" / "arm64-v8a" / "liby.so"
    so.parent.mkdir(parents=True)
    so.write_bytes(b"\x7fELF y")
    calls: list[list[str]] = []
    monkeypatch.setattr(
        native_mod.shutil, "which",
        lambda name: "/usr/bin/readelf" if name == "readelf" else None,
    )
    monkeypatch.setattr(native_mod, "_try_read_dynsym_pyelftools", lambda p: None)
    monkeypatch.setattr(native_mod, "_pyelftools_has_symtab", lambda p: True)
    monkeypatch.setattr(native_mod, "_py_strings", lambda p, min_len=4: ["/system/bin/su"])

    def _run(cmd, timeout, tool_name):
        calls.append(cmd)
        assert None not in cmd, f"{tool_name} invoked with an unresolved path: {cmd}"
        return _READELF_WS

    monkeypatch.setattr(native_mod, "_run_tool", _run)

    lib = native_mod.analyze_so(so)

    assert lib.unscannable is False
    assert lib.exports == ["android_main"]
    assert [cmd[1] for cmd in calls] == ["-Ws"]  # nm skipped, never attempted with None

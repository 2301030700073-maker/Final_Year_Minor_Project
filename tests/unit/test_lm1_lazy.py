"""Unit tests for L-M1 lazy / on-demand decompile + per-DEX disk cache.

The remaining L-M1 gap was the all-or-nothing OOM cliff: jadx ran once over the
whole APK, so a hang/OOM on one DEX discarded the whole run. The fix decompiles
per DEX (classes*.dex) with a per-DEX disk cache keyed by dex-stable identity
(name + content hash), so one DEX failing preserves its siblings. Pure helpers
are fixture-testable; the orchestration takes the per-DEX path only for a real
readable zip and otherwise falls back to the proven whole-APK path."""

import os
import zipfile
from pathlib import Path

from static.decompile import (
    _dex_cache_key,
    _list_dex_entries,
    decompile,
)


def _make_apk(tmp_path, dexes: dict[str, bytes], extra=None) -> Path:
    apk = tmp_path / "app.apk"
    with zipfile.ZipFile(apk, "w") as z:
        for name, data in dexes.items():
            z.writestr(name, data)
        for name, data in (extra or {}).items():
            z.writestr(name, data)
    return apk


def test_list_dex_entries_finds_classes_dex_units(tmp_path):
    apk = _make_apk(tmp_path, {
        "classes.dex": b"A" * 10,
        "classes2.dex": b"B" * 20,
        "classes3.dex": b"C" * 30,
    }, extra={"AndroidManifest.xml": b"<manifest/>", "res/foo.png": b"img"})
    entries = _list_dex_entries(apk)
    names = [e["name"] for e in entries]
    assert names == ["classes.dex", "classes2.dex", "classes3.dex"]
    # non-dex entries excluded; sha256 + size computed per unit
    assert all(e["sha256"] and e["size"] > 0 for e in entries)


def test_list_dex_entries_empty_for_no_dex_or_non_zip(tmp_path):
    apk = _make_apk(tmp_path, {}, extra={"AndroidManifest.xml": b"<m/>"})
    assert _list_dex_entries(apk) == []          # no classes*.dex
    assert _list_dex_entries(tmp_path / "missing.apk") == []  # not a file
    bogus = tmp_path / "bogus.apk"
    bogus.write_bytes(b"this is not a zip file")
    assert _list_dex_entries(bogus) == []        # not a readable zip


def test_dex_cache_key_is_stable_and_content_sensitive():
    a = {"name": "classes.dex", "sha256": "aaa", "size": 1}
    a_same = {"name": "classes.dex", "sha256": "aaa", "size": 1}
    b = {"name": "classes.dex", "sha256": "bbb", "size": 1}
    assert _dex_cache_key(a) == _dex_cache_key(a_same)   # identical dex -> same key
    assert _dex_cache_key(a) != _dex_cache_key(b)         # changed dex -> fresh key
    assert _dex_cache_key({"name": "classes2.dex", "sha256": "aaa", "size": 1}) != _dex_cache_key(a)


def test_decompile_takes_lazy_per_dex_path_for_real_zip(tmp_path, monkeypatch):
    # A real (readable) zip APK with two DEX units must exercise the lazy path:
    # jadx runs once per DEX, each into its own dex-key subdir, and the evidence
    # records lazy_decompile + per-DEX units.
    apk = _make_apk(tmp_path, {"classes.dex": b"AAAA", "classes2.dex": b"BBBB"})
    apk_hash = "lazyhash"

    # Fake jadx/apktool binaries that write one real .java per invocation.
    bindir = tmp_path / "bin"
    bindir.mkdir()
    for tool, args in (("jadx", ["-d"]), ("apktool", ["d"])):
        script = bindir / tool
        if tool == "jadx":
            script.write_text(
                "#!/bin/sh\n"
                "out=$2; mkdir -p \"$out\"\n"
                "echo 'class X { }' > \"$out/Out.java\"\n"
                "exit 0\n"
            )
        else:
            script.write_text(
                "#!/bin/sh\n"
                "shift; shift\n"
                "out=$2\n"
                "mkdir -p \"$out\"\n"
                "echo '<manifest/>' > \"$out/AndroidManifest.xml\"\n"
                "exit 0\n"
            )
        script.chmod(0o755)
    # Prepend bindir so shutil.which finds the fakes, but KEEP the system PATH so
    # the fakes' own internals (mkdir/echo) still resolve - replacing PATH
    # outright breaks the #!/bin/sh helper scripts' commands.
    monkeypatch.setenv("PATH", f"{bindir}:{os.environ.get('PATH', '')}")

    result = decompile(apk, tmp_path, apk_hash)
    assert result.status == "success"
    assert result.evidence.get("lazy_decompile") is True
    units = result.evidence.get("dex_units", [])
    assert len(units) == 2                       # one unit per DEX
    assert {u["dex"] for u in units} == {"classes.dex", "classes2.dex"}
    assert all(u["status"] == "ok" for u in units)
    assert result.evidence["jadx_file_count"] == 2   # one .java per dex-key subdir


def test_per_dex_partial_jadx_exit_degrades_completeness(tmp_path, monkeypatch):
    # Honesty rule (principle 3): a DEX whose jadx wrote .java but STILL exited
    # non-zero is a partial decompile - the run must not be laundered into
    # "complete". The dex_units record the real per-DEX exit code; the top-level
    # evidence must surface the partial status too.
    apk = _make_apk(tmp_path, {"classes.dex": b"AAAA", "classes2.dex": b"BBBB"})
    apk_hash = "parthash"

    bindir = tmp_path / "bin"
    bindir.mkdir()
    (bindir / "jadx").write_text(
        "#!/bin/sh\n"
        "out=$2; mkdir -p \"$out\"\n"
        "echo 'class X{}' > \"$out/Out.java\"\n"
        "exit 1\n"  # jadx writes a real file but reports failure (AndroidX bug)
    )
    (bindir / "apktool").write_text(
        "#!/bin/sh\n"
        "shift; shift\n"
        "out=$2; mkdir -p \"$out\"\n"
        "echo '<manifest/>' > \"$out/AndroidManifest.xml\"\n"
        "exit 0\n"
    )
    (bindir / "jadx").chmod(0o755)
    (bindir / "apktool").chmod(0o755)
    monkeypatch.setenv("PATH", f"{bindir}:{os.environ.get('PATH', '')}")

    result = decompile(apk, tmp_path, apk_hash)
    assert result.evidence.get("lazy_decompile") is True
    units = result.evidence.get("dex_units", [])
    assert all(u["status"] == "ok" for u in units)      # files were written
    assert all(u["exit"] == 1 for u in units)           # ...but jadx exited 1
    # Partial, not complete - the exit-1 jadx must not be laundered away.
    assert result.evidence.get("decompile_completeness") == "partial"
    assert result.evidence.get("jadx_exit_code") == 1

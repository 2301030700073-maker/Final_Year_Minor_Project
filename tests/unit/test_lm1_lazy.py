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
    _run_dex_fallback,
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
    assert _dex_cache_key(a, "1.5.6") == _dex_cache_key(a_same, "1.5.6")   # identical dex+ver -> same key
    assert _dex_cache_key(a, "1.5.6") != _dex_cache_key(b, "1.5.6")         # changed dex -> fresh key
    assert _dex_cache_key({"name": "classes2.dex", "sha256": "aaa", "size": 1}, "1.5.6") != _dex_cache_key(a, "1.5.6")
    # A jadx toolchain upgrade must orphan old-version output - the same DEX
    # under a different jadx maps to a fresh key, so a 1.5.1 partial decompile
    # can't be relabeled complete by a 1.5.6 run (verified: 1.5.1 leaves
    # InsecureBankv2 at rc=1/2 errors; 1.5.6 completes it rc=0).
    assert _dex_cache_key(a, "1.5.1") != _dex_cache_key(a, "1.5.6")


def test_decompile_takes_lazy_per_dex_path_for_real_zip(tmp_path, monkeypatch):
    # A real (readable) zip APK with two DEX units must exercise the lazy path:
    # jadx runs once per DEX, each into its own dex-key subdir, and the evidence
    # records lazy_decompile + per-DEX units.
    apk = _make_apk(tmp_path, {"classes.dex": b"AAAA", "classes2.dex": b"BBBB"})
    apk_hash = "lazyhash"

    # Fake jadx/apktool binaries that write one real .java per invocation.
    bindir = tmp_path / "bin"
    bindir.mkdir()
    # _find_jadx prefers the vendored tools/jadx, so point it at the fake script.
    monkeypatch.setattr("static.decompile._find_jadx", lambda: str(bindir / "jadx"))
    for tool, args in (("jadx", ["-d"]), ("apktool", ["d"])):
        script = bindir / tool
        if tool == "jadx":
            script.write_text(
                "#!/bin/sh\n"
                "[ \"$1\" = \"--version\" ] && echo 1.5.6-fake && exit 0\n"
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
    monkeypatch.setenv("PATH", os.pathsep.join([str(bindir), os.environ.get("PATH", "")]))

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
    monkeypatch.setattr("static.decompile._find_jadx", lambda: str(bindir / "jadx"))
    (bindir / "jadx").write_text(
        "#!/bin/sh\n"
        "[ \"$1\" = \"--version\" ] && echo 1.5.6-fake && exit 0\n"
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
    monkeypatch.setenv("PATH", os.pathsep.join([str(bindir), os.environ.get("PATH", "")]))

    result = decompile(apk, tmp_path, apk_hash)
    assert result.evidence.get("lazy_decompile") is True
    units = result.evidence.get("dex_units", [])
    assert all(u["status"] == "ok" for u in units)      # files were written
    assert all(u["exit"] == 1 for u in units)           # ...but jadx exited 1
    # Partial, not complete - the exit-1 jadx must not be laundered away.
    assert result.evidence.get("decompile_completeness") == "partial"
    assert result.evidence.get("jadx_exit_code") == 1
    # Friend L-M1 work item 2: a DEX that exits 1 must be recovered, or the
    # missing CFR tooling recorded LOUDLY (principle 3) - never silently left
    # as a hole. The unit-level jadx exit is surfaced in dex_units.
    assert units[0]["exit"] == 1
    assert result.evidence.get("fallback") or result.evidence.get("fallback_unavailable") or \
        result.evidence.get("fallback_per_dex") is not None


def test_run_dex_fallback_is_loud_when_cfr_absent(tmp_path, monkeypatch):
    # L-M1 per-DEX recovery: when CFR is not installed, the fallback must record
    # fallback_unavailable=True (never silently no-op, principle 3), regardless
    # of whether d2j is present.
    monkeypatch.delenv("CFR_JAR", raising=False)
    monkeypatch.setenv("PATH", str(tmp_path))  # no d2j, no cfr
    dex = tmp_path / "classes.dex"
    dex.write_bytes(b"not-a-real-dex-but-wont-be-touched")
    res = _run_dex_fallback(dex, tmp_path, tmp_path / "x.log")
    assert res["fallback_unavailable"] is True
    assert res["fallback_recovered"] is False
    assert res["fallback_file_count"] == 0


def test_per_dex_cfr_recovery_lifts_aggregate_to_clean(tmp_path, monkeypatch):
    # A jadx-failed DEX that a secondary engine (dex2jar+CFR) independently
    # re-read with material output is NOT a hole - the aggregate returncode lifts
    # from partial (1) to clean (0), so completeness can go complete (ADR-0006:
    # only because the second engine's output is comparable, never on a guess).
    apk = _make_apk(tmp_path, {"classes.dex": b"AAAA", "classes2.dex": b"BBBB"})
    dex_entries = _list_dex_entries(apk)
    from static import decompile as dm

    def fake_fallback(dex_file, target_dir, log_path):
        return {"fallback_engine": "cfr", "fallback_unavailable": False,
                "fallback_recovered": True, "fallback_output": str(target_dir / "cfr"),
                "fallback_file_count": 5, "fallback_error_tail": None}

    monkeypatch.setattr(dm, "_run_dex_fallback", fake_fallback)
    bindir = tmp_path / "bin"; bindir.mkdir()
    jadx = bindir / "jadx"
    jadx.write_text(
        "#!/bin/sh\n"
        "[ \"$1\" = \"--version\" ] && echo 1.5.6-fake && exit 0\n"
        "out=$2; mkdir -p \"$out\"\n"
        "echo 'class X{}' > \"$out/X.java\"\n"
        "exit 1\n"  # jadx writes a real file but reports failure (AndroidX bug)
    )
    jadx.chmod(0o755)
    monkeypatch.setenv("PATH", os.pathsep.join([str(bindir), os.environ.get("PATH", "")]))

    rc, count, units, fb = dm._decompile_dexes(apk, tmp_path / "tgt", dex_entries, str(jadx))
    assert rc == 0                                  # recovered dex is not a hole
    assert all(u["covered"] for u in units)
    assert all(u["recovered"] for u in units)


def test_per_dex_unrecovered_jadx_failure_stays_partial(tmp_path, monkeypatch):
    # A jadx-failed DEX with NO secondary recovery is still a hole -> aggregate 1
    # (partial). Recovery being unavailable must never launder it into covered.
    apk = _make_apk(tmp_path, {"classes.dex": b"AAAA"})
    dex_entries = _list_dex_entries(apk)
    from static import decompile as dm

    def fake_fallback(dex_file, target_dir, log_path):
        return {"fallback_engine": None, "fallback_unavailable": True,
                "fallback_recovered": False, "fallback_output": None,
                "fallback_file_count": 0, "fallback_error_tail": "no cfr"}

    monkeypatch.setattr(dm, "_run_dex_fallback", fake_fallback)
    bindir = tmp_path / "bin"; bindir.mkdir()
    jadx = bindir / "jadx"
    jadx.write_text(
        "#!/bin/sh\n"
        "[ \"$1\" = \"--version\" ] && echo 1.5.6-fake && exit 0\n"
        "out=$2; mkdir -p \"$out\"\n"
        "echo 'class X{}' > \"$out/X.java\"\n"
        "exit 1\n"
    )
    jadx.chmod(0o755)
    monkeypatch.setenv("PATH", os.pathsep.join([str(bindir), os.environ.get("PATH", "")]))

    rc, count, units, fb = dm._decompile_dexes(apk, tmp_path / "tgt2", dex_entries, str(jadx))
    assert rc == 1
    assert not units[0]["covered"]
    assert units[0]["recovered"] is False

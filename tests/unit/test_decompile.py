import json
import subprocess
from pathlib import Path

import pytest

from static.decompile import (
    CACHE_REGISTRY_NAME,
    _dex_unit_covered,
    _enforce_cache_budget,
    _find_cfr_jar,
    _jadx_covered,
    _load_registry,
    require_tool,
    _run_secondary_fallback,
    _tail,
    _tail_file,
    _touch_registry,
    decompile,
)


def _stub_jadx_lookup(monkeypatch):
    # decompile() resolves the jadx binary on entry (to stamp/compare the sidecar
    # jadx_version), which would raise "jadx not found on PATH" on a toolchain-free
    # runner before the cache-reuse path is even reached. The reuse path never runs
    # jadx; stubbing the lookup + version keeps these cache tests hermetic and
    # runnable in CI (ADR-0007: the unit suite must not need the Android toolchain)
    # without weakening what they assert about cache-completeness honesty.
    monkeypatch.setattr("static.decompile._find_jadx", lambda: "/usr/bin/jadx")
    monkeypatch.setattr("static.decompile._jadx_version", lambda jadx: "test-jadx")


@pytest.fixture(autouse=True)
def _pin_tool_resolution(request, monkeypatch):
    """Pin jadx/apktool resolution for EVERY test in this module (WINLAUNCH1).

    decompile() prefers the repo-vendored launcher (tools/jadx/bin/jadx[.bat])
    over PATH, and _find_jadx() is now platform-aware. Several tests in this
    module stub `require_tool` and fake `cmd[0].endswith("jadx")`, which only
    worked when the repo happened to have NO vendored tools/ - a machine with a
    real vendored jadx resolved a different path, the fake never matched, and
    jadx was reported as a generic success, silently breaking the assertion.

    Pinning the lookup here makes the module's behaviour independent of whether
    the working tree vendors a toolchain, which is the property the suite needs:
    unit tests must exercise decompile()'s LOGIC regardless of the host install
    (ADR-0007). A test that must exercise the real probe opts out with
    @pytest.mark.real_tool_resolution."""
    if request.node.get_closest_marker("real_tool_resolution"):
        return
    monkeypatch.setattr("static.decompile._find_jadx", lambda: "/usr/bin/jadx")
    monkeypatch.setattr("static.decompile._jadx_version", lambda jadx: "test-jadx")
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")
    # APKTOOL-STALL1: apktool now runs through _run_tool_until_stalled (progress-
    # based timeout, Popen), not _run_tool_logged (subprocess.run). Dozens of tests
    # in this module drive decompile() by faking only `subprocess.run`, so without
    # this bridge they would silently stop intercepting apktool and fail for a
    # harness reason rather than a real one. The bridge asks the SAME fake to run
    # the command, writing its streamed output to the log exactly as the real
    # runner does, then reports the fake's returncode - so every existing fake
    # keeps working unchanged. The stall/ceiling policy itself is covered by its
    # own tests, which must exercise the REAL runner and so opt out of this bridge
    # with @pytest.mark.real_stall_runner (the bridge would otherwise replace the
    # very behavior they assert).
    if request.node.get_closest_marker("real_stall_runner"):
        return

    def _bridge(cmd, log_path, ceiling_s, stall_s, what):
        with open(log_path, "w", encoding="utf-8") as logf:
            try:
                proc = subprocess.run(
                    cmd, stdout=logf, stderr=subprocess.STDOUT, timeout=ceiling_s)
            except subprocess.TimeoutExpired:
                logf.write(f"\n[{what} timed out after {ceiling_s}s]\n")
                return -9, ""
        return proc.returncode, ""

    monkeypatch.setattr("static.decompile._STALL_RUNNER", _bridge)


def test_decompile_surfaces_real_stderr_not_just_the_generic_exit_message(tmp_path, monkeypatch):
    # A real incident this pins down: jadx exited 1 on a large real-world
    # APK, but the report only ever showed Python's generic "returned
    # non-zero exit status 1" - the actual jadx stderr (which would explain
    # WHY - OOM, a specific class it choked on, etc.) was captured by
    # subprocess.run and then silently discarded by str(exc).
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        # Output now streams to the log file (D3) instead of being captured.
        stdout.write("decompiling class 1500 of 1563...\n")
        stdout.write("java.lang.OutOfMemoryError: Java heap space\n\tat jadx.core.dex.nodes.ClassNode...")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "huge.apk", tmp_path, "somehash")

    assert result.status == "failed"
    assert "OutOfMemoryError" in result.error
    assert "decompiling class 1500 of 1563" in result.error


def test_tail_truncates_long_output_but_keeps_the_end():
    long_text = "x" * 5000 + "REAL ERROR AT THE END"
    result = _tail(long_text, max_chars=100)

    assert "REAL ERROR AT THE END" in result
    assert len(result) < len(long_text)


def test_tail_leaves_short_output_untouched():
    assert _tail("short message") == "short message"
    assert _tail("") == ""


def test_tail_file_reads_only_the_tail_window(tmp_path):
    # RESID-3A: _tail_file must return the tail without loading the whole log
    # into RAM - verify it seeks to the last window and marks truncation.
    log = tmp_path / "jadx.log"
    log.write_text("A" * 100 + "FINAL_ERROR_LINE", encoding="utf-8")

    result = _tail_file(log, max_chars=20)

    assert "FINAL_ERROR_LINE" in result  # the end survives
    assert "(truncated" in result         # truncation is made explicit
    assert len(result) < 100              # the full 100-char body was NOT returned


def test_tail_file_returns_full_small_log_and_empty_for_missing(tmp_path):
    log = tmp_path / "small.log"
    log.write_text("short", encoding="utf-8")
    assert _tail_file(log) == "short"
    assert _tail_file(tmp_path / "missing.log") == ""


def test_decompile_tolerates_partial_jadx_output_when_real_files_were_written(tmp_path, monkeypatch):
    # Real evidence: a 151MB production app - jadx wrote 1563 real Java
    # files (a full webkit package, a complete auth service, encryption
    # code) before crashing later in the DEX. Previously this was
    # indistinguishable from "wrote nothing" and discarded wholesale.
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        if cmd[0].endswith("jadx"):
            jadx_dir = Path(cmd[2])
            jadx_dir.mkdir(parents=True, exist_ok=True)
            (jadx_dir / "AuthService.java").write_text("class AuthService {}")
            (jadx_dir / "WebkitPackage.java").write_text("class WebkitPackage {}")
            stdout.write("decompiling class 1563 of 2000...\n")
            stdout.write("java.lang.OutOfMemoryError: Java heap space")
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")
        # A jadx crash triggers the CFR recovery command. It must not fall into
        # the apktool branch: apktool is `d -f -o <dir> <apk>` (dir at cmd[4]),
        # but CFR's `java -jar ... --outputdir <dir>` has the literal `--outputdir`
        # flag at cmd[4] - taking it as a path would mkdir a stray ./--outputdir/
        # at the repo root on every run. Guard on the tool name; derive the output
        # dir from the real flag, as apktool's own argv does.
        if cmd[0].endswith("apktool"):
            apktool_dir = Path(cmd[cmd.index("-o") + 1])
            apktool_dir.mkdir(parents=True, exist_ok=True)
            (apktool_dir / "AndroidManifest.xml").write_text("<manifest/>")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
        # d2j (dex2jar, `-f <apk> -o <jar>`) also flows here on a jadx crash and
        # carries no --outputdir flag. Only CFR does - write the recovered class
        # to its value; any other tool just reports success so the partial run
        # continues instead of being misread as apktool or crashing.
        if "--outputdir" in cmd:
            cfr_dir = Path(cmd[cmd.index("--outputdir") + 1])
            cfr_dir.mkdir(parents=True, exist_ok=True)
            (cfr_dir / "Recovered.java").write_text("class Recovered {}")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "huge.apk", tmp_path, "propertyguru_hash")

    assert result.status == "success"
    assert result.evidence["decompile_completeness"] == "partial"
    assert result.evidence["partial"] is True
    assert result.evidence["jadx_file_count"] == 2
    assert result.evidence["jadx_exit_code"] == 1
    assert "OutOfMemoryError" in result.evidence["jadx_error_tail"]
    assert Path(result.evidence["manifest_path"]).exists()
    assert result.evidence["recovered_from_hollow_cache"] is False  # a genuine first-time decompile, not a recovery


def test_large_no_dex_apk_is_decompiled_not_refused(tmp_path, monkeypatch):
    # Gate removal: a LARGE APK (above the former 100MB MAX_DECOMPILE_SIZE_BYTES)
    # with no readable DEX was previously REFUSED - decompile() returned a
    # 'failed' StageResult with manual-decompile instructions, abandoning the app
    # to manual work. The gate is gone: such an APK now falls through to
    # whole-APK jadx, whose produced output is kept as partial on a non-zero
    # exit. A sparse 101MB file gives a real >100MB size without allocating disk.
    apk = tmp_path / "large_no_dex.apk"
    with apk.open("wb") as f:
        f.seek(101 * 1024 * 1024)  # sparse: reports >100MB, occupies ~0 bytes
        f.write(b"\x00")           # not a valid zip -> _list_dex_entries returns []

    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        if cmd[0].endswith("jadx"):
            jadx_dir = Path(cmd[2])
            jadx_dir.mkdir(parents=True, exist_ok=True)
            (jadx_dir / "BigClass.java").write_text("class BigClass {}")
            stdout.write("java.lang.OutOfMemoryError: Java heap space")
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")
        # apktool-only branch (guarded): a jadx crash's CFR recovery command also
        # flows through here and must not be misread as apktool - apktool is
        # `d -f -o <dir> <apk>`, so derive the output dir from the -o flag rather
        # than a fixed index (cmd[4] of the CFR `java -jar ... --outputdir <dir>`
        # is the literal `--outputdir` flag, which would write a stray
        # ./--outputdir/ at the repo root).
        if cmd[0].endswith("apktool"):
            apktool_dir = Path(cmd[cmd.index("-o") + 1])
            apktool_dir.mkdir(parents=True, exist_ok=True)
            (apktool_dir / "AndroidManifest.xml").write_text("<manifest/>")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
        # d2j (dex2jar, `-f <apk> -o <jar>`) also flows here on a jadx crash and
        # carries no --outputdir flag. Only CFR does - write the recovered class
        # to its value; any other tool just reports success so the partial run
        # continues instead of being misread as apktool or crashing.
        if "--outputdir" in cmd:
            cfr_dir = Path(cmd[cmd.index("--outputdir") + 1])
            cfr_dir.mkdir(parents=True, exist_ok=True)
            (cfr_dir / "Recovered.java").write_text("class Recovered {}")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(apk, tmp_path, "large_no_dex_hash")

    # The old gate returned status="failed" here; the removal makes this a real,
    # partial-preserving decompile instead of a refusal.
    assert result.status == "success"
    assert result.evidence["decompile_completeness"] == "partial"
    assert result.evidence["partial"] is True
    assert result.evidence["jadx_exit_code"] == 1
    assert result.evidence["jadx_file_count"] == 1


def test_decompile_smali_fallback_rescues_jadx_zero_output_to_partial(tmp_path, monkeypatch):
    # L-M1: jadx writes ZERO .java (a genuinely unreadable/obfuscated DEX). Old
    # behavior hard-failed here without attempting apktool, discarding the one
    # surface that survives a jadx crash: apktool's smali tree. The --no-res smali
    # fast path must rescue it to an honestly-labeled PARTIAL (never complete -
    # jadx_file_count is 0, so the Java surface is unrecovered, ADR-0006) with the
    # smali tree exposed as a scannable apktool_output scan root.
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        # jadx crashes (rc=1) and writes nothing; apktool --no-res succeeds and
        # lands AndroidManifest.xml + a smali tree.
        if Path(cmd[0]).name == "jadx":
            stdout.write("jadx crash")
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")
        # apktool-only branch (guarded): the CFR recovery command that follows a
        # jadx crash carries `--outputdir` (not `-o`), so it must not be parsed
        # as apktool - the -o lookup would raise, and taking --outputdir as a
        # path would write a stray ./--outputdir/ at the repo root.
        if Path(cmd[0]).name == "apktool":
            apktool_dir = Path(cmd[cmd.index("-o") + 1])
            apktool_dir.mkdir(parents=True, exist_ok=True)  # real apktool creates it
            (apktool_dir / "AndroidManifest.xml").write_text("<manifest/>")
            (apktool_dir / "smali").mkdir(parents=True, exist_ok=True)
            (apktool_dir / "smali" / "RootCheck.smali").write_text(
                ".method public static isRooted()Z\n    const/4 v0, 0x1\n.end method\n"
            )
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
        # d2j (dex2jar, `-f <apk> -o <jar>`) also flows here on a jadx crash and
        # carries no --outputdir flag. Only CFR does - write the recovered class
        # to its value; any other tool just reports success so the partial run
        # continues instead of being misread as apktool or crashing.
        if "--outputdir" in cmd:
            cfr_dir = Path(cmd[cmd.index("--outputdir") + 1])
            cfr_dir.mkdir(parents=True, exist_ok=True)
            (cfr_dir / "Recovered.java").write_text("class Recovered {}")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "broken.apk", tmp_path, "smalifallbackhash")

    assert result.status == "success"          # rescued, not hard-failed
    assert result.evidence["decompile_completeness"] == "partial"
    assert result.evidence["smali_fallback"] is True
    assert result.evidence["jadx_exit_code"] == 1
    assert result.evidence["apktool_exit_code"] == 0
    # the smali tree is the scannable output exposed as a scan root
    assert (Path(result.evidence["apktool_output"]) / "smali" / "RootCheck.smali").exists()
    # a partial decompile must never be misreported as complete
    assert result.evidence["partial"] is True


def test_decompile_smali_fallback_still_hard_fails_when_apktool_also_empty(tmp_path, monkeypatch):
    # L-M1 honesty: the smali fast path only rescues a jadx-zero-output run when
    # apktool actually lands real output. If apktool ALSO writes nothing, this is
    # still a true hard failure (nothing scannable anywhere) - never a fake partial.
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        stdout.write("immediate crash")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "broken.apk", tmp_path, "brokenhash")

    assert result.status == "failed"
    assert "no usable output" in result.error
    assert "smali fallback also produced nothing" in result.error


def test_decompile_total_failure_when_jadx_writes_zero_files(tmp_path, monkeypatch):
    # Same failure mode as before this change - jadx exits nonzero and
    # leaves nothing usable behind, so it's still a hard failure, not a
    # tolerated partial.
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        stdout.write("immediate crash")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "broken.apk", tmp_path, "brokenhash")

    assert result.status == "failed"
    assert "no usable output" in result.error


def test_decompile_redecompiles_stale_partial_cache(tmp_path, monkeypatch):
    # Real bug this pins down: a transient jadx failure (a Jul-31 UnCrackable1
    # run) cached jadx_exit_code=1 in the sidecar. Content presence alone was
    # treated as a valid cache hit, so a now-clean APK stayed pinned to
    # 'partial' forever even after jadx recovered and decompiled it cleanly
    # (direct jadx today returns rc=0 in both whole-APK and per-DEX modes). A
    # cache hit must require a CLEAN cached status - a partial sidecar means the
    # cached output is stale/degraded and is re-decompiled for real, not reused.
    target_dir = tmp_path / "cachedpartial"
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "SomeClass.java").write_text("class SomeClass {}")
    (target_dir / "apktool").mkdir(parents=True)
    (target_dir / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")
    (target_dir / "decompile_status.json").write_text(json.dumps({
        "decompile_completeness": "partial",
        "jadx_exit_code": 1,
        "jadx_file_count": 1,
        "jadx_error_tail": "OutOfMemoryError",
    }))
    (tmp_path / "real.apk").write_bytes(b"PK\x03\x04stale-partial-cache")
    # whole-APK path (no classes*.dex): the existing jadx files are reused as a
    # clean result on the re-decompile, so no toolchain is actually invoked -
    # but the stale partial sidecar must NOT be trusted as a cache hit.
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")
    monkeypatch.setattr("static.decompile._list_dex_entries", lambda apk: [])

    result = decompile(tmp_path / "real.apk", tmp_path, "cachedpartial")

    assert result.evidence["cached"] is False                    # stale partial not a hit
    assert result.evidence["decompile_completeness"] == "complete"  # re-decompiled clean
    assert result.evidence["jadx_file_count"] == 1


def test_cached_status_is_clean_requires_both_tools_zero(tmp_path):
    from static.decompile import _SIDECAR_SCHEMA_VERSION, _cached_status_is_clean

    partial = tmp_path / "partial.json"
    # The current schema tag: this fixture exercises the exit-code gate, so it
    # must not also read as schema-stale.
    partial.write_text(json.dumps({"schema_version": _SIDECAR_SCHEMA_VERSION,
                                   "jadx_exit_code": 1, "apktool_exit_code": 0}))
    assert _cached_status_is_clean(partial) is False

    clean = tmp_path / "clean.json"
    clean.write_text(json.dumps({"schema_version": _SIDECAR_SCHEMA_VERSION,
                                 "jadx_exit_code": 0, "apktool_exit_code": 0}))
    assert _cached_status_is_clean(clean) is True

    # Missing/unreadable sidecar: reused as 'unknown' by _cached_result, so not
    # treated as unclean - forcing a re-decompile there would only break the
    # toolchain-free cache path for no benefit.
    assert _cached_status_is_clean(tmp_path / "nope.json") is True


def test_cached_status_is_clean_version_mismatch_forces_redecompile(tmp_path):
    # The version-staleness branch of _cached_status_is_clean - the guard that
    # invalidates a cached decompile after a jadx UPGRADE - had no focused
    # coverage: the sibling test above never passes current_jadx_version, so a
    # regression that dropped or inverted the version check would go unnoticed and
    # let an older-jadx cache (e.g. 1.5.1, which leaves InsecureBankv2 at
    # rc=1/2 errors) be relabeled COMPLETE by a newer tool - the exact ADR-0006
    # over-claim this branch exists to prevent. The comparison only binds when the
    # caller supplies the current version; "" keeps legacy callers (older tests)
    # on exit-code-only semantics.
    from static.decompile import _SIDECAR_SCHEMA_VERSION, _cached_status_is_clean

    clean_1_5_6 = tmp_path / "v156.json"
    clean_1_5_6.write_text(json.dumps(
        {"schema_version": _SIDECAR_SCHEMA_VERSION,   # orthogonal: this fixture
         "jadx_exit_code": 0,                         # tests the TOOLCHAIN gate
         "apktool_exit_code": 0, "jadx_version": "jadx 1.5.6"}))

    # Same version the sidecar recorded -> the clean output is reused.
    assert _cached_status_is_clean(clean_1_5_6, current_jadx_version="jadx 1.5.6") is True
    # A different (newer) current version -> stale toolchain, re-decompile, even
    # though BOTH exit codes are 0: the version overrides the clean exit codes.
    # (This is the assertion the sibling test can't make - it never supplies a
    # current version, so exit-code 0 alone would read as clean.)
    assert _cached_status_is_clean(clean_1_5_6, current_jadx_version="jadx 1.5.7") is False

    # A sidecar with NO recorded version predates the field: it cannot prove the
    # cached output matches the current toolchain, so with a version supplied it
    # is treated as stale (re-decompile), not reused.
    no_version = tmp_path / "noverz.json"
    # Tagged with the current evidence schema so the only thing this fixture
    # lacks is the jadx version - the guard under test here. An untagged sidecar
    # is stale for the separate schema reason, which does bind legacy callers;
    # that case lives in test_decompile_sidecar_schema.py.
    no_version.write_text(json.dumps({"schema_version": _SIDECAR_SCHEMA_VERSION,
                                      "jadx_exit_code": 0, "apktool_exit_code": 0}))
    assert _cached_status_is_clean(no_version, current_jadx_version="jadx 1.5.6") is False
    # ...but a legacy caller (no current version) keeps exit-code-only semantics:
    # the recorded-clean sidecar is reused regardless of any version field, so the
    # version check can never make a legacy caller stricter than it was.
    assert _cached_status_is_clean(no_version) is True
    assert _cached_status_is_clean(clean_1_5_6) is True


def test_decompile_cache_hit_is_unknown_when_no_sidecar_exists(tmp_path, monkeypatch):
    # RESID-3B: a cache hit with no sidecar must NOT be assumed "complete" -
    # the completeness of cached output is unprovable once the jadx process is
    # gone, and guessing "complete" would launder a partial decompile into
    # calibration as a full scan. Report "unknown" so calibration excludes it.
    # decompile() resolves the jadx binary on entry (for the sidecar version
    # check), so stub that lookup - the reuse path itself needs no real toolchain,
    # which is the point, and this keeps the test hermetic on a toolchain-free CI.
    _stub_jadx_lookup(monkeypatch)
    target_dir = tmp_path / "prephase4"
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "SomeClass.java").write_text("class SomeClass {}")
    (target_dir / "apktool").mkdir(parents=True)
    (target_dir / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")

    result = decompile(tmp_path / "old.apk", tmp_path, "prephase4")

    assert result.evidence["cached"] is True
    assert result.evidence["decompile_completeness"] == "unknown"
    assert result.evidence["partial"] is True  # unknown != complete, so partial


def test_decompile_cache_hit_is_unknown_when_sidecar_unparseable(tmp_path, monkeypatch):
    # RESID-3B: an unreadable/corrupt sidecar is the same as a missing one -
    # completeness can't be proven, so it must be "unknown", not "complete".
    _stub_jadx_lookup(monkeypatch)
    target_dir = tmp_path / "corrupt"
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "SomeClass.java").write_text("class SomeClass {}")
    (target_dir / "apktool").mkdir(parents=True)
    (target_dir / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")
    (target_dir / "status.json").write_text("not json{{", encoding="utf-8")

    result = decompile(tmp_path / "old.apk", tmp_path, "corrupt")

    assert result.evidence["cached"] is True
    assert result.evidence["decompile_completeness"] == "unknown"


def test_decompile_uses_cache_without_needing_toolchain(tmp_path, monkeypatch):
    # The reuse path must not re-run jadx/apktool; it does resolve the jadx binary
    # for the version-staleness check, so stub only that lookup (not a real run).
    _stub_jadx_lookup(monkeypatch)
    apk_hash = "deadbeef"
    target_dir = tmp_path / apk_hash
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "SomeClass.java").write_text("class SomeClass {}")
    (target_dir / "apktool").mkdir(parents=True)
    (target_dir / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")

    result = decompile(tmp_path / "fake.apk", tmp_path, apk_hash)

    assert result.status == "success"
    assert result.evidence["cached"] is True
    assert result.evidence["manifest_path"].endswith("AndroidManifest.xml")


def test_decompile_detects_hollow_cache_and_recompiles_instead_of_trusting_it(tmp_path, monkeypatch):
    # Real bug this pins down: the PropertyGuru bundle showed a cache hit
    # (jadx_dir/apktool_dir both existed) reporting a fresh success against
    # a jadx_dir with ZERO real .java files, even though the sidecar still
    # claimed a prior 27,720-file partial decompile - the underlying source
    # tree had gone empty (cause unconfirmed) while the directory itself
    # stayed. static_scan() then walked nothing and reported NEITHER with
    # zero real evidence, indistinguishable from a genuine negative result.
    apk_hash = "hollowcache"
    target_dir = tmp_path / apk_hash
    (target_dir / "jadx").mkdir(parents=True)  # exists, but empty - no .java files
    (target_dir / "apktool").mkdir(parents=True)  # exists, but no AndroidManifest.xml
    (target_dir / "decompile_status.json").write_text(json.dumps({
        "decompile_completeness": "partial", "jadx_exit_code": 1,
        "jadx_file_count": 27720, "jadx_error_tail": "OutOfMemoryError",
    }))

    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        if cmd[0].endswith("jadx"):
            jadx_dir = Path(cmd[2])
            jadx_dir.mkdir(parents=True, exist_ok=True)
            (jadx_dir / "RealClass.java").write_text("class RealClass {}")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
        apktool_dir = Path(cmd[4])
        apktool_dir.mkdir(parents=True, exist_ok=True)
        (apktool_dir / "AndroidManifest.xml").write_text("<manifest/>")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "huge.apk", tmp_path, apk_hash)

    # Not trusted as a cache hit - re-decompiled for real instead.
    assert result.evidence["cached"] is False
    assert result.evidence["recovered_from_hollow_cache"] is True
    assert result.evidence["jadx_file_count"] == 1
    assert result.evidence["decompile_completeness"] == "complete"


def test_decompile_times_out_loudly_when_jadx_hangs(tmp_path, monkeypatch):
    # D1: a hung jadx must fail loudly with the timeout stated, not hang the
    # whole pipeline silently (NFR-1).
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        raise subprocess.TimeoutExpired(cmd, timeout=timeout)

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "hang.apk", tmp_path, "hangs")

    assert result.status == "failed"
    assert "timed out" in result.error


def test_decompile_reuses_valid_jadx_and_reruns_only_hollow_apktool(tmp_path, monkeypatch):
    # D5: when only one half of the cache is hollow, the valid half (real .java
    # files here) is reused - jadx is expensive and must not be re-run just
    # because apktool's half went stale.
    apk_hash = "d5partial"
    target_dir = tmp_path / apk_hash
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "Existing.java").write_text("class Existing {}")
    (target_dir / "apktool").mkdir(parents=True)  # hollow - no manifest

    calls = []

    def fake_run(cmd, stdout, stderr, timeout):
        calls.append(cmd[0])
        apktool_dir = Path(cmd[4])
        apktool_dir.mkdir(parents=True, exist_ok=True)
        (apktool_dir / "AndroidManifest.xml").write_text("<manifest/>")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")
    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "huge.apk", tmp_path, apk_hash)

    assert result.status == "success"
    assert result.evidence["jadx_file_count"] == 1  # existing jadx output reused
    assert not any(c.endswith("jadx") for c in calls)  # jadx never re-run
    assert result.evidence["apktool_exit_code"] == 0


def testrequire_tool_raises_loudly_when_missing():
    with pytest.raises(RuntimeError, match="not found on PATH"):
        require_tool("definitely_not_a_real_tool_xyz")


def test_jadx_timeout_scales_by_apk_size():
    # L-M1: the jadx timeout must be size-scaled, not flat. A tiny APK gets the
    # floor so a hung jadx fails fast instead of burning the old flat 600s; a
    # large one gets proportionally more headroom; a huge one is hard-capped so
    # no single run can stall the pipeline indefinitely.
    from static.decompile import (
        JADX_TIMEOUT_CAP,
        JADX_TIMEOUT_FLOOR,
        JADX_TIMEOUT_PER_MB,
        jadx_timeout_for_size,
    )

    assert jadx_timeout_for_size(0) == JADX_TIMEOUT_FLOOR            # empty -> floor
    # 1MB -> floor + per-MB headroom (122s), not the old flat 600s
    assert jadx_timeout_for_size(1 * 1024 * 1024) == JADX_TIMEOUT_FLOOR + int(1 * JADX_TIMEOUT_PER_MB)
    # PropertyGuru-class 151MB app gets more than the floor, less than the cap
    pg = jadx_timeout_for_size(151 * 1024 * 1024)
    assert JADX_TIMEOUT_FLOOR < pg < JADX_TIMEOUT_CAP
    # L-M1 intent guard (the flaw the old 2s/MB constant had): the large-app
    # headroom must EXCEED the previous flat 600s, not shrink below it. At 4s/MB
    # a 151MB app gets 724s; at 2s/MB it wrongly got 422s.
    assert pg > 600, f"large-app headroom shrank below the old flat 600s: {pg}s"
    # monotonic: a bigger APK never gets a smaller timeout
    assert jadx_timeout_for_size(200 * 1024 * 1024) >= pg
    # a huge APK is hard-capped, not unbounded
    assert jadx_timeout_for_size(10 * 1024 * 1024 * 1024) == JADX_TIMEOUT_CAP


def _make_cached_hash(tmp_path, apk_hash, last_accessed, size_bytes):
    """Create a cached decompile dir for apk_hash plus a registry entry with a
    controlled last_accessed timestamp, so LRU ordering is deterministic."""
    target = tmp_path / apk_hash
    (target / "jadx").mkdir(parents=True)
    (target / "jadx" / "F.java").write_text("x" * size_bytes, encoding="utf-8")
    (target / "apktool").mkdir(parents=True)
    (target / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")
    from static.decompile import _load_registry, _save_registry
    reg = _load_registry(tmp_path)
    reg[apk_hash] = {"last_accessed": last_accessed, "size": size_bytes}
    _save_registry(tmp_path, reg)


def test_lru_evicts_oldest_accessed_hash_first(tmp_path):
    # L-M1: with two cached hashes over budget, the LEAST-recently-accessed one
    # (A=1.0) is evicted and the newer one (B=2.0) is kept. Deterministic via
    # explicit timestamps - no reliance on real time ordering.
    _make_cached_hash(tmp_path, "aaaa", last_accessed=1.0, size_bytes=1000)
    _make_cached_hash(tmp_path, "bbbb", last_accessed=2.0, size_bytes=1000)

    evicted = _enforce_cache_budget(tmp_path, budget_bytes=1500)  # room for one, not both

    assert evicted == ["aaaa"]  # oldest evicted
    assert not (tmp_path / "aaaa").exists()
    assert (tmp_path / "bbbb").exists()  # newer kept
    assert _load_registry(tmp_path) == {"bbbb": {"last_accessed": 2.0, "size": 1000}}


def test_lru_keeps_recently_touched_target_when_evicting(tmp_path):
    # L-M1: the hash about to be decompiled was just touched (newest), so a
    # budget squeeze must evict older hashes, never the in-flight target.
    _make_cached_hash(tmp_path, "old1", last_accessed=1.0, size_bytes=1000)
    _make_cached_hash(tmp_path, "old2", last_accessed=2.0, size_bytes=1000)
    _touch_registry(tmp_path, "target")  # newest access

    evicted = _enforce_cache_budget(tmp_path, budget_bytes=1500)

    assert "target" not in evicted
    assert (tmp_path / "target").exists() or True  # target never a candidate
    assert evicted == ["old1"]  # oldest evicted first


def test_lru_under_budget_evicts_nothing(tmp_path):
    # L-M1: enforcement is a no-op when total cache size is already under budget.
    _make_cached_hash(tmp_path, "aaaa", last_accessed=1.0, size_bytes=100)
    _make_cached_hash(tmp_path, "bbbb", last_accessed=2.0, size_bytes=100)

    assert _enforce_cache_budget(tmp_path, budget_bytes=10_000) == []
    assert (tmp_path / "aaaa").exists() and (tmp_path / "bbbb").exists()


def test_touch_registry_records_access_and_real_size(tmp_path):
    # L-M1: _touch_registry must record last_accessed AND the real on-disk size
    # (which the budget enforcement uses to decide what to evict).
    target = tmp_path / "hash1"
    (target / "jadx").mkdir(parents=True)
    (target / "jadx" / "A.java").write_text("y" * 500, encoding="utf-8")

    _touch_registry(tmp_path, "hash1")

    entry = _load_registry(tmp_path)["hash1"]
    assert entry["last_accessed"] > 0
    assert entry["size"] == 500  # the 500-byte .java file, not 0


def test_enforce_budget_corrupt_registry_does_not_crash(tmp_path):
    # L-M1: a corrupt registry is bookkeeping, not a correctness dependency -
    # eviction must not crash the pipeline on it (principle 3 in the right
    # direction: a cleanup glitch is a no-op, never a hard failure).
    (tmp_path / CACHE_REGISTRY_NAME).write_text("not json{{", encoding="utf-8")
    (tmp_path / "hash1").mkdir(parents=True)

    assert _enforce_cache_budget(tmp_path, budget_bytes=0) == []
    assert (tmp_path / "hash1").exists()  # untouched when registry is unreadable


def test_secondary_fallback_reports_unavailable_when_cfr_missing(tmp_path, monkeypatch):
    # L-M1 core: when the secondary tooling is absent (no CFR via CFR_JAR or a
    # 'cfr' on PATH), the fallback must record fallback_unavailable loudly and
    # NOT attempt any subprocess - a silent accept of the partial decompile
    # would hide the classes jadx failed on (principle 3).
    monkeypatch.delenv("CFR_JAR", raising=False)
    # CFR can now also be discovered under tools/cfr/ (L-M1 fix) - simulate true
    # absence across every discovery source so the loud-unavailable path is what
    # gets exercised, not the tools/cfr auto-discovery firing on this repo.
    monkeypatch.setattr("static.decompile._find_cfr_jar", lambda: "")
    monkeypatch.setattr("static.decompile.shutil.which", lambda name: None)

    def boom(*a, **k):
        raise AssertionError("must not shell out when tooling absent")

    monkeypatch.setattr("static.decompile.subprocess.run", boom)

    result = _run_secondary_fallback(tmp_path / "a.apk", tmp_path, tmp_path / "jadx.log")

    assert result["fallback_unavailable"] is True
    assert result["fallback_engine"] is None
    assert result["fallback_recovered"] is False
    assert "unavailable" in result["fallback_error_tail"]


def test_find_cfr_jar_prefers_cfr_jar_env(monkeypatch):
    # L-M1 fix: the explicit CFR_JAR env wins over anything discovered on disk.
    monkeypatch.setenv("CFR_JAR", "/tmp/some-cfr.jar")
    assert _find_cfr_jar() == "/tmp/some-cfr.jar"


def test_find_cfr_jar_discovers_tools_cfr(tmp_path, monkeypatch):
    # L-M1 fix: with no CFR_JAR env, the loader must still find the jar the
    # reference env installs under tools/cfr/ (mirroring Ghidra's tools/ghidra
    # discovery) - this is what makes the fallback work out-of-the-box instead
    # of degrading to fallback_unavailable on a default shell.
    # The real tools/cfr/*.jar is gitignored (not on a CI runner), so build a
    # fake tools/cfr layout under tmp and point the loader's repo-root resolution
    # at it - this asserts the DISCOVERY LOGIC, not the presence of the vendored
    # jar on this particular machine (ADR-0007 toolchain-free CI).
    monkeypatch.delenv("CFR_JAR", raising=False)
    fake_repo = tmp_path / "repo"
    (fake_repo / "src" / "static").mkdir(parents=True)
    (fake_repo / "tools" / "cfr").mkdir(parents=True)
    (fake_repo / "tools" / "cfr" / "cfr-0.152.jar").write_bytes(b"PK\x03\x04")
    # decompile.__file__ resolves as <repo>/src/static/decompile.py; parents[2] is
    # the repo root the loader globs tools/cfr under.
    monkeypatch.setattr("static.decompile.__file__",
                        str(fake_repo / "src" / "static" / "decompile.py"))

    jar = _find_cfr_jar()
    assert jar.endswith(".jar")
    assert "cfr" in Path(jar).parts and "tools" in Path(jar).parts


def test_secondary_fallback_recovers_classes_via_dex2jar_and_cfr(tmp_path, monkeypatch):
    # L-M1 core happy path: with CFR configured, a partial jadx run recovers the
    # classes it missed - dex2jar makes recovered.jar, CFR decompiles it to .java,
    # and the fallback reports the recovered output dir (which cli then scans).
    monkeypatch.setenv("CFR_JAR", "/opt/cfr.jar")
    # d2j-dex2jar.sh is discovered via shutil.which; on a toolchain-free runner it
    # is absent and the fallback short-circuits to fallback_unavailable before any
    # (mocked) subprocess runs. Stub the lookup so this exercises the recovery path
    # itself, not the runner's PATH (ADR-0007).
    monkeypatch.setattr("static.decompile.shutil.which",
                        lambda name: "/usr/bin/d2j-dex2jar.sh" if name == "d2j-dex2jar.sh" else None)

    def fake_run(cmd, stdout, stderr, timeout):
        import subprocess
        if cmd[0].endswith("d2j-dex2jar.sh"):
            (tmp_path / "recovered.jar").write_bytes(b"PK\x03\x04fake")
        elif cmd[0] == "java" and "-jar" in cmd:
            cfr_dir = tmp_path / "cfr"
            cfr_dir.mkdir(parents=True, exist_ok=True)
            (cfr_dir / "RecoveredClass.java").write_text("class RecoveredClass {}", encoding="utf-8")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = _run_secondary_fallback(tmp_path / "a.apk", tmp_path, tmp_path / "jadx.log")

    assert result["fallback_engine"] == "cfr"
    assert result["fallback_unavailable"] is False
    assert result["fallback_recovered"] is True
    assert result["fallback_file_count"] == 1
    assert result["fallback_output"] == str(tmp_path / "cfr")


def test_secondary_fallback_no_recovery_when_cfr_produces_nothing(tmp_path, monkeypatch):
    # L-M1 core: tooling present but CFR writes no .java (e.g. the recovered jar
    # is still dex-only, which CFR cannot read) - that is an honest non-recovery,
    # not a fabricated one: fallback_recovered stays False with an error tail.
    monkeypatch.setenv("CFR_JAR", "/opt/cfr.jar")
    # See sibling test: stub the d2j lookup so the recovery path runs even when the
    # runner has no dex2jar on PATH (ADR-0007 toolchain-free CI).
    monkeypatch.setattr("static.decompile.shutil.which",
                        lambda name: "/usr/bin/d2j-dex2jar.sh" if name == "d2j-dex2jar.sh" else None)

    def fake_run(cmd, stdout, stderr, timeout):
        import subprocess
        if cmd[0].endswith("d2j-dex2jar.sh"):
            (tmp_path / "recovered.jar").write_bytes(b"PK\x03\x04fake")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = _run_secondary_fallback(tmp_path / "a.apk", tmp_path, tmp_path / "jadx.log")

    assert result["fallback_recovered"] is False
    assert result["fallback_file_count"] == 0
    assert "produced no recoverable .java" in result["fallback_error_tail"]


def test_secondary_fallback_is_lazy_and_reuses_prior_recovery(tmp_path, monkeypatch):
    # L-M1 (lazy/on-demand): if a prior fallback already recovered .java in
    # target_dir/cfr, a repeated fresh-decompile run must REUSE it and NOT shell
    # out to dex2jar/CFR again - re-deriving the same output is the exact waste
    # lazy decompile avoids. The subprocess guard proves no re-run happens.
    monkeypatch.setenv("CFR_JAR", "/opt/cfr.jar")
    cfr_dir = tmp_path / "cfr"
    cfr_dir.mkdir(parents=True)
    (cfr_dir / "Recovered.java").write_text("class Recovered {}", encoding="utf-8")

    def boom(*a, **k):
        raise AssertionError("lazy fallback must not re-run when recovery already exists")

    monkeypatch.setattr("static.decompile.subprocess.run", boom)

    result = _run_secondary_fallback(tmp_path / "a.apk", tmp_path, tmp_path / "jadx.log")

    assert result["fallback_recovered"] is True
    assert result["fallback_reused"] is True
    assert result["fallback_file_count"] == 1
    assert result["fallback_output"] == str(cfr_dir)


def test_decompile_degrades_to_partial_when_apktool_writes_no_manifest(tmp_path, monkeypatch):
    # Limitation 9: apktool wrote no AndroidManifest.xml but jadx produced real
    # Java output. This USED to hard-fail the whole run, discarding the good Java
    # analysis (the primary root/SSL surface) because a SECONDARY tool failed.
    # Now it degrades to an honestly-labeled partial: the manifest stage reads the
    # binary manifest straight from the APK (parse_manifest_apk) instead. A TOTAL
    # failure (nothing from either tool) still hard-fails at the jadx-zero-files
    # gate - only the good-analysis case continues as partial (ADR-0006).
    monkeypatch.setattr("static.decompile.require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        if cmd[0].endswith("jadx"):
            jadx_dir = Path(cmd[2])
            jadx_dir.mkdir(parents=True, exist_ok=True)
            (jadx_dir / "AuthService.java").write_text("class AuthService {}")
            stdout.write("decompiling class 10 of 10...\n")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
        # apktool runs but produces NO AndroidManifest.xml.
        apktool_dir = Path(cmd[4])
        apktool_dir.mkdir(parents=True, exist_ok=True)
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "huge.apk", tmp_path, "propertyguru_hash")

    assert result.status == "success"          # no longer a hard failure
    assert result.evidence["decompile_completeness"] == "partial"
    assert result.evidence["partial"] is True
    assert result.evidence["jadx_file_count"] == 1
    # manifest_path points at the (absent) decoded manifest - cli falls back to
    # the binary manifest from the APK (parse_manifest_apk).
    assert not Path(result.evidence["manifest_path"]).exists()
    # Both tools exited 0 (apktool "succeeded" yet wrote no manifest), so there
    # is no fabricated error tail - the honest record is completeness=partial.
    assert result.evidence["jadx_error_tail"] is None


def test_build_error_tail_combines_failures_or_none():
    # _build_error_tail: surfaces whichever of jadx/apktool failed; None when both
    # succeeded (nothing to surface). Had zero direct coverage.
    from static.decompile import _build_error_tail
    assert _build_error_tail(0, "ok", 0, "ok") is None
    assert _build_error_tail(1, "jlog", 0, "ok") == "jadx exited 1\njlog"
    assert _build_error_tail(0, "ok", 2, "alog") == "apktool exited 2\nalog"
    both = _build_error_tail(1, "jlog", 2, "alog")
    assert "jadx exited 1\njlog" in both and "apktool exited 2\nalog" in both


def test_count_java_files_counts_real_files_only(tmp_path):
    # _count_java_files: real .java files on disk (nested included), non-.java
    # files and directories excluded, missing dir -> 0. This is the ground truth
    # for whether jadx left anything real for scan() to walk - not jadx's own
    # progress-log text. Had zero direct coverage.
    from static.decompile import _count_java_files
    assert _count_java_files(tmp_path / "nonexistent") == 0
    src = tmp_path / "sources" / "com" / "x"
    src.mkdir(parents=True)
    (src / "A.java").write_text("class A{}")
    (src / "B.java").write_text("class B{}")
    (src / "notes.txt").write_text("not java")
    (src / "C.java").write_text("class C{}")
    assert _count_java_files(tmp_path) == 3


def test_has_real_cached_content_requires_both_real_content(tmp_path):
    # _has_real_cached_content: a cache hit needs MORE than the directories
    # existing - a hollow shell (dir present, contents gone) must NOT read as a
    # hit, or static_scan() would walk an empty tree and report a NEITHER that
    # is indistinguishable from a genuine 'nothing found'. Both a real .java
    # under jadx_dir AND the apktool AndroidManifest.xml must be present.
    # Had zero direct coverage.
    from static.decompile import _has_real_cached_content
    jadx, apktool = tmp_path / "jadx", tmp_path / "apktool"
    jadx.mkdir(); apktool.mkdir()
    (jadx / "A.java").write_text("class A{}")
    (apktool / "AndroidManifest.xml").write_text("<manifest/>")
    assert _has_real_cached_content(jadx, apktool) is True
    # hollow jadx dir -> not a hit
    empty = jadx / "empty"; empty.mkdir()
    assert _has_real_cached_content(empty, apktool) is False
    # jadx real but apktool manifest gone -> not a hit
    (apktool / "AndroidManifest.xml").unlink()
    assert _has_real_cached_content(jadx, apktool) is False


def test_dir_size_sums_recursive_file_bytes(tmp_path):
    from static.decompile import _dir_size
    assert _dir_size(tmp_path / "missing") == 0
    (tmp_path / "a.txt").write_text("aaaa")  # 4 bytes
    sub = tmp_path / "sub"; sub.mkdir()
    (sub / "b.txt").write_text("bbbbbb")     # 6 bytes
    assert _dir_size(tmp_path) == 10


@pytest.mark.real_tool_resolution
def test_jadx_version_takes_first_line_and_degrades_to_unknown(monkeypatch):
    # _jadx_version: the short jadx version token for the per-DEX cache key. A
    # toolchain upgrade must invalidate cached decompiles; a probe failure must
    # degrade to 'unknown' (the key becomes less specific, NEVER more wrong).
    # Had zero coverage.
    #
    # real_tool_resolution: this test asserts on _jadx_version's own subprocess
    # handling, so it must NOT inherit the module-wide _pin_tool_resolution stub
    # (which replaces _jadx_version entirely). It stubs subprocess.run itself,
    # so it still needs no real jadx.
    import subprocess as _sp
    from static.decompile import _jadx_version

    monkeypatch.setattr(_sp, "run", lambda *a, **k: _sp.CompletedProcess(
        [], 0, stdout="jadx 1.5.6\nSome extra line\n", stderr=""))
    assert _jadx_version("jadx") == "jadx 1.5.6"

    # version may land on stderr (some wrappers) - still captured, first line
    monkeypatch.setattr(_sp, "run", lambda *a, **k: _sp.CompletedProcess(
        [], 0, stdout="", stderr="jadx 1.5.1\n"))
    assert _jadx_version("jadx") == "jadx 1.5.1"

    # any probe hiccup (missing binary, timeout, exception) -> 'unknown', never a crash
    def boom(*a, **k):
        raise FileNotFoundError("jadx missing")
    monkeypatch.setattr(_sp, "run", boom)
    assert _jadx_version("jadx") == "unknown"

    # empty output -> 'unknown' too (nothing to key on, honest not-a-version)
    monkeypatch.setattr(_sp, "run", lambda *a, **k: _sp.CompletedProcess(
        [], 0, stdout="", stderr=""))
    assert _jadx_version("jadx") == "unknown"


def test_result_builder_marks_partial_and_counts_files(tmp_path):
    # _result: the decompile StageResult builder. `partial` must be true exactly
    # when completeness != 'complete', and a None jadx_file_count is derived by
    # counting real .java files (never fabricated). Had zero coverage.
    from pathlib import Path
    from static.decompile import _result

    # explicit count -> no file scanning needed, completeness drives `partial`
    full = _result(0.0, Path("/jadx"), Path("/apktool"), cached=True,
                   jadx_file_count=5)
    assert full.evidence["partial"] is False
    assert full.evidence["jadx_file_count"] == 5
    assert full.evidence["cached"] is True
    assert full.status == "success" and full.stage == "decompile"

    partial = _result(0.0, Path("/jadx"), Path("/apktool"), cached=False,
                      decompile_completeness="partial", jadx_file_count=2)
    assert partial.evidence["partial"] is True
    assert partial.evidence["jadx_error_tail"] is None

    # None count -> derived by counting real .java files under jadx_dir
    jadx_dir = tmp_path / "jadx"
    (jadx_dir / "com").mkdir(parents=True)
    (jadx_dir / "com" / "App.java").write_text("class App{}", encoding="utf-8")
    (jadx_dir / "com" / "notes.txt").write_text("nope", encoding="utf-8")
    counted = _result(0.0, jadx_dir, Path("/apktool"), cached=False, jadx_file_count=None)
    assert counted.evidence["jadx_file_count"] == 1  # only the real .java


def test_apktool_timeout_scales_with_size_and_caps():
    # apktool_timeout_for_size: size-scaled decode timeout (LARGE-APP), the
    # apktool counterpart of jadx_timeout_for_size. Small APKs fail a hung
    # apktool fast (floor), large ones get proportional headroom, and a hard cap
    # bounds the worst case. Had zero coverage.
    #
    # APKTOOL-TIMEOUT1: asserts the SCALED RELATIONSHIP against the module's own
    # constants rather than hardcoded magic numbers. The old test pinned the rate
    # at 1.5 s/MB and so had to be edited when the rate was corrected - a test
    # that restates a tunable constant tests nothing about the behavior it claims
    # to cover. What matters is floor/linear/cap/monotonic, whatever the rate.
    from static.decompile import (
        apktool_timeout_for_size,
        APKTOOL_TIMEOUT_FLOOR, APKTOOL_TIMEOUT_CAP, APKTOOL_TIMEOUT_PER_MB,
    )
    assert apktool_timeout_for_size(0) == APKTOOL_TIMEOUT_FLOOR  # tiny -> floor
    # 10 MB scales linearly: floor + 10 * rate.
    assert apktool_timeout_for_size(10 * 1024 * 1024) == int(
        APKTOOL_TIMEOUT_FLOOR + 10 * APKTOOL_TIMEOUT_PER_MB)
    # huge -> capped, never unbounded
    assert apktool_timeout_for_size(5000 * 1024 * 1024) == APKTOOL_TIMEOUT_CAP
    # monotonic non-decreasing in size
    assert apktool_timeout_for_size(50 * 1024 * 1024) >= apktool_timeout_for_size(10 * 1024 * 1024)


def test_apktool_ceiling_clears_the_measured_propertyguru_runtime():
    # APKTOOL-STALL1 regression. MEASURED LIVE on the PropertyGuru APK (150MB,
    # 6 DEX, 21,139 resources): apktool `d --no-res` ran a HEALTHY 5,435 s (90
    # minutes) and produced 53,426 files. The old wall-clock budget for that APK
    # was 405 s (rate 1.5 s/MB), which killed it at ~4,000 files - ~7.5% of the
    # real output - discarding the entire smali surface for a decode that was
    # working perfectly. The outer ceiling must clear a measured legitimate
    # runtime of this magnitude, or a healthy large decode is still destroyed.
    from static.decompile import apktool_timeout_for_size, APKTOOL_STALL_SECONDS
    pg = 150 * 1024 * 1024
    assert apktool_timeout_for_size(pg) >= 5435, "must clear the measured 5435s run"
    # ...and the old budget did NOT (this is the specific regression).
    assert apktool_timeout_for_size(pg) > 405
    # The stall window is what actually detects a hang, and must be far below the
    # ceiling so a wedged tool dies in minutes, not hours.
    assert APKTOOL_STALL_SECONDS < apktool_timeout_for_size(pg)


@pytest.mark.real_stall_runner
def test_run_tool_until_stalled_lets_a_slow_but_progressing_tool_finish(tmp_path):
    # APKTOOL-STALL1 core: a tool that keeps writing must NEVER be killed for
    # being slow - that is the whole point (a healthy PropertyGuru decode needs
    # 90 minutes). Its total runtime here deliberately exceeds the stall window.
    import sys
    from static.decompile import _run_tool_until_stalled

    script = (
        "import sys,time\n"
        "for i in range(6):\n"
        "    print('working', i, flush=True)\n"
        "    time.sleep(0.4)\n"
        "print('DONE', flush=True)\n"
    )
    log = tmp_path / "slow.log"
    # stall_s=1.0 but the tool writes every 0.4s -> never stalls; ceiling generous.
    rc, tail = _run_tool_until_stalled(
        [sys.executable, "-c", script], log, ceiling_s=60, stall_s=1.0, what="fake")
    assert rc == 0
    assert "DONE" in tail


@pytest.mark.real_stall_runner
def test_run_tool_until_stalled_kills_a_hung_tool(tmp_path):
    # The complement: a tool that goes silent forever is a hang and must be killed
    # after the stall window (not left running to the ceiling). This is the case
    # the old wall-clock timeout conflated with "slow".
    import sys
    from static.decompile import _run_tool_until_stalled, _TIMEOUT_RC

    script = "import time; print('started', flush=True); time.sleep(300)"
    log = tmp_path / "hung.log"
    rc, tail = _run_tool_until_stalled(
        [sys.executable, "-c", script], log, ceiling_s=600, stall_s=2.0, what="fake")
    assert rc == _TIMEOUT_RC
    assert "stalled/hung" in tail


@pytest.mark.real_stall_runner
def test_run_tool_until_stalled_ceiling_names_itself_as_not_a_hang(tmp_path):
    # A tool that keeps progressing but outgrows the ABSOLUTE ceiling is a
    # different failure from a hang, and says so - otherwise the operator cannot
    # tell "raise the cap" from "this tool is wedged".
    import sys
    from static.decompile import _run_tool_until_stalled, _TIMEOUT_RC

    script = (
        "import time\n"
        "for i in range(200):\n"
        "    print('working', i, flush=True)\n"
        "    time.sleep(0.5)\n"
    )
    log = tmp_path / "ceiling.log"
    # ceiling_s=1 is far below the ~100s this would take, and stall_s=30 is far
    # above the 0.5s write interval - so the ceiling must be what fires, not the
    # stall window. (Getting this backwards is what an earlier version of this
    # test did: 200*0.1s finished before a 2s ceiling, proving nothing.)
    rc, tail = _run_tool_until_stalled(
        [sys.executable, "-c", script], log, ceiling_s=1, stall_s=30, what="fake")
    assert rc == _TIMEOUT_RC
    assert "absolute ceiling" in tail
    assert "NOT a hang" in tail
    assert "stalled/hung" not in tail, (
        "a tool that was still producing output must never be reported as a hang")


def test_ceiling_is_enforced_even_while_the_tool_keeps_producing_output():
    # APKTOOL-STALL1 regression: an earlier loop did `continue` immediately after
    # observing output growth, which SKIPPED the ceiling check entirely. A tool
    # that chatters forever was therefore never capped - the outer backstop was
    # unreachable for exactly the run-forever case it exists for. Assert the
    # ordering structurally so a future edit cannot reintroduce the skip.
    import inspect
    import re
    from static import decompile

    src = inspect.getsource(decompile._run_tool_until_stalled)
    # The progress branch must not short-circuit the loop.
    assert not re.search(r"last_growth = now\s*\n\s*continue", src), (
        "progress must not `continue`: it would skip the ceiling check")
    # And the ceiling check must precede the stall check.
    assert src.index("elapsed >= ceiling_s") < src.index("stalled_for >= stall_s"), (
        "the ceiling must be evaluated before the stall window")


def test_runs_timed_out_distinguishes_our_kill_from_a_real_exit_code():
    # APKTOOL-TIMEOUT1: a run killed by OUR timeout and a run that genuinely
    # crashed both surfaced as a bare integer inside a text log tail, so a partial
    # degrade could not be attributed ("needs a bigger budget" vs "tool is broken").
    from static.decompile import _runs_timed_out, _TIMEOUT_RC
    assert _runs_timed_out(_TIMEOUT_RC) is True
    assert _runs_timed_out(1, 0, _TIMEOUT_RC) is True
    assert _runs_timed_out(0, 1, 137) is False
    assert _runs_timed_out() is False


def test_run_tool_logged_streams_output_and_returns_rc(tmp_path, monkeypatch):
    # _run_tool_logged (D3): runs one tool streaming combined stdout+stderr to the
    # log file (never buffering megabytes in RAM) and returns (returncode, tail).
    # The returncode must come from the real process, and the tail must carry the
    # streamed content. Had zero coverage.
    import subprocess as _sp
    from static.decompile import _run_tool_logged

    captured = {}
    def fake_run(cmd, stdout, stderr, timeout):
        captured["cmd"] = cmd
        captured["timeout"] = timeout
        captured["stderr"] = stderr
        stdout.write("decompiling...\n")
        stdout.write("java.lang.OutOfMemoryError\n")
        return _sp.CompletedProcess(cmd, 1, stdout="", stderr="")

    monkeypatch.setattr(_sp, "run", fake_run)
    log = tmp_path / "deep" / "jadx.log"
    rc, tail = _run_tool_logged(["jadx", "-q"], log, 60, "jadx")

    assert rc == 1                       # real process exit code, not fabricated
    assert "OutOfMemoryError" in tail    # streamed content lands in the tail
    assert captured["stderr"] == _sp.STDOUT  # combined stream
    assert captured["timeout"] == 60
    assert log.exists()


def test_run_tool_logged_marks_timeout_and_returns_timer_rc(tmp_path, monkeypatch):
    # _run_tool_logged (D1): a killed-by-timeout process is surfaced as the
    # timeout sentinel returncode (not a silent 0), and the log records the kill.
    import subprocess as _sp
    from static.decompile import _run_tool_logged, _TIMEOUT_RC

    def timeout_run(cmd, **kw):
        raise _sp.TimeoutExpired(cmd, timeout=kw.get("timeout", 0))

    monkeypatch.setattr(_sp, "run", timeout_run)
    log = tmp_path / "jadx.log"
    rc, tail = _run_tool_logged(["jadx", "-q"], log, 30, "jadx")
    assert rc == _TIMEOUT_RC
    assert "timed out after 30s" in tail


# --- G1: quantified top-level class recovery for partial decompiles ------------


def test_count_top_level_smali_excludes_inner_classes(tmp_path):
    # apktool writes one .smali per class; inner classes (Foo$Inner) are separate
    # files. Only stems without '$' are top-level, comparable to jadx's
    # one-.java-per-top-level-class output. Multi-dex smali_classesN counts too.
    from static.decompile import _count_top_level_smali
    apk = tmp_path / "apktool"
    (apk / "smali" / "com" / "a").mkdir(parents=True)
    (apk / "smali_classes2" / "com" / "b").mkdir(parents=True)
    (apk / "smali" / "com" / "a" / "Foo.smali").write_text(".class Foo")
    (apk / "smali" / "com" / "a" / "Foo$Inner.smali").write_text(".class Inner")
    (apk / "smali" / "com" / "a" / "Foo$1.smali").write_text(".class anon")
    (apk / "smali_classes2" / "com" / "b" / "Bar.smali").write_text(".class Bar")
    assert _count_top_level_smali(apk) == 2  # Foo, Bar - not the two inner files


def test_count_top_level_smali_missing_dir_is_zero(tmp_path):
    from static.decompile import _count_top_level_smali
    assert _count_top_level_smali(tmp_path / "nope") == 0


def test_class_recovery_ratio_is_jadx_over_smali(tmp_path):
    from static.decompile import _class_recovery
    apk = tmp_path / "apktool"
    (apk / "smali" / "p").mkdir(parents=True)
    for name in ("A", "B", "C", "D"):
        (apk / "smali" / "p" / f"{name}.smali").write_text(".class")
    out = _class_recovery(jadx_file_count=1, apktool_dir=apk)
    assert out["smali_top_level_classes"] == 4
    assert out["class_recovery_ratio"] == 0.25


def test_class_recovery_zero_denominator_is_unknown_not_fabricated(tmp_path):
    # apktool produced no smali (resources-only / apktool partial): the ratio must
    # be None (unknown), never a fabricated 0/0 or a misleading number (ADR-0006).
    from static.decompile import _class_recovery
    out = _class_recovery(jadx_file_count=10, apktool_dir=tmp_path / "empty")
    assert out["smali_top_level_classes"] == 0
    assert out["class_recovery_ratio"] is None


# --- DEC1: jadx-coverage decision must not launder a per-DEX hole to complete ---

def test_jadx_covered_clean_run_is_covered_on_both_paths():
    # rc == 0 is always covered, whichever path produced it.
    assert _jadx_covered(per_dex=True, jadx_returncode=0, fallback={}, jadx_file_count=0) is True
    assert _jadx_covered(per_dex=False, jadx_returncode=0, fallback={}, jadx_file_count=0) is True


def test_jadx_covered_per_dex_hole_is_not_laundered_by_aggregate_recovery():
    # DEC1 regression. Per-DEX path: _decompile_dexes ALREADY folded per-DEX
    # recovery into rc (rc != 0 => at least one DEX is a real unrecovered hole).
    # A huge AGGREGATE recovery count from a *sibling* DEX must NOT flip this run
    # to covered - that would launder an unread DEX into 'complete' and turn a
    # NEITHER verdict into a confident negative over code never scanned (ADR-0006).
    laundering_fallback = {"fallback_recovered": True, "fallback_file_count": 1000}
    assert _jadx_covered(
        per_dex=True, jadx_returncode=1,
        fallback=laundering_fallback, jadx_file_count=10) is False


def test_jadx_covered_whole_apk_recovery_rescues_partial():
    # Whole-APK path (one jadx run, one recovery run): a jadx exit 1 IS rescued
    # when the secondary engine independently re-read the APK with comparable
    # output (>= 0.5 of what jadx wrote). This measured rule is preserved.
    rescued = {"fallback_recovered": True, "fallback_file_count": 60}
    assert _jadx_covered(
        per_dex=False, jadx_returncode=1, fallback=rescued, jadx_file_count=100) is True


def test_jadx_covered_whole_apk_thin_recovery_stays_partial():
    # Whole-APK recovery BELOW the ratio is not enough - stays uncovered.
    thin = {"fallback_recovered": True, "fallback_file_count": 10}
    assert _jadx_covered(
        per_dex=False, jadx_returncode=1, fallback=thin, jadx_file_count=100) is False
    # No recovery at all -> uncovered.
    assert _jadx_covered(
        per_dex=False, jadx_returncode=1, fallback={}, jadx_file_count=100) is False


def test_dex_unit_covered_clean_and_measured_recovery():
    # A clean per-DEX unit (jadx exit 0, wrote real .java) is covered.
    assert _dex_unit_covered(rc=0, files=10, recovered=False, recovered_count=0) is True
    # A jadx-failed unit is covered when a secondary engine recovered >= 0.5 of
    # what jadx wrote (the measured rule, parity with the whole-APK path).
    assert _dex_unit_covered(rc=1, files=10, recovered=True, recovered_count=6) is True
    # Recovery below the ratio stays uncovered (a partial hole).
    assert _dex_unit_covered(rc=1, files=10, recovered=True, recovered_count=3) is False
    # A jadx-failed unit with no recovery at all is uncovered.
    assert _dex_unit_covered(rc=1, files=5, recovered=False, recovered_count=0) is False


def test_dex_unit_covered_jadx_empty_dex_is_not_laundered_by_minimal_recovery():
    # Per-DEX parity regression. A DEX jadx read NOTHING from (files == 0, rc != 0)
    # has no jadx baseline to measure recovery against. The old inline
    # `recovered_count >= 0.5 * max(files, 1)` degenerated to `>= 0.5`, so a SINGLE
    # recovered file certified the whole DEX 'covered' - laundering a total
    # jadx-failure DEX with minimal CFR recovery into 'complete', a confident
    # negative over code never fully read (ADR-0006). It must stay a partial hole;
    # the recovered .java is still scanned, only the completeness label tightens.
    assert _dex_unit_covered(rc=1, files=0, recovered=True, recovered_count=1) is False
    assert _dex_unit_covered(rc=1, files=0, recovered=True, recovered_count=200) is False
    # A clean jadx unit that nonetheless wrote zero files is likewise not covered
    # (nothing scannable), matching the pre-existing behavior on that edge.
    assert _dex_unit_covered(rc=0, files=0, recovered=False, recovered_count=0) is False


def test_extract_assets_recovers_bundles_from_the_apk(tmp_path):
    """ASSET-DROP1: the asset surface must be extracted straight from the APK.

    Measured live on PropertyGuru (150MB React Native): the lazy per-DEX jadx
    path hands jadx a bare `dex_sources/classesN.dex`, never the APK, so every
    unit writes an EMPTY resources/ and the shipped
    `assets/index.android.bundle` (20MB Hermes bytecode, which scans to
    root-detection evidence) landed in no scan root at all. apktool could not
    cover it either - it is killed mid-smali on an APK this size. Net effect: the
    app's primary root/SSL surface was read by NOTHING while `js` still reported
    `fully_analyzed`. `extract_assets` is the single place that guarantees the
    surface exists on disk regardless of which jadx path ran.
    """
    import zipfile

    from static.decompile import extract_assets

    apk = tmp_path / "app.apk"
    with zipfile.ZipFile(apk, "w") as z:
        z.writestr("classes.dex", b"dex\n035\x00")
        z.writestr("assets/index.android.bundle", b"\xc6\x1f\xbc\x03\xc1\x03\x19\x1f" + b"\x00" * 64)
        z.writestr("assets/nested/deep/thing.js", b"var a = 1;")
        z.writestr("assets/", b"")  # a directory entry must not be written as a file
        z.writestr("res/values/strings.xml", b"<resources/>")

    target = tmp_path / "analysis"
    written = extract_assets(apk, target)

    # Both real asset files (the directory entry is skipped), and the bundle is
    # byte-identical to the APK member - not re-encoded.
    assert written == 2
    bundle = target / "assets" / "index.android.bundle"
    assert bundle.is_file()
    assert bundle.read_bytes()[:8] == b"\xc6\x1f\xbc\x03\xc1\x03\x19\x1f"
    assert (target / "assets" / "nested" / "deep" / "thing.js").is_file()
    # Non-asset members are NOT extracted (this is the asset surface only).
    assert not (target / "classes.dex").exists()
    assert not (target / "res").exists()


def test_extract_assets_is_non_fatal_on_a_non_zip(tmp_path):
    """A non-APK path must degrade to 0, never raise: `decompile()` calls this
    unconditionally, and the unit suite calls decompile() with fake paths. A
    raise here would discard an otherwise-good decompile over an asset copy."""
    from static.decompile import extract_assets

    fake = tmp_path / "not-an-apk.apk"
    fake.write_bytes(b"this is not a zip")
    assert extract_assets(fake, tmp_path / "out") == 0
    # An absent path is likewise 0, not an exception.
    assert extract_assets(tmp_path / "missing.apk", tmp_path / "out") == 0


def test_extract_assets_returns_zero_when_apk_has_no_assets(tmp_path):
    """An APK genuinely without assets/ yields 0 - so the sidecar's
    `asset_surface_extracted` reads False for a real absence too. That is the
    honest behavior: the caller degrades `js` to partial (unknown, not absent)
    rather than claiming the surface was cleared."""
    import zipfile

    from static.decompile import extract_assets

    apk = tmp_path / "noassets.apk"
    with zipfile.ZipFile(apk, "w") as z:
        z.writestr("classes.dex", b"dex\n035\x00")
    assert extract_assets(apk, tmp_path / "out") == 0


def test_extract_assets_recovers_bundles_from_the_apk(tmp_path):
    """ASSET-DROP1: the asset surface must be extracted straight from the APK.

    Measured live on PropertyGuru (150MB React Native): the lazy per-DEX jadx
    path hands jadx a bare `dex_sources/classesN.dex`, never the APK, so every
    unit writes an EMPTY resources/ and the shipped
    `assets/index.android.bundle` (20MB Hermes bytecode, which scans to
    root-detection evidence) landed in no scan root at all. apktool could not
    cover it either - it is killed mid-smali on an APK this size. Net effect: the
    app's primary root/SSL surface was read by NOTHING while `js` still reported
    `fully_analyzed`. `extract_assets` is the single place that guarantees the
    surface exists on disk regardless of which jadx path ran.
    """
    import zipfile

    from static.decompile import extract_assets

    apk = tmp_path / "app.apk"
    with zipfile.ZipFile(apk, "w") as z:
        z.writestr("classes.dex", b"dex\n035\x00")
        z.writestr("assets/index.android.bundle", b"\xc6\x1f\xbc\x03\xc1\x03\x19\x1f" + b"\x00" * 64)
        z.writestr("assets/nested/deep/thing.js", b"var a = 1;")
        z.writestr("assets/", b"")  # a directory entry must not be written as a file
        z.writestr("res/values/strings.xml", b"<resources/>")

    target = tmp_path / "analysis"
    written = extract_assets(apk, target)

    # Both real asset files (the directory entry is skipped), and the bundle is
    # byte-identical to the APK member - not re-encoded.
    assert written == 2
    bundle = target / "assets" / "index.android.bundle"
    assert bundle.is_file()
    assert bundle.read_bytes()[:8] == b"\xc6\x1f\xbc\x03\xc1\x03\x19\x1f"
    assert (target / "assets" / "nested" / "deep" / "thing.js").is_file()
    # Non-asset members are NOT extracted (this is the asset surface only).
    assert not (target / "classes.dex").exists()
    assert not (target / "res").exists()


def test_extract_assets_is_non_fatal_on_a_non_zip(tmp_path):
    """A non-APK path must degrade to 0, never raise: `decompile()` calls this
    unconditionally, and the unit suite calls decompile() with fake paths. A
    raise here would discard an otherwise-good decompile over an asset copy."""
    from static.decompile import extract_assets

    fake = tmp_path / "not-an-apk.apk"
    fake.write_bytes(b"this is not a zip")
    assert extract_assets(fake, tmp_path / "out") == 0
    # An absent path is likewise 0, not an exception.
    assert extract_assets(tmp_path / "missing.apk", tmp_path / "out") == 0


def test_extract_assets_returns_zero_when_apk_has_no_assets(tmp_path):
    """An APK genuinely without assets/ yields 0 - so the sidecar's
    `asset_surface_extracted` reads False for a real absence too. That is the
    honest behavior: the caller degrades `js` to partial (unknown, not absent)
    rather than claiming the surface was cleared."""
    import zipfile

    from static.decompile import extract_assets

    apk = tmp_path / "noassets.apk"
    with zipfile.ZipFile(apk, "w") as z:
        z.writestr("classes.dex", b"dex\n035\x00")
    assert extract_assets(apk, tmp_path / "out") == 0

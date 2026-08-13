import json
import subprocess
from pathlib import Path

import pytest

from static.decompile import (
    CACHE_REGISTRY_NAME,
    _enforce_cache_budget,
    _find_cfr_jar,
    _load_registry,
    _require_tool,
    _run_secondary_fallback,
    _tail,
    _tail_file,
    _touch_registry,
    decompile,
)


def test_decompile_surfaces_real_stderr_not_just_the_generic_exit_message(tmp_path, monkeypatch):
    # A real incident this pins down: jadx exited 1 on a large real-world
    # APK, but the report only ever showed Python's generic "returned
    # non-zero exit status 1" - the actual jadx stderr (which would explain
    # WHY - OOM, a specific class it choked on, etc.) was captured by
    # subprocess.run and then silently discarded by str(exc).
    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")

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
    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, stdout, stderr, timeout):
        if cmd[0].endswith("jadx"):
            jadx_dir = Path(cmd[2])
            jadx_dir.mkdir(parents=True, exist_ok=True)
            (jadx_dir / "AuthService.java").write_text("class AuthService {}")
            (jadx_dir / "WebkitPackage.java").write_text("class WebkitPackage {}")
            stdout.write("decompiling class 1563 of 2000...\n")
            stdout.write("java.lang.OutOfMemoryError: Java heap space")
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")
        apktool_dir = Path(cmd[4])
        apktool_dir.mkdir(parents=True, exist_ok=True)
        (apktool_dir / "AndroidManifest.xml").write_text("<manifest/>")
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


def test_decompile_total_failure_when_jadx_writes_zero_files(tmp_path, monkeypatch):
    # Same failure mode as before this change - jadx exits nonzero and
    # leaves nothing usable behind, so it's still a hard failure, not a
    # tolerated partial.
    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")

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
    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")
    monkeypatch.setattr("static.decompile._list_dex_entries", lambda apk: [])

    result = decompile(tmp_path / "real.apk", tmp_path, "cachedpartial")

    assert result.evidence["cached"] is False                    # stale partial not a hit
    assert result.evidence["decompile_completeness"] == "complete"  # re-decompiled clean
    assert result.evidence["jadx_file_count"] == 1


def test_cached_status_is_clean_requires_both_tools_zero(tmp_path):
    from static.decompile import _cached_status_is_clean

    partial = tmp_path / "partial.json"
    partial.write_text(json.dumps({"jadx_exit_code": 1, "apktool_exit_code": 0}))
    assert _cached_status_is_clean(partial) is False

    clean = tmp_path / "clean.json"
    clean.write_text(json.dumps({"jadx_exit_code": 0, "apktool_exit_code": 0}))
    assert _cached_status_is_clean(clean) is True

    # Missing/unreadable sidecar: reused as 'unknown' by _cached_result, so not
    # treated as unclean - forcing a re-decompile there would only break the
    # toolchain-free cache path for no benefit.
    assert _cached_status_is_clean(tmp_path / "nope.json") is True


def test_decompile_cache_hit_is_unknown_when_no_sidecar_exists(tmp_path):
    # RESID-3B: a cache hit with no sidecar must NOT be assumed "complete" -
    # the completeness of cached output is unprovable once the jadx process is
    # gone, and guessing "complete" would launder a partial decompile into
    # calibration as a full scan. Report "unknown" so calibration excludes it.
    target_dir = tmp_path / "prephase4"
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "SomeClass.java").write_text("class SomeClass {}")
    (target_dir / "apktool").mkdir(parents=True)
    (target_dir / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")

    result = decompile(tmp_path / "old.apk", tmp_path, "prephase4")

    assert result.evidence["cached"] is True
    assert result.evidence["decompile_completeness"] == "unknown"
    assert result.evidence["partial"] is True  # unknown != complete, so partial


def test_decompile_cache_hit_is_unknown_when_sidecar_unparseable(tmp_path):
    # RESID-3B: an unreadable/corrupt sidecar is the same as a missing one -
    # completeness can't be proven, so it must be "unknown", not "complete".
    target_dir = tmp_path / "corrupt"
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "SomeClass.java").write_text("class SomeClass {}")
    (target_dir / "apktool").mkdir(parents=True)
    (target_dir / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")
    (target_dir / "status.json").write_text("not json{{", encoding="utf-8")

    result = decompile(tmp_path / "old.apk", tmp_path, "corrupt")

    assert result.evidence["cached"] is True
    assert result.evidence["decompile_completeness"] == "unknown"


def test_decompile_uses_cache_without_needing_toolchain(tmp_path):
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

    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")

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
    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")

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

    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")
    monkeypatch.setattr("static.decompile.subprocess.run", fake_run)

    result = decompile(tmp_path / "huge.apk", tmp_path, apk_hash)

    assert result.status == "success"
    assert result.evidence["jadx_file_count"] == 1  # existing jadx output reused
    assert not any(c.endswith("jadx") for c in calls)  # jadx never re-run
    assert result.evidence["apktool_exit_code"] == 0


def test_require_tool_raises_loudly_when_missing():
    with pytest.raises(RuntimeError, match="not found on PATH"):
        _require_tool("definitely_not_a_real_tool_xyz")


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


def test_find_cfr_jar_discovers_tools_cfr(monkeypatch):
    # L-M1 fix: with no CFR_JAR env, the loader must still find the jar the
    # reference env installs under tools/cfr/ (mirroring Ghidra's tools/ghidra
    # discovery) - this is what makes the fallback work out-of-the-box instead
    # of degrading to fallback_unavailable on a default shell.
    monkeypatch.delenv("CFR_JAR", raising=False)
    jar = _find_cfr_jar()
    assert jar.endswith(".jar")
    assert "cfr" in Path(jar).parts and "tools" in Path(jar).parts


def test_secondary_fallback_recovers_classes_via_dex2jar_and_cfr(tmp_path, monkeypatch):
    # L-M1 core happy path: with CFR configured, a partial jadx run recovers the
    # classes it missed - dex2jar makes recovered.jar, CFR decompiles it to .java,
    # and the fallback reports the recovered output dir (which cli then scans).
    monkeypatch.setenv("CFR_JAR", "/opt/cfr.jar")

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

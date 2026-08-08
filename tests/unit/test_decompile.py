import json
import subprocess
from pathlib import Path

import pytest

from static.decompile import _require_tool, _tail, decompile


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


def test_decompile_cache_hit_preserves_partial_label_from_sidecar(tmp_path):
    # A second run against the same hash must not silently launder a
    # partial decompile into looking complete - the exact property
    # calibration ground-truth integrity depends on.
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

    result = decompile(tmp_path / "huge.apk", tmp_path, "cachedpartial")

    assert result.evidence["cached"] is True
    assert result.evidence["decompile_completeness"] == "partial"
    assert result.evidence["jadx_file_count"] == 1


def test_decompile_cache_hit_defaults_to_complete_when_no_sidecar_exists(tmp_path):
    # Pre-Phase-4 cache directories (or any cache hit predating this
    # change) have no sidecar at all - a justified inference of "complete"
    # (the old code could never cache anything else), not a guess.
    target_dir = tmp_path / "prephase4"
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "jadx" / "SomeClass.java").write_text("class SomeClass {}")
    (target_dir / "apktool").mkdir(parents=True)
    (target_dir / "apktool" / "AndroidManifest.xml").write_text("<manifest/>")

    result = decompile(tmp_path / "old.apk", tmp_path, "prephase4")

    assert result.evidence["cached"] is True
    assert result.evidence["decompile_completeness"] == "complete"
    assert result.evidence["partial"] is False


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

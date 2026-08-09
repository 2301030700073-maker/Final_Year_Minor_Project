import io
import subprocess
from pathlib import Path

import pytest

from cli import _apply_manifest_ssl_signal, _git_commit_hash, _git_last_commit_touching, _load_thresholds, _wrap_stage
from common import StaticEvidence
from static.manifest import ManifestInfo


def _fake_settings(monkeypatch, body: str):
    """Point cli._load_thresholds at an in-memory settings.yaml body."""
    real_open = open

    def fake_open(path, *args, **kwargs):
        if str(path).endswith("settings.yaml"):
            return io.StringIO(body)
        return real_open(path, *args, **kwargs)

    monkeypatch.setattr("builtins.open", fake_open)


def test_apply_manifest_ssl_signal_records_nsc_evidence_without_weight():
    # RESID-4E: a bare NSC declaration is a prerequisite for config-based
    # pinning, not pinning evidence itself - it gets an attribution evidence
    # line but zero confidence contribution. Adding +0.2 here double-counted
    # the same NSC on apps that both declared and configured real <pin-set>
    # entries (the content signatures already credit those).
    evidence = StaticEvidence()
    manifest = ManifestInfo(debuggable=False, network_security_config="@xml/network_security_config")

    _apply_manifest_ssl_signal(evidence, manifest)

    assert evidence.ssl_confidence == 0  # declaration alone contributes no weight
    assert evidence.ssl_evidence[0].signature_id == "manifest_network_security_config"
    assert evidence.ssl_evidence[0].matched_text == "@xml/network_security_config"


def test_load_thresholds_rejects_out_of_range_value_loudly(monkeypatch):
    # RESID-4D: a typo'd threshold (root: 1.5) must raise, not silently pin
    # detection on/off - thresholds are the one hand-authored input that was
    # never range-checked.
    _fake_settings(monkeypatch, "thresholds:\n  root: 1.5\n  ssl: 0.7\n")

    with pytest.raises(ValueError, match="out of range"):
        _load_thresholds()


def test_load_thresholds_accepts_valid_range(monkeypatch):
    _fake_settings(monkeypatch, "thresholds:\n  root: 0.6\n  ssl: 0.8\n")
    assert _load_thresholds() == (0.6, 0.8)


def test_load_thresholds_missing_section_falls_back_to_default(monkeypatch):
    # RESID-4D: an absent thresholds section is not an active typo - it falls
    # back to the engine default rather than failing. Only an out-of-range
    # explicit value fails loudly (the active-typo case, covered above).
    _fake_settings(monkeypatch, "some: unrelated\n")
    assert _load_thresholds() == (0.7, 0.7)


def test_apply_manifest_ssl_signal_noops_without_nsc():
    evidence = StaticEvidence()

    _apply_manifest_ssl_signal(evidence, ManifestInfo(debuggable=False, network_security_config=None))

    assert evidence.ssl_confidence == 0
    assert evidence.ssl_evidence == []


def test_git_last_commit_touching_returns_the_files_own_commit_not_head(monkeypatch):
    # The bug this fixes: stamping HEAD implied a false precision about
    # which version of the file a report was computed against - HEAD moves
    # on every unrelated commit even when this specific file hasn't changed.
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd[:3] == ["git", "log", "-1"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="deadbeef123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")  # diff --quiet: clean

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_last_commit_touching(Path("config/ground_truth.yaml")) == "deadbeef123"


def test_git_last_commit_touching_flags_uncommitted_changes(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd[:3] == ["git", "log", "-1"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="deadbeef123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")  # diff --quiet: dirty

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    result = _git_last_commit_touching(Path("config/ground_truth.yaml"))
    assert "deadbeef123" in result
    assert "uncommitted changes present" in result


def test_git_last_commit_touching_handles_no_history(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    result = _git_last_commit_touching(Path("nonexistent.yaml"))
    assert "unknown" in result


def test_git_last_commit_touching_handles_git_failure(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        raise FileNotFoundError("git not found")

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_last_commit_touching(Path("config/ground_truth.yaml")) == "unknown"


def test_wrap_stage_success_returns_raw_result():
    stage_result, raw = _wrap_stage("demo", lambda x: x * 2, 21)
    assert stage_result.status == "success"
    assert raw == 42


def test_wrap_stage_failure_captures_error_and_returns_none():
    def boom():
        raise ValueError("something broke")

    stage_result, raw = _wrap_stage("demo", boom)

    assert stage_result.status == "failed"
    assert "something broke" in stage_result.error
    assert raw is None


def test_git_commit_hash_clean_tree_returns_bare_hash(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="abc123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")  # diff: clean
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "abc123"


def test_git_commit_hash_dirty_tree_is_flagged(monkeypatch):
    # RESID-7B: uncommitted edits to the code that ran must be flagged, not
    # silently presented as the committed revision - a report stamped "abc123"
    # would be a false statement about which code produced it.
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="abc123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")  # diff: dirty
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "abc123 (dirty working tree)"


def test_git_commit_hash_does_not_flag_git_diff_error_as_dirty(monkeypatch):
    # F2: `!= 0` conflated a `git diff HEAD --quiet` error (rc=128) with a
    # genuinely dirty tree (rc=1). Only rc=1 means differences exist; an errored
    # diff must not be reported as "dirty working tree" - that would be a false
    # statement about which code produced the report.
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="abc123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 128, stdout="", stderr="fatal: bad revision")
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "abc123"


def test_git_commit_hash_handles_git_failure(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        raise FileNotFoundError("git not found")
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "unknown"

import subprocess
from pathlib import Path

from cli import _git_last_commit_touching, _wrap_stage


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

import subprocess

import pytest

from static.decompile import _require_tool, _tail, decompile


def test_decompile_surfaces_real_stderr_not_just_the_generic_exit_message(tmp_path, monkeypatch):
    # A real incident this pins down: jadx exited 1 on a large real-world
    # APK, but the report only ever showed Python's generic "returned
    # non-zero exit status 1" - the actual jadx stderr (which would explain
    # WHY - OOM, a specific class it choked on, etc.) was captured by
    # subprocess.run and then silently discarded by str(exc).
    monkeypatch.setattr("static.decompile._require_tool", lambda name: f"/usr/bin/{name}")

    def fake_run(cmd, capture_output, text, check):
        raise subprocess.CalledProcessError(
            returncode=1, cmd=cmd,
            output="decompiling class 1500 of 1563...\n",
            stderr="java.lang.OutOfMemoryError: Java heap space\n\tat jadx.core.dex.nodes.ClassNode...",
        )

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


def test_decompile_uses_cache_without_needing_toolchain(tmp_path):
    apk_hash = "deadbeef"
    target_dir = tmp_path / apk_hash
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "apktool").mkdir(parents=True)

    result = decompile(tmp_path / "fake.apk", tmp_path, apk_hash)

    assert result.status == "success"
    assert result.evidence["cached"] is True
    assert result.evidence["manifest_path"].endswith("AndroidManifest.xml")


def test_require_tool_raises_loudly_when_missing():
    with pytest.raises(RuntimeError, match="not found on PATH"):
        _require_tool("definitely_not_a_real_tool_xyz")

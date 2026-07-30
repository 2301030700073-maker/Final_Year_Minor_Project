"""jadx + apktool decompilation, cached by APK hash (FR-2.1)."""

from __future__ import annotations

import shutil
import subprocess
import time
from pathlib import Path

from common import StageResult


def _require_tool(name: str) -> str:
    path = shutil.which(name)
    if path is None:
        raise RuntimeError(
            f"required tool '{name}' not found on PATH - this stage only runs on "
            "the reference WSL2 environment with the Android toolchain installed"
        )
    return path


def _tail(text: str, max_chars: int = 4000) -> str:
    """Keep the last max_chars of a stream - a crash/exception message is
    almost always near the end, and a large real-world APK can make jadx
    print megabytes of per-class progress output before it ever gets there."""
    if not text or len(text) <= max_chars:
        return text
    return f"...(truncated, {len(text)} chars total)...\n{text[-max_chars:]}"


def decompile(apk_path: Path, output_root: Path, apk_hash: str) -> StageResult:
    start = time.monotonic()
    try:
        apk_path = Path(apk_path)
        target_dir = Path(output_root) / apk_hash
        jadx_dir = target_dir / "jadx"
        apktool_dir = target_dir / "apktool"

        if jadx_dir.exists() and apktool_dir.exists():
            return _result(start, jadx_dir, apktool_dir, cached=True)

        jadx = _require_tool("jadx")
        apktool = _require_tool("apktool")

        subprocess.run(
            [jadx, "-d", str(jadx_dir), str(apk_path)],
            capture_output=True, text=True, check=True,
        )
        subprocess.run(
            [apktool, "d", "-f", "-o", str(apktool_dir), str(apk_path)],
            capture_output=True, text=True, check=True,
        )

        return _result(start, jadx_dir, apktool_dir, cached=False)
    except subprocess.CalledProcessError as exc:
        # str(exc) alone is just "Command '[...]' returned non-zero exit
        # status 1" - it discards the actual stdout/stderr subprocess.run
        # already captured, which is where the real cause (OOM, a specific
        # parse exception, etc.) would actually show up. Surfacing it here
        # is the difference between knowing why a decompile failed and
        # guessing (e.g. assuming "too large" for an APK that jadx mostly
        # got through before crashing on something else entirely).
        return StageResult(
            stage="decompile", status="failed", evidence={},
            error=f"{exc}\nstdout: {_tail(exc.stdout)}\nstderr: {_tail(exc.stderr)}",
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    except Exception as exc:
        return StageResult(
            stage="decompile", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )


def _result(start: float, jadx_dir: Path, apktool_dir: Path, cached: bool) -> StageResult:
    return StageResult(
        stage="decompile", status="success",
        evidence={
            "jadx_output": str(jadx_dir),
            "apktool_output": str(apktool_dir),
            "manifest_path": str(apktool_dir / "AndroidManifest.xml"),
            "cached": cached,
        },
        duration_ms=int((time.monotonic() - start) * 1000),
    )

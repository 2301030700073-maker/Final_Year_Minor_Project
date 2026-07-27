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

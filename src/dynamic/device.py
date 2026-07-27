"""adb device discovery, install, and logcat capture (FR-4.1, 4.2, 4.4). Reference-machine only."""

from __future__ import annotations

import shutil
import subprocess
from pathlib import Path


def _require_adb() -> str:
    path = shutil.which("adb")
    if path is None:
        raise RuntimeError(
            "adb not found on PATH - dynamic analysis only runs on the reference "
            "WSL2 environment with the Android SDK platform-tools installed"
        )
    return path


def discover_device(serial: str | None = None) -> str:
    """Return the serial of a connected device/emulator, or raise loudly if none found."""
    adb = _require_adb()
    result = subprocess.run([adb, "devices"], capture_output=True, text=True, check=True)
    lines = [
        line for line in result.stdout.splitlines()[1:]
        if line.strip() and "\tdevice" in line
    ]
    if serial:
        if not any(line.startswith(serial) for line in lines):
            raise RuntimeError(f"requested device serial '{serial}' not found among connected devices")
        return serial
    if not lines:
        raise RuntimeError(
            "no connected device/emulator found via 'adb devices' - "
            "pass --skip-dynamic to skip this stage, or connect a rooted device/emulator"
        )
    return lines[0].split("\t")[0]


def install_apk(serial: str, apk_path: Path) -> None:
    adb = _require_adb()
    subprocess.run(
        [adb, "-s", serial, "install", "-r", str(apk_path)],
        capture_output=True, text=True, check=True,
    )


def verify_installed(serial: str, package_name: str) -> bool:
    adb = _require_adb()
    result = subprocess.run(
        [adb, "-s", serial, "shell", "pm", "list", "packages", package_name],
        capture_output=True, text=True, check=True,
    )
    return package_name in result.stdout


def capture_logcat(serial: str, timeout_seconds: int = 15) -> str:
    adb = _require_adb()
    result = subprocess.run(
        [adb, "-s", serial, "logcat", "-d"],
        capture_output=True, text=True, check=True, timeout=timeout_seconds,
    )
    return result.stdout

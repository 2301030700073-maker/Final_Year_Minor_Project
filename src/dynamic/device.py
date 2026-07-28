"""adb device discovery, install, and logcat capture (FR-4.1, 4.2, 4.4). Reference-machine only."""

from __future__ import annotations

import os
import shutil
import subprocess
import time
from pathlib import Path

import frida

_FRIDA_RELAY_PORT = 27043
_ADB_FORWARD_PORT = 27044
_RELAY_PROC: subprocess.Popen | None = None


# ---------------------------------------------------------------------------
# WSL detection helpers
# ---------------------------------------------------------------------------


def _in_wsl() -> bool:
    try:
        return "microsoft" in Path("/proc/version").read_text(encoding="utf-8").lower()
    except OSError:
        return False


def _wsl_windows_ip() -> str | None:
    try:
        result = subprocess.run(
            ["ip", "route", "show", "default"],
            capture_output=True, text=True, check=True, timeout=5,
        )
        parts = result.stdout.split()
        for i, p in enumerate(parts):
            if p == "via" and i + 1 < len(parts):
                return parts[i + 1]
    except Exception:
        return None
    return None


def _adb_wrapper_path() -> str:
    """Return the ``~/.local/bin/adb`` wrapper path (calls Windows ``adb.exe``).

    Raises ``RuntimeError`` if not found.
    """
    candidate = Path.home() / ".local/bin/adb"
    if candidate.is_file():
        return str(candidate)
    fallback = shutil.which("adb")
    if fallback:
        return fallback
    raise RuntimeError(
        "adb not found on PATH - dynamic analysis only runs on the reference "
        "WSL2 environment with the Android SDK platform-tools installed"
    )


# ---------------------------------------------------------------------------
# Frida TCP relay (Windows Python) for WSL2
# ---------------------------------------------------------------------------
#
# Windows ADB server listens only on 127.0.0.1:5037, unreachable from
# WSL2.  ``adb forward`` creates listeners on Windows' 127.0.0.1, also
# unreachable.  ``netsh portproxy`` conflicts with ADB forward.
#
# Solution: a Python TCP relay runs on Windows (reachable from WSL via
# the Windows host IP), forwarding to the ADB forward listener on
# Windows' 127.0.0.1.
#
#   WSL:Frida ──TCP──> [win-ip]:{RELAY_PORT}
#                     └── Windows:Python relay
#                        └── 127.0.0.1:{ADB_FORWARD_PORT}
#                           └── ADB forward
#                              └── emulator:frida-server
# ---------------------------------------------------------------------------


_RELAY_SCRIPT_SOURCE = Path(__file__).resolve().parent.parent.parent / "scripts" / "frida_relay.py"


def _start_relay(adb_cmd: str) -> int:
    """Start the Windows Python relay and set up ADB forwarding.

    Returns the Windows host IP that Frida should connect to.
    """
    global _RELAY_PROC

    win_ip = _wsl_windows_ip()
    if win_ip is None:
        raise RuntimeError("Could not determine Windows host IP from WSL")

    # 1. Set up ADB forward (listener on Windows 127.0.0.1:{ADB_FORWARD_PORT})
    subprocess.run(
        [adb_cmd, "forward", f"tcp:{_ADB_FORWARD_PORT}", "tcp:27042"],
        capture_output=True, text=True, timeout=15,
    )

    # 2. Kill any leftover relay on Windows
    _stop_relay()

    # 3. Copy the relay script to a Windows-accessible path
    win_script = Path("/mnt/c/Users") / _find_windows_user() / "AppData/Local/Temp/frida_relay.py"
    if win_script.parent.is_dir():
        import shutil as _shutil
        _shutil.copy2(_RELAY_SCRIPT_SOURCE, str(win_script))
        script_arg = str(win_script).replace("/mnt/c/", "C:\\").replace("/", "\\")
    else:
        script_arg = str(_RELAY_SCRIPT_SOURCE)  # fallback (may fail)

    # 4. Start the Python relay on Windows
    args = f'python "{script_arg}" {_FRIDA_RELAY_PORT} 127.0.0.1 {_ADB_FORWARD_PORT}'
    _RELAY_PROC = subprocess.Popen(
        ["powershell.exe", "-Command",
         f'Start-Process -WindowStyle Hidden python -ArgumentList \'{script_arg} {_FRIDA_RELAY_PORT} 127.0.0.1 {_ADB_FORWARD_PORT}\''],
        stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
    )
    time.sleep(3)  # wait for relay to bind

    return win_ip


def _stop_relay() -> None:
    """Kill any running Frida relay on Windows."""
    global _RELAY_PROC
    if _RELAY_PROC is not None:
        try:
            _RELAY_PROC.kill()
        except OSError:
            pass
        _RELAY_PROC = None
    # Kill any lingering Python process running the relay
    subprocess.run(
        ["powershell.exe", "-Command",
         "Get-Process python | Where-Object CommandLine -Match 'frida_relay' | Stop-Process -Force"],
        capture_output=True, text=True, timeout=10,
    )


def _find_windows_user() -> str:
    """Return the first non-special Windows user directory under /mnt/c/Users."""
    users_dir = Path("/mnt/c/Users")
    if not users_dir.is_dir():
        return "Divyang"  # fallback
    for d in sorted(users_dir.iterdir()):
        if d.is_dir() and d.name not in ("All Users", "Default", "Default User",
                                          "desktop.ini", "Public"):
            return d.name
    return "Divyang"


# ---------------------------------------------------------------------------
# Public API
# ---------------------------------------------------------------------------


def setup_frida_connection(device_serial: str) -> frida.Device:
    """Connect Frida to frida-server on the device, bridging WSL2 → Windows.

    On native Linux delegates to ``frida.get_device()``.
    On WSL2 starts an ADB forward + Windows Python relay, then connects
    via ``add_remote_device()``.
    """
    if not _in_wsl():
        return frida.get_device(device_serial, timeout=10)

    adb_cmd = _adb_wrapper_path()
    win_ip = _start_relay(adb_cmd)

    mgr = frida.get_device_manager()
    device = mgr.add_remote_device(f"{win_ip}:{_FRIDA_RELAY_PORT}")
    # Verify connection
    device.enumerate_processes()
    return device


def _require_adb() -> str:
    """Return a working ADB binary path.

    On WSL2 the ``~/.local/bin/adb`` wrapper is preferred since it
    delegates to Windows ``adb.exe``, which runs in the Windows network
    namespace and can manage the emulator via the Windows ADB server.
    """
    return _adb_wrapper_path()


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

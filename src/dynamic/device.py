"""adb device discovery, install, and logcat capture (FR-4.1, 4.2, 4.4). Reference-machine only."""

from __future__ import annotations

import shutil
import socket
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


def _wait_for_relay(host: str, port: int, timeout: float = 10.0) -> None:
    """Poll until the relay is actually accepting connections. Replaces a
    blind sleep, which was flaky under load and gave no real signal that
    the relay came up before Frida tried to use it."""
    deadline = time.monotonic() + timeout
    last_error: OSError | None = None
    while time.monotonic() < deadline:
        try:
            with socket.create_connection((host, port), timeout=0.5):
                return
        except OSError as exc:
            last_error = exc
            time.sleep(0.2)
    raise RuntimeError(
        f"Frida relay never started listening on {host}:{port} within {timeout}s "
        f"(last connection error: {last_error})"
    )


def _start_relay(adb_cmd: str) -> int:
    """Start the Windows Python relay and set up ADB forwarding.

    Returns the Windows host IP that Frida should connect to.
    """
    global _RELAY_PROC

    win_ip = _wsl_windows_ip()
    if win_ip is None:
        raise RuntimeError("Could not determine Windows host IP from WSL")

    # 1. Set up ADB forward (listener on Windows 127.0.0.1:{ADB_FORWARD_PORT})
    forward_result = subprocess.run(
        [adb_cmd, "forward", f"tcp:{_ADB_FORWARD_PORT}", "tcp:27042"],
        capture_output=True, text=True, timeout=15,
    )
    if forward_result.returncode != 0:
        raise RuntimeError(
            f"'adb forward tcp:{_ADB_FORWARD_PORT} tcp:27042' failed "
            f"(exit {forward_result.returncode}): {forward_result.stderr.strip()}"
        )

    # 2. Kill any leftover relay on Windows
    _stop_relay()

    # 3. Copy the relay script to a Windows-accessible path. Windows python.exe
    # can't resolve a raw WSL path (/home/... or similar) at all, so there's
    # no working fallback if the Windows user directory can't be found -
    # fail loudly here instead of deferring to a confusing failure later.
    win_script = WINDOWS_USERS_DIR / _find_windows_user() / "AppData/Local/Temp/frida_relay.py"
    win_script.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(_RELAY_SCRIPT_SOURCE, str(win_script))
    script_arg = str(win_script).replace("/mnt/c/", "C:\\").replace("/", "\\")

    # 4. Start the Python relay on Windows. The path is double-quoted inside
    # the -ArgumentList string so Windows command-line parsing treats it as
    # one token even if the Windows username contains a space.
    ps_command = (
        f'Start-Process -WindowStyle Hidden python -ArgumentList '
        f'\'"{script_arg}" {_FRIDA_RELAY_PORT} 127.0.0.1 {_ADB_FORWARD_PORT}\''
    )
    _RELAY_PROC = subprocess.Popen(
        ["powershell.exe", "-Command", ps_command],
        stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
    )
    _wait_for_relay(win_ip, _FRIDA_RELAY_PORT)

    return win_ip


def _stop_relay() -> None:
    """Kill any running Frida relay on Windows.

    Uses Get-CimInstance, not Get-Process - plain Get-Process does not
    populate CommandLine without elevation, which made the previous
    Where-Object CommandLine filter match nothing, every time, silently
    leaking orphaned relay processes (confirmed by direct testing).
    """
    global _RELAY_PROC
    if _RELAY_PROC is not None:
        try:
            _RELAY_PROC.kill()
        except OSError:
            pass
        _RELAY_PROC = None
    subprocess.run(
        ["powershell.exe", "-Command",
         "Get-CimInstance Win32_Process -Filter \"Name='python.exe'\" | "
         "Where-Object { $_.CommandLine -match 'frida_relay' } | "
         "ForEach-Object { Stop-Process -Id $_.ProcessId -Force }"],
        capture_output=True, text=True, timeout=10,
    )


WINDOWS_USERS_DIR = Path("/mnt/c/Users")
_SPECIAL_ENTRIES = ("All Users", "Default", "Default User", "desktop.ini", "Public")


def _find_windows_user(users_dir: Path = WINDOWS_USERS_DIR) -> str:
    """Return the first non-special Windows user directory under `users_dir`.

    `users_dir` defaults to the real /mnt/c/Users on the reference WSL2
    machine; overridable so tests can exercise both failure branches
    deterministically without depending on whether /mnt/c/Users happens to
    exist on whichever machine runs the test suite (it does on real WSL2,
    it doesn't on this dev machine - a guessed/hardcoded fallback here
    would silently point at the wrong path on any machine but the one it
    was written on; NFR-7: fail loudly, never guess)."""
    if not users_dir.is_dir():
        raise RuntimeError(f"{users_dir.as_posix()} not found - is this actually running under WSL2?")
    for d in sorted(users_dir.iterdir()):
        if d.is_dir() and d.name not in _SPECIAL_ENTRIES:
            return d.name
    raise RuntimeError(
        f"No user directory found under {users_dir.as_posix()} (only default/system entries) - "
        "the Frida relay bridge needs a real Windows user profile to copy itself into"
    )


# ---------------------------------------------------------------------------
# Public API
# ---------------------------------------------------------------------------


def _ensure_frida_server(adb: str, serial: str) -> None:
    """Ensure frida-server is running on the device before connecting.

    A frida-server that is pushed but not started is the usual reason the dynamic
    stage silently hangs: the relay forwards, no server answers, and
    enumerate_processes() blocks with no timeout. Start it (as root) if the
    binary is present, or fail loudly with the exact push/run commands if it is
    missing - never hang silently (principle 3)."""
    server_path = "/data/local/tmp/frida-server"
    running = subprocess.run(
        [adb, "-s", serial, "shell", "ps", "-A"],
        capture_output=True, text=True, timeout=20,
    )
    if "frida-server" in (running.stdout + running.stderr):
        return
    present = subprocess.run(
        [adb, "-s", serial, "shell", "ls", server_path],
        capture_output=True, text=True, timeout=20,
    )
    if present.returncode != 0:
        raise RuntimeError(
            "frida-server binary not found on device at "
            f"{server_path}. Push it first:\n"
            f"  adb root\n  adb push tools/frida-server-16.7.19-x86_64 {server_path}\n"
            f"  adb shell chmod 755 {server_path}\n"
            "then re-run (or pass --skip-dynamic to skip this stage)."
        )
    subprocess.run(
        [adb, "-s", serial, "shell", "nohup", server_path, ">/dev/null", "2>&1", "&"],
        capture_output=True, text=True, timeout=20,
    )


def setup_frida_connection(device_serial: str) -> frida.Device:
    """Connect Frida to frida-server on the device, bridging WSL2 → Windows.

    On native Linux delegates to ``frida.get_device()``.
    On WSL2 starts an ADB forward + Windows Python relay, then connects
    via ``add_remote_device()``.
    """
    # The most common dynamic-stage failure is a pushed-but-not-started
    # frida-server; start it (or fail loudly) before connecting so the stage
    # never hangs silently on a dead server (principle 3).
    _ensure_frida_server(_require_adb(), device_serial)

    if not _in_wsl():
        return frida.get_device(device_serial, timeout=10)

    adb_cmd = _adb_wrapper_path()
    win_ip = _start_relay(adb_cmd)

    mgr = frida.get_device_manager()
    device = mgr.add_remote_device(f"{win_ip}:{_FRIDA_RELAY_PORT}")
    # Verify connection. (frida 16.7.19 has no timeout kwarg on
    # enumerate_processes; the _ensure_frida_server guard above is what prevents
    # the common dead-server hang, so this stays plain rather than adding fragile
    # threading to bound it.)
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
    if len(lines) > 1:
        # NFR-7: multiple devices with no --serial - fail loudly rather than
        # guessing an arbitrary one ("never guess"). A silent lines[0] pick would
        # analyze a device the operator didn't choose.
        serials = ", ".join(line.split("\t")[0] for line in lines)
        raise RuntimeError(
            f"{len(lines)} devices/emulators connected ({serials}) - pass --serial to "
            "pick one deterministically; refusing to analyze an arbitrary device"
        )
    return lines[0].split("\t")[0]


def install_apk(serial: str, apk_path: Path) -> None:
    adb = _require_adb()
    # -t: allow installing testOnly APKs (some training/vulnerable apps are
    # marked testOnly; install without -t fails INSTALL_FAILED_TEST_ONLY).
    subprocess.run(
        [adb, "-s", serial, "install", "-r", "-t", str(apk_path)],
        capture_output=True, text=True, check=True,
    )


def clear_logcat(serial: str) -> None:
    """Clear logcat buffer so the upcoming dynamic-stage capture reads only fresh entries."""
    adb = _require_adb()
    subprocess.run(
        [adb, "-s", serial, "logcat", "-c"],
        capture_output=True, text=True, check=True, timeout=10,
    )


def verify_installed(serial: str, package_name: str) -> bool:
    adb = _require_adb()
    result = subprocess.run(
        [adb, "-s", serial, "shell", "pm", "list", "packages", package_name],
        capture_output=True, text=True, check=True,
    )
    # FR-4.2: exact match, not substring. `pm list packages <filter>` filters by
    # substring, and verify used to check `package_name in result.stdout` - so a
    # similarly-prefixed package (com.x.prod) installed without the target
    # (com.x) would leave the target's name in stdout and falsely "verify" an
    # app that isn't there. Match the `package:` lines exactly instead.
    for line in result.stdout.splitlines():
        if line.startswith("package:") and line[8:] == package_name:
            return True
    return False


def capture_logcat(serial: str, timeout_seconds: int = 15) -> str:
    adb = _require_adb()
    result = subprocess.run(
        [adb, "-s", serial, "logcat", "-d"],
        capture_output=True, text=True, check=True, timeout=timeout_seconds,
    )
    return result.stdout

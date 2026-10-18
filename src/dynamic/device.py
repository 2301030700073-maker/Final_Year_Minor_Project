"""adb device discovery, install, and logcat capture (FR-4.1, 4.2, 4.4). Reference-machine only."""

from __future__ import annotations

import os
import re
import shutil
import socket
import subprocess
import time
from pathlib import Path

import frida

_FRIDA_RELAY_PORT = 27043
_ADB_FORWARD_PORT = 27044
_RELAY_PROC: subprocess.Popen | None = None

# frida-server: the local copy (checked into tools/) is auto-pushed to the
# device by _ensure_frida_server when the device is missing it, so the dynamic
# stage provisions its own prerequisite instead of requiring a manual push.
_FRIDA_SERVER_DEVICE = "/data/local/tmp/frida-server"
# ADR-0020: one wording for "the server binary reported nothing readable", shared
# by the pre- and post-provisioning reads so the two cannot drift apart.
_SERVER_VERSION_UNREADABLE = "frida-server --version produced no readable version"
_FRIDA_SERVER_LOCAL = (Path(__file__).resolve().parents[2]
                       / "tools" / "frida-server-16.7.19-x86_64")


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


class FridaProvisioningError(RuntimeError):
    """A provisioning failure that carries the instrumentation it happened to.

    ADR-0020: the version of the Frida that produced (or failed to produce) a
    dynamic verdict is part of the record, and the failure path is where it is
    asked for most. A plain RuntimeError would leave the stage's error arm able
    to name the cause but not the client and server it was measured against, so
    the record is attached to the exception instead of being discarded when the
    raise unwinds past the point that built it.
    """

    def __init__(self, message: str, instrument: dict):
        super().__init__(message)
        self.instrument = instrument


def _frida_venv_version() -> str:
    """Return the venv's ``frida`` major.minor (e.g. ``"16.7"``).

    The on-device frida-server must match this exactly: Frida refuses to talk
    to a server of a different major.minor (``ProtocolError: ensure that major
    versions match``), and a wrong-version server that is already running
    would otherwise sail through ``_ensure_frida_server``'s root check and only
    fail later at ``enumerate_processes`` with a cryptic error."""
    return ".".join(frida.__version__.split(".")[:2])


def _device_frida_server_version(adb: str, serial: str, server_path: str) -> str | None:
    """Return the running on-device frida-server's major.minor, or None if it
    cannot be read. ``frida-server --version`` prints and exits without binding
    the port, so it is safe to call even while a server is running."""
    result = subprocess.run(
        [adb, "-s", serial, "shell", server_path, "--version"],
        capture_output=True, text=True, timeout=20,
    )
    if result.returncode != 0:
        return None
    version = (result.stdout or "").strip()
    parts = version.split(".")
    return ".".join(parts[:2]) if len(parts) >= 2 else (version or None)


def _ensure_frida_server(adb: str, serial: str) -> dict:
    """Ensure frida-server is running AS ROOT on the device before connecting.

    frida-server must run as root to attach to system_server and inject into
    other apps. A frida-server started by a non-root adbd runs as 'shell' and
    fails with the cryptic "unable to find process with name 'system_server'"
    error. That is the single most common dynamic-stage failure, so root is
    guaranteed here rather than assumed:

      1. ``adb root`` makes adbd run as root (idempotent on rootable images;
         fails loudly on non-rootable ones - a device that can't root can't do
         system-wide bypass, so surface it now rather than as a cryptic Frida
         error during attach).
      2. If a frida-server is already running but NOT as root, kill it so the
         restart below runs it as root.
      3. If a root frida-server is already running, do nothing.

    A server that is pushed but not started is the other usual cause of a
    silently-hanging dynamic stage, so it is started here if the binary is
    present, or fails loudly with the exact push/run commands if it is missing.
    Never hang silently (principle 3).

    Returns the instrumentation record (ADR-0020): this process's Frida client
    version, the device server binary's version before and after provisioning,
    whether a running server was replaced and why, and where the server that is
    now running came from. The version reads were always taken - the guard below
    depends on one - and were previously dropped on the floor, so a run that
    silently replaced the device's instrumentation was indistinguishable in the
    record from one that did not."""
    server_path = _FRIDA_SERVER_DEVICE
    client_version = _frida_venv_version()
    instrument: dict = {
        "client": client_version,
        "server": None,
        "server_before": None,
        "server_source": None,
        "replaced": False,
        "replace_reason": None,
        "unreadable": _SERVER_VERSION_UNREADABLE,
        "handshake": None,
    }

    def _provisioning_failed(reason: str, message: str) -> FridaProvisioningError:
        """The record as it stands when provisioning stops early: the server was
        never inspected, which is not the same as having been read and found
        unreadable."""
        instrument["server_source"] = "provisioning_failed"
        instrument["unreadable"] = f"not read - {reason}"
        return FridaProvisioningError(message, instrument)

    # 1. adbd must be root for frida-server to inject across processes. `adb root`
    # exits 0 whether it restarted adbd or found it already root - and a restart
    # drops every device-side reverse, so a caller holding one must re-place it.
    root = subprocess.run(
        [adb, "-s", serial, "root"],
        capture_output=True, text=True, timeout=30,
    )
    if root.returncode != 0:
        raise _provisioning_failed(
            "adbd could not be made root",
            "'adb root' failed - frida-server needs a rooted adbd to attach to "
            "system_server / inject into the target app (got: "
            f"{(root.stderr or root.stdout).strip()}). Use a Google-APIs "
            "(non-Play-Store) emulator image or a rooted device, or pass "
            "--skip-dynamic.",
        )

    # 2. Any already-running frida-server must be root; a shell-run one silently
    #    fails to attach to system_server. Kill it so the restart below runs it
    #    as root (adbd is now root, so a nohup'd restart is root).
    running = subprocess.run(
        [adb, "-s", serial, "shell", "ps", "-A"],
        capture_output=True, text=True, timeout=20,
    )
    root_server_running = False
    # DEV5: track whether we SIGTERM'd a wrong-state server here, so the restart
    # below can wait for it to actually exit first (pkill returns when the signal
    # is sent, not when the process has died and released the frida socket).
    killed = False
    # adb can leave stdout/stderr None on some invocations; treat absent as "".
    ps_output = (running.stdout or "") + (running.stderr or "")
    for line in ps_output.splitlines():
        if "frida-server" in line:
            tokens = line.split()
            if tokens and tokens[0] == "root":
                root_server_running = True
            else:
                subprocess.run(
                    [adb, "-s", serial, "shell", "pkill", "-f", "frida-server"],
                    capture_output=True, text=True, timeout=20,
                )
                killed = True

    # 2b. A running root server must also match the venv's frida major.minor.
    #     Frida won't talk to a mismatched server, and it would only fail later
    #     at enumerate_processes with "ensure that major versions match". If the
    #     version is wrong (or unreadable), tear it down and re-provision from
    #     the pinned tools/ copy below instead of returning optimistically.
    reprovision = False
    if killed:
        instrument["replaced"] = True
        instrument["replace_reason"] = "a frida-server was running as 'shell', not root"
    if root_server_running:
        instrument["server_before"] = _device_frida_server_version(adb, serial, server_path)
        if instrument["server_before"] != client_version:
            subprocess.run(
                [adb, "-s", serial, "shell", "pkill", "-f", "frida-server"],
                capture_output=True, text=True, timeout=20,
            )
            root_server_running = False
            reprovision = True
            instrument["replaced"] = True
            instrument["replace_reason"] = (
                "the running frida-server reported "
                f"{instrument['server_before'] or 'no readable version'}, "
                f"the client is {client_version}"
            )
    if root_server_running and not reprovision:
        instrument["server"] = instrument["server_before"]
        instrument["server_source"] = "already_running"
        instrument["unreadable"] = (
            None if instrument["server"] else _SERVER_VERSION_UNREADABLE
        )
        return instrument

    # 3. Binary present? If not, auto-push it from the repo's tools/ copy - the
    #    dynamic stage provisions its own prerequisite. Fail loudly only if the
    #    local copy is also missing (can't fabricate the binary; principle 3).
    present = subprocess.run(
        [adb, "-s", serial, "shell", "ls", server_path],
        capture_output=True, text=True, timeout=20,
    )
    pushed = present.returncode != 0 or reprovision
    if pushed:
        if not _FRIDA_SERVER_LOCAL.exists():
            raise _provisioning_failed(
                "the pinned tools/ copy is missing",
                f"frida-server not on device at {server_path} and the local "
                f"copy at {_FRIDA_SERVER_LOCAL} is missing - restore "
                "tools/frida-server-16.7.19-x86_64 (or pass --skip-dynamic).",
            )
        for cmd in (
            [adb, "-s", serial, "shell", "rm", "-f", server_path],
            [adb, "-s", serial, "push", str(_FRIDA_SERVER_LOCAL), server_path],
            [adb, "-s", serial, "shell", "chmod", "755", server_path],
        ):
            subprocess.run(cmd, capture_output=True, text=True,
                           check=True, timeout=120)

    # DEV5: if we killed a wrong-state server above (shell-run at step 2, or a
    # version-mismatch at step 2b -> reprovision), pkill only SENT SIGTERM - the
    # old process may still hold the frida socket. Starting the new server now
    # could race it and fail to bind, surfacing later as a cryptic
    # enumerate_processes error. Wait (bounded) for every frida-server to exit
    # before restarting, escalating to SIGKILL if a SIGTERM'd server lingers.
    # Bounded to a few seconds, then proceeds - a genuinely stuck server is
    # caught by the connection's own liveness check, never silently swallowed.
    if killed or reprovision:
        for _attempt in range(10):
            _ps = subprocess.run(
                [adb, "-s", serial, "shell", "ps", "-A"],
                capture_output=True, text=True, timeout=20,
            )
            if "frida-server" not in ((_ps.stdout or "") + (_ps.stderr or "")):
                break
            if _attempt == 4:
                subprocess.run(
                    [adb, "-s", serial, "shell", "pkill", "-9", "-f", "frida-server"],
                    capture_output=True, text=True, timeout=20,
                )
            time.sleep(0.5)

    # 4. Start it. adbd is now root, so the nohup'd server runs as root.
    subprocess.run(
        [adb, "-s", serial, "shell", "nohup", server_path, ">/dev/null", "2>&1", "&"],
        capture_output=True, text=True, timeout=20,
    )

    # ADR-0020: read back what the device now holds. The pinned copy is what was
    # pushed; this is what the device reports, and the two are recorded apart so
    # a push that did not take is visible in the record rather than assumed away.
    instrument["server"] = _device_frida_server_version(adb, serial, server_path)
    instrument["server_source"] = "pushed_from_tools" if pushed else "device_copy"
    instrument["unreadable"] = (
        None if instrument["server"] else _SERVER_VERSION_UNREADABLE
    )
    return instrument


def setup_frida_connection(device_serial: str) -> tuple[frida.Device, dict]:
    """Connect Frida to frida-server on the device, bridging WSL2 → Windows.

    Returns the device and the instrumentation record that produced (or failed to
    produce) the connection (ADR-0020) - see ``_ensure_frida_server``, plus the
    protocol handshake where this path performs one. A caller that drops the
    record leaves the run unable to say which Frida its dynamic verdict came
    from, which is the whole point of returning it.

    On native Linux delegates to ``frida.get_device()``.
    On WSL2 starts an ADB forward + Windows Python relay, then connects
    via ``add_remote_device()``.
    """
    # The most common dynamic-stage failure is a pushed-but-not-started
    # frida-server; start it (or fail loudly) before connecting so the stage
    # never hangs silently on a dead server (principle 3).
    instrument = _ensure_frida_server(_require_adb(), device_serial)

    # Provisioning above runs `adb root`, which restarts adbd whenever the shell
    # was not already root, and an adbd restart takes every adb reverse with it.
    # On WSL2 the reverse that matters is the pass-through tunnel: the device's
    # ONLY route to the internet (the emulator has no direct NAT). The
    # device-proxy setting survives the restart, so the path still reads as
    # configured while pointing at a device-side loopback nothing answers - the
    # app under test never reaches its server, never performs the pinned request
    # the dynamic window exists to observe, and the in-process observers' silence
    # is then recorded as the app not exercising its SSL path: a property of the
    # app that is really a property of this restart. Re-asserting the baseline
    # after provisioning is what makes that silence mean what it says, and it also
    # heals a device left un-rooted and reverse-less by a reboot. Guarded on the
    # pass-through already listening: a run that never set up an internet baseline
    # is not made to start one, so root-detection-only runs keep working on a
    # machine with no Windows-side python.
    if _in_wsl():
        # Local import: pass_through_proxy imports this module, so a module-level
        # import here would be a cycle.
        from dynamic import pass_through_proxy

        if pass_through_proxy.is_listening(pass_through_proxy.INTERNET_PROXY_PORT):
            pass_through_proxy.ensure_internet(
                device_serial, pass_through_proxy.INTERNET_PROXY_PORT)

    if not _in_wsl():
        # No handshake is performed on this path - get_device only enumerates
        # attached devices; the first real talk with the server happens later at
        # spawn. The record says nothing rather than claiming an effect that was
        # not observed here.
        return frida.get_device(device_serial, timeout=10), instrument

    adb_cmd = _adb_wrapper_path()
    win_ip = _start_relay(adb_cmd)

    mgr = frida.get_device_manager()
    device = mgr.add_remote_device(f"{win_ip}:{_FRIDA_RELAY_PORT}")
    # Verify connection. (frida 16.7.19 has no timeout kwarg on
    # enumerate_processes; the _ensure_frida_server guard above is what prevents
    # the common dead-server hang, so this stays plain rather than adding fragile
    # threading to bound it.)
    try:
        device.enumerate_processes()
    except Exception as exc:
        # ADR-0020: the handshake is the effect that proves the *running* server
        # matches this client's protocol version - the version reads above only
        # describe the binary on disk. A failure here is exactly when that pair
        # matters, so it rides out on the exception instead of being lost.
        instrument["handshake"] = f"failed: {exc}"
        raise FridaProvisioningError(
            f"frida connected to the device but the protocol handshake failed: {exc}",
            instrument,
        ) from exc
    instrument["handshake"] = (
        "enumerate_processes returned - the running server answered this "
        "client's protocol version"
    )
    return device, instrument


def _require_adb() -> str:
    """Return a working ADB binary path.

    On WSL2 the ``~/.local/bin/adb`` wrapper is preferred since it
    delegates to Windows ``adb.exe``, which runs in the Windows network
    namespace and can manage the emulator via the Windows ADB server.
    """
    return _adb_wrapper_path()


# How long an `adb devices` result may keep reporting a present-but-offline
# device before we conclude it is not coming back. See _read_device_lines.
_DEVICE_SETTLE_TIMEOUT_SECONDS = 20.0
_DEVICE_SETTLE_POLL_SECONDS = 1.5


def _read_device_lines(adb: str, timeout: float | None = None) -> tuple[list[str], list[str]]:
    """Return (online_device_lines, offline_device_lines) from `adb devices`.

    WSL2 race (root-caused 2026-10-04): the ``~/.local/bin/adb`` wrapper execs
    Windows ``adb.exe``, which starts an adb *server* on first use. The first
    query after any server start races the device reconnection and reports a
    connected device as ``offline``; the immediately following query reports it
    correctly as ``device``. A single-shot read therefore misreads a healthy
    device as 'no connected device/emulator found'.

    This polls until the device list settles out of that transient ``offline``
    state, bounded by ``timeout``. A device that is genuinely absent returns
    immediately with no lines at all (it never appears), so the absent case pays
    no retry cost -- only a present-but-reconnecting device is waited for.

    Returns two lists of raw ``adb devices`` lines: the online ones (state
    ``device``) and the offline ones. Keeping them apart lets the caller tell
    'nothing is connected' from 'something is connected but not ready yet'.
    """
    if timeout is None:
        timeout = _DEVICE_SETTLE_TIMEOUT_SECONDS

    deadline = time.monotonic() + timeout
    online: list[str] = []
    offline: list[str] = []
    while True:
        result = subprocess.run([adb, "devices"], capture_output=True, text=True,
                                check=True, timeout=30)
        online = []
        offline = []
        for line in result.stdout.splitlines()[1:]:
            if not line.strip() or "\t" not in line:
                continue
            state = line.split("\t", 1)[1].strip()
            if state == "device":
                online.append(line)
            elif state:
                offline.append(line)
        if online or not offline or time.monotonic() >= deadline:
            return online, offline
        time.sleep(_DEVICE_SETTLE_POLL_SECONDS)


def discover_device(serial: str | None = None) -> str:
    """Return the serial of a connected device/emulator, or raise loudly if none found."""
    adb = _require_adb()
    lines, offline_lines = _read_device_lines(adb)
    if serial:
        # Match the serial as the exact first tab-separated field of an
        # `adb devices` line (the same extraction used below at the multi-device
        # and single-device returns), not a loose whole-line prefix: startswith
        # would treat serial 'emulator-555' as present when only 'emulator-5554'
        # is connected. A security tool must resolve the exact device it was told
        # to analyze, never a prefix-colliding neighbor.
        if not any(line.split("\t")[0] == serial for line in lines):
            raise RuntimeError(f"requested device serial '{serial}' not found among connected devices")
        return serial
    if not lines:
        if offline_lines:
            # A device IS attached but never left the transient offline state
            # within the settle window. Name that condition explicitly: the old
            # single-shot read reported it as a missing device, which sent the
            # operator looking for a device that was in fact already there.
            present = ", ".join(line.split("\t")[0] for line in offline_lines)
            raise RuntimeError(
                f"device/emulator ({present}) is attached but stayed 'offline' for "
                f"{_DEVICE_SETTLE_TIMEOUT_SECONDS:.0f}s - it never became ready for adb. "
                "Usually a stale adb server: run 'adb kill-server && adb start-server', "
                "or reconnect the device. (This is NOT a missing device.)"
            )
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


# ADR-0028: the device properties a run records. Each one is here because this
# pipeline's own behaviour depends on it, not to make a complete build dump:
#   ro.build.version.sdk     - the API level (java-bridge behaviour; the system
#                              CA store moved into the conscrypt APEX at 34)
#   ro.build.version.release - the human-facing "14", so a reader is not left
#                              converting an API level by hand
#   ro.build.type            - userdebug/user/eng: what makes `adb root` possible
#   ro.debuggable            - the flag the dynamic stage is gated on
#   ro.product.cpu.abi       - decides which frida-server binary is correct
#   ro.hardware              - an anti-emulator marker the synthesizer rewrites
#   ro.build.fingerprint     - the full build identity the same scrub patches
_DEVICE_ENV_PROPERTIES = (
    "ro.build.version.sdk",
    "ro.build.version.release",
    "ro.build.type",
    "ro.debuggable",
    "ro.product.cpu.abi",
    "ro.hardware",
    "ro.build.fingerprint",
)


def _parse_getprop(output: str) -> dict:
    """`getprop`'s one-property-per-line output as a mapping.

    The format is `[key]: [value]`. A split on `[`/`]` would truncate the few
    properties whose value genuinely contains a bracket, so the split is on the
    first `]: [` and the trailing bracket is stripped only if present.
    """
    props: dict = {}
    for line in output.splitlines():
        line = line.strip()
        if not line.startswith("["):
            continue
        key, sep, rest = line[1:].partition("]: [")
        if not sep:
            continue
        props[key] = rest[:-1] if rest.endswith("]") else rest
    return props


def read_device_environment(serial: str) -> dict:
    """Read the recorded device environment (ADR-0028) from `serial` itself.

    One `getprop` call, parsed for the properties this pipeline's behaviour
    depends on. A property the device does not report is recorded as None - a
    statement about the device, and a different one from the whole dict being
    absent (which is how a run that used no device is stored).

    Raises if the device cannot be queried at all. That is deliberate rather than
    a silent None: a device whose shell cannot answer `getprop` is one whose
    `pm list packages` - the install verification that runs seconds later - also
    cannot, so this belongs in the caller's existing device-failure handler,
    which records a failed stage loudly instead of letting the run proceed with
    an unrecorded environment.
    """
    adb = _require_adb()
    result = subprocess.run(
        [adb, "-s", serial, "shell", "getprop"],
        capture_output=True, text=True, timeout=30,
    )
    if result.returncode != 0:
        raise RuntimeError(
            f"could not read the device environment from {serial}: "
            f"`adb -s {serial} shell getprop` exited {result.returncode}: "
            f"{(result.stderr or '').strip() or 'no stderr'}"
        )
    props = _parse_getprop(result.stdout or "")
    environment = {"serial": serial}
    for name in _DEVICE_ENV_PROPERTIES:
        environment[name] = props.get(name)
    return environment


def _stream_diagnostic(stdout, stderr) -> str:
    """Both captured streams of a failed adb call, labelled, or a stated absence."""
    parts = []
    for label, stream in (("stdout", stdout), ("stderr", stderr)):
        text = (stream or "").strip()
        if text:
            parts.append(f"{label}: {text}")
    return " | ".join(parts) or "(adb produced no diagnostic on either stream)"


def _install_diagnostic(exc: subprocess.CalledProcessError) -> str:
    """adb's own explanation of a refused install, off the exception it was lost on.

    ``capture_output=True`` puts the reason on the exception's ``.stderr``, but
    ``str(CalledProcessError)`` renders only the command and the exit status. A
    stage that reported the exception therefore reported "returned non-zero exit
    status 1" and discarded the single line that says why - measured on the
    7 MB AndroGoat build, where adb had answered
    ``INSTALL_FAILED_UPDATE_INCOMPATIBLE: Package owasp.sat.agoat signatures do
    not match previously installed version`` and none of it reached the report.
    Every real refusal - ABI, minSdk, storage, signature - is named on that
    stream, so this is the difference between a diagnosable stage and a
    mysterious one (principle 3: a failure that does not carry its cause is a
    silent failure wearing loud clothes)."""
    return _stream_diagnostic(exc.stdout, exc.stderr)


# adb's spellings for "this package is already here under a different signing
# key". Three phrasings because the exact code varies by Android version.
_SIGNATURE_CONFLICT_MARKERS = (
    "INSTALL_FAILED_UPDATE_INCOMPATIBLE",
    "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES",
    "signatures do not match",
)


def _signature_conflict_package(diagnostic: str) -> str | None:
    """The package adb says is already installed under another key, if any.

    Only adb's OWN naming of the package is returned - never a package derived
    from the APK under test. What is done with the answer is destructive
    (below), so it must come from the tool that observed the conflict rather
    than from our own expectation of it."""
    for line in diagnostic.splitlines():
        if not any(m in line for m in _SIGNATURE_CONFLICT_MARKERS):
            continue
        match = re.search(r"Package ([A-Za-z0-9_.]+) signatures do not match", line)
        if match:
            return match.group(1)
    return None


def install_apk(serial: str, apk_path: Path, package_name: str | None = None) -> dict:
    """Install the APK under test. Returns what the install had to do to succeed.

    ``package_name`` is the package the caller expects this APK to declare. It
    is what makes the recovery below safe, and it is optional: with no expected
    package the recovery is skipped and a conflict is reported as a failure.

    Recovery, in one narrow case. ``adb install -r`` cannot replace a package
    whose installed copy is signed with a different key. That is not a defect in
    the APK - it is residue from an earlier run of this pipeline against a
    different build of the same package, which is exactly what this project does
    when it re-analyzes a target across builds (AndroGoat: 21 runs). Left
    alone, the platform can never analyze two builds of one package in
    sequence, because the second run's install always fails. So when adb
    names the conflicting package AND it is the package being installed, the
    stale copy is uninstalled and the install retried once. Three things keep
    this from being a blunt instrument: the uninstall target is adb's own named
    package, never the caller's expectation of it; it is only reached on an
    explicit signature-conflict marker, so ABI/minSdk/storage refusals still
    fail loudly instead of being retried into a confusing state; and the
    recovery is returned to the caller so it is recorded as evidence rather
    than performed silently.

    Callers may ignore the return value; nothing is mutated but the device's
    copy of the target package itself."""
    adb = _require_adb()
    # -t: allow installing testOnly APKs (some training/vulnerable apps are
    # marked testOnly; install without -t fails INSTALL_FAILED_TEST_ONLY).
    # Generous but bounded: installs vary with APK size + dexopt (unlike the
    # near-instant queries elsewhere here), so a fixed short timeout could kill a
    # legitimately-slow install - the unsafe false-failure direction. But leaving
    # it unbounded lets a genuinely stuck install hang the pipeline forever,
    # contradicting the module's own never-hang-silently discipline (principle 3).
    # 5 minutes is far beyond any real install of this project's targets, so it
    # only ever trips on a hang.
    cmd = [adb, "-s", serial, "install", "-r", "-t", str(apk_path)]
    try:
        subprocess.run(cmd, capture_output=True, text=True, check=True, timeout=300)
        return {"recovered_from_signature_conflict": False}
    except subprocess.CalledProcessError as exc:
        diagnostic = _install_diagnostic(exc)
        conflict = _signature_conflict_package(diagnostic)
        if conflict is None or package_name is None or conflict != package_name:
            raise RuntimeError(
                f"adb refused to install {Path(apk_path).name}: {diagnostic}"
            ) from exc
        # The retry is attempted but never assumed: `adb uninstall` exits non-zero
        # when nothing was removed, and a second refusal is possible, so the
        # caller still sees a failure - now one that names the package removed
        # and quotes the second refusal, instead of the same opaque status.
        removed = subprocess.run(
            [adb, "-s", serial, "uninstall", conflict],
            capture_output=True, text=True, timeout=120,
        )
        if removed.returncode != 0 or "Success" not in (removed.stdout or ""):
            raise RuntimeError(
                f"adb refused to install {Path(apk_path).name} ({diagnostic}) and the "
                f"stale copy of {conflict} could not be removed to make room: "
                f"{_stream_diagnostic(removed.stdout, removed.stderr)}"
            ) from exc
        try:
            subprocess.run(cmd, capture_output=True, text=True, check=True, timeout=300)
        except subprocess.CalledProcessError as retry_exc:
            raise RuntimeError(
                f"adb refused to install {Path(apk_path).name} even after removing the "
                f"differently-signed copy of {conflict}: "
                f"{_install_diagnostic(retry_exc)}"
            ) from retry_exc
        return {
            "recovered_from_signature_conflict": True,
            "uninstalled_package": conflict,
            "first_refusal": diagnostic,
        }


def clear_logcat(serial: str) -> None:
    """Clear logcat buffer so the upcoming dynamic-stage capture reads only fresh entries.

    ``adb logcat -c`` can transiently return exit 1 ("failed to clear log
    buffer") under load right after a dynamic stage, when frida and the target
    app are still churning the buffer. That is a flake, not a real failure, so
    it is retried once; the clear is best-effort bookkeeping (a failed clear
    just means the following capture may include some older lines, it does not
    invalidate evidence). Only a clear that still fails after the retry is
    surfaced loudly - a persistent failure here signals a genuine adb/logd
    problem (principle 3)."""
    adb = _require_adb()
    for attempt in range(2):
        try:
            subprocess.run(
                [adb, "-s", serial, "logcat", "-c"],
                capture_output=True, text=True, check=True, timeout=10,
            )
            return
        except subprocess.CalledProcessError:
            if attempt == 1:
                raise
            time.sleep(0.5)


def verify_installed(serial: str, package_name: str) -> bool:
    adb = _require_adb()
    result = subprocess.run(
        [adb, "-s", serial, "shell", "pm", "list", "packages", package_name],
        capture_output=True, text=True, check=True, timeout=20,
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


# ---------------------------------------------------------------------------
# G13: AVD screen-resolution guard - integration brittleness made loud, not silent
# ---------------------------------------------------------------------------
#
# Known-target dynamic scans drive the app's UI with HARDCODED tap coordinates
# (e.g. the AndroGoat flow in tests/unit/test_frida_runner.py) that were live-
# validated at ONE emulator resolution. If the reference AVD is recreated at a
# different size those taps land in the wrong place, the app's root/SSL check
# never fires, and the run reports a false "inconclusive" that no unit test can
# catch (they mock the UI). This guard reads the live resolution so any drift
# from the validated size is loud at preflight instead of a silent mid-scan
# regression. It never invents an expected value: with EXPECTED_AVD_RESOLUTION
# unset it only *reports* the detected size; set it (WxH, e.g. "1080x1920") to
# turn the guard into an active mismatch check.

_WM_SIZE_RE = re.compile(r"(?:Physical|Override)\s+size:\s*(\d+x\d+)", re.IGNORECASE)


def screen_resolution_check(serial: str, expected: str | None = None) -> dict:
    """Report the device screen resolution and, when an expected value is known,
    whether it matches - so hardcoded known-target UI coordinates validated at
    one resolution don't silently miss at another.

    Advisory guard, never a gate: it returns a structured result rather than
    raising for a merely-different or unreadable resolution (a broken adb
    transport still raises via _require_adb, as everywhere else in this module).
      status "ok"       expected known and the effective size matches
             "mismatch" expected known and the effective size differs (LOUD)
             "unset"    no expected value to compare (reports the detected size)
             "unknown"  `adb shell wm size` could not be read/parsed (LOUD)
    The effective size is the Override size when the framework reports one (a
    resized/scaled AVD), else the Physical size - taps hit the override."""
    if expected is None:
        expected = os.environ.get("EXPECTED_AVD_RESOLUTION") or None

    adb = _require_adb()
    try:
        proc = subprocess.run(
            [adb, "-s", serial, "shell", "wm", "size"],
            capture_output=True, text=True, timeout=15,
        )
    except (OSError, subprocess.SubprocessError) as exc:
        return {"status": "unknown", "detected": None, "physical": None,
                "override": None, "expected": expected,
                "message": f"could not run `adb shell wm size`: {exc}"}

    if proc.returncode != 0:
        return {"status": "unknown", "detected": None, "physical": None,
                "override": None, "expected": expected,
                "message": (f"`adb shell wm size` failed (exit {proc.returncode}): "
                            f"{(proc.stderr or proc.stdout).strip() or '(no output)'}")}

    physical = override = None
    for line in proc.stdout.splitlines():
        match = _WM_SIZE_RE.search(line)
        if match is None:
            continue
        if "override" in line.lower():
            override = match.group(1)
        else:
            physical = match.group(1)

    effective = override or physical
    if effective is None:
        return {"status": "unknown", "detected": None, "physical": None,
                "override": None, "expected": expected,
                "message": ("could not parse a resolution from `wm size` output: "
                            f"{proc.stdout.strip() or '(empty)'}")}

    result = {"detected": effective, "physical": physical,
              "override": override, "expected": expected}
    if expected is None:
        result["status"] = "unset"
        result["message"] = (
            f"screen resolution {effective} (set EXPECTED_AVD_RESOLUTION to lock "
            "the known-target coordinate guard)")
    elif effective == expected:
        result["status"] = "ok"
        result["message"] = f"screen resolution {effective} matches expected"
    else:
        result["status"] = "mismatch"
        result["message"] = (
            f"screen resolution {effective} != expected {expected} - hardcoded "
            f"known-target UI coordinates were validated at {expected} and may "
            f"not fire at {effective}")
    return result


def capture_logcat(serial: str, timeout_seconds: int = 15) -> str:
    adb = _require_adb()
    result = subprocess.run(
        [adb, "-s", serial, "logcat", "-d"],
        capture_output=True, text=True, check=True, timeout=timeout_seconds,
    )
    return result.stdout


# ---------------------------------------------------------------------------
# mitmproxy capture helpers (NFR-7: fail loudly, never silent no-op)
# ---------------------------------------------------------------------------


def set_http_proxy(serial: str, host: str, port: int) -> None:
    """Route the device's HTTP(S) traffic through a proxy at host:port.

    Uses the global settings proxy so every app on the device honors it (the
    mitmproxy capture stage relies on this). Fails loudly if adb rejects the
    command (NFR-7)."""
    adb = _require_adb()
    subprocess.run(
        [adb, "-s", serial, "shell", "settings", "put", "global",
         "http_proxy", f"{host}:{port}"],
        capture_output=True, text=True, check=True, timeout=15,
    )


def clear_http_proxy(serial: str) -> None:
    """Remove the device proxy set by set_http_proxy. Best-effort: the adb
    command is exit-0 whether or not a proxy was set, so a failure here signals
    a real adb problem and is surfaced loudly (NFR-7), never swallowed."""
    adb = _require_adb()
    subprocess.run(
        [adb, "-s", serial, "shell", "settings", "delete", "global", "http_proxy"],
        capture_output=True, text=True, check=True, timeout=15,
    )


def ensure_adbd_root(serial: str) -> None:
    """Make adbd root NOW, so every later `adb root` in this run is a no-op.

    An adb reverse is a listener on the DEVICE, created through adbd, so it does
    not survive an adbd restart - and `adb root` restarts adbd whenever the shell
    is not already root, which is the state of every freshly started emulator.
    Measured on the reference device rather than inferred: `adb root` printed
    "restarting adbd as root" and the tcp:8080 reverse was gone afterwards,
    re-added only by hand.

    That matters because a full run performs `adb root` twice more after its
    internet path is set up - the dynamic stage's Frida provisioning and the
    capture window's CA push - and either would otherwise drop the pass-through
    tunnel that is the device's ONLY route to the internet on WSL2 (no direct
    NAT). The device-proxy setting survives the restart, so the path still reads
    as configured while pointing at a device-side loopback nothing answers: the
    app under test then cannot reach its server, never makes the request the run
    is looking for, and the observers' resulting silence is recorded as a
    property of the app. Rooting before the reverse is placed removes all of
    that, which is why the caller that places the reverse calls this first.

    Never raises on a non-rootable build: the exit status is not inspected, and
    the `wait-for-device` after it only waits for an adbd that may be
    restarting. A build that cannot be rooted has no such restart to survive -
    the reverse the caller places next is what decides, as it always did."""
    adb = _require_adb()
    subprocess.run(
        [adb, "-s", serial, "root"],
        capture_output=True, text=True, timeout=30, check=False,
    )
    # adbd may be mid-restart: placing a reverse against a device that is not
    # listening yet is how a "reverse failed" that is really a race gets
    # reported as a wiring failure.
    subprocess.run(
        [adb, "-s", serial, "wait-for-device"],
        capture_output=True, text=True, timeout=60, check=False,
    )


def adb_reverse(serial: str, device_port: int, host_port: int, add: bool = True) -> None:
    """Forward device localhost:<device_port> to host localhost:<host_port>
    (add) or remove an existing reverse (add=False).

    On native Linux this lets a device proxy at 127.0.0.1:<device_port> reach a
    mitmdump listening on the host's localhost:<host_port>. The reverse listener
    target is the adb-server host, so on WSL2 that is the Windows host - the
    same transport constraint the Frida relay already encodes (device.py:62-176)."""
    adb = _require_adb()
    cmd = [adb, "-s", serial, "reverse"]
    if not add:
        cmd += ["--remove", f"tcp:{device_port}"]
    else:
        cmd += [f"tcp:{device_port}", f"tcp:{host_port}"]
    subprocess.run(cmd, capture_output=True, text=True, check=True, timeout=15)


def _subject_hash_old(cert_path: Path) -> str:
    """Android system-cert store names certs by their subject hash (`openssl
    x509 -subject_hash_old`). This is the authoritative name; computing it wrong
    means the CA is silently not trusted, so a failure here raises loudly."""
    result = subprocess.run(
        ["openssl", "x509", "-inform", "PEM", "-subject_hash_old", "-in", str(cert_path)],
        capture_output=True, text=True, check=True, timeout=15,
    )
    first = result.stdout.split()[0] if result.stdout.split() else ""
    if not first:
        raise RuntimeError(
            f"openssl produced no subject hash for {cert_path} - cannot install the "
            "mitmproxy CA as a system cert"
        )
    return first


def push_system_ca(serial: str, cert_path: Path) -> str:
    """Install a CA cert into the device's system trust store (rooted adbd).

    Android 7+ ignores user certs for most apps, so the CA must go into
    /system/etc/security/cacerts/ as <subject_hash_old>.0 to be trusted by apps
    using the default trust store. The system partition is baked read-only on
    system-as-root builds (emulator included), and remount needs a reboot that
    this environment cannot take. So the writable copy is installed via a bind
    mount instead: a writable /data/local/tmp/cacerts staging dir (pre-seeded
    with the stock system CAs) is mounted over /system/etc/security/cacerts.
    That makes the store writable with no remount and no reboot. adb root is
    required (bind mounts are privileged). Its adbd restart is NOT free to a
    caller holding an adb reverse: measured on the reference device, `adb root`
    printed "restarting adbd as root" and the tcp:8080 reverse the device's
    internet path depends on was gone afterwards, re-added only by hand. The
    restart happens only when the shell is not already root, so a caller cannot
    tell from this function's return whether its tunnel survived - a caller that
    needs the reverse re-establishes it AFTER this call (mitmproxy_capture
    re-runs pass_through_proxy.ensure_internet for exactly this reason; a
    re-add of the same spec is idempotent, so it costs one adb call when no
    restart happened). Any failure raises loudly with the actionable hint
    (NFR-7). Returns the system path."""
    adb = _require_adb()
    hash_name = _subject_hash_old(cert_path)
    local_tmp = f"/data/local/tmp/{hash_name}.0"
    system_path = f"/system/etc/security/cacerts/{hash_name}.0"
    # adb root (below) restarts adbd, so a device that was just re-rooted by a
    # prior run can be mid-restart here. Wait for it to come back and retry the
    # push a couple of times rather than surfacing a transient adbd-away error.
    subprocess.run(
        [adb, "-s", serial, "wait-for-device"],
        capture_output=True, text=True, check=True, timeout=30,
    )
    _push_retry = None
    for _ in range(3):
        try:
            subprocess.run(
                [adb, "-s", serial, "push", str(cert_path), local_tmp],
                capture_output=True, text=True, check=True, timeout=30,
            )
            _push_retry = None
            break
        except subprocess.CalledProcessError as _err:
            _push_retry = _err
            time.sleep(1.0)
    if _push_retry is not None:
        raise _push_retry
    try:
        subprocess.run(
            [adb, "-s", serial, "root"],
            capture_output=True, text=True, check=True, timeout=15,
        )
    except subprocess.CalledProcessError:
        pass  # already root, or the build is not rootable - the bind-mount decides
    # Make the system CA store writable via a bind mount (no remount, no
    # reboot - system-as-root cannot be remounted in place). The setup is
    # idempotent: a bind mount persists until reboot, and if it is already
    # active (a prior run) the store and the staging dir are the same inode, so
    # re-copying would copy the store into itself. Guard on /proc/mounts so the
    # copy+mount only run when the store is not yet a mount point. One shell
    # command chains the whole setup so a read-only failure surfaces loudly.
    bind_setup = (
        "mkdir -p /data/local/tmp/cacerts && "
        "(grep -qs ' /system/etc/security/cacerts ' /proc/mounts && echo already-mounted) || "
        "(cp -a /system/etc/security/cacerts/. /data/local/tmp/cacerts/ && "
        " mount --bind /data/local/tmp/cacerts /system/etc/security/cacerts)"
    )
    subprocess.run(
        [adb, "-s", serial, "shell", bind_setup],
        capture_output=True, text=True, check=True, timeout=20,
    )
    subprocess.run(
        [adb, "-s", serial, "shell", "cp", local_tmp, system_path],
        capture_output=True, text=True, check=True, timeout=20,
    )
    subprocess.run(
        [adb, "-s", serial, "shell", "chmod", "644", system_path],
        capture_output=True, text=True, check=True, timeout=20,
    )
    return system_path



def create_mitm_ca(confdir: Path) -> Path:
    """Get-or-create the mitmproxy CA in `confdir` and return the cert path.

    mitmdump uses whatever CA it finds in its confdir (falling back to a fresh
    ~/.mitmproxy one only when confdir has none). Generating our own CA into a
    known confdir -- and pointing mitmdump at that confdir -- is the ONLY
    self-consistent way to capture: the device trusts exactly the CA mitmdump
    serves. Generating a cert here while mitmdump served its own ~/.mitmproxy CA
    would be a silent mismatch (device trusts a cert never presented -> decrypt
    silently fails), which is a principle-3 violation. So this is fully
    deterministic: openssl creates the key+cert bundle mitmdump expects
    (mitmproxy-ca.pem) and the cert-only PEM to install on the device, both into
    confdir. Fails loudly on generation failure (NFR-7)."""
    confdir.mkdir(parents=True, exist_ok=True)
    # CREDENTIAL: mitmproxy-ca.pem is the CA PRIVATE KEY, and this confdir lives
    # in the repo's outputs tree (out_dir/mitm-conf). Created under the default
    # umask it would be 0755/0644 - readable by every local account - and a
    # readable CA key lets anyone mint certificates the target device trusts.
    # Restrict the DIRECTORY before openssl writes the key into it, so no
    # other-user-readable key ever exists (it covers the reuse branch's files
    # too, since reaching them needs traversal). Best-effort: a filesystem that
    # refuses chmod must not break a capture.
    try:
        os.chmod(confdir, 0o700)
    except OSError:
        pass
    bundle = confdir / "mitmproxy-ca.pem"
    cert = confdir / "mitmproxy-ca-cert.pem"
    if bundle.exists() and cert.exists():
        return cert
    key_tmp = confdir / "key.pem"
    result = subprocess.run(
        ["openssl", "req", "-x509", "-newkey", "rsa:2048", "-nodes",
         "-days", "365", "-subj", "/CN=mitmproxy-capture-local",
         "-keyout", str(key_tmp), "-out", str(cert)],
        capture_output=True, text=True, timeout=30,
    )
    if result.returncode != 0:
        raise RuntimeError(
            f"failed to generate a mitmproxy CA via openssl: {result.stderr.strip()}"
        )
    # mitmdump's confdir expects the private key + cert in one file.
    bundle.write_bytes(key_tmp.read_bytes() + cert.read_bytes())
    try:
        os.chmod(bundle, 0o600)
    except OSError:
        pass
    key_tmp.unlink()
    return cert

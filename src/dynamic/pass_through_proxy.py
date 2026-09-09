"""The device's working-internet path on WSL2: a non-MITM pass-through HTTP(S)
proxy on the Windows host, and the wiring that keeps internet up alongside the
capture proxy.

The emulator's direct 10.0.2.x NAT gateway is dead below the Android level on
this WSL2 setup, so the only working outbound path is adb reverse -> a process
on the Windows host. That Windows-host process is normally the mitmproxy
capture proxy (which MITMs and decrypts everything and breaks cert-pinning
apps). To keep the emulator on *normal* internet (no MITM, pinning apps work)
at all times, this module owns a pass-through proxy on :8080 and the capture
proxy (mitmproxy_capture.py) uses a distinct port (:8081). The capture stage
ensures this internet baseline via ensure_internet() and restores it after a
run, so internet never drops - a capture never clobbers the working path.

  * :8080 - this pass-through proxy: a plain HTTP CONNECT tunnel that forwards
            HTTPS transparently (no cert swap, no decryption) and origin-form
            HTTP. Apps behave normally. This is the always-on internet path.
  * :8081 - the mitmproxy capture proxy (mitmproxy_capture.py), started fresh
            per capture and stopped after, never sharing the internet port.

The pass-through script is stdlib-only (asyncio) so it runs under the Windows
host's plain `python.exe` with no mitmproxy installed. It binds 0.0.0.0 on the
Windows host; the device reaches it through adb reverse on 127.0.0.1. Failures
raise loudly (NFR-7) - never a silent no-op.
"""

from __future__ import annotations

import shutil
import subprocess
import time
from pathlib import Path

from dynamic import device

# The pass-through proxy owns the device's normal-internet port. The capture
# proxy (mitmproxy_capture) uses a distinct port (8081) so the two coexist and
# a capture never clobbers the device's working internet path.
INTERNET_PROXY_PORT = 8080
DEFAULT_PASSTHROUGH_PORT = INTERNET_PROXY_PORT
_PASSTHROUGH_SCRIPT = '''\
"""Tiny pass-through HTTP(S) proxy (no MITM). Forward CONNECT tunnels and
origin-form HTTP transparently. stdlib-only, so it runs under plain python.exe."""
import asyncio
from urllib.parse import urlsplit

BUFSZ = 65536


async def _pipe(a, b):
    try:
        while True:
            data = await a.read(BUFSZ)
            if not data:
                break
            b.write(data)
            await b.drain()
    except Exception:
        pass
    finally:
        for s in (a, b):
            try:
                s.close()
            except Exception:
                pass


async def _connect_upstream(host, port):
    return await asyncio.open_connection(host, port)


async def _handle(reader, writer):
    try:
        line = await reader.readline()
        if not line:
            return
        parts = line.decode("latin-1", "replace").strip().split(" ")
        if len(parts) < 3:
            return
        method, target = parts[0], parts[1]
        if method.upper() == "CONNECT":
            host, _, port_s = target.partition(":")
            port = int(port_s or 443)
            while True:
                h = await reader.readline()
                if not h or h in (b"\\r\\n", b"\\n"):
                    break
            up_r, up_w = await _connect_upstream(host, port)
            writer.write(b"HTTP/1.1 200 Connection established\\r\\n\\r\\n")
            await writer.drain()
            await asyncio.gather(_pipe(reader, up_w), _pipe(up_r, writer))
            return
        # Absolute-form request: GET http://host[:port]/path HTTP/1.x
        u = urlsplit(target)
        host, port = u.hostname, (u.port or 80)
        up_r, up_w = await _connect_upstream(host, port)
        query = ("?" + u.query) if u.query else ""
        origin = "{m} {p}{q} HTTP/1.1\\r\\n".format(m=method, p=u.path or "/", q=query)
        up_w.write(origin.encode("latin-1"))
        while True:
            h = await reader.readline()
            if not h:
                break
            up_w.write(h)
            if h in (b"\\r\\n", b"\\n"):
                break
        await up_w.drain()
        await asyncio.gather(_pipe(reader, up_w), _pipe(up_r, writer))
    except Exception:
        pass
    finally:
        try:
            writer.close()
        except Exception:
            pass


async def _main(port):
    server = await asyncio.start_server(_handle, "0.0.0.0", port)
    async with server:
        await server.serve_forever()


if __name__ == "__main__":
    import sys
    asyncio.run(_main(int(sys.argv[1])))
'''


def _windows_python() -> str | None:
    """Locate a real Python interpreter on the Windows host to run the
    pass-through proxy (no mitmproxy needed there): a plain `python.exe`, or the
    `py` launcher (`py.exe`) as a fallback when `python.exe` is not directly on
    PATH. Returns the Windows path or None."""
    for probe, suffix in (("python", "python.exe"), ("py", "py.exe")):
        try:
            res = subprocess.run(
                ["powershell.exe", "-NoProfile", "-Command", f"where.exe {probe}"],
                capture_output=True, text=True, timeout=30)
        except (FileNotFoundError, subprocess.SubprocessError):
            continue
        if res.returncode != 0:
            continue
        lines = [ln.strip() for ln in res.stdout.splitlines() if ln.strip()]
        # Match the probe's OWN executable name and skip the Microsoft Store stub
        # (WindowsApps) - it is not a real python. `where.exe py` returns py.exe
        # (the launcher), which a python.exe-only suffix filter always rejected,
        # making the `py` fallback DEAD: a host with only the launcher and no
        # python.exe on PATH then got a false "no python" and lost its only WSL2
        # internet path. `py.exe <script> <port>` is the launcher's canonical
        # script invocation and works via start_windows_passthrough unchanged;
        # and if a found interpreter somehow failed to listen, _wait_listening
        # still raises loudly - so accepting py.exe never fabricates internet.
        for ln in lines:
            if "WindowsApps" not in ln and ln.lower().endswith(suffix):
                return ln
    return None


def _write_windows_passthrough(script_path: Path) -> Path:
    """Write the pass-through proxy script to script_path (a /mnt/c path so it
    doubles as C:\\... on the Windows side)."""
    script_path.parent.mkdir(parents=True, exist_ok=True)
    script_path.write_text(_PASSTHROUGH_SCRIPT)
    return script_path


def start_windows_passthrough(python_win: str, script_win: str, port: int) -> None:
    """Launch the pass-through proxy on the Windows host, detached (Start-Process
    without a redirect, same pattern as the capture mitmdump)."""
    ps = ("Start-Process -FilePath '" + python_win + "' -ArgumentList "
          "'" + script_win + "','" + str(port) + "' -WindowStyle Hidden")
    subprocess.run(["powershell.exe", "-NoProfile", "-Command", ps],
                   capture_output=True, text=True, check=True, timeout=30)


def _windows_best_effort(cmd: str) -> str | None:
    """Run a Windows-host PowerShell command best-effort. Used for cleanup
    (stopping the pass-through proxy and mitmdump) where a missed stop is not
    worth failing the stage over, so this never raises. But "never raises" is
    not "silent" (principle 3): if the command could not even be LAUNCHED
    (powershell.exe missing, timeout), the failure reason is RETURNED so a
    caller that reports leaks can surface it; callers that don't care ignore it.
    A non-zero exit from the command itself is NOT a launch failure (a
    'nothing to stop' pipeline still exits cleanly here) - we only report that
    we could not run the command at all, never over-claim a confirmed leak."""
    try:
        subprocess.run(
            ["powershell.exe", "-NoProfile", "-Command", cmd],
            capture_output=True, text=True, timeout=20)
        return None
    except Exception as exc:
        return f"{type(exc).__name__}: {exc}"


def stop_windows_passthrough() -> None:
    """Best-effort stop of the Windows-host pass-through proxy. Only targets
    the passthrough script, never mitmdump (which shares the interpreter only
    in the sense of running python; both are separate processes)."""
    _windows_best_effort(
        "Get-CimInstance Win32_Process -Filter \"Name='python.exe'\" | "
        "Where-Object { $_.CommandLine -match 'pass_through_proxy|passthrough' } | "
        "ForEach-Object { Stop-Process -Id $_.ProcessId -Force }"
    )


def _probe_windows_listening(port: int, timeout: float) -> bool:
    """Poll a Windows-host `Get-NetTCPConnection` probe until a process listens
    on `port`, absorbing PowerShell startup latency. Returns bool; never raises
    (each caller decides whether to raise loudly on a negative result)."""
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        try:
            res = subprocess.run(
                ["powershell.exe", "-NoProfile", "-Command",
                 f"(Get-NetTCPConnection -LocalPort {port} -State Listen -ErrorAction SilentlyContinue | Measure-Object).Count"],
                capture_output=True, text=True, timeout=20)
            if res.returncode == 0 and res.stdout.strip().isdigit() and int(res.stdout.strip()) > 0:
                return True
        except Exception:
            pass
        time.sleep(1.0)
    return False


def _wait_listening(port: int, timeout: float = 20.0) -> None:
    """Poll until a Windows-host process listens on `port`; raise loudly if not."""
    if not _probe_windows_listening(port, timeout):
        raise RuntimeError(f"Windows-host pass-through proxy did not listen on port {port}")


def is_listening(port: int, timeout: float = 5.0) -> bool:
    """True when a Windows-host process currently listens on `port`. Best-effort
    probe (a few tries to absorb PowerShell startup latency), never raises."""
    return _probe_windows_listening(port, timeout)


def ensure_internet(serial: str, port: int = INTERNET_PROXY_PORT) -> None:
    """Bring up the device's working-internet path on this WSL2 host and point
    the device at it. Idempotent: if the pass-through proxy is already listening
    it is left alone; otherwise it is launched detached on the Windows host. The
    reverse and the device proxy are (re)asserted so internet is reliable. Used
    both to establish internet and, via the capture stage's cleanup, to restore
    it after a capture. Raises loudly if the pass-through cannot start (NFR-7)."""
    if not is_listening(port):
        python_win = _windows_python()
        if not python_win:
            raise RuntimeError(
                "no plain python.exe on the Windows host for the pass-through "
                "proxy - the WSL2 emulator has no direct NAT, so it cannot reach "
                "the internet without this proxy")
        stamp = time.time_ns()
        script_path = Path("/mnt/c/Users/Public") / f"{stamp}-passthrough.py"
        _write_windows_passthrough(script_path)
        start_windows_passthrough(python_win,
                                  f"C:\\Users\\Public\\{stamp}-passthrough.py", port)
        _wait_listening(port)
    try:
        device.adb_reverse(serial, port, port, add=True)
    except Exception:
        pass  # reverse re-add is best-effort; the proxy + device setting carry it
    device.set_http_proxy(serial, "127.0.0.1", port)

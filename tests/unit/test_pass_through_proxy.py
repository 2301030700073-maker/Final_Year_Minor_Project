"""Wrapper-contract tests for the pass-through (non-MITM) proxy module.

The pass-through script's pure logic (asyncio CONNECT tunnel, absolute-form ->
origin-form HTTP rewrite) is stdlib-only, so these tests exercise the SHIPPED
script for real, end-to-end against loopback sockets (a genuine execution of the
real code, not a mock - principle 3), in addition to the no-tool wrapper paths
and the exact powershell launch/stop command shapes (matching
test_mitmproxy_capture.py). The Windows-host run remains the integration record
for the device path itself; these local runs guard the script's own logic - the
device's ONLY outbound path on WSL2 - against regressions the compile+substring
check below cannot catch.
"""

import contextlib
import socket
import subprocess
import sys
import threading
import time

import pytest

from dynamic import pass_through_proxy as ptp
from dynamic import device


@pytest.fixture(autouse=True)
def _no_live_adb_root(monkeypatch):
    """`ensure_internet` roots adbd before it places the reverse - an adbd restart
    after the fact would take the tunnel with it. The real call shells out to adb,
    so any test here that reaches it would drive a live device (or fail on a
    machine without adb), neither of which is what this file is testing. Stubbed
    for every test in the file so a new test cannot forget it; the ordering it
    protects is asserted explicitly below."""
    monkeypatch.setattr(device, "ensure_adbd_root", lambda serial: None)


def test_ensure_internet_roots_adbd_before_placing_the_reverse(monkeypatch):
    """Order is the whole point. A reverse is a listener on the DEVICE, so rooting
    adbd after placing it destroys it - and the device-proxy setting that follows
    then points at a loopback nothing answers, which reads as a configured
    internet path and delivers none."""
    order = []
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: True)
    monkeypatch.setattr(device, "ensure_adbd_root", lambda serial: order.append("root"))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: order.append("reverse"))
    monkeypatch.setattr(device, "set_http_proxy", lambda *a, **k: order.append("proxy"))
    ptp.ensure_internet("emulator-5554", 8080)
    assert order == ["root", "reverse", "proxy"]


def test_script_template_is_valid_python_and_handles_connect():
    # The template must be syntactically valid so the Windows host can run it,
    # and it must contain the CONNECT tunnel + origin-form forwarding paths.
    compile(ptp._PASSTHROUGH_SCRIPT, "passthrough.py", "exec")
    assert "CONNECT" in ptp._PASSTHROUGH_SCRIPT
    assert "200 Connection established" in ptp._PASSTHROUGH_SCRIPT
    assert "urlsplit" in ptp._PASSTHROUGH_SCRIPT
    assert "asyncio.start_server" in ptp._PASSTHROUGH_SCRIPT


def _free_port() -> int:
    """A currently-free loopback TCP port (bind :0, read it back, release)."""
    s = socket.socket()
    s.bind(("127.0.0.1", 0))
    port = s.getsockname()[1]
    s.close()
    return port


@contextlib.contextmanager
def _running_passthrough(tmp_path):
    """Start the REAL embedded pass-through script as a subprocess on a free
    loopback port and yield that port. stdlib-only, so it runs anywhere with no
    device/Windows host - a genuine execution of the shipped script, not a mock
    (principle 3). Terminates the subprocess on exit."""
    port = _free_port()
    script = tmp_path / "pt.py"
    ptp._write_windows_passthrough(script)
    proc = subprocess.Popen([sys.executable, str(script), str(port)])
    try:
        deadline = time.monotonic() + 5.0
        while time.monotonic() < deadline:
            try:
                socket.create_connection(("127.0.0.1", port), timeout=0.2).close()
                break
            except OSError:
                time.sleep(0.05)
        else:
            raise RuntimeError("embedded pass-through proxy did not start listening")
        yield port
    finally:
        proc.terminate()
        try:
            proc.wait(timeout=5)
        except subprocess.TimeoutExpired:
            proc.kill()


def test_passthrough_script_rewrites_absolute_form_to_origin_form(tmp_path):
    # Real end-to-end run of the SHIPPED script (not a mock): a client sends an
    # absolute-form request line (the form a client sends to an EXPLICIT proxy,
    # RFC 7230 5.3.2 - what commit 062a59329 corrected the docstring to), and the
    # upstream must receive it rewritten to ORIGIN form with the query intact.
    # This is the device's ONLY internet path on WSL2, so a regression here (a
    # dropped query, a lost path-fallback, or forwarding absolute-form verbatim)
    # silently breaks every capture run - the compile/substring test above catches
    # none of those.
    captured = {}
    up_port = _free_port()

    def _upstream():
        srv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        srv.bind(("127.0.0.1", up_port))
        srv.listen(1)
        srv.settimeout(10)
        conn, _ = srv.accept()
        conn.settimeout(5)
        data = b""
        while b"\r\n\r\n" not in data:
            chunk = conn.recv(4096)
            if not chunk:
                break
            data += chunk
        captured["raw"] = data
        conn.sendall(b"HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nhi")
        conn.close()
        srv.close()

    t = threading.Thread(target=_upstream, daemon=True)
    t.start()
    with _running_passthrough(tmp_path) as proxy_port:
        cli = socket.create_connection(("127.0.0.1", proxy_port), timeout=5)
        cli.sendall(
            f"GET http://127.0.0.1:{up_port}/path?q=1 HTTP/1.1\r\n"
            f"Host: 127.0.0.1:{up_port}\r\n\r\n".encode())
        cli.settimeout(5)
        resp = b""
        try:
            while True:
                buf = cli.recv(4096)
                if not buf:
                    break
                resp += buf
        except socket.timeout:
            pass
        cli.close()
    t.join(timeout=5)

    first_line = captured.get("raw", b"").split(b"\r\n", 1)[0]
    assert first_line == b"GET /path?q=1 HTTP/1.1"   # origin-form, query intact
    assert b"http://" not in first_line              # absolute-form NOT leaked upstream
    assert resp.startswith(b"HTTP/1.1 200 OK")       # upstream reply tunneled back


def test_passthrough_script_connect_tunnels_bytes_transparently(tmp_path):
    # The HTTPS path: CONNECT must open a TRANSPARENT byte tunnel - no cert swap,
    # no decryption (that is the whole point of the pass-through vs the capture
    # proxy: pinning apps must keep working). Prove raw bytes flow both ways after
    # the 200 against a real echo upstream; a regression that altered/MITM'd the
    # stream would fail the byte-for-byte echo.
    up_port = _free_port()

    def _echo_upstream():
        srv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        srv.bind(("127.0.0.1", up_port))
        srv.listen(1)
        srv.settimeout(10)
        conn, _ = srv.accept()
        conn.settimeout(5)
        conn.sendall(conn.recv(4096))  # echo whatever the tunnel delivers
        conn.close()
        srv.close()

    t = threading.Thread(target=_echo_upstream, daemon=True)
    t.start()
    with _running_passthrough(tmp_path) as proxy_port:
        cli = socket.create_connection(("127.0.0.1", proxy_port), timeout=5)
        cli.sendall(f"CONNECT 127.0.0.1:{up_port} HTTP/1.1\r\n\r\n".encode())
        cli.settimeout(5)
        established = cli.recv(4096)
        assert established.startswith(b"HTTP/1.1 200"), established  # tunnel opened
        cli.sendall(b"PING-THROUGH-TUNNEL")
        echoed = cli.recv(4096)
        cli.close()
    t.join(timeout=5)

    assert echoed == b"PING-THROUGH-TUNNEL"  # raw bytes tunneled untouched (no MITM)


def test_write_windows_passthrough_writes_script(tmp_path):
    script = tmp_path / "pt.py"
    ptp._write_windows_passthrough(script)
    assert script.read_text() == ptp._PASSTHROUGH_SCRIPT


def test_windows_python_skips_store_stub(monkeypatch):
    # The Microsoft Store stub (WindowsApps) is not a real python; the real
    # install must be chosen.
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return subprocess.CompletedProcess(
            cmd, 0,
            stdout=("C:\\Users\\x\\AppData\\Local\\Microsoft\\WindowsApps\\python.exe\n"
                    "C:\\Python314\\python.exe\n"))

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    assert ptp._windows_python() == "C:\\Python314\\python.exe"


def test_windows_python_none_when_no_python(monkeypatch):
    monkeypatch.setattr(ptp.subprocess, "run",
                        lambda *a, **k: subprocess.CompletedProcess(a[0], 1))
    assert ptp._windows_python() is None


def test_windows_python_falls_back_to_py_launcher(monkeypatch):
    # Regression: `where.exe py` returns the launcher path `py.exe`, but the
    # filter required endswith("python.exe") - so the `py` fallback was DEAD, and
    # a host with only the launcher (no python.exe on PATH) got a false "no
    # python" and lost its ONLY WSL2 internet path. The `py` probe must accept
    # py.exe (still skipping any WindowsApps stub), matching its own exe name.
    def fake_run(cmd, **kwargs):
        query = cmd[-1]
        if query == "where.exe python":
            return subprocess.CompletedProcess(cmd, 1)          # no python.exe on PATH
        if query == "where.exe py":
            return subprocess.CompletedProcess(                 # only the launcher
                cmd, 0, stdout="C:\\Windows\\py.exe\n")
        raise AssertionError(query)

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    assert ptp._windows_python() == "C:\\Windows\\py.exe"


def test_windows_python_prefers_python_exe_over_py_launcher(monkeypatch):
    # When both exist, the `python` probe runs first and wins - the py fallback
    # only fires when python.exe is genuinely absent, so adding it never changes
    # the reference host's behavior (python.exe present there).
    def fake_run(cmd, **kwargs):
        query = cmd[-1]
        if query == "where.exe python":
            return subprocess.CompletedProcess(cmd, 0, stdout="C:\\Python314\\python.exe\n")
        raise AssertionError("py probe must not run when python.exe is found: " + query)

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    assert ptp._windows_python() == "C:\\Python314\\python.exe"


def test_start_windows_passthrough_builds_detached_start_process(monkeypatch):
    # Must use Start-Process without a redirect (a redirect blocks on the
    # long-running child) and pass the script path + port as inline args.
    captured = {}

    def fake_run(cmd, **kwargs):
        captured["cmd"] = cmd
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    ptp.start_windows_passthrough(
        "C:\\Python314\\python.exe", "C:\\Users\\Public\\p.py", 8080)
    ps = captured["cmd"][-1]
    assert "Start-Process" in ps
    assert "-ArgumentList" in ps
    assert "'C:\\Python314\\python.exe'" in ps
    assert "'C:\\Users\\Public\\p.py'" in ps
    assert "'8080'" in ps
    assert "-RedirectStandardOutput" not in ps


def test_stop_windows_passthrough_targets_only_passthrough(monkeypatch):
    # Stop must filter by command line to the passthrough script, never blanket
    # kill mitmdump.
    captured = {}

    def fake_run(cmd, **kwargs):
        captured["cmd"] = cmd
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    ptp.stop_windows_passthrough()
    ps = captured["cmd"][-1]
    assert "Get-CimInstance" in ps
    assert "pass_through_proxy" in ps or "passthrough" in ps
    assert "mitmdump" not in ps


def test_probe_windows_listening_true_when_port_bound(monkeypatch):
    # The probe itself, called directly. `is_listening` - the thin wrapper over it
    # - is stubbed off for the whole unit suite (conftest,
    # `_no_live_host_or_device`), because the gate it backs reaches the Windows
    # host and, through it, the live device; so the parse logic is exercised at
    # the function that owns it rather than through the wrapper.
    monkeypatch.setattr(ptp.subprocess, "run",
                        lambda *a, **k: subprocess.CompletedProcess(a[0], 0, stdout="2"))
    assert ptp._probe_windows_listening(8080, timeout=0.1) is True


def test_probe_windows_listening_false_when_port_free(monkeypatch):
    monkeypatch.setattr(ptp.subprocess, "run",
                        lambda *a, **k: subprocess.CompletedProcess(a[0], 0, stdout="0"))
    assert ptp._probe_windows_listening(8080, timeout=0.1) is False


def test_ensure_internet_launches_passthrough_when_not_listening(monkeypatch):
    # Internet baseline on WSL2: if the pass-through proxy is not up, it must be
    # launched detached, reversed, and the device proxy pointed at it.
    started = []
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: False)
    monkeypatch.setattr(ptp, "_windows_python", lambda: "C:\\Python314\\python.exe")
    monkeypatch.setattr(ptp, "_write_windows_passthrough", lambda path: path)
    monkeypatch.setattr(ptp, "_wait_listening", lambda *a, **k: None)
    monkeypatch.setattr(ptp, "start_windows_passthrough",
                        lambda *a, **k: started.append(a))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda *a, **k: started.append("proxy"))
    ptp.ensure_internet("emulator-5554", 8080)
    assert started  # the passthrough was launched and the device proxy set


def test_ensure_internet_skips_launch_when_already_listening(monkeypatch):
    # Idempotent: when the pass-through is already up, it is not relaunched, but
    # the device proxy is still (re)asserted so internet is reliable.
    started = []
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: True)
    monkeypatch.setattr(ptp, "start_windows_passthrough",
                        lambda *a, **k: started.append("launch"))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda *a, **k: started.append("proxy"))
    ptp.ensure_internet("emulator-5554", 8080)
    assert started == ["proxy"]  # no launch, but the proxy is asserted


def test_ensure_internet_raises_when_reverse_fails_and_leaves_proxy_unset(monkeypatch):
    # NFR-7 / principle 3: the adb reverse (device loopback -> host) is the ONLY
    # outbound path on WSL2 (the emulator has no direct NAT), so a genuine reverse
    # failure means no internet - it must fail LOUDLY, never be swallowed as
    # "best-effort". Regression: the failure was caught and passed, so
    # ensure_internet reported a working baseline while the device was stranded.
    # Two things must hold: (a) the reverse failure propagates as a RuntimeError,
    # and (b) the device proxy is NOT set afterwards - setting it would point the
    # device at a dead loopback. (A re-add of the same spec is idempotent and
    # returns success, so this raise only ever fires on a real failure.)
    proxy_set = []
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: True)  # skip launch
    def _boom(*a, **k):
        raise subprocess.CalledProcessError(1, ["adb", "reverse"])
    monkeypatch.setattr(device, "adb_reverse", _boom)
    monkeypatch.setattr(device, "set_http_proxy", lambda *a, **k: proxy_set.append(a))
    with pytest.raises(RuntimeError, match="adb reverse"):
        ptp.ensure_internet("emulator-5554", 8080)
    assert proxy_set == []  # device NOT left pointed at a dead loopback


def test_ensure_internet_raises_when_no_windows_python(monkeypatch):
    # NFR-7: no pass-through proxy means no internet on WSL2 - must fail loudly.
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: False)
    monkeypatch.setattr(ptp, "_windows_python", lambda: None)
    with pytest.raises(RuntimeError, match="python.exe"):
        ptp.ensure_internet("emulator-5554", 8080)

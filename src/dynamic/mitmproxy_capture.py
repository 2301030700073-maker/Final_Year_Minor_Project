"""mitmproxy capture stage: route a running app's traffic through mitmdump and
prove SSL pinning is actually defeated by showing real decrypted flows.

Reference-machine only: shells out to the real mitmdump binary and to adb
(NFR-7, fail loudly, never silent no-op). The pure logic (flow parsing, CA
wiring) is unit-tested with fixture data; the live capture is validated by a
real E2E run - the report's Captured Traffic section is the proof, never a mock.
If no traffic decrypts, the stage reports `failed` with the reason; it never
fabricates a flow list (project principle 3).

mitmdump placement (both reachable from the device via adb reverse):
  * Native Linux: mitmdump runs in this process's namespace; the device reaches
    it through adb reverse on this host.
  * WSL2: the emulator/adb server live on the Windows host and the device
    reaches the Windows host's localhost - NOT this WSL2 namespace. The stage
    auto-detects WSL2 and launches mitmdump.exe on the Windows host, mapping
    paths through wslpath and reading back its redirected flow_detail log.
"""

from __future__ import annotations

import shutil
import subprocess
import time
from dataclasses import dataclass
from pathlib import Path
from urllib.parse import urlsplit

from common import StageResult
from dynamic import device
from dynamic import frida_runner
from dynamic import pass_through_proxy

MITMDUMP_BIN = "mitmdump"
# The capture proxy uses its own port, distinct from the pass-through proxy's
# internet port (pass_through_proxy.INTERNET_PROXY_PORT = 8080), so a capture
# never clobbers the device's working-internet path on WSL2.
DEFAULT_PROXY_PORT = 8081
INTERNET_PROXY_PORT = pass_through_proxy.INTERNET_PROXY_PORT
CAPTURE_WINDOW_SECONDS = 12.0
CLEANUP_RETRIES = 2
_WSL_LISTEN_TIMEOUT = 20.0

_METHODS = {"GET", "POST", "PUT", "DELETE", "PATCH", "HEAD", "OPTIONS", "TRACE"}
# WSL2's /proc/version carries a "microsoft" marker; absent on native Linux.
_WSL_VERSION_PATH = "/proc/version"

# The Windows-host mitmdump writes each flow to its own flushed log via the
# mitmproxy API rather than the terminal logger: the terminal logger suppresses
# flow lines when stdout is not a TTY (observed live: a redirected mitmdump
# stdout stayed empty while the -w .mitm file filled), so the API is the only
# deterministic, TTY-independent source the WSL2 stage can read back.
_ADDON_TEMPLATE = '''\
"""Capture addon for the WSL2 Windows-host mitmdump: append each flow as a
flow_detail-format line to a log file the WSL2 stage reads back. Using the
mitmproxy API (not the terminal logger) is TTY-independent and deterministic.
"""
from mitmproxy import http

_LOG_PATH = r"@LOG_WIN@"


def _emit(flow):
    try:
        req = flow.request
        url = "{}://{}{}".format(req.scheme, req.pretty_host, req.path or "/")
        with open(_LOG_PATH, "a", buffering=1) as f:
            f.write("127.0.0.1:1: {} {} HTTP/1.1\\n".format(req.method, url))
            if flow.response is not None:
                f.write(" << HTTP/1.1 {}\\n".format(flow.response.status_code))
    except Exception:
        pass


def response(flow):
    _emit(flow)


def error(flow):
    _emit(flow)


def _mark_connect():
    # Reachability probe: a client actually reached the proxy and opened a
    # connection, independent of whether any request produced a decrypted flow.
    # Counting these lets the WSL2 stage tell "device reached the proxy but the
    # app was silent" (connections>0, flows==0 -> skipped/app-silence) apart from
    # "device never reached the proxy" (connections==0, flows==0 -> real failure).
    # A distinct marker token that _parse_flow_detail counts but never mistakes
    # for a flow (it carries no " HTTP/" request line).
    try:
        with open(_LOG_PATH, "a", buffering=1) as f:
            f.write("@@CLIENT_CONNECT@@\\n")
    except Exception:
        pass


def client_connected(client):
    # mitmproxy >=8 lifecycle hook: fires once per client TCP connection to the
    # proxy. Present on the addon manager regardless of TLS outcome, so it fires
    # even when the app later refuses the CA (pinned) - exactly the reachability
    # signal we need. Older API name (clientconnect) is aliased below.
    _mark_connect()


def clientconnect(layer):
    # Back-compat alias for mitmproxy <8 (the reference host pins 8.1.1, which has
    # client_connected; this keeps the addon working if the host mitmproxy is
    # older, rather than silently logging no connections).
    _mark_connect()
'''


# Reachability marker the addon writes on each client TCP connection (see the
# addon's client_connected hook). Counted by _count_client_connections and
# skipped by _parse_flow_detail so it is never mistaken for a decrypted flow.
_CLIENT_CONNECT_MARKER = "@@CLIENT_CONNECT@@"


@dataclass
class FlowSummary:
    host: str
    method: str
    path: str
    status: str


def _count_client_connections(text: str) -> int:
    """How many client TCP connections actually reached the proxy this run,
    counted from the addon's @@CLIENT_CONNECT@@ markers. Proxy-independent
    reachability signal: >0 with zero flows means the device reached mitmdump but
    the app stayed silent (or refused the CA on a pinned request) - NOT a
    device->proxy wiring failure. Pure, fixture-testable (no mitmproxy needed)."""
    return sum(1 for raw in text.splitlines()
               if raw.strip() == _CLIENT_CONNECT_MARKER)


def _parse_flow_detail(text: str) -> list[FlowSummary]:
    """Extract {host, method, path, status} per flow from mitmdump's
    `flow_detail=2` stdout. Confirmed live format (mitmproxy 8.1.1):

        127.0.0.1:38908: GET https://example.com/ HTTP/2.0
            user-agent: curl/8.5.0
         << HTTP/2.0 200 OK 559b

    A request line carries a client prefix token, then METHOD URL HTTP/x; the
    response status arrives on a later `<< HTTP/... <status> ...` line. Pure
    function - unit-tested with fixture text. Malformed lines are skipped,
    never raised on. CONNECT tunnel-establishment lines are ignored (their
    URL is an opaque host:port, not a decrypted flow)."""
    flows: list[FlowSummary] = []
    pending: FlowSummary | None = None
    for raw in text.splitlines():
        line = raw.strip()
        if not line:
            continue
        # Skip connection lifecycle noise, including our own reachability marker
        # (@@CLIENT_CONNECT@@ is counted by _count_client_connections, never a flow).
        if line == _CLIENT_CONNECT_MARKER:
            continue
        if ("client connect" in line or "client disconnect" in line
                or "server connect" in line or "server disconnect" in line):
            continue
        # Response status line attaches to the pending request flow.
        if line.startswith("<<") and pending is not None:
            tokens = line.split()
            if len(tokens) >= 3:
                pending.status = tokens[2]
            flows.append(pending)
            pending = None
            continue
        # Request line: "<client>: METHOD URL HTTP/x", ALWAYS at column 0 in
        # flow_detail=2 (native and the WSL2 addon both emit it un-indented).
        # mitmproxy INDENTS request/response headers beneath it - and an ordinary
        # header VALUE can contain a method token and " HTTP/" (a Referer/Via/Link
        # header carrying "GET ... HTTP/1.1"). Matching on " HTTP/" alone, after
        # strip() discarded the indentation, fabricated a phantom flow from such a
        # header - inflating flows_count, injecting a bogus host, and (all-header
        # noise, zero real requests) risking a fake `success` decrypted-traffic
        # proof (principle 3). Gate on the raw line being un-indented so only a
        # genuine request line is parsed; an indented header can never qualify.
        if " HTTP/" in line and not raw[0].isspace():
            tokens = line.split()
            method = None
            url = None
            for i, tok in enumerate(tokens):
                if tok in _METHODS and i + 1 < len(tokens):
                    method = tok
                    url = tokens[i + 1]
                    break
            if method is None or method == "CONNECT":
                continue
            try:
                parsed = urlsplit(url)
                host = parsed.hostname or ""
                path = parsed.path or "/"
            except ValueError:
                host, path = "", "/"
            # A new request while one is still pending means the prior request
            # never got its response line before this one arrived (HTTP/2
            # multiplexing or connection reuse can interleave two request lines
            # ahead of any `<<` on native flow_detail=2). Flush the pending flow
            # response-less instead of overwriting it - dropping a request we
            # actually captured would be a SILENT flow loss (principle 3), the
            # same honesty the end-of-loop flush below already enforces. Status
            # stays "" so the report shows it was seen but its response was not
            # paired, never fabricating a status. (On the WSL2 addon path request
            # and response are written together, so pending is always None here -
            # this only ever fires on the native interleaved path.)
            if pending is not None:
                flows.append(pending)
            pending = FlowSummary(host=host, method=method, path=path, status="")
    # Flush a request that never got a response line (e.g. failed handshake).
    if pending is not None:
        flows.append(pending)
    return flows


def _launch_app(serial: str, package: str) -> None:
    """Cold-start the package for capture.

    Force-stops any running instance first, then launches the main activity via
    am start. An app that is *already* running (e.g. left open by the dynamic
    stage) fires no new SDK/API traffic on a bare am start, which yields a
    misleading empty capture. Force-stop guarantees a fresh cold start that makes
    deterministic requests inside the capture window. Fails loudly on a rejected
    adb command (NFR-7); an app that crashes on launch still returns exit 0 from
    am start, so an empty capture is reported honestly downstream."""
    adb = device._require_adb()
    subprocess.run(
        [adb, "-s", serial, "shell", "am", "force-stop", package],
        capture_output=True, text=True, check=True, timeout=20,
    )
    subprocess.run(
        [adb, "-s", serial, "shell", "am", "start",
         "-a", "android.intent.action.MAIN",
         "-c", "android.intent.category.LAUNCHER", "-p", package],
        capture_output=True, text=True, check=True, timeout=20,
    )


def _cleanup(serial: str, proxy_port: int, proc: subprocess.Popen | None) -> list[str]:
    """Best-effort restore of device state after a capture. A failed cleanup is
    non-fatal but NEVER silent: each failure is collected and RETURNED so the
    caller records it on the StageResult evidence (principle 3 - no silent
    failure). Like clear_logcat's retry-then-record, the goal is to not leak a
    proxy setting or a stray mitmdump, not to abort the run - but a leak that
    does happen must be visible in the report, not swallowed by a bare `pass`.

    On WSL2 the device has no direct NAT, so clearing the proxy would leave it
    with no internet at all. Instead the device proxy is restored to the
    pass-through proxy (the working-internet path) when that proxy is up; only
    on native Linux (where the device reaches the internet directly) is the
    proxy cleared outright."""
    warnings: list[str] = []
    restored = False
    last_exc: Exception | None = None
    for _ in range(CLEANUP_RETRIES):
        try:
            if (_on_wsl2()
                    and pass_through_proxy.is_listening(INTERNET_PROXY_PORT)):
                device.set_http_proxy(serial, "127.0.0.1", INTERNET_PROXY_PORT)
            else:
                device.clear_http_proxy(serial)
            restored = True
            break
        except Exception as exc:
            last_exc = exc
            time.sleep(0.5)
    if not restored:
        warnings.append(
            f"device proxy not restored after {CLEANUP_RETRIES} retries - the "
            f"device may be left without a working proxy/internet: {last_exc}"
        )
    try:
        device.adb_reverse(serial, proxy_port, proxy_port, add=False)
    except Exception as exc:
        warnings.append(f"adb reverse --remove {proxy_port} failed (leaked reverse): {exc}")
    if proc is not None:
        try:
            proc.terminate()
        except Exception as exc:
            warnings.append(f"local mitmdump terminate failed (may be stray): {exc}")
    # On WSL2 the mitmdump runs on the Windows host, so stop it there too (the
    # pass-through proxy is a separate python.exe and is intentionally left up).
    if _on_wsl2():
        _stop_windows_mitmdump()
    return warnings


def _on_wsl2() -> bool:
    """True when running on WSL2, where the emulator/adb server live on the
    Windows host and the device reaches that host's localhost - not this WSL2
    namespace. In that case mitmdump must run on the Windows side."""
    try:
        version = Path(_WSL_VERSION_PATH).read_text(errors="ignore")
    except OSError:
        return False
    return "microsoft" in version.lower()


def _prepare_windows_confdir(confdir: Path, dest_dir: Path) -> str:
    """Copy the CA files a Windows mitmdump must serve into a Windows-visible dir
    (dest_dir under /mnt/c, which Windows sees as C:\\...\\<stamp>-conf) and return
    that plain C:\\ confdir path. Windows processes cannot reliably open the
    \\\\wsl.localhost UNC form wslpath returns (observed live: Access denied /
    path not found on the WSL filesystem), so the confdir must be a real C:\\
    path. Copying the same CA bundle keeps the CA mitmdump serves identical to
    the one push_system_ca installed, so the device still trusts it."""
    dest_dir.mkdir(parents=True, exist_ok=True)
    for name in ("mitmproxy-ca.pem", "mitmproxy-ca-cert.pem"):
        src = confdir / name
        if src.exists():
            shutil.copy2(src, dest_dir / name)
    return "C:\\" + "\\".join(dest_dir.relative_to(Path("/mnt/c")).parts)


def _windows_mitmdump() -> str | None:
    """Locate mitmdump.exe on the Windows host (where the device can reach it).
    Returns the Windows path or None if mitmproxy is not installed there."""
    try:
        res = subprocess.run(
            ["powershell.exe", "-NoProfile", "-Command", "where.exe mitmdump"],
            capture_output=True, text=True, timeout=30)
    except (FileNotFoundError, subprocess.SubprocessError):
        return None
    if res.returncode != 0:
        return None
    lines = [ln for ln in res.stdout.strip().splitlines() if ln.strip()]
    return lines[0] if lines else None


def _write_windows_addon(addon_path: Path, log_win: str) -> Path:
    """Write the flow-capturing mitmdump addon to addon_path (a /mnt/c path so
    it doubles as C:\\Users\\Public\\... on the Windows side) with log_win baked
    in as where it writes. addon_path.parent must already exist."""
    addon_path.parent.mkdir(parents=True, exist_ok=True)
    # replace() (not str.format) so the addon's own .format()/f-string braces
    # are untouched; only the @LOG_WIN@ token is substituted.
    addon_path.write_text(_ADDON_TEMPLATE.replace("@LOG_WIN@", log_win))
    return addon_path


def _start_windows_mitmdump(mitmdump_win: str, confdir_win: str, addon_win: str,
                            flows_win: str, port: int) -> None:
    """Launch mitmdump.exe on the Windows host, detached, writing raw flows to
    flows_win and each flow to the addon's own log. PowerShell Start-Process
    without a redirect returns at once (a redirect makes PowerShell block on the
    long-running child); the addon is the flow source, so no stdout redirect is
    needed and the terminal logger's TTY-gating is irrelevant. Inline
    -ArgumentList (not an array variable) is used. Every value is a plain C:\\
    path with no spaces, so single-quoting is enough."""
    args = (
        "'--set','confdir=" + confdir_win + "','--set','flow_detail=2',"
        "'-s','" + addon_win + "','-w','" + flows_win + "','-p','" + str(port) + "'"
    )
    ps = ("Start-Process -FilePath '" + mitmdump_win + "' -ArgumentList "
          + args + " -WindowStyle Hidden")
    subprocess.run(["powershell.exe", "-NoProfile", "-Command", ps],
                   capture_output=True, text=True, check=True, timeout=30)


def _wait_windows_listening(port: int, timeout: float = _WSL_LISTEN_TIMEOUT) -> None:
    """Poll until a Windows-host process listens on `port`. If the just-launched
    Windows mitmdump never binds, raise loudly - the WSL2 path must not silently
    route the device to nothing."""
    if not pass_through_proxy._probe_windows_listening(port, timeout):
        raise RuntimeError(f"Windows-host mitmdump did not start listening on port {port}")


def _read_flow_detail_log(path: Path) -> str:
    """Read a Windows mitmdump's redirected flow_detail log (best-effort)."""
    try:
        return path.read_text(errors="ignore") if path.exists() else ""
    except OSError:
        return ""


def _stop_windows_mitmdump() -> None:
    """Best-effort stop of the Windows-host mitmdump after a WSL2 capture."""
    pass_through_proxy._windows_best_effort(
        "Get-Process mitmdump -ErrorAction SilentlyContinue | Stop-Process -Force"
    )


def run_capture_stage(
    serial: str,
    package: str,
    out_dir: Path | str,
    proxy_port: int = DEFAULT_PROXY_PORT,
    capture_window: float = CAPTURE_WINDOW_SECONDS,
    mitmdump_path: str | None = None,
    bypass_script: str | None = None,
) -> StageResult:
    """Run a mitmproxy capture of `package`'s traffic and return a StageResult.

    When `bypass_script` is given (a filename under src/dynamic/scripts/), the
    app is cold-started *under Frida* with that script loaded before resume, so
    its traffic decrypts through the proxy. This is the "with script" side of an
    A/B: the same run with `bypass_script=None` cold-starts via plain `am start`
    (no hooks), so a genuinely-pinned app rejects the capture CA and its pinned
    host shows no decrypted flow - the two runs together prove the bypass. Use a
    pinning-only script here (never a root-detection one) so the app does not
    self-terminate during the capture window.

    Honest contract: a `success` result means real flows were captured and
    parsed (flows_count > 0) - the decrypted-traffic proof. A capture that
    produces zero flows reports `failed` with the reason (proxy unreachable, or
    the app made no requests), never a fabricated flow list (principle 3).

    Two mitmdump placements, both reachable from the device via adb reverse:
      * Native Linux: mitmdump runs here (this process's namespace).
      * WSL2: the emulator/adb server live on the Windows host and the device
        reaches the Windows host's localhost - NOT this WSL2 namespace. So the
        stage auto-launches mitmdump.exe on the Windows host (same transport
        constraint the Frida relay encodes) and reads back its flow_detail log.
    """
    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    confdir = out_dir / "mitm-conf"
    bypass_applied = False  # set True only when the Frida bypass-spawn arm runs

    wsl2 = _on_wsl2()
    if wsl2:
        win_mitmdump = _windows_mitmdump()
        if not win_mitmdump:
            return StageResult(
                stage="capture-traffic", status="failed",
                evidence={"reason": "Windows-host mitmdump not found"},
                error=(
                    f"{MITMDUMP_BIN} not found on the Windows host - the device "
                    "reaches the Windows host, not WSL2. Install mitmproxy there "
                    "(pip install mitmproxy) and retry, or pass --skip-dynamic"
                ),
            )
        # Establish the device's working-internet baseline (pass-through proxy)
        # so a capture can be taken and the device left with internet after.
        pass_through_proxy.ensure_internet(serial, INTERNET_PROXY_PORT)
    else:
        mitmdump = mitmdump_path or shutil.which(MITMDUMP_BIN)
        if not mitmdump:
            return StageResult(
                stage="capture-traffic", status="failed",
                evidence={"reason": "mitmdump not found"},
                error=(
                    f"{MITMDUMP_BIN} binary not found - install mitmproxy "
                    "(the project targets mitmproxy 8.1.1) or pass --skip-dynamic"
                ),
            )

    flows_path: Path = out_dir / "capture.mitm"  # always bound for the except path
    proc: subprocess.Popen | None = None
    # Bound before the try so the `finally` can attach cleanup warnings to
    # whichever result we return (principle 3: a failed device-state cleanup is
    # recorded on the evidence, never silently dropped).
    result: StageResult | None = None
    try:
        cert = device.create_mitm_ca(confdir)
        system_ca = device.push_system_ca(serial, cert)

        if wsl2:
            stamp = time.time_ns()
            confdir_win = _prepare_windows_confdir(
                confdir, Path("/mnt/c/Users/Public") / f"{stamp}-conf")
            flows_win = f"C:\\Users\\Public\\{stamp}.mitm"
            addon_win = f"C:\\Users\\Public\\{stamp}-addon.py"
            log_win = f"C:\\Users\\Public\\{stamp}-flows.log"
            flows_path = Path("/mnt/c/Users/Public") / f"{stamp}.mitm"
            addon_path = Path("/mnt/c/Users/Public") / f"{stamp}-addon.py"
            log_wsl = Path("/mnt/c/Users/Public") / f"{stamp}-flows.log"
            _write_windows_addon(addon_path, log_win)
            _start_windows_mitmdump(win_mitmdump, confdir_win, addon_win,
                                    flows_win, proxy_port)
            _wait_windows_listening(proxy_port)
        else:
            flows_path = out_dir / f"{time.time_ns()}.mitm"
            proc = subprocess.Popen(
                [mitmdump, "--set", f"confdir={confdir}",
                 "--set", "flow_detail=2",
                 "-w", str(flows_path), "-p", str(proxy_port)],
                stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,
            )
            time.sleep(2.0)  # let mitmdump bind before routing traffic through it

        # Route the device's traffic: device 127.0.0.1:<port> -> adb reverse ->
        # adb-server host's 127.0.0.1:<port> (where mitmdump listens).
        device.adb_reverse(serial, proxy_port, proxy_port, add=True)
        device.set_http_proxy(serial, "127.0.0.1", proxy_port)

        frida_messages: list = []
        if bypass_script:
            # "With script" arm: spawn the app under Frida (paused), load the
            # pinning bypass, then resume - same spawn-inject-resume pattern as
            # frida_runner._run_frida. Routing/CA/mitmdump are already live
            # above, so only the launch mechanism differs from the plain
            # am-start arm. A pinning-only script is expected here.
            device2, session, pid = frida_runner.attach(serial, package)

            def on_message(message, data):
                frida_messages.append(message)

            frida_runner.load_script(session, bypass_script, on_message)
            device2.resume(pid)
            time.sleep(1.0)  # let the app start making requests under the hook
            bypass_applied = True
        else:
            # "Without script" arm: plain cold-start, no hooks.
            _launch_app(serial, package)
            bypass_applied = False
        time.sleep(capture_window)

        if wsl2:
            stdout_text = _read_flow_detail_log(log_wsl)
            _stop_windows_mitmdump()
        else:
            proc.terminate()
            try:
                stdout_text, _ = proc.communicate(timeout=10)
            except subprocess.TimeoutExpired:
                proc.kill()
                stdout_text, _ = proc.communicate(timeout=5)
            proc = None

        flows = _parse_flow_detail(stdout_text or "")
        if not flows:
            client_connections = _count_client_connections(stdout_text or "")
            result = StageResult(
                stage="capture-traffic", status="failed",
                evidence={
                    "reason": "no flows captured",
                    "proxy": f"127.0.0.1:{proxy_port}",
                    "system_ca": system_ca,
                    "flows_path": str(flows_path),
                    "bypass_script": bypass_script,
                    "bypass_applied": bypass_applied,
                    # Reachability probe (device-side, proxy-independent): how many
                    # client connections reached mitmdump. >0 with 0 flows => device
                    # reached the proxy, app was silent (app-silence, not a wiring
                    # failure); 0 => device never reached the proxy (real failure).
                    "client_connections": client_connections,
                    "frida_messages": [
                        m.get("payload", m) for m in frida_messages
                    ],
                },
                error=(
                    "no traffic captured through the proxy - either the device "
                    f"could not reach mitmdump at 127.0.0.1:{proxy_port} "
                    "(on WSL2 the adb-server host must expose localhost:"
                    f"{proxy_port}; the stage auto-launched mitmdump on the "
                    "Windows host) or the app made no network requests during "
                    "the capture window"
                ),
            )
            return result
        hosts = sorted({f.host for f in flows if f.host})
        result = StageResult(
            stage="capture-traffic", status="success",
            evidence={
                "flows_count": len(flows),
                "hosts": hosts,
                "flow_summary": [
                    {"host": f.host, "method": f.method, "path": f.path,
                     "status": f.status} for f in flows
                ],
                "flows_path": str(flows_path),
                "system_ca": system_ca,
                "proxy": f"127.0.0.1:{proxy_port}",
                "bypass_script": bypass_script,
                "bypass_applied": bypass_applied,
                "frida_messages": [
                    m.get("payload", m) for m in frida_messages
                ],
            },
        )
        return result
    except Exception as exc:
        result = StageResult(
            stage="capture-traffic", status="failed",
            evidence={"reason": "capture exception", "flows_path": str(flows_path)},
            error=f"capture stage raised: {exc}",
        )
        return result
    finally:
        # Restore device proxy / reverse and kill mitmdump even on failure, and
        # record (never swallow) any cleanup failure on the returned result's
        # evidence so a leaked proxy/reverse/stray mitmdump is visible in the
        # report (principle 3). A cleanup failure is non-fatal - it never flips
        # the stage's success/failure verdict, only annotates it.
        cleanup_warnings = _cleanup(serial, proxy_port, proc)
        if cleanup_warnings and result is not None:
            result.evidence["cleanup_warnings"] = cleanup_warnings

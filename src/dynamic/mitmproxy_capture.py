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

import re
import shutil
import subprocess
import time
from dataclasses import dataclass
from pathlib import Path
from urllib.parse import urlsplit

from common import StageResult, describe_frida_script_errors
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

# HTTP request methods _parse_flow_detail recognises as the start of a flow.
# The first eight are the RFC 9110 core; the rest are the WebDAV (RFC 4918),
# WebDAV-versioning REPORT (RFC 3253) and CalDAV MKCALENDAR (RFC 4791) verbs an
# Android sync client (CalDAV/CardDAV calendar-contact sync, a Nextcloud/ownCloud
# file client) genuinely puts on the wire. A method NOT in this set makes the
# parser find no method token and DROP the line (method is None -> continue),
# which on the WSL2 addon path - where the addon's response() hook already
# WITNESSED the flow and logged it - silently discards a real, captured flow;
# enough such drops leave `flows` empty and flip the stage to a false `failed`
# "no flows captured", misreporting a successful capture as a device-wiring or
# app-silence failure (principle 3, the same silent-flow-loss the interleaved
# flush and query-string preservation below guard against). Widening the set is
# safe against the opposite error (a phantom flow): _parse_flow_detail only ever
# reaches the method loop on a column-0, un-indented, " HTTP/"-bearing line -
# i.e. a genuine request line - because headers are indented, lifecycle lines
# are filtered, and response lines are indented and matched by the `<<` branch;
# so these verbs can only ever match the method position of a real request. A
# truly custom (non-standard) verb is still dropped - the honest residual of an
# enumeration - but every standard verb a real app emits is now captured.
_METHODS = {
    "GET", "POST", "PUT", "DELETE", "PATCH", "HEAD", "OPTIONS", "TRACE",
    "PROPFIND", "PROPPATCH", "MKCOL", "COPY", "MOVE", "LOCK", "UNLOCK",
    "REPORT", "MKCALENDAR",
}
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


def _mark_loaded():
    # The addon's OWN liveness, written once at import - before mitmproxy calls
    # any hook, so it depends on no traffic, no app, and no client trusting our
    # CA. Every other marker in this file is written by a hook that fires on
    # something happening, so if the addon never loads (a syntax or import
    # error) or cannot write its log at all, NONE of them appear and the file
    # comes back empty. The stage reads that emptiness as evidence, so without
    # this line "the recorder ran and saw nothing" and "the recorder never ran"
    # are one observation - and it resolves to the first.
    try:
        with open(_LOG_PATH, "a", buffering=1) as f:
            f.write("@@ADDON_LOADED@@\\n")
    except Exception:
        pass


_mark_loaded()


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


def tls_failed_client(flow):
    # mitmproxy >=8 hook: fires when the CLIENT refuses OUR certificate - an
    # unknown CA, or an app pinning to its own trust anchor. Without this hook a
    # pinned app is INVISIBLE here: client_connected logs its marker, no request
    # line follows, and the WSL2 stage cannot tell "the client refused our CA"
    # apart from "the client connected and sent nothing" - which is exactly the
    # question an empty capture has to answer. mitmproxy 8 hands this hook a
    # TlsData whose .conn is the client connection; its .error is the client's
    # OWN reason string, e.g. "The client does not trust the proxy's certificate
    # for <host> (tlsv1 alert unknown ca)" - the refusal, in the client's words,
    # which is the strongest available evidence that pinning is why nothing
    # decrypted. On an older mitmproxy (where this hook gets a Client instead)
    # the attribute lookups raise, the detail comes back empty, and the bare
    # marker is still written - the COUNT is the load-bearing signal and must
    # survive even when the detail cannot be extracted.
    try:
        conn = flow.conn
        host = getattr(conn, "sni", "") or ""
        err = getattr(conn, "error", "") or ""
    except Exception:
        host, err = "", ""
    # Collapse all whitespace before writing. The error text is remote-influenced
    # (it can quote a value the peer supplied), and an embedded newline would
    # split the record into a second line that the WSL2 parser reads as its own
    # entry - a forged flow line at column 0, the phantom-flow class the parser
    # already guards against. One record, always one line.
    detail = " ".join("{} | {}".format(host, err).split())
    try:
        with open(_LOG_PATH, "a", buffering=1) as f:
            f.write("@@TLS_FAILED_CLIENT@@ " + detail + "\\n")
    except Exception:
        pass
'''


# Reachability marker the addon writes on each client TCP connection (see the
# addon's client_connected hook). Counted by _count_client_connections and
# skipped by _parse_flow_detail so it is never mistaken for a decrypted flow.
_CLIENT_CONNECT_MARKER = "@@CLIENT_CONNECT@@"

# The addon's own liveness marker, written at import (see the addon's
# _mark_loaded). Its ABSENCE on the WSL2 placement is the only signal that says
# the log is empty because nothing ever wrote to it rather than because nothing
# happened - without it that emptiness is read as a device-routing or
# app-silence cause, neither of which the evidence carries.
_ADDON_LOADED_MARKER = "@@ADDON_LOADED@@"

# TLS-refusal marker the addon writes when a client REJECTS our certificate (see
# the addon's tls_failed_client hook). Distinct from _CLIENT_CONNECT_MARKER: that
# one says the device reached the proxy, this one says the proxy's certificate was
# refused - the proxy-side signature of pinning, and the only place the refusal
# itself is recorded. Carries "" or "<sni> | <client's own error text>"; never
# parsed as a flow (see _parse_flow_detail, and _count_tls_failed_clients).
_TLS_FAILED_CLIENT_MARKER = "@@TLS_FAILED_CLIENT@@"

# mitmproxy's own wording when the CLIENT refuses the certificate, as
# flow_detail=2 puts it on stdout on the native placement (measured on 8.1.1).
# Lowercased for the comparison: that capitalisation is mitmproxy's and is not a
# contract we can hold them to.
_TLS_HANDSHAKE_FAILED_PHRASE = "tls handshake failed"
# The host inside that message ("... certificate for <host> (tlsv1 alert ...)").
_TLS_FAILED_HOST_RE = re.compile(r"\bfor\s+([^\s(]+)")


def _capture_channel_alive(text: str) -> bool:
    """Whether the WSL2 addon wrote its load marker into the log we read back.

    Only meaningful on the WSL2 placement: there an addon produces every fact
    the capture reports, so an empty log has two possible meanings - nothing
    happened, or nothing was recording - and only the marker separates them.
    The native placement uses mitmdump's own flow_detail stdout and runs no
    addon, so the marker can never appear there and its absence means nothing;
    the caller passes wsl2 and this is never asked to answer for that path.
    """
    return _ADDON_LOADED_MARKER in (text or "")


@dataclass
class FlowSummary:
    host: str
    method: str
    path: str
    status: str
    # Transport scheme ("http" / "https", "" if unparseable). A cleartext http://
    # flow is NOT proxy-decrypted HTTPS and is NOT proof of pinning defeat, so the
    # report must be able to tell the two apart (default keeps direct construction
    # in older callers/tests working unchanged).
    scheme: str = ""


def _device_reaches_proxy(serial: str, proxy_port: int) -> bool | None:
    """Pre-flight device->proxy reachability probe (CAPREACH1).

    Answers "can the device open a TCP connection to the capture proxy?" BEFORE
    the capture window, so a zero-flow result can be attributed correctly. Without
    it, a zero-flow capture is only diagnosable from the client-connection count
    after the fact, and when the device never even tried (app-silence) that count
    is 0 - indistinguishable from a genuine wiring break in the reason text.

    Runs `nc` on the device against 127.0.0.1:<port>, which is exactly the route
    the app uses (adb reverse maps device-localhost -> adb-server host).
    Returns:
      True   - the device opened a TCP connection to the proxy (route is UP)
      False  - the connection was refused/timed out (route is DOWN)
      None   - the probe could not be RUN (no usable `nc`, adb error) - unknown,
               never asserted either way. A caller must treat None as unknown, not
               as False, so an unprobeable device never fabricates a verdict.

    MEASURED on the Android 11 emulator this targets: `nc` is a symlink to
    **toybox**, whose netcat has NO `-z` flag ("nc: Unknown option 'z'"). The
    obvious `nc -z -w 3 host port` therefore exits 1 on EVERY device - it reports
    a perfectly healthy route as DOWN, which is precisely the misleading diagnosis
    this probe exists to remove. So the connect is done the portable way: an
    explicit empty payload (`echo '' | nc -w 3 host port`), where toybox/BSD/GNU
    netcat alike exit 0 on a successful connect and non-zero on ECONNREFUSED.

    Caveat, stated rather than papered over: a tool that *accepts* the TCP
    connect but this probe still cannot run is indistinguishable from a refusal
    by exit code alone, so the "Unknown option"/"not found"/"inaccessible"
    signatures are also sniffed and mapped to None (unknown) rather than False.

    Never raises: a reachability probe must not be able to fail the capture
    stage. Deliberately a *pre-flight* check so the report can say whether the
    route was up at capture time rather than inferring it afterwards."""
    try:
        adb = device._require_adb()
        # `echo '' |` gives netcat an EOF-bound stdin so it connects, sends
        # nothing, and exits - a pure reachability check with no -z needed.
        res = subprocess.run(
            [adb, "-s", serial, "shell", f"echo '' | nc -w 3 127.0.0.1 {proxy_port}"],
            capture_output=True, text=True, timeout=30,
        )
    except (OSError, subprocess.SubprocessError, RuntimeError):
        # RuntimeError = _require_adb could not resolve adb. Unknown, not down.
        return None
    blob = f"{res.stdout}\n{res.stderr}".lower()
    if "unknown option" in blob or "not found" in blob or "inaccessible" in blob:
        # The on-device netcat could not be used the way we need - we learned
        # nothing about the route. Unknown, never "down".
        return None
    # A successful connect exits 0; ECONNREFUSED/timeout exits non-zero. Only
    # treat it as a definite DOWN when the refusal is actually reported, so an
    # unrelated non-zero exit is not silently upgraded to a wiring verdict.
    if res.returncode == 0:
        return True
    if "refused" in blob or "timed out" in blob or "unreachable" in blob:
        return False
    return None


def _count_client_connections(text: str) -> int:
    """How many client TCP connections actually reached the proxy this run.
    Proxy-independent reachability signal: >0 with zero flows means the device
    reached mitmdump but the app stayed silent (or refused the CA on a pinned
    request) - NOT a device->proxy wiring failure; 0 means the device never
    reached the proxy at all. Pure, fixture-testable (no mitmproxy needed).

    Two sources, because the two placements read DIFFERENT output (only ever one
    at a time), and both must feed this same probe:
      * WSL2: the Windows-host addon writes an explicit @@CLIENT_CONNECT@@ marker
        per client_connected hook (mitmdump's own stdout is hidden/unread there).
      * Native Linux: no addon runs; mitmdump's captured flow_detail=2 stdout
        carries its own un-indented `client connect <peer>` lifecycle line per
        connection (the very lines _parse_flow_detail skips). Counting ONLY the
        WSL2 marker made this always 0 on native, so a native zero-flow capture
        where the device DID connect was mis-reported downstream as "device never
        reached the proxy" - both the report generator's reachability sentence and
        cli's capture reclassification branch on this count, so a structural 0 there
        prints a false wiring-failure diagnosis (principle 3/ADR-0006).
    The two never overlap (the marker is uppercase/underscored; the lifecycle line
    is not) and "client connect" is not a substring of "client disconnect", so a
    disconnect is never miscounted. The native match is gated on the line being
    un-indented (column 0, as real flow_detail emits it) - same discipline the
    request-line parser uses - so an indented header value that merely contains
    the substring can never inflate the count."""
    count = 0
    for raw in text.splitlines():
        line = raw.strip()
        if line == _CLIENT_CONNECT_MARKER:
            count += 1
        elif "client connect" in line and not raw[0].isspace():
            count += 1
    return count


def _count_tls_failed_clients(text: str) -> list[dict[str, str]]:
    """Parse the addon's TLS-refusal records into {host, error} per refusal.

    Proxy-side complement to _count_client_connections: a client-connection count
    alone cannot separate "the app connected and sent no request" from "the app
    connected and REFUSED our certificate" - both log a connect marker and then
    nothing. This is the second case, recorded by the proxy at the instant the
    client aborts the handshake, which is what certificate pinning looks like
    from the proxy's side (and what an app with a custom trust store, or one that
    does not trust a user-installed CA, looks like too - the record says a CA was
    refused, it does not by itself name which pinning implementation).

    Two sources, one per placement, and only one is ever present in a given
    capture: the WSL2 addon writes the marker, and native mitmdump's own
    flow_detail=2 writes the equivalent lifecycle line. An empty result therefore
    means no refusal was observed on either path, not that one path could not
    look.

    Pure and fixture-testable (no mitmproxy needed). Matched by PREFIX, not
    equality, because the marker carries a detail suffix; the prefix test is also
    what keeps a detail string from ever reaching the flow parser."""
    out: list[dict[str, str]] = []
    for raw in text.splitlines():
        line = raw.strip()
        if line.startswith(_TLS_FAILED_CLIENT_MARKER):
            host, _, err = line[len(_TLS_FAILED_CLIENT_MARKER):].strip().partition("|")
            out.append({"host": host.strip(), "error": err.strip()})
            continue
        # Native placement: no addon runs there, but mitmdump's own flow_detail=2
        # writes the same refusal at column 0 as a lifecycle line. Matched on the
        # phrase rather than the line's shape so a format change costs the detail
        # and not the count, and gated on the raw line being un-indented so a
        # header value that merely quotes the phrase cannot register a refusal.
        # The host exists only inside the message text, so it is extracted
        # best-effort: a miss leaves it empty and the refusal still counts.
        if _TLS_HANDSHAKE_FAILED_PHRASE in line.lower() and not raw[0].isspace():
            match = _TLS_FAILED_HOST_RE.search(line)
            detail = line.split("failed.", 1)[1].strip() if "failed." in line else line
            out.append({"host": match.group(1) if match else "", "error": detail})
    return out


# The single implementation of this honesty-critical formatting now lives in
# common.describe_frida_script_errors, shared with the report hooks-audit
# (generator._hooks_engaged) so the two can never drift. Kept bound to the
# module-private name the capture branches and tests already use.
_describe_script_errors = describe_frida_script_errors


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
        if line == _ADDON_LOADED_MARKER:
            # Addon liveness, not a flow (see _capture_channel_alive).
            continue
        if line.startswith(_TLS_FAILED_CLIENT_MARKER):
            # A certificate-refusal record, not a flow. Prefix (not equality):
            # the marker carries a detail suffix. This test has to come BEFORE
            # the request-line branch below, which is the branch that would
            # otherwise parse it - the addon collapses the detail to one line,
            # but a prefix test is what makes that a structural guarantee rather
            # than a property of what the client happened to send.
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
                # Transport scheme (http vs https): a cleartext http:// flow must
                # not be rendered as a proxy-decrypted HTTPS pinning-defeat proof.
                scheme = (parsed.scheme or "").lower()
                # Preserve the query string: it is part of the request target the
                # app actually put on the wire, and for a traffic-capture security
                # tool it is often the whole point - an auth token, session id, or
                # PII sent as a URL query parameter (and thereby exposed to proxies,
                # server logs, and browser history) is a finding, not noise. Dropping
                # it silently reported such a request as a bare path, hiding the
                # sensitive data this phase exists to surface (principle 3 - no
                # partial/omitted evidence). urlsplit already isolated it; keep only
                # the query, never the fragment (client-side, never sent to a server).
                if parsed.query:
                    path = f"{path}?{parsed.query}"
            except ValueError:
                host, path, scheme = "", "/", ""
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
            pending = FlowSummary(host=host, method=method, path=path, status="", scheme=scheme)
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
    proxy cleared outright. If on WSL2 the pass-through is NOT up at cleanup
    (it died during the run, or the probe could not confirm it), there is
    nothing to restore internet TO: the stale capture-proxy pointer is cleared
    but a warning is recorded rather than claiming a clean restore, since the
    device is genuinely left without a working internet path."""
    warnings: list[str] = []
    restored = False
    # WSL2-only: the pass-through proxy IS the device's sole internet path (no
    # direct NAT). If it is not listening at cleanup time, clearing the stale
    # capture-proxy pointer does NOT restore internet - track that distinctly from
    # a genuine restore so it is reported as a warning, never recorded as a clean
    # restore (the silent-failure this branch used to be - see below).
    wsl2_internet_unrestored = False
    last_exc: Exception | None = None
    on_wsl2 = _on_wsl2()
    for _ in range(CLEANUP_RETRIES):
        try:
            if on_wsl2 and pass_through_proxy.is_listening(INTERNET_PROXY_PORT):
                device.set_http_proxy(serial, "127.0.0.1", INTERNET_PROXY_PORT)
                restored = True
            elif on_wsl2:
                # Pass-through down (it died during the run) or the Windows probe
                # could not confirm it. There is nothing to restore the device TO,
                # and on WSL2 clearing does not fall back to NAT - so clear the
                # stale capture-proxy pointer but do NOT claim a restore: restored
                # stays False and the distinct warning below tells the report the
                # device may be left without a working internet path (principle 3).
                # Previously this branch set restored=True with no warning, so a
                # WSL2 cleanup that stranded the device - or that cleared a proxy
                # whose pass-through was actually fine but momentarily unprobeable -
                # was recorded as a clean restore the report could not see.
                device.clear_http_proxy(serial)
                wsl2_internet_unrestored = True
            else:
                # Native Linux reaches the internet directly, so clearing the proxy
                # outright genuinely restores connectivity.
                device.clear_http_proxy(serial)
                restored = True
            break
        except Exception as exc:
            last_exc = exc
            time.sleep(0.5)
    if wsl2_internet_unrestored:
        warnings.append(
            f"WSL2 pass-through proxy not listening on port {INTERNET_PROXY_PORT} "
            "at cleanup - the device's only internet path (WSL2 has no direct NAT) "
            "could not be restored; the stale capture-proxy setting was cleared, "
            "but the device is left without working internet - restart the "
            "pass-through (ensure_internet) to recover"
        )
    elif not restored:
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
    # This is the ACTUAL mitmdump-stop path on the reference environment, so its
    # failure must get the same visibility the local proc.terminate() above does
    # (principle 3): a Windows-host stop that could not even be RUN means a stray
    # mitmdump may still be holding the capture port. Record it as exactly that -
    # "could not run the stop command", not a confirmed leak.
    if _on_wsl2():
        stop_err = _stop_windows_mitmdump()
        if stop_err is not None:
            warnings.append(
                "Windows-host mitmdump stop command could not be run (a stray "
                f"mitmdump may remain on the Windows host holding the capture "
                f"port): {stop_err}"
            )
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


def _stop_windows_mitmdump() -> str | None:
    """Best-effort stop of the Windows-host mitmdump after a WSL2 capture.
    Returns a failure reason if the stop command could not be RUN (so _cleanup
    can report a possibly-stray mitmdump on the Windows host), None on a clean
    launch. The reason is 'could not run the stop', not a confirmed leak."""
    return pass_through_proxy._windows_best_effort(
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

        # CAPREACH1: probe the route we just built, BEFORE the capture window, so
        # a zero-flow result can be attributed. True => route is up, so zero flows
        # later means app-silence/CA-refusal, never a wiring break. False => the
        # route is already broken (capture is guaranteed to yield nothing).
        # None => could not probe; unknown, and never reported as a break.
        reachable = _device_reaches_proxy(serial, proxy_port)

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

        # Certificate refusals observed in this capture, computed ONCE here so
        # both the success and empty-flow arms report the same observation - they
        # read the same text. Both placements are covered (the WSL2 addon marker
        # and native mitmdump's own flow_detail line), so neither reports a zero
        # it could not have seen.
        tls_failed = _count_tls_failed_clients(stdout_text or "")
        # The WSL2 addon's own liveness (None on the native placement, where no
        # addon runs and mitmdump's own flow_detail stdout is the source).
        channel_alive = _capture_channel_alive(stdout_text or "") if wsl2 else None
        if not flows:
            client_connections = _count_client_connections(stdout_text or "")
            # A crashed pinning-bypass script is a THIRD, concrete cause of zero
            # flows, distinct from device-unreachable and app-silent - and on a
            # pinned target the most likely one (the bypass never took, so TLS
            # handshakes fail and nothing is decrypted). It was previously
            # swallowed: the raw {type:error} messages sit in frida_messages, but
            # no consumer reads the CAPTURE stage for them (_hooks_engaged audits
            # only the dynamic stage), so `error` blamed device/app alone -
            # misdiagnosing a script crash as a wiring or app-silence failure.
            script_errors = _describe_script_errors(frida_messages)
            # CAPREACH1: name the ACTUAL cause using the pre-flight probe, instead
            # of the old "either the device could not reach mitmdump ... or the app
            # made no network requests" hedge that left the operator to guess.
            # The capture channel comes first. On WSL2 every fact below is read
            # from a log the addon writes, so a log carrying no addon marker
            # cannot support ANY of them: this rung does not compete with the
            # others, it invalidates them.
            if channel_alive is False:
                device_or_app_cause = (
                    "the capture proxy's log carries no addon marker at all - not "
                    "even the @@ADDON_LOADED@@ line, which is written at import "
                    "before any traffic exists. So the recorder that produces every "
                    "other fact about this capture never ran, and this empty result "
                    "says NOTHING about the device route, the app's traffic, or "
                    "certificate pinning. Check that the Windows-host mitmdump "
                    "loaded the addon and could write its flow log"
                )
            elif tls_failed:
                # The refusal is DIRECT evidence, so it outranks the pre-flight
                # probe and the connection count in the diagnosis: a client can
                # only refuse our certificate after completing a TCP connection
                # and starting a handshake, so this simultaneously proves the
                # device->proxy route WORKED. Naming it here is the whole point
                # of recording it - without this the count would be evidence no
                # consumer reads.
                refused_hosts = sorted({f["host"] for f in tls_failed if f["host"]})
                hosts_note = (
                    " (" + ", ".join(refused_hosts) + ")" if refused_hosts
                    else " (the client's SNI was not captured for these)"
                )
                device_or_app_cause = (
                    f"no traffic was decrypted, but the capture proxy recorded "
                    f"{len(tls_failed)} client TLS handshake(s) it REFUSED its "
                    f"certificate for{hosts_note} - the app rejected the capture "
                    "CA, which is the proxy-side signature of certificate pinning "
                    "(or a custom/limited trust store). This also proves the "
                    "device->proxy route worked: a refusal requires the "
                    "connection. So this is NOT a wiring failure and NOT "
                    "app-silence - the pinned host(s) above refused the proxy and "
                    "their traffic was never decryptable by this route"
                )
            elif reachable is True:
                device_or_app_cause = (
                    "no traffic captured through the proxy - the device COULD "
                    f"reach mitmdump at 127.0.0.1:{proxy_port} (pre-flight probe "
                    "succeeded), so the route is not the problem, and no client "
                    "certificate refusal was recorded on either source, so nothing "
                    "this capture saw says a client rejected our CA: the app made no "
                    "network requests during the capture window (interactive capture "
                    "needed)"
                )
            elif reachable is False:
                device_or_app_cause = (
                    "no traffic captured through the proxy - the device could NOT "
                    f"reach mitmdump at 127.0.0.1:{proxy_port} (pre-flight probe "
                    "was refused/timed out), so this IS a real device->proxy "
                    "routing failure: check the adb reverse tunnel and that "
                    "mitmdump is still listening on the adb-server host"
                )
            else:
                device_or_app_cause = (
                    "no traffic captured through the proxy - either the device "
                    f"could not reach mitmdump at 127.0.0.1:{proxy_port} "
                    "(on WSL2 the adb-server host must expose localhost:"
                    f"{proxy_port}; the stage auto-launched mitmdump on the "
                    "Windows host) or the app made no network requests during "
                    "the capture window (pre-flight reachability probe was "
                    "unavailable, so this could not be narrowed further)"
                )
            if bypass_applied and script_errors:
                error = (
                    "the pinning-bypass script raised "
                    f"{len(script_errors)} uncaught error(s) "
                    f"({'; '.join(script_errors)}) - the bypass likely did not "
                    "take, so a pinned app's TLS handshakes fail and yield no "
                    "decrypted flows; fix the script before treating this as a "
                    f"device-wiring or app-silence failure. {device_or_app_cause}"
                )
            else:
                error = device_or_app_cause
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
                    # Certificate refusals this capture observed, from whichever
                    # source this placement writes (see _count_tls_failed_clients).
                    "tls_failed_clients": tls_failed,
                    # Whether the WSL2 addon reported itself loaded (None on the
                    # native placement, which runs no addon). False means this log
                    # is empty because nothing recorded, not because nothing
                    # happened - and the cause named in `error` says so.
                    "capture_channel_alive": channel_alive,
                    # CAPREACH1: the PRE-FLIGHT probe verdict (True route up /
                    # False route down / None not probeable). Recorded separately
                    # from client_connections because it is measured before the
                    # window: it says whether the route was ever usable, which the
                    # post-hoc connection count cannot distinguish from app-silence.
                    "device_reached_proxy_preflight": reachable,
                    # Uncaught bypass-script errors (empty unless the script threw);
                    # a non-empty list is the true, prominent cause named in `error`.
                    "bypass_script_errors": script_errors,
                    "frida_messages": [
                        m.get("payload", m) for m in frida_messages
                    ],
                },
                error=error,
            )
            return result
        hosts = sorted({f.host for f in flows if f.host})
        result = StageResult(
            stage="capture-traffic", status="success",
            evidence={
                "flows_count": len(flows),
                "hosts": hosts,
                # Certificate refusals this capture observed, from whichever
                # source this placement writes (see _count_tls_failed_clients).
                "tls_failed_clients": tls_failed,
                "flow_summary": [
                    {"host": f.host, "method": f.method, "path": f.path,
                     "status": f.status, "scheme": f.scheme} for f in flows
                ],
                "flows_path": str(flows_path),
                "system_ca": system_ca,
                "proxy": f"127.0.0.1:{proxy_port}",
                "bypass_script": bypass_script,
                "bypass_applied": bypass_applied,
                # A crashed bypass hook can still let OTHER hooks yield flows, so a
                # capture can SUCCEED with genuine {type:error} messages recorded.
                # Store them (symmetric with the empty-flows branch) so the report
                # can flag the flow list as a lower bound - a crashed hook may leave
                # some pinned endpoints unbypassed and uncaptured. Empty when the
                # script ran clean or no bypass was injected.
                "bypass_script_errors": _describe_script_errors(frida_messages),
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

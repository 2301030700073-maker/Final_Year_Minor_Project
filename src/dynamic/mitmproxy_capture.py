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

import os
import re
import shutil
import subprocess
import time
import warnings
from dataclasses import dataclass
from pathlib import Path
from urllib.parse import urlsplit

from common import StageResult, describe_frida_script_errors
from dynamic import device
from dynamic import proxy_attribution
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


def _proxy_log_excerpt(text: str, limit: int = 400) -> str:
    """The Windows mitmdump's own output, for an operator diagnosing a capture
    that recorded nothing - typically mitmproxy's complaint about a script it
    could not load. Bounded: this lands in an operator-facing report, so it is a
    diagnostic, not a transcript.

    Bounded at BOTH ends, because the two halves of the answer sit at opposite
    ends of mitmproxy's output. Measured on the real host, a failed addon load
    produced: head = "Loading script <path> | error in script <path> | Traceback
    (most recent call last): | ...frames...", tail = "... SyntaxError: invalid
    syntax | HTTP(S) proxy listening at *:8081. | Error logged during startup,
    exiting...". A head-only cut kept the frames and dropped both the exception
    that explains them and the line saying the process then exited - an excerpt
    naming a failure it could not explain."""
    lines = [ln.strip() for ln in (text or "").splitlines() if ln.strip()]
    joined = " | ".join(lines)
    if len(joined) <= limit:
        return joined
    head = (limit * 2) // 3
    tail = limit - head
    return f"{joined[:head]}\u2026{joined[-tail:]}"


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


def _device_shell_uid(serial: str) -> int | None:
    """The uid this stage's own on-device commands run as (CAPUID1).

    This stage connects to its own proxy. The pre-flight reachability probe is the
    known one - it runs `nc` on the device - and `_app_client_connections` already
    subtracts that connection from the client-connection COUNT because mitmdump
    accepts it exactly like app traffic. The uid side needs the same subtraction:
    `attribute_proxy_clients` decides whether a sampling "demonstrably saw the
    window" from the uids on it, and a socket this stage opened is on the table
    under the shell's uid, not the app's. Left in, it would demonstrate that the
    sampling works at the precise moment nothing else was seen - licensing the
    "the app stayed away" verdict the guard exists to refuse.

    Not hypothetical: `/proc/net/tcp` keeps a finished connection's row in
    TIME_WAIT for the whole capture window. Measured on run 0821158c, the
    attribution sampled uids {0, 10168} - 10168 the app, 0 this shell.

    Returns the uid, or None when it could not be READ. Never a guess: an unknown
    probe uid cannot be told apart from the app's on that table, so the caller has
    to pass the unknown on rather than assume either value."""
    try:
        adb = device._require_adb()
        res = subprocess.run([adb, "-s", serial, "shell", "id", "-u"],
                             capture_output=True, text=True, timeout=15)
    except (OSError, subprocess.SubprocessError, RuntimeError):
        # RuntimeError = _require_adb could not resolve adb.
        return None
    if res.returncode != 0:
        return None
    try:
        return int(res.stdout.strip())
    except ValueError:
        return None


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
    the substring can never inflate the count.

    NOTE: this is the RAW count from the log - it includes the connection this
    stage's own pre-flight reachability probe makes (both sources see it). Callers
    reporting or reasoning about the APP must pass it through
    `_app_client_connections` first."""
    count = 0
    for raw in text.splitlines():
        line = raw.strip()
        if line == _CLIENT_CONNECT_MARKER:
            count += 1
        elif "client connect" in line and not raw[0].isspace():
            count += 1
    return count


def _app_client_connections(raw_count: int, reachable: bool | None) -> int:
    """The client connections attributable to the APP, not to this stage's own
    pre-flight reachability probe.

    `_device_reaches_proxy` runs `nc` on the device against the proxy port before
    the capture window, and that connect is accepted by mitmdump and counted by
    `_count_client_connections` exactly like app traffic (measured on RS_CertPinning
    2026-09-16: one counted connection, 2 ms, zero bytes, no SNI, arriving in the gap
    between mitmdump listening and the app launch). Consumers read that count as
    evidence about the device and the app, so leaving the pipeline's own connection
    in it makes them reason about a request the pipeline made
    ([[multi-cause-counter-label-fidelity]]).

    A successful probe (reachable is True) is definitive proof of exactly one such
    connection, so the subtraction is a correction rather than an estimate; the
    `max(0, ...)` floor only guards the contradictory input (a probe that returned
    True while the recorder saw nothing - a dead recorder, which its own liveness
    rung reports) from producing a negative connection count."""
    if reachable is True:
        return max(0, raw_count - 1)
    return raw_count


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
        #
        # KNOWN LIMITATION (independent review, SESSION11G - deliberately NOT
        # tightened): the generic phrase "tls handshake failed" is ALSO emitted by
        # mitmdump for a SERVER-side (upstream) handshake failure, so on the native
        # placement this branch can count a server-side failure as a "client
        # certificate refusal". It is left as-is because narrowing it needs a real
        # mitmdump fixture to confirm the exact client-vs-server discriminator, and
        # a wrong/narrow match would silently DROP real refusals (a false negative)
        # - worse than a possible over-count that the per-uid attribution gate in
        # cli._reclassify_empty_capture (SESSION11F) already refuses to credit to
        # the app when `reached` is not True. The WSL2 reference path uses the
        # explicit `_TLS_FAILED_CLIENT_MARKER` above, not this phrase.
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


def _bypass_hooks_installed(messages: list) -> bool:
    """True only when a loaded Frida script REPORTED installing bypass hooks.

    BYPASSAPPLIED1. The arm flag says a script was loaded; it does NOT say the
    script bypasses anything. The A/B's "without" arm loads
    `ssl_pinning_drive_only.js`, which drives the pinned-host request and installs
    NO hooks - so an arm-based flag reports `bypass_applied: True` for it, claiming
    a bypass that was never attempted on the one arm whose entire purpose is that
    it does not bypass. The scripts report their own success
    (`{hook: 'universal-ssl-pinning', bypassed: true}`), so the fact is read from
    the script rather than inferred from a filename or from which arm ran."""
    for m in messages or []:
        payload = m.get("payload", m) if isinstance(m, dict) else m
        if isinstance(payload, dict) and payload.get("bypassed") is True:
            return True
    return False


# Error strings that identify a CERTIFICATE/TRUST refusal, as opposed to a
# connect timeout or DNS failure - the drive can fail for either, and only the
# former is evidence about the app's trust decisions. Matched case-insensitively
# against the drive's own `error` text.
_CERT_REFUSAL_MARKERS = (
    "sslhandshakeexception",
    "sslpeerunverifiedexception",
    "certpathvalidatorexception",
    "trust anchor",
    "pin verification failed",
    "certificate pinning",
    "certificate_unknown",
)


def _app_drive_certificate_refusals(messages: list) -> list[dict]:
    """The app's OWN in-process request results that name a certificate refusal.

    APPDRIVE1. Both drive scripts run a request inside the app process and report
    its outcome as `{hook: 'pinned-drive', host, status|error}`. A certificate
    error there is direct evidence about THIS app - the connection was made by
    code running in the app's own process under its own network security config -
    which is stronger than the proxy-side refusals, and unlike them it needs no
    per-uid attribution to be credited to the app.

    Only certificate/trust failures are returned. A drive that failed with a
    timeout or a DNS error is NOT evidence about the app's trust decisions, so it
    is excluded rather than reported as one - the same reason the refusal list is
    not filtered by host: this filters by WHAT WENT WRONG, which the message
    states, not by a guess about what the app talks to.

    Measured 2026-10-05: before this, no code read `pinned-drive` at all, so the
    strongest evidence in the A/B reached no reader while the narration asserted
    the opposite of what it said."""
    out: list[dict] = []
    for m in messages or []:
        payload = m.get("payload", m) if isinstance(m, dict) else m
        if not isinstance(payload, dict):
            continue
        if payload.get("hook") != "pinned-drive":
            continue
        err = payload.get("error")
        if not isinstance(err, str):
            continue
        if any(marker in err.lower() for marker in _CERT_REFUSAL_MARKERS):
            out.append({"host": payload.get("host"), "error": err})
    return out


def _parse_pidof(stdout: str, stderr: str, returncode: int) -> int | None:
    """The app process's pid from a `pidof <package>` run.

    Three outcomes, deliberately not two:

      >0    the process exists, and this is its pid
      0     `pidof` RAN and matched nothing: the app is measurably NOT running
      None  the probe could not be taken (an adb-level failure, or `pidof` is not
            a command on this device's shell, which reports 127) - NOT MEASURED,
            and never to be read as "the app was not running"

    The 0/None split is the whole point. A launch failure is a real, actionable
    cause, and only a measured absence licenses naming it; an adb hiccup must not
    be allowed to invent a crash. adb reports its own transport errors ("device
    offline", "closed") on stderr with a non-zero code, which would otherwise be
    indistinguishable from `pidof`'s no-match exit status - hence stderr is
    inspected before the return code is interpreted.
    """
    if returncode == 127:
        return None
    pids = [int(tok) for tok in (stdout or "").split() if tok.isdigit()]
    if pids:
        return pids[0]
    # A measured absence needs positive evidence the SHELL ran, not just a non-zero
    # status: `pidof`'s no-match exits 1 silently, while adb reports its own
    # transport failures on stderr with that same status ("adb: no devices/emulators
    # found", "adb: device offline", "error: closed"). Matching on keywords alone is
    # not enough - the message text is adb's to change - so the rule is the empty
    # stderr, which a silent no-match from a working shell is the only thing that
    # produces.
    if returncode in (0, 1) and not (stderr or "").strip():
        return 0
    return None


def _app_pid(serial: str, package: str) -> int | None:
    """Sample the app process's liveness once, device-side. See _parse_pidof for
    the 0-vs-None contract.

    Bounded, because a hung adb would otherwise stall the very capture window this
    exists to interpret (same reasoning as the timeouts on device.py's adb calls).
    """
    adb = device._require_adb()
    try:
        res = subprocess.run(
            [adb, "-s", serial, "shell", "pidof", package],
            capture_output=True, text=True, timeout=10,
        )
    except (subprocess.SubprocessError, OSError):
        return None
    return _parse_pidof(res.stdout, res.stderr, res.returncode)


def _launch_liveness_cause(pid_after_launch: int | None,
                           pid_after_capture: int | None,
                           app_seen_running: bool = False) -> tuple[bool, str | None]:
    """What the two liveness samples say about the app itself, as
    (never_ran, note).

    `never_ran` is True only when the app is MEASURABLY absent right after the
    launch was issued. That is the one case which invalidates every app-silence
    reading: an app that is not running makes no requests, for a reason that has
    nothing to do with the network, so the empty capture says nothing about its
    pinning or its traffic either way.

    `app_seen_running` is the caller's direct evidence that the process DID start
    during the window - a client certificate refusal the proxy recorded, or an
    accepted device-side connection (the stage's own pre-flight probe excluded).
    Either can only happen after the app started, so it outranks a single early
    sample: without this guard a slow start whose `pidof` lands at t+0 would be
    reported as a crash the proxy watched the app survive. The early sample is
    just early. This guard belongs here, in the function that decides, rather than
    at the call site - every future caller needs it and none can be trusted to
    remember it ([[confident-negative-decider-owns-guard]]).

    `note` separately carries a mid-window death, which does not invalidate the
    launch but does stop "the app made no requests during the window" from being
    read as a choice the app made across the whole window. Both samples must be
    measured before a death is claimed - an unmeasured sample is never evidence.
    """
    if pid_after_launch == 0 and not app_seen_running:
        # The second sample separates a launch that never happened from a launch
        # that was merely late, because the two are different faults with the same
        # empty capture. `pid_after_capture` truthy means the app WAS up by the end
        # of the window, so "never came up" would be false.
        late = (
            f" It had started by the end of the capture window (pid "
            f"{pid_after_capture}), so the launch was merely late and most of the "
            "window elapsed before the app was up"
            if pid_after_capture else
            " It was still not running at the end of the window either, so it "
            "never came up or died on start"
            if pid_after_capture == 0 else ""
        )
        return True, (
            "the app's process was NOT running: `pidof` matched nothing "
            "immediately after the launch was issued." + late +
            ". The empty capture is therefore an app-liveness failure, not "
            "app-silence, and none of the readings below apply to it - an app that "
            "is not running makes no requests for a reason that has nothing to do "
            "with the network. Check logcat for the launch crash"
        )
    if pid_after_launch and pid_after_capture == 0:
        return False, (
            f"the app's process (pid {pid_after_launch}) was running when it was "
            "launched but had EXITED by the end of the capture window - it died "
            "mid-window, so a request it would have made after that point never "
            "happened, and this window's silence covers only the part of it the "
            "app was alive for"
        )
    return False, None


def _capture_ui_liveness(serial: str, package: str) -> dict | None:
    """This window's device-side UI-liveness record, in the shape cli.py evaluates.

    ADR-0016 calls the capture window a second, complete evaluation of the
    identical predicate the dynamic stage's success-check ran. That check reads a
    `ui_liveness` dict to word its SSL-handshake line (the app's UI showing a
    certificate rejection vs no TLS activity observed) and its post-bypass
    liveness lines - and the dynamic window IS handed one. This stage recorded no
    such key at all, so the second evaluation read `None` on every run: UI-blind
    by construction while the first was not. The ADR's premise held for the
    observer stream and not for this input.

    Same source as the dynamic path's (check_ui_liveness: real dumpsys/logcat/
    uiautomator data, never fabricated) and the same graceful degradation - any
    failure returns None, which the check renders honestly as "not captured".
    It cannot move a verdict either way: TechnologyHooksEngagedCheck derives
    ssl_confirmed/root_confirmed from the observer's effect messages, and
    `ui_liveness` reaches only the wording of the lines above
    ([[prose-caution-is-not-a-coverage-bound]], [[verdict-must-carry-its-observation]]).
    """
    try:
        from dynamic.ui_liveness import check_ui_liveness
        return check_ui_liveness(serial, package)
    except Exception:
        return None


def _target_running(pid_after_launch: int | None,
                    pid_after_capture: int | None) -> bool | None:
    """Was the target app running during the capture window?

    True / False / None (not measured), following _parse_pidof's 0-vs-None
    contract. This is the premise the capture's attribution rests on: the absence
    of the app's uid from the device's socket table only means "this app stayed
    away from the proxy" if the app was there to stay away. Without it, a run
    whose launch silently started nothing is reported as the app choosing not to
    use the proxy - a true statement about an empty set and a false one about the
    app ([[native-absent-vacuous-coverage]], [[success-check-engine-vacuous-truth-guard]]).
    """
    # Proxy attribution rests on whether the app was PRESENT to reach the proxy.
    # The capture sample is the one that matters; the launch sample is only a
    # fallback when capture was not measured. An app that ran at launch but was
    # GONE by capture must NOT read as "survived the whole window" - report it as
    # not-present-at-capture (honest) rather than lumping it with the alive case.
    if pid_after_capture:
        return True
    if pid_after_capture == 0:
        return False
    if pid_after_launch:
        return True  # present at launch; capture sample unmeasured
    if pid_after_launch == 0:
        return False
    return None


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


def _tls_failed_note(tls_failed: list[dict[str, str]]) -> dict:
    """A self-describing summary of the certificate refusals, for the reader.

    The proxy records a refusal per client handshake with NO uid - see
    `_count_tls_failed_clients` - so the list mixes the target app's refusals
    with any other process's. Measured 2026-10-04 (A/B Arm 1): seven refusals,
    six of them `youtubei.googleapis.com` (Google Play services). A bare count
    therefore overstates what is known about the TARGET, and this note says so
    in the artifact rather than only in a code comment.

    Deliberately NOT a filter: the refusals are real observations and the list
    beside this note keeps every one. Attribution is left to
    `proxy_attribution` (uid-based, ADR-0012); this note only stops the raw
    count from being read as a count of facts about the app.
    """
    hosts = sorted({f.get("host", "") for f in tls_failed if f.get("host")})
    n = len(tls_failed)
    if n == 0:
        return {"count": 0, "distinct_hosts": [], "attribution": "unattributed",
                "note": "no client certificate refusals were recorded"}
    return {
        "count": n,
        "distinct_hosts": hosts,
        "attribution": "unattributed",
        "note": (
            f"{n} client certificate refusal(s) were recorded, across "
            f"{len(hosts)} distinct host(s). The proxy records these without a "
            "uid, so a refusal here is NOT proof the target app made it - "
            "another process on the device can refuse the CA too. The list "
            "beside this note keeps every refusal unaltered; attribute them by "
            "`proxy_attribution` (uid-based) before reading any of them as a "
            "finding about the target."
        ),
    }


def _resolve_launch_component(serial: str, package: str) -> str | None:
    """The `pkg/activity` component to launch, from the device's own resolver.

    Needed because the obvious launch form is not one this tool can trust:
    `am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER
    -p <pkg>` EXITS 0 while printing `Error: Activity not started, unable to
    resolve Intent` on a device with no launcher app installed - measured on the
    reference emulator. The exit 0 is what makes it dangerous: `check=True` does
    not fire and the stage spends its whole capture window on an app that was
    never started. Resolving the component first, then launching it with `-n`, is
    the form that was measured to work on the same device.
    """
    adb = device._require_adb()
    try:
        res = subprocess.run(
            [adb, "-s", serial, "shell", "cmd", "package", "resolve-activity",
             "--brief", "-a", "android.intent.action.MAIN",
             "-c", "android.intent.category.LAUNCHER", package],
            capture_output=True, text=True, timeout=20,
        )
    except (subprocess.SubprocessError, OSError):
        return None
    if res.returncode != 0:
        return None
    for line in (res.stdout or "").splitlines():
        line = line.strip()
        # `--brief` prints a `priority=0 preferredOrder=0 ...` header first; the
        # component is the `pkg/activity` line below it.
        if "/" in line and not line.startswith(("priority=", "Error", "No ")):
            return line
    return None


# Bounded so a form that starts nothing cannot stall the capture for long: three
# forms at the worst case is ~18s against a capture window that is itself 12s.
_LAUNCH_PID_TIMEOUT = 6.0
_LAUNCH_PID_INTERVAL = 0.5


def _wait_for_app_pid(serial: str, package: str, timeout: float = _LAUNCH_PID_TIMEOUT,
                      interval: float = _LAUNCH_PID_INTERVAL) -> int | None:
    """Poll `pidof` for the app's process after a launch was issued.

    A single sample immediately after `am start` is a race, and the reference
    emulator was measured losing it: the resolved-component form started the app
    (its own output shows `Starting: Intent { cmp=.../.MainActivity }` and no
    error) while the pid sample taken in the same breath read 0. The ladder then
    concluded that form had failed, tried another, and credited the launch to the
    form whose output actually carried `Error: Activity not started, unable to
    resolve Intent` - a record contradicting itself. `am start` does not wait for
    the process, so the poll is what makes the record match what happened.

    Returns the first pid seen; 0 when the probe ran for the whole bound and the
    app was measurably not running; None when no sample could be taken (the
    _parse_pidof contract). The timeout and interval are read from module
    constants at call time so a caller - or a test - can shorten the bound.
    """
    deadline = time.monotonic() + timeout
    while True:
        pid = _app_pid(serial, package)
        if pid:
            return pid
        if time.monotonic() >= deadline:
            return pid
        time.sleep(interval)


def _launch_app(serial: str, package: str) -> dict:
    """Cold-start the package for capture, and report whether it actually ran.

    Force-stops any running instance first: an app that is *already* running
    (e.g. left open by the dynamic stage) fires no new SDK/API traffic on a bare
    am start, which yields a misleading empty capture.

    Then tries the launch forms in order and VERIFIES THE EFFECT after each,
    because no exit status from `am start` can be trusted for this: it returns 0
    both for a launch that worked and for `Error: Activity not started, unable to
    resolve Intent`. The effect is a pid, polled briefly rather than sampled once,
    because `am start` does not wait for the process and one sample was measured
    losing that race. A form that leaves no running process is recorded and the
    next is tried; the first that produces a pid wins, and no further form runs -
    launching the app a second time would not be the same capture.

    Returns the record the decision was made from, so the stage records the
    launch's real evidence instead of assuming one: `launched_by` (None when no
    form produced a process), `pid` (>0 running, 0 measurably not running, None
    could not be measured - the _parse_pidof contract) and `attempts`.
    """
    adb = device._require_adb()
    subprocess.run(
        [adb, "-s", serial, "shell", "am", "force-stop", package],
        capture_output=True, text=True, check=True, timeout=20,
    )
    component = _resolve_launch_component(serial, package)
    forms: list[tuple[str, list[str]]] = []
    if component:
        forms.append(("resolved component", ["am", "start", "-n", component]))
    forms.append((
        "package MAIN/LAUNCHER intent",
        ["am", "start", "-a", "android.intent.action.MAIN",
         "-c", "android.intent.category.LAUNCHER", "-p", package],
    ))
    forms.append((
        "monkey launcher",
        ["monkey", "-p", package, "-c", "android.intent.category.LAUNCHER", "1"],
    ))
    attempts: list[dict] = []
    for how, argv in forms:
        try:
            res = subprocess.run(
                [adb, "-s", serial, "shell"] + argv,
                capture_output=True, text=True, timeout=20,
            )
        except (subprocess.SubprocessError, OSError) as e:
            attempts.append({"form": how, "issued": False, "pid": None,
                             "output": str(e)[-200:]})
            continue
        pid = _wait_for_app_pid(serial, package, _LAUNCH_PID_TIMEOUT,
                                _LAUNCH_PID_INTERVAL)
        # Bounded at the CAUSE end: am prints its failure on the last line, and a
        # head-only cut would keep the "Starting: Intent" line and drop the error.
        output = ((res.stdout or "") + (res.stderr or "")).strip()
        attempts.append({"form": how, "issued": True, "pid": pid,
                         "output": output[-200:]})
        if pid:
            return {"component": component, "launched_by": how, "pid": pid,
                    "attempts": attempts}
    measured = [a["pid"] for a in attempts if a["issued"] and a["pid"] is not None]
    return {"component": component, "launched_by": None,
            "pid": 0 if measured else None, "attempts": attempts}


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
    # WSL2-only, and distinct from the flag above: the pass-through PROCESS is up
    # but the device cannot reach it. `is_listening` probes leg 3 of a three-leg
    # path (device -> device proxy -> adb reverse -> Windows host -> pass-through
    # -> internet) and says nothing about leg 2, and leg 2 is the one the app
    # actually travels. When the reverse is gone the pass-through still answers a
    # Windows-side probe while every device connection to 127.0.0.1:<port> is
    # refused, so the check that used to guard this restore certified a stranded
    # device as cleanly restored.
    wsl2_reverse_route_down = False
    # ...and the third state the probe can return: it could not be RUN, so the
    # route is unknown. Recorded rather than folded into either verdict (the
    # probe's own None contract: never asserted either way).
    wsl2_route_unconfirmed = False
    last_exc: Exception | None = None
    on_wsl2 = _on_wsl2()
    for _ in range(CLEANUP_RETRIES):
        try:
            if on_wsl2 and pass_through_proxy.is_listening(INTERNET_PROXY_PORT):
                # The pass-through being up is necessary but not sufficient: probe
                # the leg the app uses before calling this a restore. On WSL2,
                # device-localhost:<port> IS the adb reverse tunnel, so a refused
                # connect here is the reverse not carrying traffic - not the proxy
                # process being down, which the check above already ruled out.
                reachable = _device_reaches_proxy(serial, INTERNET_PROXY_PORT)
                if reachable is False:
                    device.clear_http_proxy(serial)
                    wsl2_reverse_route_down = True
                else:
                    device.set_http_proxy(serial, "127.0.0.1", INTERNET_PROXY_PORT)
                    restored = True
                    wsl2_route_unconfirmed = reachable is None
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
    elif wsl2_reverse_route_down:
        warnings.append(
            f"WSL2 pass-through proxy is listening on port {INTERNET_PROXY_PORT} "
            "at cleanup, but the device cannot reach it: a connect to "
            f"127.0.0.1:{INTERNET_PROXY_PORT} from the device itself was refused "
            "or timed out. On WSL2 that address is the adb reverse tunnel, so the "
            "pass-through process being up does not mean the device has internet - "
            "the stale capture-proxy pointer was cleared instead of restored, "
            "because pointing the device at a loopback nothing answers reads as a "
            "working proxy while delivering no connectivity; the device is left "
            "without working internet - re-run `scripts/emulator_proxy.py internet` "
            "(ensure_internet) to recover"
        )
    elif wsl2_route_unconfirmed:
        warnings.append(
            f"device proxy restored to the WSL2 pass-through on port "
            f"{INTERNET_PROXY_PORT}, but the device-side route to it could not be "
            "confirmed - the on-device reachability probe could not be run, so this "
            "restore rests on the proxy setting alone"
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
        stop_err = _stop_windows_mitmdump(proxy_port)
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
    Returns the Windows path or None if mitmproxy is not installed there.

    WINRESOLVE1. The `where.exe` probe searches the PATH OF THE PROCESS IT RUNS
    IN, which is not always the user's PATH - an agent/sandbox shell, a service, a
    scheduled task or an IDE terminal can each carry a different one. Measured
    2026-10-04 from such a shell on the reference box: WSLENV/APPDATA/USERPROFILE
    all stripped, `where.exe` through the powershell wrapper returned rc=0 with
    EMPTY stdout (a silent empty result, not an error), so this returned None and
    the stage reported "Windows-host mitmdump not found" - while mitmdump.exe was
    present and ran, and mitmproxy 12.2.3 imported, by absolute path. The PATH
    lookup stays FIRST so a working PATH is unaffected; the known-dirs probe runs
    only when it answers nothing, and can only turn a false "not found" into a real
    attempt - a bad fallback path still fails at `_wait_windows_listening`, which
    raises when mitmdump never binds, so nothing here can fabricate a proxy."""
    try:
        res = subprocess.run(
            ["powershell.exe", "-NoProfile", "-Command", "where.exe mitmdump"],
            capture_output=True, text=True, timeout=30)
    except (FileNotFoundError, subprocess.SubprocessError):
        res = None
    if res is not None and res.returncode == 0:
        lines = [ln for ln in res.stdout.strip().splitlines() if ln.strip()]
        if lines:
            return lines[0]
    # PATH could not answer. Probe the documented install locations instead, which
    # cannot fail for environment reasons (they are filesystem reads, not lookups).
    for cand in pass_through_proxy.windows_known_dir_candidates("mitmdump.exe"):
        # Convert the /mnt/<drive>/... form TEXTUALLY, before anything resolves it.
        # Path.resolve() on a Windows interpreter whose cwd is a \\wsl.localhost
        # share rewrites "/mnt/c/..." to "\\\\wsl.localhost\\Ubuntu\\mnt\\c\\...",
        # after which the "/mnt/c/" replacement no longer matches and the stage
        # would launch a path the Windows host cannot execute. _windows_path_for
        # is the one converter that keeps the drive mapping intact.
        return _windows_path_for(Path(cand))
    return None


def _windows_mitmdump_site() -> str | None:
    """The Windows site-packages directory that contains `mitmproxy`, as a
    Windows path (C:\\...), or None when none is found.

    PASSBYSITE1. `_windows_mitmdump()` answers WHERE the binary is; this answers
    what it will be able to IMPORT. They are different questions and only the
    second one was wrong: measured 2026-10-04, the resolved mitmdump.exe died
    with `ModuleNotFoundError: No module named 'mitmproxy'` because the
    WSL-interop env block is REPLACED (not merged), so the interpreter computed a
    USER_BASE that does not exist and never saw its own user-site. The fix is to
    hand the directory to the child on sys.path, inside the process."""
    cands = pass_through_proxy.windows_user_site_candidates("mitmproxy")
    if not cands:
        return None
    # Same rule as _windows_mitmdump: convert before resolving (see the comment
    # there); Path.resolve() over a UNC cwd destroys the /mnt/<drive> mapping.
    return _windows_path_for(Path(cands[0]))


# ---------------------------------------------------------------------------
# H1: capture-artifact hygiene.
#
# mitmdump's `-w` flow file is not a log - it is a serialization of every
# captured request and response, HEADERS AND BODIES included, so it contains
# whatever Authorization / Cookie / token / PII values the target app put on the
# wire. The WSL2 placement used to write it (plus the addon's URL log) into
# C:\Users\Public, which every local account can read, and left it there
# indefinitely. Three things below close that:
#
#   1. the artifacts live in a per-run directory on the Windows host that is
#      restricted to the current user (and the native placement's file is
#      created 0600 instead of whatever the process umask allows);
#   2. the raw flow file and the addon URL log are DELETED once the stage has
#      extracted the summary it reports - the stage's evidence is the parsed
#      host/method/path list, never the raw traffic;
#   3. a warning is emitted at capture time, naming the file and what it holds,
#      so an operator is never surprised by a full-traffic write.
#
# The capture capability is untouched: mitmdump still records flows, and the
# parsed summary is unchanged.
# ---------------------------------------------------------------------------

# Per-run capture work dir under the Windows user's %TEMP%. A per-user temp dir
# is already owner-private; the ACL is tightened explicitly anyway so the
# guarantee does not depend on how the host's temp dir happens to be configured.
_CAPTURE_WORKDIR_NAME = "fymp-capture"
# Only used when %TEMP% cannot be resolved: better a per-run owner-only subdir
# here than a world-readable file directly in C:\Users\Public.
_CAPTURE_FALLBACK_BASE = Path("/mnt/c/Users/Public")

# Header names whose VALUES are credentials/session state. Matched
# case-insensitively in flow_detail-style text, where headers are indented
# under their request line.
_SENSITIVE_HEADER_RE = re.compile(
    r"(?im)^(?P<indent>[ \t]*)(?P<name>"
    r"authorization|proxy-authorization|authentication|cookie|set-cookie|"
    r"x-api-key|api-key|x-auth-token|x-csrf-token|x-session-token"
    r")[ \t]*:[ \t]*(?P<value>.*)$"
)


def redact_sensitive_headers(text: str) -> str:
    """Mask credential-bearing header VALUES in flow_detail-style text.

    `Authorization: Bearer <token>` becomes `Authorization: [REDACTED]`, and the
    same for Cookie / Set-Cookie / proxy-authorization / common API-key and
    session-token headers. The header NAME and the line's indentation are
    preserved, so nothing that identifies the flow is lost and the parser's
    column-0 request-line rule still sees exactly the same shape it did before
    (a masked line can only ever be MORE inert: the value that could have
    contained " HTTP/" is gone).

    Applied to the captured text before it is parsed or excerpted into evidence,
    so a future mitmdump/flow_detail level that starts printing headers cannot
    leak a token into the report. Returns the text unchanged when it contains no
    such header (including empty text)."""
    if not text:
        return text
    return _SENSITIVE_HEADER_RE.sub(
        lambda m: f"{m.group('indent')}{m.group('name')}: [REDACTED]", text)


def _windows_path_for(path: Path) -> str | None:
    """The C:\\ form of `path` (from a /mnt/c WSL path or an already-Windows
    one), or None when the path is on neither - e.g. a native Linux out_dir."""
    text = str(path).replace("\\", "/")
    if re.match(r"^[A-Za-z]:/", text):
        return text.replace("/", "\\")
    match = re.match(r"^/mnt/([A-Za-z])/(.*)$", text)
    if match:
        return f"{match.group(1).upper()}:\\" + match.group(2).replace("/", "\\")
    return None


def _windows_temp_dir() -> Path | None:
    """The Windows user's %TEMP% as a /mnt/c path, or None when it cannot be
    resolved (including on a host that is not actually WSL2 with C: mounted,
    where the question is meaningless and no subprocess should be spent)."""
    # os.name first: on a Windows host "/mnt/c" is a rooted path with no meaning
    # (and, from a UNC working directory, one that stats a \\mnt\c share), so the
    # WSL2 placement must be established before the filesystem is consulted.
    if os.name != "posix" or not Path("/mnt/c").is_dir():
        return None
    try:
        res = subprocess.run(
            ["powershell.exe", "-NoProfile", "-Command",
             "[System.IO.Path]::GetTempPath()"],
            capture_output=True, text=True, timeout=15)
    except (FileNotFoundError, subprocess.SubprocessError):
        return None
    win = (res.stdout or "").strip()
    if res.returncode != 0 or not re.match(r"^[A-Za-z]:\\", win):
        return None
    return Path("/mnt/" + win[0].lower() + "/" + win[3:].replace("\\", "/"))


def _restrict_path_to_owner(path: Path) -> bool:
    """Make `path` (a dir or file) accessible only to the current user.

    POSIX (native placement): chmod 0700/0600. A Windows path - always the case
    for the WSL2 placement, and for /mnt/c on WSL - needs a real ACL: os.chmod
    there only toggles the read-only bit, which restricts nothing. Best-effort
    by design: returns False when the restriction could not be applied (the
    caller still deletes the artifacts), and never raises."""
    if os.name == "posix" and _windows_path_for(path) is None:
        try:
            os.chmod(path, 0o700 if path.is_dir() else 0o600)
            return True
        except OSError:
            return False
    win_path = _windows_path_for(path)
    if win_path is None:
        return False
    script = (
        "$p = '" + win_path.replace("'", "''") + "'; "
        "icacls $p /inheritance:r /grant:r \"$($env:USERNAME):(OI)(CI)F\" "
        "| Out-Null; exit $LASTEXITCODE"
    )
    try:
        res = subprocess.run(
            ["powershell.exe", "-NoProfile", "-Command", script],
            capture_output=True, text=True, timeout=30)
    except (FileNotFoundError, subprocess.SubprocessError):
        return False
    return res.returncode == 0


def _windows_capture_dir(
    stamp: int, *, base: Path | None = None, enforce: bool = True
) -> tuple[Path, str]:
    """Create (and lock down) this run's capture work dir on the Windows host.

    Returns `(wsl_path, windows_path)`. Everything the Windows mitmdump writes
    for this capture - the CA confdir, the addon, the raw flow file and its URL
    log - lives under here, so one owner-only ACL covers all of it and nothing
    lands in a shared, world-readable location.

    Path COMPUTATION is kept separate from ENFORCEMENT (the mkdir + the owner-only
    ACL) so a unit test can pin the naming and the "not the shared C:\\Users\\Public
    root" guarantee on ANY host without touching it: `base` supplies the %TEMP%
    parent and `enforce=False` skips the mkdir and ACL. On the reference WSL2 box
    /mnt/c exists and the probe it would spend is a real `powershell.exe` - which
    the unit suite forbids a test from spawning - so the pure path questions
    (which this function's names and location are) are answered through these two
    parameters instead. The stage calls it with the defaults, and then (and only
    then) does the real %TEMP% lookup and the owner-only ACL happen."""
    if base is None:
        base = _windows_temp_dir() or _CAPTURE_FALLBACK_BASE
    # One directory per run, named as before - only its PARENT changed, so the
    # artifact file names (and everything that reads them) stay identical.
    wsl_dir = base / f"{_CAPTURE_WORKDIR_NAME}-{stamp}"
    win_dir = _windows_path_for(wsl_dir) or ""
    if not enforce or os.name != "posix" or not Path("/mnt/c").is_dir() or not win_dir:
        return wsl_dir, win_dir
    try:
        wsl_dir.mkdir(parents=True, exist_ok=True)
    except OSError:
        # Let mitmdump fail loudly on its own if the dir really is unusable.
        return wsl_dir, win_dir
    _restrict_path_to_owner(wsl_dir)
    return wsl_dir, win_dir


def _precreate_private_file(path: Path) -> None:
    """Create a capture file up front with owner-only permissions, so mitmdump
    truncates an already-private file instead of creating one under the process
    umask (0644 by default - world-readable). Best-effort: a failure here must
    not stop the capture."""
    try:
        path.parent.mkdir(parents=True, exist_ok=True)
        if not path.exists():
            os.close(os.open(path, os.O_CREAT | os.O_WRONLY, 0o600))
        os.chmod(path, 0o600)
    except OSError:
        pass


def _discard_raw_capture(*paths: Path | None) -> bool:
    """Delete raw-traffic artifacts. Returns True when none remain (deleted, or
    never written), False when at least one survived - a surviving full-traffic
    file is recorded on the evidence rather than silently dropped.

    Best-effort and never raises: this runs from a `finally`, where an exception
    would replace the stage's real result."""
    clean = True
    for path in paths:
        if path is None:
            continue
        try:
            Path(path).unlink(missing_ok=True)
        except OSError:
            clean = False
    return clean


def _write_windows_addon(addon_path: Path, log_win: str) -> Path:
    """Write the flow-capturing mitmdump addon to addon_path (a /mnt/c path so
    it doubles as the Windows-side path) with log_win baked in as where it
    writes. addon_path.parent must already exist."""
    addon_path.parent.mkdir(parents=True, exist_ok=True)
    # replace() (not str.format) so the addon's own .format()/f-string braces
    # are untouched; only the @LOG_WIN@ token is substituted.
    addon_path.write_text(_ADDON_TEMPLATE.replace("@LOG_WIN@", log_win))
    return addon_path


def _cmd_quote(value: str) -> str:
    """Quote a value for the cmd.exe command line, but only where it needs it.
    These paths are normally space-free, and quoting unconditionally would
    change the shape of a command that is otherwise plain - cmd.exe splits a
    bare command line on spaces where Start-Process -ArgumentList did not."""
    return f'"{value}"' if " " in value else value


def _start_windows_mitmdump(mitmdump_win: str, confdir_win: str, addon_win: str,
                            flows_win: str, port: int, log_win: str) -> None:
    """Launch mitmdump.exe on the Windows host, detached, writing raw flows to
    flows_win, each flow to the addon's own log, and the proxy's OWN output to
    log_win.

    Start-Process is given no redirect of its own. Measured on the reference
    host: -RedirectStandardOutput makes it block for the child's entire
    lifetime (14.9 s for a 15 s child, against 320 ms without), and mitmdump
    runs for the whole capture window - so that would hang the stage. cmd.exe
    performs the redirection inside the child instead: 279 ms, the same as no
    redirect at all, and mitmdump stays findable by name for
    _stop_windows_mitmdump (it becomes cmd.exe's child, not a stranger).

    That log is the only place the proxy's own diagnostics exist. An addon
    cannot tap them: mitmproxy writes through its own handle (measured - a
    sys.stdout/sys.stderr tee in the addon captured none of it), and a script's
    compile error is reported before any addon loads, so a broken addon can
    never report itself.

    Values are normally space-free C:\\ paths, so single-quoting the inner
    command is enough; _cmd_quote covers the case where one is not."""
    # PASSBYSITE1: run mitmdump through a launcher when its user-site is not on
    # the interpreter's own sys.path. The shim alone cannot work here - the
    # WSL-interop env block is REPLACED, not merged, so APPDATA/PYTHONPATH never
    # reach the child and it computes a USER_BASE that does not exist. Measured
    # 2026-10-04 in this exact shell: bare shim -> `ModuleNotFoundError: No module
    # named 'mitmproxy'`; same shim via a launcher that does sys.path.insert ->
    # `Mitmproxy: 12.2.3` and `HTTP(S) proxy listening at *:8081.`. When no site
    # dir is found the original direct launch is kept, so a real
    # ModuleNotFoundError still surfaces from the interpreter rather than being
    # masked by a launcher that pretends to have fixed it.
    site_win = _windows_mitmdump_site()
    if site_win:
        launcher_wsl = Path(confdir_win.replace("C:\\", "/mnt/c/").replace("\\", "/")) / "_mitmdump_launch.py"
        launcher_win = confdir_win.rstrip("\\") + "\\_mitmdump_launch.py"
        pass_through_proxy.write_python_launcher(
            mitmdump_win, site_win, mitmdump_win, launcher_wsl)
        launch_exe = pass_through_proxy._windows_python() or mitmdump_win
        launch_argv = [launch_exe, launcher_win, "--set", "confdir=" + confdir_win,
                       "--set", "flow_detail=2", "-s", addon_win,
                       "-w", flows_win, "-p", str(port)]
    else:
        launch_argv = [mitmdump_win, "--set", "confdir=" + confdir_win,
                       "--set", "flow_detail=2", "-s", addon_win,
                       "-w", flows_win, "-p", str(port)]

    inner = " ".join([
        # Unbuffered, or the log stays empty for the entire capture. Measured:
        # with the plain redirect the file was 0 bytes while mitmdump ran and
        # after the stop, because Python block-buffers stdout when it is not a
        # TTY and _stop_windows_mitmdump is a force-kill that never flushes;
        # with this prefix the same run produced 369 bytes live - mitmproxy's
        # own error text. A redirect that captures nothing would have looked
        # exactly like a working one.
        'set "PYTHONUNBUFFERED=1" &&',
        " ".join(_cmd_quote(a) for a in launch_argv),
        ">", _cmd_quote(log_win), "2>&1",
    ])
    ps = ("Start-Process -FilePath 'C:\\Windows\\System32\\cmd.exe' -ArgumentList "
          "'/c','" + inner + "' -WindowStyle Hidden")
    subprocess.run(["powershell.exe", "-NoProfile", "-Command", ps],
                   capture_output=True, text=True, check=True, timeout=30)


def _wait_windows_listening(port: int, timeout: float = _WSL_LISTEN_TIMEOUT,
                            log_path=None) -> None:
    """Poll until a Windows-host process listens on `port`. If the just-launched
    Windows mitmdump never binds, raise loudly - the WSL2 path must not silently
    route the device to nothing.

    The mitmdump's own output is read back and quoted on failure. Measured on the
    real host: a mitmproxy script that will not load is FATAL - mitmdump logs
    "HTTP(S) proxy listening at *:8081." and then "Error logged during startup,
    exiting...", so it binds the port and is gone again before this probe runs.
    Raising on the probe alone therefore reports the SYMPTOM ("did not start
    listening") while mitmproxy's traceback - which names the exact file and line
    - was written to a log nobody read ([[unit-tested-parser-neq-consumed-signal]])."""
    if not pass_through_proxy._probe_windows_listening(port, timeout):
        excerpt = _proxy_log_excerpt(_read_windows_text(log_path)) if log_path else ""
        raise RuntimeError(
            f"Windows-host mitmdump did not start listening on port {port}"
            + (f" - its own output says: {excerpt}" if excerpt else
               " - and it produced no output at all, so it likely never launched")
        )


def _read_windows_text(path: Path) -> str:
    """Read a text file the Windows-host mitmdump wrote (best-effort). Returns ""
    when it is absent or unreadable, which callers report as not-captured rather
    than as an empty log - the two are different facts."""
    try:
        return path.read_text(errors="ignore") if path.exists() else ""
    except OSError:
        return ""


def _read_flow_detail_log(path: Path) -> str:
    """Read a Windows mitmdump's redirected flow_detail log (best-effort)."""
    return _read_windows_text(path)


def _stop_windows_mitmdump(port: int | None = None) -> str | None:
    """Best-effort stop of the Windows-host mitmdump after a WSL2 capture.
    Returns a failure reason if the stop command could not be RUN (so _cleanup
    can report a possibly-stray mitmdump on the Windows host), None on a clean
    launch. The reason is 'could not run the stop', not a confirmed leak.

    PASSBYSITE1 follow-up: stop BY PORT first, then by name. Stopping by the
    image name alone silently stopped working the moment the launch changed from
    `mitmdump.exe` to `python.exe <launcher>` (which it had to, so the child
    could see its user-site): the process image became `python.exe`, the sweep
    matched nothing, and the proxy survived. Measured cost of that - Arm 1's
    proxy held :8081 into Arm 2, whose mitmdump then exited on
    `[Errno 10048] only one usage of each socket address`, leaving the
    Frida-spawned app with no proxy and producing a clean 200 that read as "the
    app made no network requests". The port is the thing we actually own, and it
    is stable across any way of launching, so it is the primary key here; the
    name sweep stays as a belt-and-braces second pass."""
    reasons: list[str] = []
    if port is not None:
        r = pass_through_proxy._windows_best_effort(
            "Get-NetTCPConnection -LocalPort " + str(port) +
            " -State Listen -ErrorAction SilentlyContinue | "
            "ForEach-Object { Stop-Process -Id $_.OwningProcess -Force "
            "-ErrorAction SilentlyContinue }")
        if r:
            reasons.append(r)
    r = pass_through_proxy._windows_best_effort(
        "Get-Process mitmdump -ErrorAction SilentlyContinue | Stop-Process -Force"
    )
    if r:
        reasons.append(r)
    return "; ".join(reasons) if reasons else None


def _drive_ui(serial: str, package: str) -> dict:
    """One deterministic tap to get the app past a control that gates its network
    path, returned as the record the stage stores under `ui_drive` (ADR-0011).

    Never guesses - ui_liveness._choose_tap_target owns that policy. Every outcome
    is returned, refusals included, because a tap changes app state: an
    unrecorded one would leave this capture's provenance ambiguous, and a recorded
    refusal is what lets the report say the network path stayed un-exercised
    because nothing was safe to tap, rather than leaving the reader to guess."""
    from dynamic import ui_liveness
    # Only dump once the app owns the screen. A hierarchy read while the launch
    # is still drawing belongs to the PREVIOUS screen, and tapping a coordinate
    # from it would mutate a screen the app does not own - so that is a recorded
    # refusal with its own cause, never a tap.
    fg = ui_liveness.wait_for_foreground(serial, package)
    if fg["foreground"] is not True:
        return {"attempted": False, "tapped": False, "target": None,
                "selected_by": None, "foreground": fg,
                "reason": ("the app never became the resumed activity, so the hierarchy "
                           "on screen is not the app's" if fg["foreground"] is False else
                           "the app's foreground ownership could not be measured")
                          + f" ({fg['reason']}) - refusing to tap a screen the app does "
                            "not own"}
    dump = ui_liveness.dump_ui_targets(serial)
    from trace import trace as _trace
    # "skipped", not "failed", when the dump could not be measured: the arm
    # right below treats not-measured as an honest refusal (a tool that could
    # not read the screen), and a marker that calls it a failure says the UI
    # drive broke when the fact is that nothing was read. And an UNKNOWN target
    # list stays unknown - `len(... or [])` would print targets=0 for "never
    # enumerated", the fabricated-zero ADR-0006 forbids.
    _trace("capture", "ui.dump",
           "ok" if dump.get("measured") else "skipped",
           targets=(len(dump["targets"])
                    if dump.get("targets") is not None else None))
    census = dump.get("hierarchy")
    if not dump["measured"]:
        return {"attempted": False, "tapped": False, "target": None,
                "selected_by": None, "hierarchy": census,
                # Recorded, not left to be inferred from the missing census: the
                # report closes this refusal by telling the reader a control gated
                # the path, and that claim rests on a screen having been read. This
                # is the arm where none was, so the fact travels with the record -
                # a legacy refusal has no census either, and "never read" is not a
                # statement about it ([[verdict-must-carry-its-observation]]).
                "unread_hierarchy": True,
                "reason": dump["reason"]}
    target, how = ui_liveness._choose_tap_target(dump["targets"])
    _trace("capture", "ui.choose_tap", "ok" if target is not None else "none",
           how=how, seen=len(dump["targets"]))
    if target is None:
        return {"attempted": False, "tapped": False, "target": None,
                "selected_by": None, "targets_seen": len(dump["targets"]),
                # What the dump held, so the refusal below is auditable after the
                # device is gone: the target list alone cannot tell a screen of
                # forty nodes with nothing tappable from a hierarchy that was never
                # read ([[verdict-must-carry-its-observation]]).
                "hierarchy": census,
                # The reason names a property of the SCREEN, so it stands only where
                # there was a screen to read. nodes == 0 is the one census that makes
                # that false; None (a caller that does not report a census) leaves the
                # policy's own wording alone.
                "reason": ("the dumped hierarchy contained no nodes at all - the screen "
                           "was never read, so nothing here says what it offered to tap"
                           if census is not None and census.get("nodes") == 0 else how)}
    try:
        ui_liveness.tap(serial, target["center"][0], target["center"][1])
        _trace("capture", "ui.tap", "ok",
               x=target["center"][0], y=target["center"][1])
    except Exception as e:
        return {"attempted": True, "tapped": False, "target": target,
                "selected_by": how, "reason": f"input tap failed: {e}"}
    return {"attempted": True, "tapped": True, "target": target,
            "selected_by": how, "reason": None}


def run_capture_stage(
    serial: str,
    package: str,
    out_dir: Path | str,
    proxy_port: int = DEFAULT_PROXY_PORT,
    capture_window: float = CAPTURE_WINDOW_SECONDS,
    mitmdump_path: str | None = None,
    bypass_script: str | None = None,
    bypass_source: str | None = None,
    drive_ui: bool = True,
) -> StageResult:
    """Run a mitmproxy capture of `package`'s traffic and return a StageResult.

    When `bypass_script` (a filename under src/dynamic/scripts/) or
    `bypass_source` (a script's source text, for the synthesized bypass the
    deterministic synthesizer generates in memory and never writes to a file) is
    given, the app is cold-started *under Frida* with that script loaded before
    resume, so its traffic decrypts through the proxy. This is the "with script"
    side of an A/B: the same run with neither given cold-starts via plain
    `am start` (no hooks), so a genuinely-pinned app rejects the capture CA and
    its pinned host shows no decrypted flow - the two runs together prove the
    bypass. Use a pinning-only script here (never a root-detection one) so the
    app does not self-terminate during the capture window.

    The two are separate parameters rather than one polymorphic one because they
    are different things that reach different loaders: `load_script` resolves a
    NAME under SCRIPT_DIR and reads it, `load_script_source` takes the text. One
    parameter that accepted either would have to guess which it was given, and
    the guess that got this wrong once - a synthesized source passed where a
    filename belonged - built a path out of the entire script and failed with
    `[Errno 36] File name too long` before the bypass was ever loaded, so the
    capture window ran un-hooked while the report said the bypass had been
    injected. Two names, no inference.

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
    # SESSION11L4: the stage's setup - CA prep, device proxy/CA install, confdir
    # staging - took 14.4 s before the proxy even started on the 152 MB spotify
    # run, and it was silent. Traced so the pre-proxy wait is attributable.
    from trace import enabled as _trace_on
    from trace import trace as _trace_setup
    _tracing = _trace_on()
    _setup_started = time.monotonic() if _tracing else 0.0
    if _tracing:
        _trace_setup("capture", "setup", "start")
    confdir = out_dir / "mitm-conf"
    frida_script_loaded = False  # True when the Frida-spawn arm runs (ANY script)
    # `bypass_applied` is refined below from what the script itself reports; bound
    # here so an exception before that point cannot leave it unbound - the same
    # unbound-name hazard the ledger records for proxy_log_wsl.
    bypass_applied = False
    # Which bypass the spawn arm loaded, as a compact descriptor for the evidence
    # (None on the plain-launch arm). A synthesized bypass is ~10 KB of generated
    # JavaScript; embedding it here would bury the very record it explains, and the
    # dynamic stage already stores the full source it deployed.
    bypass_arm: str | None = None

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
    # ADR-0020: which Frida instruments this window, when one does, and its
    # message stream. Both are bound before the try because the exception arm
    # reports them, and an exception raised before the Frida arm reached its own
    # binding would otherwise read as an unbound name inside the handler -
    # replacing the real failure with a NameError. frida_instrument stays None on
    # the plain cold-start arm, where no Frida was involved at all: a different
    # statement from "a Frida ran and its record was not established", and
    # bypass_arm/bypass_applied beside it tell the two apart, so the record is
    # never read as an instrument that was not there.
    frida_messages: list = []
    frida_instrument = None
    # The Windows mitmdump's log path, set only on the WSL2 placement and kept in
    # the enclosing scope so the EXCEPTION path can read the log too - a mitmdump
    # that will not come up is exactly when its output is needed. Bound before the
    # try because the CA push above it can fail: an unbound read inside the
    # handler would raise NameError and replace the real reason for the failure.
    proxy_log_wsl: Path | None = None
    # The WSL2 addon's own URL log (bound before the try for the same reason: the
    # `finally` deletes it, and a failure before the branch reached its own
    # binding must not turn cleanup into a NameError).
    log_wsl: Path | None = None
    try:
        cert = device.create_mitm_ca(confdir)
        system_ca = device.push_system_ca(serial, cert)
        if wsl2:
            # The CA push above may have just restarted adbd - `adb root` is
            # unconditional inside push_system_ca - and an adbd restart takes every
            # reverse tunnel with it, including the pass-through tunnel
            # ensure_internet placed a few lines earlier. On WSL2 that tunnel is the
            # device's ONLY internet path (the emulator has no direct NAT). The
            # device-proxy setting survives the restart, so the path still reads as
            # configured while pointing at a device-side loopback nothing is
            # listening on: the app under test then browses nothing, and an app that
            # never reaches its server never performs the pinned handshake this
            # window exists to observe - so the capture comes back empty for a
            # reason no artifact names. Re-running the baseline here is what makes
            # "established" still true at the point it is used. A re-add of the same
            # reverse spec is idempotent, so this costs one adb call when adbd did
            # not restart and is load-bearing when it did.
            pass_through_proxy.ensure_internet(serial, INTERNET_PROXY_PORT)
        # The Windows mitmdump's own output. WSL2 only: the native placement
        # keeps mitmdump's stdout in-process instead (see the Popen below).
        proxy_log = ""

        # SESSION11L4: starting the proxy is 10-60 s on the WSL2 path (spawn the
        # Windows mitmdump, then poll until it listens) and it ran with no marker
        # - from outside, a slow start and a wedged proxy were indistinguishable.
        # Traced start/ready with the mode and the duration; zero cost when off.
        from trace import enabled as _trace_on
        from trace import trace as _trace
        _tracing = _trace_on()
        _started = time.monotonic() if _tracing else 0.0
        if _tracing:
            _trace("capture", "setup", "ok",
                   ms=round((time.monotonic() - _setup_started) * 1000))
            _trace("capture", "proxy.start", "start",
                   mode="windows" if wsl2 else "native", port=proxy_port)
        if wsl2:
            stamp = time.time_ns()
            # H1: every artifact this capture writes on the Windows host - the
            # CA confdir, the addon, the raw flow file and its URL log - goes
            # into ONE per-run dir restricted to the current user, instead of
            # C:\Users\Public (world-readable) where the full-traffic .mitm and
            # the URL log used to sit after the run.
            capture_wsl_dir, capture_win_dir = _windows_capture_dir(stamp)
            confdir_win = _prepare_windows_confdir(
                confdir, capture_wsl_dir / "conf")
            flows_win = f"{capture_win_dir}\\{stamp}.mitm"
            addon_win = f"{capture_win_dir}\\{stamp}-addon.py"
            log_win = f"{capture_win_dir}\\{stamp}-flows.log"
            flows_path = capture_wsl_dir / f"{stamp}.mitm"
            addon_path = capture_wsl_dir / f"{stamp}-addon.py"
            log_wsl = capture_wsl_dir / f"{stamp}-flows.log"
            proxy_log_win = f"{capture_win_dir}\\{stamp}-mitmdump.log"
            proxy_log_wsl = capture_wsl_dir / f"{stamp}-mitmdump.log"
            _write_windows_addon(addon_path, log_win)
            _start_windows_mitmdump(win_mitmdump, confdir_win, addon_win,
                                    flows_win, proxy_port, proxy_log_win)
            _wait_windows_listening(proxy_port, log_path=proxy_log_wsl)
        else:
            flows_path = out_dir / f"{time.time_ns()}.mitm"
            # H1: create it 0600 before mitmdump opens it, so the raw traffic is
            # never world-readable even for the moment before a chmod could run.
            _precreate_private_file(flows_path)
            proc = subprocess.Popen(
                [mitmdump, "--set", f"confdir={confdir}",
                 "--set", "flow_detail=2",
                 "-w", str(flows_path), "-p", str(proxy_port)],
                stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,
            )
            time.sleep(2.0)  # let mitmdump bind before routing traffic through it

        if _tracing:
            # "ready", not "ok": this records that the launch returned and the
            # readiness step completed - whether the proxy actually accepts a
            # connection is the reachability probe's answer, recorded separately.
            _trace("capture", "proxy.start", "ready",
                   mode="windows" if wsl2 else "native", port=proxy_port,
                   ms=round((time.monotonic() - _started) * 1000))

        # H1: say it out loud, every capture. `-w` is not a log - it holds every
        # request/response header and body the target app sent, including any
        # Authorization/Cookie/token value. The file is owner-only and is deleted
        # once this stage has extracted the summary, but the operator must know a
        # full-traffic write happened and where.
        warnings.warn(
            "capture writes FULL request/response traffic (headers and bodies, "
            f"including any Authorization/Cookie values) to {flows_path}; it is "
            "restricted to the current user and deleted after the flows are "
            "parsed - only the parsed host/method/path summary is retained",
            RuntimeWarning, stacklevel=2,
        )

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

        if bypass_script or bypass_source:
            # "With script" arm: spawn the app under Frida (paused), load the
            # pinning bypass, then resume - same spawn-inject-resume pattern as
            # frida_runner._run_frida. Routing/CA/mitmdump are already live
            # above, so only the launch mechanism differs from the plain
            # am-start arm. A pinning-only script is expected here.
            device2, session, pid, frida_instrument = frida_runner.attach(serial, package)

            # RE-ASSERT THE ROUTE. `frida_runner.attach` -> setup_frida_connection
            # -> _ensure_frida_server runs `adb root`, which RESTARTS adbd whenever
            # the shell was not already root. An adb reverse is a LISTENER ON THE
            # DEVICE, created through adbd, so a restart takes it with it - while
            # the device-proxy setting set above SURVIVES, so the path still reads
            # as configured and points at a device-side loopback nothing answers.
            # The Frida-spawned app would then have no route to the proxy at all:
            # its HTTPS goes direct to the origin, and an empty capture is
            # recorded as "the app made no requests" - a property of the app that
            # is really a property of this restart. This is the same hazard
            # pass_through_proxy.ensure_internet documents for the 8080 tunnel and
            # heals the same way. Measured on emulator-5554 2026-10-04: `adb root`
            # emptied `reverse --list` (id -u 2000 -> 0), and re-placing tcp:8081
            # made the device's `nc` to it return 0 again. A re-add of the same
            # spec is idempotent, so this costs one adb call when adbd did not
            # restart and is load-bearing when it did. Placed BEFORE resume so the
            # route is live before the app can make its first request, and the
            # proxy setting is re-asserted too in case a future change moves it.
            device.adb_reverse(serial, proxy_port, proxy_port, add=True)
            device.set_http_proxy(serial, "127.0.0.1", proxy_port)

            def on_message(message, data):
                frida_messages.append(message)

            # Which loader runs is decided by which argument was given, never by
            # inspecting the value: a filename is a name to resolve under
            # SCRIPT_DIR, a source string is text to load. See the docstring.
            if bypass_source:
                frida_runner.load_script_source(session, bypass_source, on_message)
                bypass_arm = f"synthesized source ({len(bypass_source)} chars)"
            else:
                frida_runner.load_script(session, bypass_script, on_message)
                bypass_arm = f"script file: {bypass_script}"
            device2.resume(pid)
            time.sleep(1.0)  # let the app start making requests under the hook
            frida_script_loaded = True
            launch = {"component": None, "launched_by": "frida spawn", "pid": pid,
                      "attempts": []}
        else:
            # "Without script" arm: plain cold-start, no hooks.
            launch = _launch_app(serial, package)
            frida_script_loaded = False
        # CAPLIVE1: sample the app's OWN liveness at both ends of the window,
        # device-side. Everything else this stage records - the flow list, the
        # connection count, the certificate refusals - is a fact about an OBSERVER.
        # Without this, an app that crashed on start is indistinguishable from an
        # app that ran and stayed off the network, and _launch_app documents that a
        # crash on launch still returns exit 0 from am start. The sample is taken
        # before the window so it speaks to the launch, and again after it so a
        # mid-window death is visible too.
        pid_after_launch = _app_pid(serial, package)
        # ADR-0011: give a button-gated network path its chance before the window is
        # spent. Deliberately after the launch pid sample (so that sample reflects
        # the launch, not the tap) and before the window sleep (so whatever the tap
        # triggers lands inside the window).
        ui_drive = (_drive_ui(serial, package) if drive_ui else
                    {"attempted": False, "tapped": False, "target": None,
                     "selected_by": None,
                     "reason": "UI drive disabled for this run"})
        # Sample the device's own socket table ACROSS the window rather than
        # sleeping through it (ADR-0012). The proxy is installed device-wide, so
        # the capture log alone cannot say whose flows these are - but
        # /proc/net/tcp carries a uid per socket, and the proxy is reached over
        # `adb reverse`, so the port mitmproxy sees is adb's, not the device's.
        # The device-side question is the answerable one: which uid held a socket
        # aimed at the proxy's port. Sampled repeatedly because a pinned
        # handshake's socket can be gone in a moment.
        # SESSION11L4: the capture window is a designed sleep (CAPTURE_WINDOW_SECONDS,
        # ~27 s on the 152 MB spotify run) that sampled the device's socket table -
        # and it was silent, so the tail of the capture stage looked like a hang
        # between the last UI marker and the stage's own line. Traced start/end with
        # the window length and how many client sockets were attributed.
        from trace import trace as _trace
        _trace("capture", "window", "start", window_s=capture_window)
        proxy_clients = proxy_attribution.sample_proxy_clients_during(
            serial, proxy_port, capture_window)
        _trace("capture", "window", "end",
               clients=len(proxy_clients or []))
        # The end-of-window liveness sample is taken while the window is still open.
        # The attribution below needs it: a False ("the app did not reach the proxy")
        # is only licensed if the app was there to reach it.
        pid_after_capture = _app_pid(serial, package)
        target_running = _target_running(pid_after_launch, pid_after_capture)
        # This window's own UI record, for the ADR-0016 evaluation cli.py runs
        # against THIS launch. Gathered only for a window that ran under the
        # injected bypass, because that evaluation exists only for such a window -
        # an un-hooked window has no observer in it and is not evaluated at all,
        # so there would be nothing to feed. The key is recorded on both arms
        # (None on the un-hooked one) so its presence never depends on the arm.
        ui_liveness = _capture_ui_liveness(serial, package) if frida_script_loaded else None

        if wsl2:
            stdout_text = _read_flow_detail_log(log_wsl)
            proxy_log = _read_windows_text(proxy_log_wsl)
            _stop_windows_mitmdump(proxy_port)
        else:
            proc.terminate()
            try:
                stdout_text, _ = proc.communicate(timeout=10)
            except subprocess.TimeoutExpired:
                proc.kill()
                stdout_text, _ = proc.communicate(timeout=5)
            proc = None

        # H1: mask any credential-bearing header value in the captured text
        # BEFORE it is parsed or excerpted into evidence. flow_detail=2 does not
        # print headers today, so this is normally a no-op - but the report
        # persists excerpts of this text, and a header line must never be able
        # to carry a live Authorization/Cookie value into it if that changes.
        stdout_text = redact_sensitive_headers(stdout_text or "")
        proxy_log = redact_sensitive_headers(proxy_log or "")

        flows = _parse_flow_detail(stdout_text or "")

        # BYPASSAPPLIED1: whether a bypass was actually INSTALLED, read from the
        # script's own report - not whether a script was loaded. Computed once,
        # before either evidence arm, so both record the same fact.
        bypass_applied = _bypass_hooks_installed(frida_messages)

        # Certificate refusals observed in this capture, computed ONCE here so
        # both the success and empty-flow arms report the same observation - they
        # read the same text. Both placements are covered (the WSL2 addon marker
        # and native mitmdump's own flow_detail line), so neither reports a zero
        # it could not have seen.
        tls_failed = _count_tls_failed_clients(stdout_text or "")
        # The attribution is computed HERE, after the proxy's own log has been read,
        # because it needs what that log recorded: `tls_failed` counts client
        # handshakes the proxy refused, and every one of them is a client->proxy
        # connection that HAPPENED. A device-side sampling that saw no uid at all
        # while the proxy recorded those connections did not observe this window,
        # and its silence is not evidence the app stayed away (see
        # attribute_proxy_clients). Computing the verdict above - before the log was
        # read, which is where this stage used to compute it - made that unaskable.
        # This stage's own connections must not be credited to the app either: the
        # shell that ran the pre-flight probe owns one on the same table, under its
        # own uid (see _device_shell_uid). Passed unconditionally - when no probe
        # socket exists, subtracting its uid is a no-op.
        shell_uid = _device_shell_uid(serial)
        proxy_attribution_verdict = proxy_attribution.attribute_proxy_clients(
            proxy_clients, proxy_attribution.package_uid_map(serial), package,
            proxy_port, target_running=target_running,
            proxy_connections_seen=len(flows) + len(tls_failed),
            probe_uids={shell_uid} if shell_uid is not None else None)
        # The WSL2 addon's own liveness (None on the native placement, where no
        # addon runs and mitmdump's own flow_detail stdout is the source).
        channel_alive = _capture_channel_alive(stdout_text or "") if wsl2 else None
        proxy_log_excerpt = _proxy_log_excerpt(proxy_log)
        if not flows:
            client_connections_raw = _count_client_connections(stdout_text or "")
            # `reachable` is the pre-flight probe's verdict: True means this stage
            # itself opened one counted connection to the proxy (see
            # _app_client_connections). Removed here rather than at each consumer, so
            # no reader below can accidentally reason about the pipeline's own connect.
            probe_connections = 1 if reachable is True else 0
            client_connections = _app_client_connections(client_connections_raw, reachable)
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
                # What a dead recorder invalidates is the facts IT produces: the
                # flow list, the device-side connection count, the certificate-
                # refusal list. It does NOT invalidate the pre-flight reachability
                # probe - that is measured device-side (_device_reaches_proxy) and
                # reads none of this log - so the probe is the one route fact that
                # still holds here, and the message keeps it rather than disowning
                # the route along with the recorder.
                probe_note = (
                    f" - it reported that the device "
                    f"{'COULD' if reachable else 'could NOT'} reach "
                    f"127.0.0.1:{proxy_port}"
                    if reachable is not None else " - it was unavailable this run"
                )
                device_or_app_cause = (
                    "the capture proxy's log carries no addon marker at all - not "
                    "even the @@ADDON_LOADED@@ line, which is written at import "
                    "before any traffic exists. So the recorder that produces the "
                    "flow list, the device-side connection count and the "
                    "certificate-refusal list never ran: those facts are ABSENT, "
                    "not empty, and the zeros recorded beside them are artifacts "
                    "of a dead recorder rather than observations. This result says "
                    "nothing about the app's traffic or about certificate pinning. "
                    "The one route fact that survives is the pre-flight "
                    "reachability probe, which is measured device-side and reads "
                    "none of this log"
                    + probe_note
                    + ". Check that the Windows-host mitmdump loaded the addon "
                    "and could write its flow log"
                    + (f" - the proxy's own log says: {proxy_log_excerpt}"
                       if proxy_log_excerpt else
                       " - and the proxy's own log is empty too, so it likely "
                       "never started")
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
                # FIX A (part 2). `tls_failed` is UNATTRIBUTED - the parser
                # returns [{host, error}] with no uid, so `len(tls_failed)` counts
                # refusals by ANY process on the device and `refused_hosts` is a
                # mixed bag. The conclusion clause below ("the app rejected the
                # capture CA") is a positive claim about the TARGET, so it may not
                # be sourced from input that cannot name the target. Measured in
                # the A/B run 2026-10-04 (Arm 1): 7 refusals, 6 of them
                # `youtubei.googleapis.com` - Google Play services - and the
                # sentence above printed all 7 as the app's pinning evidence.
                #
                # Attribution is the decider, and it already exists: the verdict
                # computed before the log was read carries `reached`, the
                # uid-attributed answer to "did THIS app reach the proxy"
                # (ADR-0012). When it is True the app demonstrably connected, so
                # the refusal that killed its handshake is the app's and the
                # original narration stands. When it is not, the refusal is
                # recorded and printed but NOT credited to the app.
                #
                # A host allowlist was rejected for the same reason FIX A rejected
                # one: the stage does not know which hosts the app talks to, and
                # Arm 1 shows the app's own refusal sitting in the SAME list as the
                # Play-services ones - any host test reads a mixed bag and would
                # drop the target's real refusal along with the noise.
                refusal_attributed_to_app = (
                    (proxy_attribution_verdict or {}).get("reached") is True
                )
                app_drive_refusals = _app_drive_certificate_refusals(frida_messages)
                if refusal_attributed_to_app:
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
                elif app_drive_refusals:
                    # APPDRIVE1: the app's own report, which needs no attribution.
                    drive_hosts = sorted(
                        {r["host"] for r in app_drive_refusals if r.get("host")})
                    drive_note = (
                        " (" + ", ".join(drive_hosts) + ")" if drive_hosts else ""
                    )
                    device_or_app_cause = (
                        f"no traffic was decrypted, but the capture proxy recorded "
                        f"{len(tls_failed)} client TLS handshake(s) it REFUSED its "
                        f"certificate for{hosts_note} - AND the app's OWN in-process "
                        f"request reported the same refusal from inside the app"
                        f"{drive_note}. That second reading is direct evidence about "
                        "THIS app rather than a proxy-side inference: the connection "
                        "was made by code running in the app's own process, under the "
                        "app's own network security config, and its TLS stack refused "
                        "our CA - the in-app signature of certificate pinning (or a "
                        "custom/limited trust store). The proxy-side refusals on their "
                        "own could not be attributed to the target package; this one "
                        "is the app's own report of its own connection, so it does not "
                        "depend on that attribution. The device->proxy route also "
                        "worked (a refusal requires the connection), so this is NOT a "
                        "wiring failure and NOT app-silence"
                    )
                else:
                    device_or_app_cause = (
                        f"no traffic was decrypted, but the capture proxy recorded "
                        f"{len(tls_failed)} client TLS handshake(s) it REFUSED its "
                        f"certificate for{hosts_note}. The device->proxy route "
                        "worked: a refusal requires the connection, so this is NOT a "
                        "wiring failure. But these refusals could NOT be attributed "
                        "to the target package (the per-uid device-side sampling "
                        "reached no verdict this window), and a refusal by any "
                        "process looks identical proxy-side, so they do NOT "
                        "establish that THIS app rejected the capture CA or that it "
                        "pins its traffic. Re-run with the app's uid attributable, "
                        "or read the refusal hosts against the package's own "
                        "traffic, before treating this as pinning evidence"
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
            # CAPLIVE1: the app's own liveness outranks every reading above it.
            # Each branch above attributes the empty capture to the app's network
            # BEHAVIOUR (it made no request / it stayed off the wire), and not one
            # of those readings is available for a process that was never alive.
            # Applied here rather than as a new branch of that chain so it composes
            # with all of them - including the dead-recorder case, whose facts are
            # about the observer and are likewise silent on the app.
            # What may stand as "the proxy watched the app run"? ONLY evidence
            # that can be about no other process.
            #
            # This used to read `bool(tls_failed) or client_connections > 0`, and
            # `tls_failed` is unattributed: `_count_tls_failed_clients` returns
            # [{host, error}] with no uid, so a refusal by ANY process counts.
            # Measured in the A/B run 2026-10-04 (Arm 1): six of the seven
            # refusals were `youtubei.googleapis.com` - Google Play services, not
            # the target. A target that never started would therefore still
            # suppress `never_ran` as soon as some unrelated process refused our
            # CA, and the empty capture would be blamed on the app's network
            # behaviour rather than on its launch - the exact misattribution this
            # guard exists to prevent, reintroduced through unattributed input.
            #
            # `client_connections` is the app's own count (the stage's pre-flight
            # probe is already subtracted by `_app_client_connections`), and
            # `attribution.reached is True` is the uid-attributed answer to "did
            # THIS app reach the proxy" (ADR-0012) - both can only be the app.
            # A host allowlist was considered and rejected: the stage does not
            # know which hosts the app talks to, and Arm 1 shows the app's own
            # refusal sitting in the SAME list as the Play-services ones, so any
            # host test would still be reading a mixed bag.
            app_evidence_reached_proxy = (
                client_connections > 0
                or (proxy_attribution_verdict or {}).get("reached") is True
            )
            never_ran, liveness_note = _launch_liveness_cause(
                pid_after_launch, pid_after_capture,
                app_seen_running=app_evidence_reached_proxy)
            if never_ran:
                device_or_app_cause = (
                    f"{liveness_note}. Read that FIRST: the readings above are "
                    "about the app's network behaviour, and none of them is "
                    "available for a process that was never alive"
                    + (". The pre-flight probe's routing failure is a separate, "
                       "real fault and still needs fixing on its own"
                       if reachable is False else "")
                )
            elif liveness_note:
                device_or_app_cause = f"{device_or_app_cause} - but {liveness_note}"
            if frida_script_loaded and script_errors:
                # Gated on the ARM, not on `bypass_applied`: a script that crashed
                # before installing anything reports no `bypassed` message, so
                # `bypass_applied` is False - and that is exactly the run this
                # sentence exists to explain. The wording is neutral about which
                # script was loaded, because the same gate covers a drive-only arm.
                error = (
                    "the injected script raised "
                    f"{len(script_errors)} uncaught error(s) "
                    f"({'; '.join(script_errors)}) - it did not complete, so a "
                    "bypass it was installing would not have taken effect, and a "
                    "pinned app's TLS handshakes then fail and yield no decrypted "
                    "flows; fix the script before treating this as a device-wiring "
                    f"or app-silence failure. {device_or_app_cause}"
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
                    "bypass_arm": bypass_arm,
                    "bypass_applied": bypass_applied,
                    # CAPLIVE1: the app's own process liveness, sampled device-side
                    # with `pidof` immediately after the launch and again at the end
                    # of the capture window. >0 is the pid; 0 means the probe RAN and
                    # the app was measurably not running; None means the probe could
                    # not be taken (never "not running" - see _parse_pidof). These
                    # are the only facts here about the APP rather than about an
                    # observer, and they are what keeps a crash-on-launch from being
                    # rendered as the app choosing not to use the network.
                    "app_pid_after_launch": pid_after_launch,
                    "app_pid_after_capture": pid_after_capture,
                    # This window's device-side UI record, in the shape the
                    # ADR-0016 evaluation in cli.py reads (see
                    # _capture_ui_liveness). None = not gathered (un-hooked window)
                    # or not available; never a fabricated reading.
                    "ui_liveness": ui_liveness,
                    # ADR-0011: the single deterministic tap this run made (or the
                    # reason it made none). Recorded unconditionally because a
                    # `tapped: True` here means part of this capture's traffic is
                    # traffic the tool itself caused - the reader must be able to
                    # tell a driven capture from an undriven one, and a refusal
                    # must be visible as the reason the path stayed un-exercised.
                    "ui_drive": ui_drive,
                    # Device-side attribution of the captured traffic (ADR-0012):
                    # which uid held a socket to the capture proxy, and whether the
                    # target app was one of them. `reached` None = not measured.
                    "proxy_attribution": proxy_attribution_verdict,
                    "proxy_client_uids": sorted(proxy_clients["uids"]),
                    "proxy_client_samples": proxy_clients["samples"],
                    "proxy_client_samples_measured": proxy_clients["samples_measured"],
                    # What the launch actually did (verified by its effect, not by am's
                    # exit status - it returns 0 even when it starts nothing) and whether
                    # the app was running during the window at all, which is the premise
                    # the attribution above rests on.
                    "app_launch": launch,
                    "app_target_running": target_running,
                    # Reachability probe (device-side, proxy-independent): how many
                    # client connections reached mitmdump. >0 with 0 flows => device
                    # reached the proxy, app was silent (app-silence, not a wiring
                    # failure); 0 => device never reached the proxy (real failure).
                    "client_connections": client_connections,
                    # The raw count and what was removed, so the arithmetic above is
                    # auditable from the persisted evidence alone.
                    "client_connections_raw": client_connections_raw,
                    "preflight_probe_connections": probe_connections,
                    # The uid that probe ran as, which the attribution excludes from
                    # what it credits to the app (None = could not be read). Recorded
                    # so the exclusion is auditable from the persisted evidence.
                    "preflight_probe_uid": shell_uid,
                    # Certificate refusals this capture observed, from whichever
                    # source this placement writes (see _count_tls_failed_clients).
                    "tls_failed_clients": tls_failed,
                    # Self-describing summary so the raw count above is
                    # not read as a count of facts about the TARGET (the
                    # proxy records refusals with no uid). See _tls_failed_note.
                    "tls_failed_clients_note": _tls_failed_note(tls_failed),
                    # Whether the WSL2 addon reported itself loaded (None on the
                    # native placement, which runs no addon). False means this log
                    # is empty because nothing recorded, not because nothing
                    # happened - and the cause named in `error` says so.
                    "capture_channel_alive": channel_alive,
                    # The Windows mitmdump's own output, bounded. Load-bearing
                    # exactly when the channel above is dead: this is where
                    # mitmproxy says why it recorded nothing.
                    "proxy_log_excerpt": proxy_log_excerpt,
                    # Where the full log lives, so the bounded excerpt above is a pointer
                    # into a file the operator can actually open.
                    "proxy_log_path": str(proxy_log_wsl) if proxy_log_wsl else None,
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
                    # Which Frida injected the bypass this window ran under, so
                    # the observer readings above name their instrument too.
                    "frida_instrument": frida_instrument,
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
                # Same note on the success branch, so its presence never
                # depends on whether flows were captured. See _tls_failed_note.
                "tls_failed_clients_note": _tls_failed_note(tls_failed),
                "flow_summary": [
                    {"host": f.host, "method": f.method, "path": f.path,
                     "status": f.status, "scheme": f.scheme} for f in flows
                ],
                "flows_path": str(flows_path),
                "system_ca": system_ca,
                "proxy": f"127.0.0.1:{proxy_port}",
                "bypass_script": bypass_script,
                "bypass_arm": bypass_arm,
                "bypass_applied": bypass_applied,
                # Same record on the flow-carrying path: a driven capture's traffic
                # is partly traffic the tool's own tap caused, and the report has to
                # be able to say so whichever way the capture turned out.
                "ui_drive": ui_drive,
                # Device-side attribution of the captured traffic (ADR-0012):
                # which uid held a socket to the capture proxy, and whether the
                # target app was one of them. `reached` None = not measured.
                "proxy_attribution": proxy_attribution_verdict,
                "proxy_client_uids": sorted(proxy_clients["uids"]),
                "proxy_client_samples": proxy_clients["samples"],
                "proxy_client_samples_measured": proxy_clients["samples_measured"],
                # What the launch actually did (verified by its effect, not by am's
                # exit status - it returns 0 even when it starts nothing) and whether
                # the app was running during the window at all, which is the premise
                # the attribution above rests on.
                "app_launch": launch,
                "app_target_running": target_running,
                # Same record on the flow-carrying arm: the ADR-0016 evaluation is
                # run against this window whichever way the capture turned out.
                "ui_liveness": ui_liveness,
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
                "frida_instrument": frida_instrument,
            },
        )
        return result
    except Exception as exc:
        # Read the proxy's own log on this path too. It is the path a mitmdump
        # that never came up lands on, so this is where its words matter most -
        # and a programmatic consumer should not have to parse prose out of
        # `error` to get them.
        startup_log = (_proxy_log_excerpt(_read_windows_text(proxy_log_wsl))
                       if proxy_log_wsl else "")
        result = StageResult(
            stage="capture-traffic", status="failed",
            evidence={"reason": "capture exception", "flows_path": str(flows_path),
                      "proxy_log_excerpt": startup_log,
                      "proxy_log_path": str(proxy_log_wsl) if proxy_log_wsl else None,
                      # ADR-0020: a capture that died is when "which Frida was
                      # attached?" gets asked - the same reason the dynamic stage
                      # carries its record on the failure arm. None here means the
                      # exception landed before the Frida arm, which is a
                      # different statement from an attach whose record was lost.
                      "frida_instrument": frida_instrument},
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
        # H1: the raw flow file (full headers + bodies) and the addon's URL log
        # exist only so this stage could extract the summary it reports; they are
        # deleted here, once parsing is done and the proxy is stopped. Recorded
        # on the result either way - a surviving full-traffic file is evidence the
        # operator must see, not something to drop quietly. `flows_path` stays in
        # the evidence as the provenance of WHERE the capture was written.
        # The delete runs even when `result` is None (the try was interrupted by
        # something `except Exception` does not catch, e.g. Ctrl-C during the
        # capture window): the artifact is left behind either way, so the one case
        # with no result to annotate is exactly the case that must not skip the
        # delete - otherwise a full-traffic file survives a run that recorded no
        # evidence at all.
        flows_deleted = _discard_raw_capture(flows_path, log_wsl)
        if result is not None:
            result.evidence["flows_deleted"] = flows_deleted

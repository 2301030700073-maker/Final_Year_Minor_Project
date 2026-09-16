"""Wrapper-contract + pure-parser tests for the mitmproxy capture stage.

The pure logic (_parse_flow_detail) is unit-tested with fixture text from a real
mitmdump flow_detail=2 run. The live capture (mitmdump reachable, device routed,
CA trusted, traffic actually decrypts) is NOT mocked - it is validated by the E2E
run whose report's Captured Traffic section is the proof (project principle 3).
These tests only cover the no-tool paths and the exact adb/proxy command shapes.
"""

import subprocess
from pathlib import Path

import pytest

from dynamic import mitmproxy_capture
from dynamic import device
from dynamic import pass_through_proxy

FIXTURE_DETAIL = """\
client connect 127.0.0.1:38908
127.0.0.1:38908: GET https://example.com/ HTTP/2.0
    user-agent: curl/8.5.0
 << HTTP/2.0 200 OK 559b
server connect example.com:443
127.0.0.1:38909: GET https://api.example.com/v1/health HTTP/1.1
 << HTTP/1.1 204 No Content 0b
client disconnect 127.0.0.1:38908
127.0.0.1:38910: CONNECT example.org:443 HTTP/1.1
client disconnect 127.0.0.1:38910
"""


def test_parse_flow_detail_extracts_host_method_path_status():
    flows = mitmproxy_capture._parse_flow_detail(FIXTURE_DETAIL)
    # CONNECT line + lifecycle noise ignored -> only two real flows.
    assert len(flows) == 2
    first, second = flows
    assert first.host == "example.com"
    assert first.method == "GET"
    assert first.path == "/"
    assert first.status == "200"
    assert second.host == "api.example.com"
    assert second.method == "GET"
    assert second.path == "/v1/health"
    assert second.status == "204"


def test_parse_flow_detail_preserves_query_string():
    # The query string is part of the request target the app put on the wire - an
    # auth token / session id / PII sent as a URL query parameter is exactly the
    # sensitive-data-in-transit a traffic capture exists to surface, so it must not
    # be silently dropped from the recorded path. The fragment (client-side, never
    # sent to a server) is deliberately NOT part of a captured request target.
    text = (
        "127.0.0.1:1: GET https://api.example.com/v1/users?token=SECRET&id=5 HTTP/2.0\n"
        " << HTTP/2.0 200 OK 12b\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert len(flows) == 1
    assert flows[0].host == "api.example.com"
    assert flows[0].path == "/v1/users?token=SECRET&id=5"
    assert flows[0].status == "200"


def test_parse_flow_detail_captures_transport_scheme():
    # A cleartext http:// flow and a proxy-decrypted https:// flow are captured as
    # DISTINCT transports so the report never renders a cleartext HTTP request as
    # decrypted-HTTPS pinning-defeat proof (principle 3 / ADR-0006). scheme is
    # lowercased at parse time.
    text = (
        "127.0.0.1:1: GET https://api.example.com/v1/me HTTP/2.0\n"
        " << HTTP/2.0 200 OK 12b\n"
        "127.0.0.1:2: POST http://analytics.example.com/track?uid=SECRET HTTP/1.1\n"
        " << HTTP/1.1 200 OK 0b\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert len(flows) == 2
    assert flows[0].scheme == "https"
    assert flows[1].scheme == "http"
    # The two flows in FIXTURE_DETAIL are both HTTPS.
    fixture = mitmproxy_capture._parse_flow_detail(FIXTURE_DETAIL)
    assert [f.scheme for f in fixture] == ["https", "https"]


def test_parse_flow_detail_malformed_url_yields_empty_scheme():
    # A URL that fails to parse (malformed IPv6 literal -> urlsplit raises
    # ValueError) hits the except path: the request is still recorded (never
    # silently dropped - principle 3), but with an empty scheme so it can never be
    # counted as a decrypted-HTTPS flow and never inflate a pinning-defeat claim.
    text = (
        "127.0.0.1:1: GET http://[::1/broken HTTP/1.1\n"
        " << HTTP/1.1 200 OK 0b\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert len(flows) == 1
    assert flows[0].scheme == ""
    assert flows[0].host == ""
    assert flows[0].method == "GET"


def test_parse_flow_detail_reads_the_wsl2_addon_reason_phraseless_response(tmp_path):
    # PRODUCER <-> CONSUMER format contract. On WSL2 the flow log is written by the
    # baked-in mitmdump addon (_write_windows_addon / _ADDON_TEMPLATE), NOT by a
    # native flow_detail=2 run. The addon writes its response line WITHOUT a reason
    # phrase - " << HTTP/1.1 <status>", exactly three tokens - whereas every native
    # fixture in this file carries one (" << HTTP/2.0 200 OK 559b", >=4 tokens).
    # _parse_flow_detail reads the status from tokens[2], correct for BOTH shapes,
    # but no other test exercises the reason-phraseless 3-token line: a future edit
    # assuming a reason phrase is always present (e.g. tightening `len(tokens) >= 3`
    # to `>= 4`) would silently zero the status on EVERY WSL2 flow with the whole
    # suite still green. Pin the contract from both ends.
    addon = tmp_path / "addon.py"
    mitmproxy_capture._write_windows_addon(addon, r"C:\Users\Public\f.log")
    rendered = addon.read_text()
    # (1) Producer: the baked client prefix and the reason-phraseless response
    # marker the parser depends on are the exact format the addon emits.
    assert "127.0.0.1:1: " in rendered
    assert " << HTTP/1.1 " in rendered

    # (2) Consumer: the addon's exact output round-trips. The first flow got a
    # response (3-token status line, no reason phrase); the second errored with no
    # response (_emit writes only the request line -> flushed with status="").
    addon_output = (
        "127.0.0.1:1: GET https://m.example.com/track?uid=42 HTTP/1.1\n"
        " << HTTP/1.1 200\n"
        "127.0.0.1:1: POST https://m.example.com/beacon HTTP/1.1\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(addon_output)
    assert len(flows) == 2
    assert flows[0].host == "m.example.com"
    assert flows[0].method == "GET"
    assert flows[0].path == "/track?uid=42"
    assert flows[0].status == "200"      # extracted from the reason-phraseless line
    assert flows[1].host == "m.example.com"
    assert flows[1].method == "POST"
    assert flows[1].path == "/beacon"
    assert flows[1].status == ""         # error flow: request seen, no response paired


def test_parse_flow_detail_captures_webdav_caldav_methods_not_only_the_rfc9110_core():
    # A flow's method is recognised via `tok in _METHODS`; a method OUTSIDE that
    # set makes the parser find no method token and DROP the whole request line
    # (method is None -> continue). The set must therefore carry the WebDAV
    # (RFC 4918) / CalDAV (RFC 4791) / versioning REPORT (RFC 3253) verbs a real
    # Android sync client emits, not just the RFC 9110 core (GET/POST/...), or
    # those flows vanish silently. On the WSL2 addon path this is verdict-flipping:
    # the addon's response() hook already WITNESSED and logged the flow, so dropping
    # it can leave `flows` empty and make run_capture_stage report a false `failed`
    # "no flows captured" for a capture that genuinely succeeded (principle 3).
    for verb in ("PROPFIND", "PROPPATCH", "MKCOL", "COPY", "MOVE",
                 "LOCK", "UNLOCK", "REPORT", "MKCALENDAR"):
        assert verb in mitmproxy_capture._METHODS, f"{verb} missing from _METHODS"

    # Native flow_detail=2 shape: a CalDAV sync alongside an ordinary GET. Before
    # the widening the PROPFIND line was dropped and only the GET survived.
    native = (
        "127.0.0.1:38908: PROPFIND https://dav.example.com/calendars/?export=1 HTTP/2.0\n"
        "    depth: 1\n"
        " << HTTP/2.0 207 Multi-Status 812b\n"
        "127.0.0.1:38910: GET https://api.example.com/ping HTTP/2.0\n"
        " << HTTP/2.0 200 OK 12b\n"
    )
    nf = mitmproxy_capture._parse_flow_detail(native)
    assert [(f.method, f.host, f.status) for f in nf] == [
        ("PROPFIND", "dav.example.com", "207"),
        ("GET", "api.example.com", "200"),
    ]
    assert nf[0].path == "/calendars/?export=1"   # query string preserved as elsewhere

    # WSL2 addon shape (request + reason-phraseless response written together): a
    # WebDAV file client. Before the widening BOTH flows were dropped -> [] -> the
    # stage would have reported a false `failed` for a witnessed, successful capture.
    addon_output = (
        "127.0.0.1:1: REPORT https://dav.example.com/cal/ HTTP/1.1\n"
        " << HTTP/1.1 207\n"
        "127.0.0.1:1: MKCOL https://dav.example.com/newcol/ HTTP/1.1\n"
        " << HTTP/1.1 201\n"
    )
    af = mitmproxy_capture._parse_flow_detail(addon_output)
    assert [(f.method, f.host, f.status) for f in af] == [
        ("REPORT", "dav.example.com", "207"),
        ("MKCOL", "dav.example.com", "201"),
    ]


def test_parse_flow_detail_ignores_connect_and_lifecycle_lines():
    # The CONNECT line (opaque host:port, not a decrypted flow) and the
    # connect/disconnect noise must never surface as flows.
    flows = mitmproxy_capture._parse_flow_detail(FIXTURE_DETAIL)
    assert all(f.host != "example.org" for f in flows)


def test_parse_flow_detail_flushes_request_without_response():
    # A request that never got a response line (e.g. failed handshake, capture
    # window closed) is still surfaced with an empty status - honest partial
    # evidence, not a dropped flow.
    text = "127.0.0.1:38911: GET https://dropped.example/ HTTP/2.0\n"
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert len(flows) == 1
    assert flows[0].host == "dropped.example"
    assert flows[0].status == ""


def test_parse_flow_detail_empty_and_malformed_input():
    assert mitmproxy_capture._parse_flow_detail("") == []
    assert mitmproxy_capture._parse_flow_detail(
        "client connect 127.0.0.1:1\n<< HTTP/2.0 200 OK 5b\n") == []


def test_parse_flow_detail_multiple_requests_one_response_keeps_order():
    # Two requests with only one response line: the first request (whose
    # response attached) is emitted; the pending second request is flushed at
    # the end. Neither is fabricated.
    text = (
        "127.0.0.1:1: GET https://a.example/one HTTP/2.0\n"
        " << HTTP/2.0 200 OK 1b\n"
        "127.0.0.1:2: GET https://b.example/two HTTP/2.0\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert [f.host for f in flows] == ["a.example", "b.example"]
    assert flows[0].status == "200"
    assert flows[1].status == ""


def test_parse_flow_detail_header_value_never_fabricates_a_flow():
    # Regression: a request/response HEADER VALUE can contain a method token and
    # " HTTP/" (Referer/Via/Link carrying "GET ... HTTP/1.1"). Headers are INDENTED
    # beneath the request line; the request line is always at column 0. Matching on
    # " HTTP/" after strip() discarded that indentation fabricated a phantom flow
    # from the header - inflating flows_count and risking a fake `success` proof on
    # an all-header, zero-real-request capture (principle 3). Only the genuine
    # column-0 request line may parse.
    text = (
        "127.0.0.1:38908: GET https://real.example/ HTTP/2.0\n"
        "    referer: https://real.example/s?q=GET+HTTP/1.1+guide\n"
        " << HTTP/2.0 200 OK 559b\n"
        "    via: 1.1 GET-proxy HTTP/1.1\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert len(flows) == 1
    assert flows[0].host == "real.example"
    assert flows[0].path == "/"
    assert flows[0].status == "200"


def test_parse_flow_detail_all_header_noise_yields_no_flow():
    # The dangerous case in isolation: NO real request line, only indented header
    # lines that happen to carry "METHOD ... HTTP/". Must yield zero flows, so a
    # capture that decrypted nothing can never be dressed up as a success.
    text = (
        "    referer: https://x/?q=POST+HTTP/1.1\n"
        "    via: 1.1 GET-node HTTP/1.1\n"
    )
    assert mitmproxy_capture._parse_flow_detail(text) == []


def test_parse_flow_detail_back_to_back_requests_before_any_response():
    # Regression guard: two request lines arrive with NO response line between
    # them (HTTP/2 multiplexing / connection reuse can interleave requests ahead
    # of any `<<` on native flow_detail=2). The first request was captured for
    # real - overwriting `pending` with the second would SILENTLY drop it
    # (principle 3: never a silent loss). Both must survive; the first stays
    # response-less (status "") rather than borrowing the second's response.
    text = (
        "127.0.0.1:1: GET https://first.example/a HTTP/2.0\n"
        "127.0.0.1:2: POST https://second.example/b HTTP/2.0\n"
        " << HTTP/2.0 201 Created 3b\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert [f.host for f in flows] == ["first.example", "second.example"]
    assert flows[0].method == "GET"
    assert flows[0].path == "/a"
    assert flows[0].status == ""          # never fabricated from the 201 below
    assert flows[1].method == "POST"
    assert flows[1].status == "201"       # the response pairs with the 2nd only


def test_parse_flow_detail_three_requests_no_responses_all_kept():
    # The overwrite bug compounds: N back-to-back requests with no responses must
    # yield N flows, not just the last. Before the flush-on-new-request fix this
    # returned a single flow.
    text = (
        "127.0.0.1:1: GET https://one.example/ HTTP/2.0\n"
        "127.0.0.1:2: GET https://two.example/ HTTP/2.0\n"
        "127.0.0.1:3: GET https://three.example/ HTTP/2.0\n"
    )
    flows = mitmproxy_capture._parse_flow_detail(text)
    assert [f.host for f in flows] == ["one.example", "two.example", "three.example"]
    assert all(f.status == "" for f in flows)


# --- reachability probe: @@CLIENT_CONNECT@@ marker counting --------------------

def test_count_client_connections_counts_markers():
    text = (
        "@@CLIENT_CONNECT@@\n"
        "127.0.0.1:1: GET https://a.example/ HTTP/2.0\n"
        " << HTTP/2.0 200 OK 1b\n"
        "@@CLIENT_CONNECT@@\n"
    )
    assert mitmproxy_capture._count_client_connections(text) == 2


def test_count_client_connections_zero_when_absent():
    # No connection line and no marker -> 0 (the genuine device-never-reached
    # signal). A bare flow with no lifecycle line, and empty input, both count 0.
    text = (
        "127.0.0.1:1: GET https://a.example/ HTTP/2.0\n"
        " << HTTP/2.0 200 OK 1b\n"
    )
    assert mitmproxy_capture._count_client_connections(text) == 0
    assert mitmproxy_capture._count_client_connections("") == 0


def test_count_client_connections_counts_native_flow_detail_lifecycle_lines():
    # Native Linux runs plain mitmdump (no addon); its flow_detail=2 stdout carries
    # its own un-indented `client connect <peer>` line per connection instead of the
    # WSL2 addon's @@CLIENT_CONNECT@@ marker. The reachability probe MUST count those
    # too - counting only the marker made this always 0 on native, so a native
    # zero-flow capture where the device DID connect was mis-reported as "device
    # never reached the proxy" (report generator's reachability sentence + cli's
    # capture reclassification both branch on this count). FIXTURE_DETAIL is real
    # native output with exactly one client-connect line.
    assert mitmproxy_capture._count_client_connections(FIXTURE_DETAIL) == 1
    # Two native connections; neither `client disconnect` nor `server connect` may
    # be miscounted as a client connection.
    text = (
        "client connect 127.0.0.1:5001\n"
        "server connect example.com:443\n"
        "client disconnect 127.0.0.1:5001\n"
        "client connect 127.0.0.1:5002\n"
        "client disconnect 127.0.0.1:5002\n"
    )
    assert mitmproxy_capture._count_client_connections(text) == 2
    # An INDENTED header value that merely contains the substring is never a
    # connection (same un-indented discipline the request-line parser uses).
    indented = "    x-note: client connect happened upstream\n"
    assert mitmproxy_capture._count_client_connections(indented) == 0


def test_connect_marker_never_counted_as_a_flow():
    # The reachability marker must be reachability-only: it carries no request
    # line, so it must never surface as a decrypted flow (or it would fabricate
    # a capture that never happened - principle 3).
    text = (
        "@@CLIENT_CONNECT@@\n"
        "@@CLIENT_CONNECT@@\n"
    )
    assert mitmproxy_capture._parse_flow_detail(text) == []
    assert mitmproxy_capture._count_client_connections(text) == 2


def test_connect_markers_and_flows_coexist_independently():
    # A run where the device connected twice and one request decrypted: 1 flow,
    # 2 connections, counted independently and neither contaminating the other.
    text = (
        "@@CLIENT_CONNECT@@\n"
        "127.0.0.1:1: GET https://a.example/ HTTP/2.0\n"
        " << HTTP/2.0 200 OK 1b\n"
        "@@CLIENT_CONNECT@@\n"
    )
    assert len(mitmproxy_capture._parse_flow_detail(text)) == 1
    assert mitmproxy_capture._count_client_connections(text) == 2


def test_run_capture_stage_fails_loudly_when_mitmdump_missing(monkeypatch, tmp_path):
    # NFR-7: no silent no-op. Missing mitmdump -> a failed StageResult carrying
    # the install guidance, not an empty success.
    # The reference test box is WSL2 where _on_wsl2() is True; this test
    # exercises the native-Linux placement, so pin detection off.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: None)
    result = mitmproxy_capture.run_capture_stage("emulator-5554", "com.example.app", str(tmp_path / "out"))
    assert result.stage == "capture-traffic"
    assert result.status == "failed"
    assert "mitmdump" in result.evidence["reason"]


def test_run_capture_stage_success_records_real_flows(monkeypatch, tmp_path):
    # Happy-path wrapper contract: mitmdump present, device routed through it,
    # app launched, and real flow_detail=2 stdout -> a success StageResult with
    # the parsed flows. All adb/openssl/mitmdump subprocesses are faked.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: "/usr/bin/mitmdump")
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)

    class FakeProc:
        def __init__(self, *a, **k):
            pass

        def communicate(self, timeout=None):
            return FIXTURE_DETAIL, ""

        def terminate(self):
            pass

        def kill(self):
            pass

    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen", FakeProc)
    # device helpers already covered by test_device.py; stub them to avoid
    # touching real adb/openssl.
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "mitmproxy-ca-cert.pem")
    monkeypatch.setattr(device, "push_system_ca", lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(mitmproxy_capture, "_launch_app", lambda serial, package: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)

    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1,
    )
    assert result.status == "success"
    assert result.evidence["flows_count"] == 2
    assert result.evidence["hosts"] == ["api.example.com", "example.com"]
    assert result.evidence["flows_path"].endswith(".mitm")
    # Transport scheme round-trips into the stored evidence so the report can tell
    # a proxy-decrypted HTTPS flow from a cleartext HTTP one (principle 3). Both
    # FIXTURE_DETAIL flows are HTTPS.
    assert [f["scheme"] for f in result.evidence["flow_summary"]] == ["https", "https"]


def test_run_capture_stage_fails_honestly_when_no_flows(monkeypatch, tmp_path):
    # A zero-flow capture must report `failed` with the reason, never an empty
    # "success" (principle 3: no fabricated flows).
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: "/usr/bin/mitmdump")
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)

    class FakeProc:
        def __init__(self, *a, **k):
            pass

        def communicate(self, timeout=None):
            return "client connect 127.0.0.1:1\n", ""

        def terminate(self):
            pass

        def kill(self):
            pass

    monkeypatch.setattr(mitmproxy_capture.subprocess, "run",
                        lambda *a, **k: subprocess.CompletedProcess(a[0], 0))
    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen", FakeProc)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "mitmproxy-ca-cert.pem")
    monkeypatch.setattr(device, "push_system_ca", lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(mitmproxy_capture, "_launch_app", lambda serial, package: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)

    result = mitmproxy_capture.run_capture_stage("emulator-5554", "com.example.app", tmp_path)
    assert result.status == "failed"
    assert result.evidence["reason"] == "no flows captured"


def test_on_wsl2_detects_microsoft_marker(monkeypatch):
    monkeypatch.setattr(
        mitmproxy_capture.Path, "read_text",
        lambda self, **kw: "Linux version 6.6.87.2-microsoft-standard-WSL2")
    assert mitmproxy_capture._on_wsl2() is True
    monkeypatch.setattr(
        mitmproxy_capture.Path, "read_text",
        lambda self, **kw: "Linux version 6.8.0 generic")
    assert mitmproxy_capture._on_wsl2() is False


def test_on_wsl2_false_when_proc_version_unreadable(monkeypatch):
    def boom(self, **kw):
        raise OSError("no such file")

    monkeypatch.setattr(mitmproxy_capture.Path, "read_text", boom)
    assert mitmproxy_capture._on_wsl2() is False


def test_write_windows_addon_bakes_log_path(tmp_path):
    addon = tmp_path / "addon.py"
    mitmproxy_capture._write_windows_addon(addon, r"C:\Users\Public\f.log")
    text = addon.read_text()
    assert r"C:\Users\Public\f.log" in text
    assert "def response" in text
    assert "def error" in text


def _launch_env(monkeypatch, calls, pids):
    """A fake adb for the launch sequence: every command succeeds silently, and
    `_app_pid` reports the next entry of `pids` (the last one repeating).

    `_app_pid` is overridden here EXPLICITLY even though the autouse fixture
    already stubs it: that stub always reports a running process, and varying
    liveness per launch form is the whole subject of these tests."""
    monkeypatch.setattr(mitmproxy_capture.device, "_require_adb", lambda: "/bin/adb")

    def fake_run(cmd, **kwargs):
        calls.append(list(cmd))
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
    monkeypatch.setattr(mitmproxy_capture.subprocess, "run", fake_run)
    # One sample per form: these tests are about which FORM is chosen, and the
    # poll that removes the launch race is exercised on its own below.
    monkeypatch.setattr(mitmproxy_capture, "_LAUNCH_PID_TIMEOUT", 0.0)
    seq = list(pids)
    monkeypatch.setattr(mitmproxy_capture, "_app_pid",
                        lambda serial, package: seq.pop(0) if len(seq) > 1 else seq[0])


def test_launch_app_force_stops_first_then_verifies_each_form(monkeypatch):
    # An already-running app (e.g. left open by the dynamic stage) fires no fresh
    # SDK/API traffic on a bare am start, so the capture must cold-start it:
    # force-stop comes first, and that order matters.
    calls = []
    _launch_env(monkeypatch, calls, [0])
    rec = mitmproxy_capture._launch_app("emulator-5554", "com.example.app")
    assert "force-stop" in calls[0]
    assert any("resolve-activity" in c for c in calls)
    # No exit status from am start is a guard (it returns 0 while starting
    # nothing), so the `-p` intent is not trusted alone: monkey follows it.
    launches = [c for c in calls if "start" in c or "monkey" in c]
    assert "-p" in launches[0] and "monkey" in launches[1]
    # Nothing ran, and that is recorded as a measured absence, not as a launch.
    assert rec["launched_by"] is None and rec["pid"] == 0
    assert [a["form"] for a in rec["attempts"]] == ["package MAIN/LAUNCHER intent",
                                                    "monkey launcher"]


def test_launch_app_stops_at_the_first_form_that_leaves_a_process(monkeypatch):
    """A second launch would not be the same capture, so the first form that
    produces a pid ends the sequence."""
    calls = []
    _launch_env(monkeypatch, calls, [4711])
    rec = mitmproxy_capture._launch_app("emulator-5554", "com.example.app")
    assert rec["pid"] == 4711
    assert rec["launched_by"] == "package MAIN/LAUNCHER intent"
    assert len(rec["attempts"]) == 1
    assert not any("monkey" in c for c in calls)


def test_launch_app_moves_to_the_next_form_when_a_form_leaves_nothing(monkeypatch):
    """The ladder: the first form leaves no process (recorded as pid 0, a measured
    absence), the second produces one and wins. Without this, the `-p` intent -
    the form measured to start nothing on the reference emulator - would be the
    only thing ever tried."""
    calls = []
    _launch_env(monkeypatch, calls, [0, 4711])
    rec = mitmproxy_capture._launch_app("emulator-5554", "com.example.app")
    assert [a["form"] for a in rec["attempts"]] == ["package MAIN/LAUNCHER intent",
                                                    "monkey launcher"]
    assert [a["pid"] for a in rec["attempts"]] == [0, 4711]
    assert rec["launched_by"] == "monkey launcher" and rec["pid"] == 4711


def test_launch_app_credits_the_form_that_actually_started_the_app(monkeypatch):
    """Measured on the reference emulator: the resolved-component form started the
    app - its own output shows `Starting: Intent { cmp=.../.MainActivity }` and no
    error - while the pid sample taken in the same breath read 0. The ladder
    concluded that form had failed, tried another, and credited the launch to the
    form whose output carried `Error: Activity not started, unable to resolve
    Intent`. Polling to a bound is what makes the record match what happened, and
    it is also what stops a needless second launch of an app already running."""
    calls = []
    _launch_env(monkeypatch, calls, [0, 14037])  # the race: 0 now, alive a moment later
    monkeypatch.setattr(mitmproxy_capture, "_LAUNCH_PID_TIMEOUT", 0.05)
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)
    monkeypatch.setattr(mitmproxy_capture, "_resolve_launch_component",
                        lambda serial, package: "com.example.app/.MainActivity")
    rec = mitmproxy_capture._launch_app("emulator-5554", "com.example.app")
    assert rec["launched_by"] == "resolved component" and rec["pid"] == 14037
    assert [a["form"] for a in rec["attempts"]] == ["resolved component"]
    assert not any("monkey" in c for c in calls)


def test_launch_app_keeps_the_am_error_when_no_form_starts_anything(monkeypatch):
    """The measured failure mode: am prints `Error: Activity not started, unable
    to resolve Intent` and exits 0. `check=True` cannot see it, so the failure is
    caught by its effect and the error text is kept for the record - a launch that
    started nothing must never be silent."""
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(list(cmd))
        if "pidof" in cmd:
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
        return subprocess.CompletedProcess(
            cmd, 0, stdout="", stderr="Starting: Intent { act=MAIN }\nError: Activity "
                                     "not started, unable to resolve Intent { pkg=x }")
    monkeypatch.setattr(mitmproxy_capture.device, "_require_adb", lambda: "/bin/adb")
    monkeypatch.setattr(mitmproxy_capture.subprocess, "run", fake_run)
    monkeypatch.setattr(mitmproxy_capture, "_app_pid", lambda serial, package: 0)
    monkeypatch.setattr(mitmproxy_capture, "_LAUNCH_PID_TIMEOUT", 0.0)
    rec = mitmproxy_capture._launch_app("emulator-5554", "com.example.app")
    assert rec["launched_by"] is None and rec["pid"] == 0
    assert all(a["issued"] for a in rec["attempts"])
    assert any("unable to resolve Intent" in a["output"] for a in rec["attempts"])


def test_run_capture_stage_does_not_call_a_never_launched_app_absent(monkeypatch, tmp_path):
    """The end-to-end defect this guard closes: a capture in which the app never
    started was rendered as "this app did NOT reach the proxy", because the
    absence of its uid from the socket table was read without asking whether the
    app was there to be absent from it."""
    from dynamic import proxy_attribution as pa
    monkeypatch.setattr(pa, "sample_proxy_clients_during",
                        lambda serial, proxy_port, seconds, interval=2.0, adb=None:
                        {"uids": {999}, "samples": 4, "samples_measured": 4,
                         "measured": True, "errors": []})
    monkeypatch.setattr(pa, "package_uid_map",
                        lambda serial, adb=None: {10181: ["com.example.app"]})
    result, _ = _empty_capture_run(monkeypatch, tmp_path, 0, capture_window=1.0)
    ev = result.evidence
    assert ev["app_target_running"] is False
    assert "app_launch" in ev
    assert ev["proxy_attribution"]["reached"] is None
    assert "was not running during the capture window" in ev["proxy_attribution"]["reason"]


def test_start_windows_mitmdump_builds_detached_start_process(monkeypatch):
    # Start-Process must take NO redirect of its own: measured on the reference
    # host, -RedirectStandardOutput makes it block for the child's whole lifetime
    # (14.9 s for a 15 s child, against 320 ms without) and mitmdump runs for the
    # entire capture window, so the stage would hang. The proxy's own output is
    # still needed, so cmd.exe does the redirecting inside the child - measured
    # at 279 ms, and mitmdump stays findable by name for _stop_windows_mitmdump.
    captured = {}

    def fake_run(cmd, **kwargs):
        captured["cmd"] = cmd
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(mitmproxy_capture.subprocess, "run", fake_run)
    mitmproxy_capture._start_windows_mitmdump(
        "C:\\x\\mitmdump.exe", "C:\\Users\\Public\\1-conf",
        "C:\\Users\\Public\\1-addon.py", "C:\\Users\\Public\\1.mitm", 8080,
        "C:\\Users\\Public\\1-mitmdump.log")
    ps = captured["cmd"][-1]
    assert "Start-Process" in ps
    assert "-ArgumentList" in ps
    assert "cmd.exe" in ps
    assert "confdir=C:\\Users\\Public\\1-conf" in ps
    assert "-s C:\\Users\\Public\\1-addon.py" in ps
    assert "-p 8080" in ps
    assert "-RedirectStandardOutput" not in ps
    assert "-RedirectStandardError" not in ps
    assert "> C:\\Users\\Public\\1-mitmdump.log 2>&1" in ps
    # Without the unbuffered prefix this file stays 0 bytes for the whole capture
    # (measured), which is indistinguishable from a working redirect.
    assert 'set "PYTHONUNBUFFERED=1" &&' in ps


def test_cmd_quote_only_quotes_where_it_is_needed():
    # cmd.exe splits a bare command line on spaces where Start-Process
    # -ArgumentList did not, so a path with a space has to be quoted - and one
    # without must stay unquoted, or the launch shape changes for every run.
    assert mitmproxy_capture._cmd_quote(r"C:\Users\Public\x.py") == r"C:\Users\Public\x.py"
    assert mitmproxy_capture._cmd_quote(r"C:\Program Files\x.py") == r'"C:\Program Files\x.py"'


def test_proxy_log_excerpt_keeps_both_ends_of_a_traceback():
    # Measured on the real host: mitmproxy's head names the script it failed to
    # load, its tail carries the exception line that explains the failure and the
    # line saying the process exited. A head-only cut dropped exactly the half an
    # operator needs, so both ends are kept.
    assert mitmproxy_capture._proxy_log_excerpt("") == ""
    assert mitmproxy_capture._proxy_log_excerpt("a\n\n  b  \n") == "a | b"
    long = mitmproxy_capture._proxy_log_excerpt("x" * 900)
    assert len(long) == 401 and "\u2026" in long

    real = ("[16:34:55.931] Loading script C:\\Users\\Public\\1-addon.py\n"
            "[16:34:55.932] error in script C:\\Users\\Public\\1-addon.py\n"
            "Traceback (most recent call last):\n" + "  frame line\n" * 40 +
            "SyntaxError: invalid syntax\n"
            "[16:34:55.934] HTTP(S) proxy listening at *:8081.\n"
            "Error logged during startup, exiting...")
    ex = mitmproxy_capture._proxy_log_excerpt(real)
    assert len(ex) <= 401
    assert "error in script" in ex          # head: WHICH script failed
    assert "SyntaxError" in ex              # tail: WHY it failed
    assert "exiting" in ex                  # tail: that the process then exited


def test_exception_path_evidence_carries_the_proxy_log(monkeypatch, tmp_path):
    # The startup-failure path is where the proxy log matters most, so it is
    # recorded on evidence too - not only quoted inside the prose of `error`.
    def boom(port, timeout=0, log_path=None):
        raise RuntimeError("Windows-host mitmdump did not start listening on port 8081")
    _wsl2_empty_stubs(monkeypatch, log_text="", reachable=None)
    monkeypatch.setattr(mitmproxy_capture, "_wait_windows_listening", boom)
    monkeypatch.setattr(mitmproxy_capture, "_read_windows_text",
                        lambda path: "error in script X\nSyntaxError: invalid syntax")
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.evidence["reason"] == "capture exception"
    assert "SyntaxError" in result.evidence["proxy_log_excerpt"]
    assert result.evidence["proxy_log_path"].endswith("-mitmdump.log")


def test_wsl2_dead_channel_quotes_the_proxys_own_log(monkeypatch, tmp_path):
    # Capturing the proxy's output is only worth it if its words reach the
    # operator: they are where mitmproxy says WHY nothing was recorded.
    _wsl2_empty_stubs(monkeypatch, log_text="", reachable=False)
    monkeypatch.setattr(
        mitmproxy_capture, "_read_windows_text",
        lambda path: "in script C:\\Users\\Public\\1-addon.py:1 '(' was never closed")
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.evidence["capture_channel_alive"] is False
    assert "was never closed" in result.error
    assert result.evidence["proxy_log_excerpt"].startswith("in script")


def test_dead_channel_rung_keeps_the_probe_that_does_not_read_that_log(monkeypatch, tmp_path):
    # A dead recorder invalidates the facts IT produces (the flow list, the
    # connection count, the refusal list). The pre-flight reachability probe is
    # measured device-side and reads none of that, so it survives a dead channel
    # - and the message must keep it instead of disowning the route with the log.
    _wsl2_empty_stubs(monkeypatch, log_text="", reachable=True)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.evidence["capture_channel_alive"] is False
    assert "never ran" in result.error
    assert "COULD reach" in result.error
    assert result.evidence["device_reached_proxy_preflight"] is True


def test_dead_channel_rung_still_reports_a_down_probe_as_down(monkeypatch, tmp_path):
    # The probe is kept, so a probe that failed must be reported as failed rather
    # than softened into the generic "nothing is known about the route".
    _wsl2_empty_stubs(monkeypatch, log_text="", reachable=False)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert "could NOT reach" in result.error
    assert "adb reverse" not in result.error


def test_windows_listen_failure_quotes_the_proxys_own_output(monkeypatch):
    # A mitmproxy script that will not load is FATAL: measured on the real host it
    # binds the port, logs "Error logged during startup, exiting..." and is gone
    # before the probe runs. The operator must get mitmproxy's own traceback, not
    # only the symptom the probe can see.
    monkeypatch.setattr(pass_through_proxy, "_probe_windows_listening",
                        lambda port, timeout: False)
    monkeypatch.setattr(
        mitmproxy_capture, "_read_windows_text",
        lambda path: "Loading script X\n error in script X\n SyntaxError: invalid syntax")
    with pytest.raises(RuntimeError) as exc:
        mitmproxy_capture._wait_windows_listening(8081, log_path="/mnt/c/x.log")
    assert "did not start listening on port 8081" in str(exc.value)
    assert "SyntaxError" in str(exc.value)


def test_windows_listen_failure_says_so_when_the_proxy_log_is_empty(monkeypatch):
    monkeypatch.setattr(pass_through_proxy, "_probe_windows_listening",
                        lambda port, timeout: False)
    monkeypatch.setattr(mitmproxy_capture, "_read_windows_text", lambda path: "")
    with pytest.raises(RuntimeError) as exc:
        mitmproxy_capture._wait_windows_listening(8081, log_path="/mnt/c/x.log")
    assert "never launched" in str(exc.value)


def test_startup_failure_cause_reaches_the_branch_that_renders_it(monkeypatch, tmp_path):
    # End of the chain: this path's reason is "capture exception", which IS the
    # branch that renders capture_error - so mitmproxy's own words reach a human
    # instead of stopping at the StageResult. (The template's rendering of
    # capture_error in that branch is pinned by the crashed-capture report test.)
    from report.generator import _capture_summary

    def boom(port, timeout=0, log_path=None):
        raise RuntimeError("Windows-host mitmdump did not start listening on port 8081"
                           " - its own output says: error in script X | SyntaxError")
    _wsl2_empty_stubs(monkeypatch, log_text="", reachable=None)
    monkeypatch.setattr(mitmproxy_capture, "_wait_windows_listening", boom)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.status == "failed"
    assert result.evidence["reason"] == "capture exception"
    cs = _capture_summary([result])
    assert cs["capture_errored"] is True
    assert "SyntaxError" in cs["capture_error"]


def test_wsl2_dead_channel_says_so_when_the_proxy_log_is_empty_too(monkeypatch, tmp_path):
    _wsl2_empty_stubs(monkeypatch, log_text="", reachable=False)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.evidence["proxy_log_excerpt"] == ""
    assert "never started" in result.error


def test_run_capture_stage_wsl2_records_real_flows(monkeypatch, tmp_path):
    # On WSL2 the stage must launch the Windows-host mitmdump, read its
    # redirected flow_detail log, and record the real decrypted flows.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: True)
    monkeypatch.setattr(mitmproxy_capture, "_windows_mitmdump",
                        lambda: "C:\\x\\mitmdump.exe")
    monkeypatch.setattr(pass_through_proxy, "ensure_internet", lambda *a, **k: None)
    monkeypatch.setattr(pass_through_proxy, "is_listening", lambda *a, **k: True)
    monkeypatch.setattr(mitmproxy_capture, "_prepare_windows_confdir",
                        lambda confdir, dest: "C:\\Users\\Public\\x-conf")
    monkeypatch.setattr(mitmproxy_capture, "_write_windows_addon",
                        lambda path, log_win: path)
    monkeypatch.setattr(mitmproxy_capture, "_start_windows_mitmdump", lambda *a: None)
    monkeypatch.setattr(mitmproxy_capture, "_wait_windows_listening", lambda *a, **k: None)
    monkeypatch.setattr(mitmproxy_capture, "_stop_windows_mitmdump", lambda: None)
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)
    monkeypatch.setattr(mitmproxy_capture.time, "time_ns", lambda: 12345)
    monkeypatch.setattr(mitmproxy_capture, "_read_flow_detail_log",
                        lambda path: FIXTURE_DETAIL)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "c.pem")
    monkeypatch.setattr(device, "push_system_ca", lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(mitmproxy_capture, "_launch_app", lambda serial, package: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)

    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.status == "success"
    assert result.evidence["flows_count"] == 2
    # The wsl2 branch deliberately binds the flows file to a WSL2 /mnt/c path (so
    # Windows mitmdump can write it). Build the expectation the same way the
    # product does - str(Path("/mnt/c/...") / ...) - because that is '\'-separated
    # if this test is ever run off-POSIX, and the value is the product's real
    # output rather than one platform's spelling of it.
    assert result.evidence["flows_path"] == str(Path("/mnt/c/Users/Public") / "12345.mitm")
    assert result.evidence["hosts"] == ["api.example.com", "example.com"]


def _mock_native_run(monkeypatch, tmp_path, frida_mocks=None):
    """Shared mocks for a native (non-WSL2) run_capture_stage success path,
    letting a test reach and observe the launch arm. Returns a dict of capture
    hooks the test can assert against."""
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.time, "time_ns", lambda: 12345)
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "c.pem")
    monkeypatch.setattr(device, "push_system_ca",
                        lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda *a: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)

    class FakeProc:
        def terminate(self):
            pass
        def communicate(self, timeout=None):
            return (FIXTURE_DETAIL, "")
    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen",
                        lambda *a, **k: FakeProc())

    hooks = {"launch_app": 0, "attach": 0, "load_script": 0, "load_script_source": 0,
             "resume": 0}
    monkeypatch.setattr(mitmproxy_capture, "_launch_app",
                        lambda s, p: hooks.__setitem__("launch_app", hooks["launch_app"] + 1))
    if frida_mocks:
        class FakeDevice:
            def __init__(self, hooks):
                self._hooks = hooks
            def resume(self, pid):
                self._hooks["resume"] += 1
        fake_session = object()
        fake_device = FakeDevice(hooks)

        def fake_attach(serial, pkg):
            hooks["attach"] += 1
            return fake_device, fake_session, 42
        monkeypatch.setattr(mitmproxy_capture.frida_runner, "attach", fake_attach)
        monkeypatch.setattr(
            mitmproxy_capture.frida_runner, "load_script",
            lambda session, name, on_message=None: hooks.__setitem__("load_script", hooks["load_script"] + 1))
        # Counted separately from load_script: which loader a bypass reaches is the
        # whole question (a filename is resolved under SCRIPT_DIR, source is not).
        monkeypatch.setattr(
            mitmproxy_capture.frida_runner, "load_script_source",
            lambda session, source, on_message=None: hooks.__setitem__(
                "load_script_source", hooks["load_script_source"] + 1))
    return hooks


def test_run_capture_stage_without_bypass_uses_plain_launch(monkeypatch, tmp_path):
    # bypass_script=None (the default) must cold-start via plain am-start (the
    # "_launch_app" helper) and never touch Frida.
    hooks = _mock_native_run(monkeypatch, tmp_path)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path,
        mitmdump_path="mitmdump", capture_window=0.1)
    assert result.status == "success"
    assert hooks["launch_app"] == 1
    assert hooks["attach"] == 0 and hooks["load_script"] == 0
    assert result.evidence["bypass_script"] is None
    assert result.evidence["bypass_applied"] is False


def test_run_capture_stage_with_bypass_spawns_under_frida(monkeypatch, tmp_path):
    # bypass_script set must spawn the app under Frida (attach/load_script/
    # resume) instead of am-start, and record the bypass in evidence - this is
    # the "with script" arm that proves a pinned host decrypts.
    hooks = _mock_native_run(monkeypatch, tmp_path, frida_mocks=True)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path,
        mitmdump_path="mitmdump", capture_window=0.1,
        bypass_script="ssl_pinning_bypass_universal.js")
    assert result.status == "success"
    assert hooks["launch_app"] == 0
    assert hooks["attach"] == 1 and hooks["load_script"] == 1 and hooks["resume"] == 1
    assert hooks["load_script_source"] == 0
    assert result.evidence["bypass_script"] == "ssl_pinning_bypass_universal.js"
    assert result.evidence["bypass_arm"] == "script file: ssl_pinning_bypass_universal.js"
    assert result.evidence["bypass_applied"] is True


def test_run_capture_stage_with_synthesized_source_never_builds_a_path(monkeypatch, tmp_path):
    # The synthesized bypass reaches the stage as SOURCE (cli.py passes
    # synthesize(...).source), and it has no file under src/dynamic/scripts/ to be
    # named by. Passing it where a filename belonged made load_script do
    # `(SCRIPT_DIR / <the whole script>).read_text()`, which raised
    # `[Errno 36] File name too long` BEFORE the bypass was loaded: the capture
    # window then ran un-hooked on every real run while the stage's own comment
    # said it ran under the bypass. So the loader that ran is the assertion that
    # matters - load_script (the path-only loader) must never be reached.
    hooks = _mock_native_run(monkeypatch, tmp_path, frida_mocks=True)
    source = ("Java.perform(function () {\n"
              "  send({bypassEffect: 'ssl-pin-check'});\n"
              "});\n") * 40
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path,
        mitmdump_path="mitmdump", capture_window=0.1,
        bypass_source=source)
    assert result.status == "success"
    assert hooks["attach"] == 1 and hooks["resume"] == 1
    assert hooks["load_script_source"] == 1
    assert hooks["load_script"] == 0
    assert hooks["launch_app"] == 0
    assert result.evidence["bypass_applied"] is True
    # The evidence names WHICH bypass was injected without embedding ~2 KB of
    # generated JavaScript in the record it exists to explain.
    assert result.evidence["bypass_arm"] == f"synthesized source ({len(source)} chars)"
    assert result.evidence["bypass_script"] is None
    assert source not in str(result.evidence)


def test_cleanup_restores_pass_through_internet_on_wsl2(monkeypatch):
    # On WSL2 the device has no direct NAT, so cleanup must restore the device
    # proxy to the pass-through internet proxy - never leave it with none.
    calls = {"set": 0, "clear": 0}
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: True)
    monkeypatch.setattr(pass_through_proxy, "is_listening", lambda *a, **k: True)
    monkeypatch.setattr(mitmproxy_capture, "_stop_windows_mitmdump", lambda: None)
    monkeypatch.setattr(device, "set_http_proxy",
                        lambda s, host, port: calls.__setitem__("set", calls["set"] + 1))
    monkeypatch.setattr(device, "clear_http_proxy",
                        lambda s: calls.__setitem__("clear", calls["clear"] + 1))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    mitmproxy_capture._cleanup("emulator-5554", 8081, None)
    assert calls["set"] == 1  # restored to pass-through
    assert calls["clear"] == 0  # never left without internet


def test_cleanup_warns_when_wsl2_pass_through_down_leaves_no_internet(monkeypatch):
    # WSL2 has no direct NAT: the pass-through proxy is the device's ONLY internet
    # path. If it is not listening at cleanup (it died mid-run, or the Windows probe
    # could not confirm it), clearing the stale capture-proxy pointer does NOT
    # restore internet - so cleanup must WARN, never silently record a clean restore
    # (principle 3). Previously this WSL2 branch set restored=True with no warning,
    # hiding a stranded device - or one whose live pass-through the probe merely
    # failed to confirm - from the report.
    calls = {"set": 0, "clear": 0}
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: True)
    monkeypatch.setattr(pass_through_proxy, "is_listening", lambda *a, **k: False)
    monkeypatch.setattr(mitmproxy_capture, "_stop_windows_mitmdump", lambda: None)
    monkeypatch.setattr(device, "set_http_proxy",
                        lambda s, host, port: calls.__setitem__("set", calls["set"] + 1))
    monkeypatch.setattr(device, "clear_http_proxy",
                        lambda s: calls.__setitem__("clear", calls["clear"] + 1))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    warnings = mitmproxy_capture._cleanup("emulator-5554", 8081, None)
    assert calls["set"] == 0            # nothing to restore the device TO
    assert calls["clear"] == 1          # stale capture-proxy pointer still cleared
    assert any("pass-through proxy not listening" in w
               and "without working internet" in w for w in warnings), warnings
    # NOT the generic retry-exhausted message: no adb exception occurred, the
    # cause is a specific one (pass-through down), and it must be named as such.
    assert not any("retries" in w for w in warnings), warnings


def test_cleanup_clears_proxy_on_native_linux(monkeypatch):
    # Native Linux has direct internet, so the proxy is cleared outright.
    calls = {"set": 0, "clear": 0}
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(device, "set_http_proxy",
                        lambda s, host, port: calls.__setitem__("set", calls["set"] + 1))
    monkeypatch.setattr(device, "clear_http_proxy",
                        lambda s: calls.__setitem__("clear", calls["clear"] + 1))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    mitmproxy_capture._cleanup("emulator-5554", 8081, None)
    assert calls["clear"] == 1
    assert calls["set"] == 0


def test_run_capture_stage_wsl2_fails_when_windows_mitmdump_missing(monkeypatch, tmp_path):
    # NFR-7: on WSL2 with no Windows-host mitmproxy, the stage must fail loudly
    # with the install guidance - never an empty success or a silent no-op.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: True)
    monkeypatch.setattr(mitmproxy_capture, "_windows_mitmdump", lambda: None)
    result = mitmproxy_capture.run_capture_stage("emulator-5554", "com.example.app", tmp_path)
    assert result.status == "failed"
    assert result.evidence["reason"] == "Windows-host mitmdump not found"
    assert "Windows host" in result.error


def test_cleanup_returns_no_warnings_on_clean_restore(monkeypatch):
    # The happy path returns an empty warning list - nothing to record. Pins the
    # new return contract so the caller's `if cleanup_warnings` stays a no-op.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(device, "clear_http_proxy", lambda s: None)
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    assert mitmproxy_capture._cleanup("emulator-5554", 8081, None) == []


def test_cleanup_records_warning_when_proxy_restore_fails(monkeypatch):
    # The exact silent-failure the fix targets: a device left without a restored
    # proxy (docstring: "not leak a proxy setting"). It must come back as a
    # warning string across all retries, never a swallowed bare `pass`.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)

    def boom(s):
        raise RuntimeError("adb shell settings put failed")

    monkeypatch.setattr(device, "clear_http_proxy", boom)
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    warnings = mitmproxy_capture._cleanup("emulator-5554", 8081, None)
    assert any("proxy not restored" in w for w in warnings)


def test_cleanup_records_warning_when_reverse_removal_fails(monkeypatch):
    # A leaked adb-reverse is also recorded, not swallowed.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(device, "clear_http_proxy", lambda s: None)

    def boom(*a, **k):
        raise RuntimeError("adb reverse --remove rejected")

    monkeypatch.setattr(device, "adb_reverse", boom)
    warnings = mitmproxy_capture._cleanup("emulator-5554", 8081, None)
    assert any("reverse" in w for w in warnings)


def test_capture_stage_attaches_cleanup_warnings_to_evidence(monkeypatch, tmp_path):
    # End-to-end: a cleanup failure after a SUCCESSFUL capture must surface on the
    # result's evidence as `cleanup_warnings` - the capture succeeded but the
    # device was left degraded, and that is recorded, not silent (principle 3).
    # Non-fatal: the success verdict and the real flows are unchanged. This makes
    # the docstring promise ("a failed cleanup is recorded") true end-to-end.
    _mock_native_run(monkeypatch, tmp_path)  # native success path, flows parsed

    def boom(s):
        raise RuntimeError("device offline during cleanup")

    monkeypatch.setattr(device, "clear_http_proxy", boom)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path,
        mitmdump_path="mitmdump", capture_window=0.1)
    assert result.status == "success"          # cleanup failure never flips the verdict
    assert result.evidence["flows_count"] == 2  # real flows intact
    assert "cleanup_warnings" in result.evidence
    assert any("proxy not restored" in w for w in result.evidence["cleanup_warnings"])


# --- crashed bypass-script surfacing (true cause of an empty capture) -----------

def test_describe_script_errors_extracts_description_and_location():
    # A bypass script that throws emits frida's {type:error} envelope; {type:send}
    # payloads are normal traffic and must be ignored. Format mirrors the report
    # generator's dynamic-stage describer exactly (fname:lineno when both present).
    msgs = [
        {"type": "send", "payload": {"bypassEffect": "unpinned"}},
        {"type": "error", "description": "ReferenceError: Java is not defined",
         "fileName": "pin.js", "lineNumber": 12},
        {"type": "error", "lineNumber": 3},          # line only, default description
        {"type": "error", "description": "  boom  "},  # description only, trimmed
    ]
    assert mitmproxy_capture._describe_script_errors(msgs) == [
        "ReferenceError: Java is not defined (pin.js:12)",
        "unspecified Frida script error (line 3)",
        "boom",
    ]


def test_describe_script_errors_empty_when_no_error_messages():
    # No {type:error} => empty, so the empty-flows branch keeps its plain
    # device/app reason and invents NO script-crash cause (never a false cause).
    # Non-dict elements and bare sends are ignored, not crashed on.
    msgs = [{"type": "send", "payload": {"x": 1}}, "not-a-dict", {"type": "send"}]
    assert mitmproxy_capture._describe_script_errors(msgs) == []


def test_describe_script_errors_never_renders_a_blank_description():
    # A DELIVERED error is never rendered as an empty string (principle 3). The
    # "unspecified..." fallback is applied AFTER trimming, so a whitespace-only
    # description (a hook doing `throw " "`) still names a cause instead of
    # surfacing as "" or a bare " (line N)". The identical describer in the report's
    # _hooks_engaged carries the same fix - the two are kept byte-for-byte in step.
    msgs = [
        {"type": "error", "description": "   ", "lineNumber": 5},  # blank + line
        {"type": "error", "description": "\t "},                    # blank, no location
    ]
    assert mitmproxy_capture._describe_script_errors(msgs) == [
        "unspecified Frida script error (line 5)",
        "unspecified Frida script error",
    ]


def test_run_capture_stage_no_flows_names_crashed_bypass_script(monkeypatch, tmp_path):
    # A pinning-bypass script that throws at runtime is a THIRD cause of zero flows
    # (the bypass never took -> pinned TLS handshakes fail -> nothing decrypts),
    # distinct from device-unreachable and app-silent. The raw {type:error} sits in
    # frida_messages but no consumer audited the CAPTURE stage for it (_hooks_engaged
    # reads only the dynamic stage), so `error` misdiagnosed a script crash as a
    # wiring/app failure. The empty-flows branch must now NAME the crash as the
    # prominent cause AND record it in evidence, while still keeping the device/app
    # cause (the crash is the likely, not certain, explanation).
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: "/usr/bin/mitmdump")
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)

    class FakeProc:
        def __init__(self, *a, **k):
            pass
        def communicate(self, timeout=None):
            return "client connect 127.0.0.1:1\n", ""  # connected, but zero flows
        def terminate(self):
            pass
        def kill(self):
            pass

    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen", FakeProc)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "c.pem")
    monkeypatch.setattr(device, "push_system_ca", lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)

    class FakeDevice:
        def resume(self, pid):
            pass

    monkeypatch.setattr(mitmproxy_capture.frida_runner, "attach",
                        lambda serial, pkg: (FakeDevice(), object(), 42))

    def fake_load_script(session, name, on_message=None):
        # frida delivers an uncaught script exception as a {type:error} envelope
        on_message({"type": "error", "description": "ReferenceError: Java is not defined",
                    "fileName": "pin.js", "lineNumber": 12}, None)

    monkeypatch.setattr(mitmproxy_capture.frida_runner, "load_script", fake_load_script)

    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1,
        bypass_script="ssl_pinning_bypass_universal.js")

    assert result.status == "failed"
    assert result.evidence["reason"] == "no flows captured"
    assert result.evidence["bypass_applied"] is True
    # recorded structurally...
    assert result.evidence["bypass_script_errors"] == [
        "ReferenceError: Java is not defined (pin.js:12)"]
    # ...and named as the prominent cause in the surfaced error, without dropping
    # the device/app explanation (the crash is likely, not certain).
    assert "pinning-bypass script raised" in result.error
    assert "pin.js:12" in result.error
    assert "no traffic captured through the proxy" in result.error


def test_run_capture_stage_no_flows_clean_bypass_keeps_plain_reason(monkeypatch, tmp_path):
    # Guards the `if bypass_applied and script_errors` gate: a bypass that applied
    # cleanly (no {type:error}) but still saw zero flows must keep the plain
    # device/app reason and fabricate NO script-crash cause - bypass_script_errors
    # stays empty and `error` never mentions a script crash.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: "/usr/bin/mitmdump")
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)

    class FakeProc:
        def __init__(self, *a, **k):
            pass
        def communicate(self, timeout=None):
            return "client connect 127.0.0.1:1\n", ""
        def terminate(self):
            pass
        def kill(self):
            pass

    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen", FakeProc)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "c.pem")
    monkeypatch.setattr(device, "push_system_ca", lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)

    class FakeDevice:
        def resume(self, pid):
            pass

    monkeypatch.setattr(mitmproxy_capture.frida_runner, "attach",
                        lambda serial, pkg: (FakeDevice(), object(), 42))
    monkeypatch.setattr(mitmproxy_capture.frida_runner, "load_script",
                        lambda session, name, on_message=None: None)  # loads clean, no error

    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1,
        bypass_script="ssl_pinning_bypass_universal.js")

    assert result.status == "failed"
    assert result.evidence["bypass_applied"] is True
    assert result.evidence["bypass_script_errors"] == []
    assert "pinning-bypass script raised" not in result.error
    assert "no traffic captured through the proxy" in result.error


def test_run_capture_stage_success_records_bypass_script_errors(monkeypatch, tmp_path):
    # A bypass hook that throws is delivered as a top-level {type:error} but does NOT
    # abort the whole script - other hooks can still yield flows, so the capture
    # SUCCEEDS while a genuine uncaught error is recorded. The success branch must
    # store it (symmetric with the empty-flows branch) so the report can flag the
    # flow list as a lower bound - a crashed hook may leave some pinned endpoints
    # unbypassed and uncaptured. Never silently drop a recorded crash (principle 3).
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: "/usr/bin/mitmdump")
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)

    class FakeProc:
        def __init__(self, *a, **k):
            pass
        def communicate(self, timeout=None):
            return FIXTURE_DETAIL, ""  # real native flow_detail -> 2 flows -> success
        def terminate(self):
            pass
        def kill(self):
            pass

    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen", FakeProc)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "c.pem")
    monkeypatch.setattr(device, "push_system_ca", lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # CAPREACH1: the pre-flight device->proxy probe runs real adb. Stub it to
    # the route-UP verdict so these flow tests exercise what they are about
    # (flow parsing / script-error attribution), not adb. The probe's own
    # verdict semantics are covered by its dedicated tests below.
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)

    class FakeDevice:
        def resume(self, pid):
            pass

    monkeypatch.setattr(mitmproxy_capture.frida_runner, "attach",
                        lambda serial, pkg: (FakeDevice(), object(), 42))

    def load_with_error(session, name, on_message=None):
        # a genuine uncaught hook exception, delivered as a top-level {type:error}
        on_message({"type": "error", "description": "TypeError: cannot read x",
                    "fileName": "u.js", "lineNumber": 7}, None)

    monkeypatch.setattr(mitmproxy_capture.frida_runner, "load_script", load_with_error)

    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1,
        bypass_script="ssl_pinning_bypass_universal.js")

    assert result.status == "success"
    assert result.evidence["flows_count"] == 2  # other hooks still let flows through
    assert result.evidence["bypass_applied"] is True
    # the crash is recorded on the SUCCESS path, not just the empty-flows path.
    assert result.evidence["bypass_script_errors"] == ["TypeError: cannot read x (u.js:7)"]


def test_windows_best_effort_returns_launch_failure_reason(monkeypatch):
    # principle 3: a Windows-host cleanup command that cannot even be LAUNCHED
    # (powershell.exe missing, timeout) must not vanish. _windows_best_effort now
    # RETURNS the failure reason - for a caller that reports leaks - instead of
    # swallowing it with a bare `pass`, while still never raising.
    def _boom(*a, **k):
        raise FileNotFoundError("powershell.exe not found")

    monkeypatch.setattr(pass_through_proxy.subprocess, "run", _boom)
    reason = pass_through_proxy._windows_best_effort("Stop-Process foo")
    assert reason is not None
    assert "FileNotFoundError" in reason and "powershell.exe" in reason

    # A clean launch returns None (nothing to report) even when the command
    # itself exits non-zero - we only report that we could not RUN it, never
    # over-claim a confirmed leak from a benign 'nothing to stop' exit code.
    def _ok(*a, **k):
        return subprocess.CompletedProcess(a[0] if a else [], returncode=1,
                                           stdout="", stderr="nothing to stop")

    monkeypatch.setattr(pass_through_proxy.subprocess, "run", _ok)
    assert pass_through_proxy._windows_best_effort("Stop-Process foo") is None


def test_cleanup_reports_windows_mitmdump_stop_failure(monkeypatch):
    # The WSL2 Windows-host mitmdump-stop is the ACTUAL mitmdump-stop path on the
    # reference environment. A failure to even RUN it must surface as a cleanup
    # warning - parity with the local proc.terminate() warning - so a stray
    # Windows-host mitmdump is visible in the report (via evidence
    # cleanup_warnings), never swallowed by a bare pass (principle 3). It is
    # worded as "could not run the stop", not a confirmed leak.
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: True)
    monkeypatch.setattr(mitmproxy_capture.pass_through_proxy, "is_listening",
                        lambda port: False)
    monkeypatch.setattr(mitmproxy_capture.device, "clear_http_proxy",
                        lambda serial: None)
    monkeypatch.setattr(mitmproxy_capture.device, "adb_reverse",
                        lambda *a, **k: None)

    # stop command could not be run -> a warning naming a possible stray mitmdump
    monkeypatch.setattr(mitmproxy_capture, "_stop_windows_mitmdump",
                        lambda: "FileNotFoundError: powershell.exe not found")
    warns = mitmproxy_capture._cleanup("serial", 8081, None)
    assert any("stray" in w and "Windows host" in w and "powershell.exe" in w
               for w in warns), warns

    # a clean stop (None) adds no such warning - no fabricated leak claim
    monkeypatch.setattr(mitmproxy_capture, "_stop_windows_mitmdump", lambda: None)
    warns2 = mitmproxy_capture._cleanup("serial", 8081, None)
    assert not any("stray" in w for w in warns2), warns2


# --- CAPREACH1: pre-flight device->proxy reachability probe -----------------
#
# A zero-flow capture used to carry a hedge ("either the device could not reach
# mitmdump ... or the app made no requests"), leaving the operator to guess. The
# probe answers it up front. Its verdict feeds both the reason text and cli's
# capture reclassification, so its "unknown" case must never be read as either
# extreme.

def _probe(monkeypatch, *, rc=None, stdout="", stderr="", raises=None, seen=None):
    """Run _device_reaches_proxy against a fake adb invocation."""
    import subprocess as _sp
    from dynamic import mitmproxy_capture as mc

    monkeypatch.setattr(mc.device, "_require_adb", lambda: "/usr/bin/adb")

    def fake_run(cmd, capture_output, text, timeout):
        if seen is not None:
            seen.append(cmd)
        if raises is not None:
            raise raises
        class R:
            returncode = rc
        r = R()
        r.stdout, r.stderr = stdout, stderr
        return r

    monkeypatch.setattr(mc.subprocess, "run", fake_run)
    return mc._device_reaches_proxy("emulator-5554", 8081)


def test_reachability_probe_does_not_use_the_nonexistent_nc_z_flag(monkeypatch):
    # CAPREACH1 regression, MEASURED on the Android 11 emulator: /system/bin/nc
    # is a symlink to toybox, and toybox netcat has NO `-z` ("nc: Unknown option
    # 'z'"). The original probe used `nc -z -w 3`, which exits 1 on EVERY device -
    # it reported a healthy route as DOWN, i.e. exactly the misleading diagnosis
    # the probe exists to eliminate. Assert the portable connect form instead.
    seen = []
    _probe(monkeypatch, rc=0, seen=seen)
    assert seen, "probe never invoked adb"
    shell_cmd = seen[0][-1]
    assert " -z " not in f" {shell_cmd} ", (
        "toybox nc has no -z; the probe must not use it")
    assert "| nc " in shell_cmd and "-w 3" in shell_cmd


def test_reachability_probe_route_up(monkeypatch):
    # A successful connect exits 0 -> the route the APP uses is up.
    assert _probe(monkeypatch, rc=0) is True


def test_reachability_probe_route_down(monkeypatch):
    # Non-zero WITH a refusal signature -> the connection was refused: a real
    # routing break. (MEASURED: toybox prints "nc: connect: Connection refused".)
    assert _probe(
        monkeypatch, rc=1,
        stderr="nc: connect 127.0.0.1:8081 failed: Connection refused") is False


def test_reachability_probe_unknown_when_the_device_nc_rejects_our_flags(monkeypatch):
    # If the on-device netcat cannot be driven the way we need, we learned
    # nothing about the route. Returning False here would invent a wiring
    # failure out of a tool limitation (toybox prints this and exits 1).
    assert _probe(
        monkeypatch, rc=1,
        stderr="nc: Unknown option 'z' (see \"nc --help\")") is None


def test_reachability_probe_unknown_when_nc_is_absent(monkeypatch):
    # A missing `nc` on the device exits non-zero, but that is "we could not
    # probe", NOT "the route is down". Reading it as down would block the honest
    # app-silence downgrade; reading it as up would assert an unmeasured
    # reachability. It must be None.
    assert _probe(monkeypatch, rc=127, stderr="/system/bin/sh: nc: inaccessible or not found") is None


def test_reachability_probe_unknown_on_an_unexplained_nonzero_exit(monkeypatch):
    # A bare non-zero exit with no recognisable cause must NOT be upgraded into
    # a "route is down" verdict - that would fabricate a wiring failure.
    assert _probe(monkeypatch, rc=2) is None


def test_reachability_probe_unknown_when_adb_cannot_run(monkeypatch):
    # No adb resolvable / adb exploded -> unknown, never a fabricated verdict.
    assert _probe(monkeypatch, raises=OSError("no adb")) is None
    assert _probe(monkeypatch, raises=RuntimeError("adb not found")) is None


def test_reachability_probe_never_raises_on_timeout(monkeypatch):
    # A probe must not be able to fail the capture stage; a subprocess timeout
    # degrades to unknown.
    import subprocess as _sp
    assert _probe(monkeypatch, raises=_sp.TimeoutExpired("nc", 30)) is None


# --- the capture channel's own liveness -------------------------------------
# On the WSL2 placement EVERY fact the capture reports is read from a log the
# addon writes, so a log with no addon marker in it supports none of them. The
# stage used to read that emptiness as a device-routing or app-silence cause -
# naming a cause its only evidence could not carry.


def _wsl2_empty_stubs(monkeypatch, log_text, reachable):
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: True)
    monkeypatch.setattr(mitmproxy_capture, "_windows_mitmdump", lambda: "C:\\x\\mitmdump.exe")
    monkeypatch.setattr(pass_through_proxy, "ensure_internet", lambda *a, **k: None)
    monkeypatch.setattr(pass_through_proxy, "is_listening", lambda *a, **k: True)
    monkeypatch.setattr(mitmproxy_capture, "_prepare_windows_confdir",
                        lambda confdir, dest: "C:\\Users\\Public\\x-conf")
    monkeypatch.setattr(mitmproxy_capture, "_write_windows_addon", lambda path, log_win: path)
    monkeypatch.setattr(mitmproxy_capture, "_start_windows_mitmdump", lambda *a: None)
    monkeypatch.setattr(mitmproxy_capture, "_wait_windows_listening", lambda *a, **k: None)
    monkeypatch.setattr(mitmproxy_capture, "_stop_windows_mitmdump", lambda: None)
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)
    monkeypatch.setattr(mitmproxy_capture.time, "time_ns", lambda: 12345)
    monkeypatch.setattr(mitmproxy_capture, "_read_flow_detail_log", lambda path: log_text)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "c.pem")
    monkeypatch.setattr(device, "push_system_ca",
                        lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    monkeypatch.setattr(mitmproxy_capture, "_launch_app", lambda serial, package: None)
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: reachable)


def test_addon_reports_its_own_liveness_at_import(tmp_path):
    addon = tmp_path / "addon.py"
    mitmproxy_capture._write_windows_addon(addon, r"C:\Users\Public\f.log")
    rendered = addon.read_text()
    # Written by a module-level call, never from a hook: a marker written from a
    # hook could only appear once traffic had already proved the addon was alive,
    # which is the very fact it exists to establish.
    assert "@@ADDON_LOADED@@" in rendered
    assert "\n_mark_loaded()\n" in rendered


def test_addon_loaded_marker_is_never_read_as_traffic():
    assert mitmproxy_capture._parse_flow_detail("@@ADDON_LOADED@@\n") == []
    assert mitmproxy_capture._count_client_connections("@@ADDON_LOADED@@\n") == 0


def test_capture_channel_alive_true_only_when_the_marker_is_present():
    assert mitmproxy_capture._capture_channel_alive("@@ADDON_LOADED@@\n") is True
    assert mitmproxy_capture._capture_channel_alive("") is False
    assert mitmproxy_capture._capture_channel_alive(None) is False
    # Traffic alone does not prove the addon loaded - only its own marker does.
    assert mitmproxy_capture._capture_channel_alive("@@CLIENT_CONNECT@@\n") is False


def test_wsl2_empty_log_without_the_addon_marker_blames_the_recorder(monkeypatch, tmp_path):
    _wsl2_empty_stubs(monkeypatch, log_text="", reachable=False)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.status == "failed"
    assert result.evidence["capture_channel_alive"] is False
    assert "@@ADDON_LOADED@@" in result.error
    # The rung that would otherwise fire on a down pre-flight probe names the adb
    # reverse tunnel. It must not, because nothing recorded whether the device
    # reached the proxy at all.
    assert "adb reverse" not in result.error


def test_wsl2_empty_log_with_the_addon_marker_keeps_the_route_verdict(monkeypatch, tmp_path):
    _wsl2_empty_stubs(monkeypatch, log_text="@@ADDON_LOADED@@\n", reachable=False)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.evidence["capture_channel_alive"] is True
    assert "adb reverse" in result.error
    assert "@@ADDON_LOADED@@" not in result.error


def test_app_client_connections_excludes_the_stages_own_probe():
    # A successful pre-flight probe makes exactly ONE connection that the pipeline
    # itself opened, and both counter sources see it (the addon's client_connected
    # on WSL2, mitmdump's own lifecycle line natively). The count every consumer
    # reads is about the APP, so it must not include the pipeline.
    assert mitmproxy_capture._app_client_connections(1, True) == 0
    assert mitmproxy_capture._app_client_connections(2, True) == 1
    # A probe that could not run, or ran and failed, opened nothing to subtract.
    assert mitmproxy_capture._app_client_connections(1, None) == 1
    assert mitmproxy_capture._app_client_connections(1, False) == 1
    assert mitmproxy_capture._app_client_connections(0, True) == 0  # floor, never negative


def test_parse_pidof_distinguishes_not_running_from_not_measured():
    # 0 means the probe RAN and matched nothing; None means it could not be taken.
    # Collapsing the two would let an adb hiccup invent a launch crash - the same
    # sin the liveness sample exists to prevent, one level down.
    assert mitmproxy_capture._parse_pidof("4711\n", "", 0) == 4711
    assert mitmproxy_capture._parse_pidof("4711 4712\n", "", 0) == 4711
    assert mitmproxy_capture._parse_pidof("", "", 0) == 0
    assert mitmproxy_capture._parse_pidof("", "", 1) == 0
    assert mitmproxy_capture._parse_pidof("", "", 127) is None
    assert mitmproxy_capture._parse_pidof("", "", 2) is None
    # adb reports its own transport errors on stderr with a non-zero code, which
    # would otherwise be indistinguishable from pidof's no-match exit status.
    assert mitmproxy_capture._parse_pidof("", "adb: device offline\n", 1) is None
    assert mitmproxy_capture._parse_pidof("", "error: closed\n", 1) is None


def test_launch_liveness_cause_separates_never_ran_from_died_mid_window():
    never, note = mitmproxy_capture._launch_liveness_cause(0, 0)
    assert never is True and "never came up or died on start" in note
    # A late start is a different fault with the same empty capture, and the second
    # sample is what tells them apart.
    late, late_note = mitmproxy_capture._launch_liveness_cause(0, 4711)
    assert late is True and "merely late" in late_note
    died, died_note = mitmproxy_capture._launch_liveness_cause(4711, 0)
    assert died is False and "EXITED by the end" in died_note
    # An unmeasured sample is never evidence of absence, at either end.
    assert mitmproxy_capture._launch_liveness_cause(None, 0) == (False, None)
    assert mitmproxy_capture._launch_liveness_cause(4711, None) == (False, None)


def test_launch_liveness_cause_yields_to_direct_evidence_the_app_ran():
    # A slow start whose first pidof lands at t+0: the proxy watched a client refuse
    # its certificate, or counted the device's connection, so the process DID start.
    # Reading that one early sample as a crash would contradict the capture's own
    # evidence, so the guard lives in the decider rather than at each call site.
    assert mitmproxy_capture._launch_liveness_cause(
        0, 0, app_seen_running=True) == (False, None)


@pytest.fixture(autouse=True)
def _app_running_by_default(monkeypatch):
    """The stage-level tests model a device where the app DOES come up: they stub
    _launch_app to a no-op, so without this the real device-side liveness probe has
    no device to ask and every one of them would read as a crash on launch.

    This is the same shape as the _device_reaches_proxy stub above it, and for the
    same reason - the probe runs real adb. Its own contract, including the
    not-running and not-measured outcomes, is pinned directly by the _parse_pidof
    and _launch_liveness_cause tests; a test that wants the crash path overrides
    this with its own monkeypatch."""
    monkeypatch.setattr(mitmproxy_capture, "_app_pid", lambda serial, package: 4711)
    # Same reasoning for the ADR-0011 UI drive: it reads a real device's UI
    # hierarchy and taps it. Stub the DEVICE BOUNDARY rather than _drive_ui
    # itself - with the app never measured as owning the foreground, the real
    # _drive_ui refuses by its own rule and touches nothing, so every test here
    # exercises the real refusal path instead of a stand-in for it.
    from dynamic import ui_liveness as _uil
    monkeypatch.setattr(_uil, "wait_for_foreground",
                        lambda serial, package: {"foreground": False, "polls": 1, "errors": 0,
                                                 "timeout_s": 8.0,
                                                 "reason": "the app's activity was still not "
                                                           "the resumed one after 8.0s"})
    # And the ADR-0012 device-side attribution: it reads /proc/net/tcp and the
    # package list off a real device, for the whole capture window. Neutral by
    # default - an empty uid set with no package list resolves to a recorded
    # NOT MEASURED, never to "the app stayed off the proxy", so a test that does
    # not care about attribution cannot accidentally assert it either way.
    from dynamic import proxy_attribution as _pa
    monkeypatch.setattr(_pa, "sample_proxy_clients_during",
                        lambda serial, proxy_port, seconds, interval=2.0, adb=None:
                        {"uids": set(), "samples": 3, "samples_measured": 3,
                         "measured": True, "errors": []})
    monkeypatch.setattr(_pa, "package_uid_map", lambda serial, adb=None: {})


def _empty_capture_run(monkeypatch, tmp_path, pid, **kwargs):
    """Drive run_capture_stage down the real empty-capture path with a device that
    is routed and reachable, so the only thing under test is what the stage makes
    of the app's own liveness."""
    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: "/usr/bin/mitmdump")
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)

    class FakeProc:
        def __init__(self, *a, **k):
            pass
        def communicate(self, timeout=None):
            return "", ""
        def terminate(self):
            pass
        def kill(self):
            pass

    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen", FakeProc)
    monkeypatch.setattr(device, "create_mitm_ca", lambda confdir: confdir / "c.pem")
    monkeypatch.setattr(device, "push_system_ca",
                        lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(device, "adb_reverse", lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda serial, host, port: None)
    monkeypatch.setattr(device, "clear_http_proxy", lambda serial: None)
    monkeypatch.setattr(mitmproxy_capture, "_launch_app", lambda serial, package: None)
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    samples = []
    monkeypatch.setattr(mitmproxy_capture, "_app_pid",
                        lambda serial, package: samples.append(package) or pid)
    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", str(tmp_path / "out"), **kwargs)
    return result, samples


def test_run_capture_stage_records_the_apps_own_liveness(monkeypatch, tmp_path):
    # Wiring: the two device-side samples must reach the evidence, because the report
    # body and the CLI reclassifier both read them to decide whether the empty
    # capture may be attributed to the app's network behaviour at all. A parser test
    # passing proves nothing about whether its output is consumed.
    result, samples = _empty_capture_run(monkeypatch, tmp_path, 4711)
    assert result.status == "failed"
    assert result.evidence["app_pid_after_launch"] == 4711
    assert result.evidence["app_pid_after_capture"] == 4711
    # Once right after the launch, once at the end of the capture window.
    assert len(samples) == 2


def test_run_capture_stage_names_a_crash_instead_of_app_silence(monkeypatch, tmp_path):
    # The app is measurably not running and the route is provably up: the device
    # reached the proxy, so every other reading available here would blame the app's
    # network behaviour for an app that was never alive to have any.
    result, _ = _empty_capture_run(monkeypatch, tmp_path, 0)
    assert result.status == "failed"
    assert result.evidence["app_pid_after_launch"] == 0
    assert "was NOT running" in result.error
    assert "never came up or died on start" in result.error
    assert "the app made no network requests during the capture window" not in result.error


def test_run_capture_stage_records_the_ui_drive(monkeypatch, tmp_path):
    # The drive record must reach the evidence: a tapped:True there is what tells the
    # reader that part of this capture's traffic is traffic the tool's own tap caused,
    # and a recorded refusal is what explains a still-un-exercised network path.
    result, _ = _empty_capture_run(monkeypatch, tmp_path, 4711)
    assert result.evidence["ui_drive"]["tapped"] is False
    assert "refusing to tap a screen the app does not own" in result.evidence["ui_drive"]["reason"]


def test_run_capture_stage_does_not_drive_when_disabled(monkeypatch, tmp_path):
    # The gate itself: with the drive off, the stubbed _drive_ui must not be reached
    # at all, so the recorded reason is the stage's own.
    result, _ = _empty_capture_run(monkeypatch, tmp_path, 4711, drive_ui=False)
    assert result.evidence["ui_drive"]["tapped"] is False
    assert result.evidence["ui_drive"]["reason"] == "UI drive disabled for this run"


# --- ADR-0011: the drive will not act on a screen the app does not own ---------


def _fg(state, reason=None):
    return {"foreground": state, "polls": 3, "errors": 0, "timeout_s": 8.0,
            "reason": reason or ("the app's activity was still not the resumed one "
                                 "after 8.0s (3 poll(s))" if state is False else None)}


def test_drive_ui_refuses_and_reads_nothing_when_the_app_lacks_the_foreground(monkeypatch):
    """The whole point: a hierarchy dumped before the activity draws belongs to
    the PREVIOUS screen, so the drive must not merely decline to tap it - it must
    not resolve a target from it at all."""
    from dynamic import ui_liveness
    monkeypatch.setattr(ui_liveness, "wait_for_foreground", lambda s, p: _fg(False))
    read = []
    monkeypatch.setattr(ui_liveness, "dump_ui_targets",
                        lambda serial: read.append(serial) or {"measured": True,
                                                                "reason": None, "targets": []})
    rec = mitmproxy_capture._drive_ui("emulator-5554", "com.test.app")
    assert rec["attempted"] is False and rec["tapped"] is False
    assert "refusing to tap a screen the app does not own" in rec["reason"]
    assert read == []


def test_drive_ui_refuses_when_foreground_ownership_was_not_measured(monkeypatch):
    """A failed probe is not evidence the app stayed away - but it is also not a
    licence to tap whatever happens to be on screen."""
    from dynamic import ui_liveness
    monkeypatch.setattr(ui_liveness, "wait_for_foreground",
                        lambda s, p: _fg(None, "`dumpsys activity activities` failed on all "
                                               "3 poll(s) over 8.0s, so whether the app owns "
                                               "the foreground was not measured"))
    read = []
    monkeypatch.setattr(ui_liveness, "dump_ui_targets",
                        lambda serial: read.append(serial) or {"measured": True,
                                                                "reason": None, "targets": []})
    rec = mitmproxy_capture._drive_ui("emulator-5554", "com.test.app")
    assert rec["tapped"] is False and rec["foreground"]["foreground"] is None
    assert "could not be measured" in rec["reason"]
    assert read == []


def test_drive_ui_taps_once_the_app_owns_the_screen(monkeypatch):
    from dynamic import ui_liveness
    monkeypatch.setattr(ui_liveness, "wait_for_foreground", lambda s, p: _fg(True))
    monkeypatch.setattr(ui_liveness, "dump_ui_targets",
                        lambda serial: {"measured": True, "reason": None,
                                        "targets": [{"label": "START", "bounds": "[600,2200][840,2418]",
                                                     "center": (720, 2309)}]})
    taps = []
    monkeypatch.setattr(ui_liveness, "tap", lambda serial, x, y: taps.append((x, y)))
    rec = mitmproxy_capture._drive_ui("emulator-5554", "com.test.app")
    assert rec["tapped"] is True and taps == [(720, 2309)]
    assert rec["target"]["label"] == "START"


# --- ADR-0012: who reached the capture proxy, recorded on the stage -----------


def test_run_capture_stage_records_which_uid_reached_the_capture_proxy(monkeypatch, tmp_path):
    """The capture log carries no client identity, so the stage's record of who
    held a socket to the proxy is the only attribution an SSL reading can rest
    on. It has to reach the evidence, not stop at the helper that computed it."""
    from dynamic import proxy_attribution as pa
    monkeypatch.setattr(pa, "sample_proxy_clients_during",
                        lambda serial, proxy_port, seconds, interval=2.0, adb=None:
                        {"uids": {10131}, "samples": 5, "samples_measured": 5,
                         "measured": True, "errors": []})
    monkeypatch.setattr(pa, "package_uid_map",
                        lambda serial, adb=None: {10131: ["com.example.app"]})
    result, _ = _empty_capture_run(monkeypatch, tmp_path, 4711, capture_window=1.0)
    ev = result.evidence
    assert ev["proxy_attribution"]["reached"] is True
    assert ev["proxy_attribution"]["uid"] == 10131
    # A set would not survive the round trip to the stored JSON, and a lost uid
    # list reads as "nobody reached the proxy".
    assert ev["proxy_client_uids"] == [10131]
    assert ev["proxy_client_samples"] == 5
    import json
    json.dumps(ev)  # the evidence must serialize: it is persisted and re-rendered


def test_run_capture_stage_never_records_unmeasured_attribution_as_absence(monkeypatch, tmp_path):
    """The default fixture reads no device. That is a fact about the probe, so it
    must land as None - a False would assert the app stayed off the proxy."""
    result, _ = _empty_capture_run(monkeypatch, tmp_path, 4711, capture_window=1.0)
    assert result.evidence["proxy_attribution"]["reached"] is None

"""Wrapper-contract + pure-parser tests for the mitmproxy capture stage.

The pure logic (_parse_flow_detail) is unit-tested with fixture text from a real
mitmdump flow_detail=2 run. The live capture (mitmdump reachable, device routed,
CA trusted, traffic actually decrypts) is NOT mocked - it is validated by the E2E
run whose report's Captured Traffic section is the proof (project principle 3).
These tests only cover the no-tool paths and the exact adb/proxy command shapes.
"""

import subprocess

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
    # No connections reached the proxy -> 0 (the real-reachability-failure signal).
    assert mitmproxy_capture._count_client_connections(FIXTURE_DETAIL) == 0
    assert mitmproxy_capture._count_client_connections("") == 0


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

    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1,
    )
    assert result.status == "success"
    assert result.evidence["flows_count"] == 2
    assert result.evidence["hosts"] == ["api.example.com", "example.com"]
    assert result.evidence["flows_path"].endswith(".mitm")


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


def test_launch_app_force_stops_then_starts(monkeypatch):
    # An already-running app (e.g. left open by the dynamic stage) fires no fresh
    # SDK/API traffic on a bare am start, so the capture must cold-start it:
    # force-stop first, then launch. Order matters.
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(list(cmd))
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(mitmproxy_capture.device, "_require_adb",
                        lambda: "/bin/adb")
    monkeypatch.setattr(mitmproxy_capture.subprocess, "run", fake_run)
    mitmproxy_capture._launch_app("emulator-5554", "com.example.app")
    assert calls and "force-stop" in calls[0]
    assert "start" in calls[1]
    assert "am" in calls[1]


def test_start_windows_mitmdump_builds_detached_start_process(monkeypatch):
    # The Windows mitmdump launch must use Start-Process without a redirect (a
    # redirect makes PowerShell block on the long-running child) and pass the
    # addon (-s) as the flow source, using inline -ArgumentList elements.
    captured = {}

    def fake_run(cmd, **kwargs):
        captured["cmd"] = cmd
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(mitmproxy_capture.subprocess, "run", fake_run)
    mitmproxy_capture._start_windows_mitmdump(
        "C:\\x\\mitmdump.exe", "C:\\Users\\Public\\1-conf",
        "C:\\Users\\Public\\1-addon.py", "C:\\Users\\Public\\1.mitm", 8080)
    ps = captured["cmd"][-1]
    assert "Start-Process" in ps
    assert "-ArgumentList" in ps
    assert "'confdir=C:\\Users\\Public\\1-conf'" in ps
    assert "'-s','C:\\Users\\Public\\1-addon.py'" in ps
    assert "'-p','8080'" in ps
    assert "-RedirectStandardOutput" not in ps  # the addon is the source


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
    monkeypatch.setattr(mitmproxy_capture, "_wait_windows_listening", lambda *a: None)
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

    result = mitmproxy_capture.run_capture_stage(
        "emulator-5554", "com.example.app", tmp_path, capture_window=0.1)
    assert result.status == "success"
    assert result.evidence["flows_count"] == 2
    assert result.evidence["flows_path"] == "/mnt/c/Users/Public/12345.mitm"
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

    class FakeProc:
        def terminate(self):
            pass
        def communicate(self, timeout=None):
            return (FIXTURE_DETAIL, "")
    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen",
                        lambda *a, **k: FakeProc())

    hooks = {"launch_app": 0, "attach": 0, "load_script": 0, "resume": 0}
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
    assert result.evidence["bypass_script"] == "ssl_pinning_bypass_universal.js"
    assert result.evidence["bypass_applied"] is True


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

"""H1: capture-artifact hygiene.

mitmdump's `-w` flow file holds every captured request/response HEADER AND BODY,
so it can contain live Authorization / Cookie / token / PII values. These tests
pin the three protections that replaced the old "write it to C:\\Users\\Public and
leave it there" behaviour:

  * the per-run work dir is not the shared public root,
  * credential-bearing header values are masked before the captured text is
    parsed or excerpted into evidence,
  * the raw artifacts are deleted once the stage has extracted its summary.

They are pure-path/string tests - no mitmdump, adb or frida is involved.
"""

import os
from pathlib import Path

import pytest

from dynamic import mitmproxy_capture


# ---------------------------------------------------------------------------
# redact_sensitive_headers
# ---------------------------------------------------------------------------


@pytest.mark.parametrize("header", [
    "Authorization",
    "authorization",
    "Proxy-Authorization",
    "Cookie",
    "Set-Cookie",
    "X-Api-Key",
    "X-Auth-Token",
])
def test_redacts_credential_bearing_header_values(header):
    text = f"127.0.0.1:1: GET https://api.example.com/ HTTP/1.1\n    {header}: s3cr3t-value\n"
    redacted = mitmproxy_capture.redact_sensitive_headers(text)

    assert "s3cr3t-value" not in redacted
    assert f"{header}: [REDACTED]" in redacted
    # The request line itself is untouched: redaction must not cost a flow.
    assert "GET https://api.example.com/" in redacted


def test_leaves_ordinary_headers_and_flow_lines_alone():
    text = (
        "127.0.0.1:1: GET https://api.example.com/v1/ping?q=1 HTTP/1.1\n"
        "    user-agent: curl/8.5.0\n"
        "    content-type: application/json\n"
        " << HTTP/1.1 200 OK\n"
    )
    assert mitmproxy_capture.redact_sensitive_headers(text) == text


def test_redaction_is_empty_safe():
    assert mitmproxy_capture.redact_sensitive_headers("") == ""
    assert mitmproxy_capture.redact_sensitive_headers(None) is None


def test_redaction_cannot_create_a_phantom_flow():
    # A header value carrying a method token and " HTTP/" used to be able to look
    # like a request line. Masking the value removes that content entirely, and
    # the parser must still see exactly the one real flow.
    text = (
        "127.0.0.1:1: GET https://api.example.com/ HTTP/1.1\n"
        "    authorization: GET https://evil.example.com/ HTTP/1.1\n"
    )
    redacted = mitmproxy_capture.redact_sensitive_headers(text)
    flows = mitmproxy_capture._parse_flow_detail(redacted)

    assert [f.host for f in flows] == ["api.example.com"]


# ---------------------------------------------------------------------------
# private per-run capture directory
# ---------------------------------------------------------------------------


# A /mnt/c-shaped base plus enforce=False pins the path COMPUTATION (naming and
# "not the public root") on any host. On the reference WSL2 box /mnt/c exists, so
# the real _windows_capture_dir would spend a powershell.exe %TEMP% probe and then
# mkdir + icacls under the actual C: drive - the ambient host execution the unit
# suite forbids and a real side effect. The naming/location guarantee is what these
# tests are about, and it is a pure function of `base`, so it is asserted through
# that seam instead; the enforcement (mkdir + ACL) is the stage's job on the host.
_BASE = Path("/mnt/c/Users/tester/AppData/Local/Temp")


def test_capture_dir_is_a_per_run_dir_not_the_public_root():
    wsl_dir, win_dir = mitmproxy_capture._windows_capture_dir(12345, base=_BASE, enforce=False)

    assert wsl_dir.name == "fymp-capture-12345"
    # The raw flow file no longer sits directly in C:\Users\Public - it is one
    # level down, inside a directory the stage restricts to the current user.
    public_root = mitmproxy_capture._CAPTURE_FALLBACK_BASE
    assert wsl_dir != public_root
    assert (wsl_dir / "12345.mitm") != (public_root / "12345.mitm")
    assert not win_dir.endswith("12345.mitm")
    assert win_dir.endswith("fymp-capture-12345")


def test_capture_dir_is_unique_per_run():
    first, _ = mitmproxy_capture._windows_capture_dir(1, base=_BASE, enforce=False)
    second, _ = mitmproxy_capture._windows_capture_dir(2, base=_BASE, enforce=False)
    assert first != second


# ---------------------------------------------------------------------------
# deletion + permissions of the raw artifacts
# ---------------------------------------------------------------------------


def test_discard_raw_capture_deletes_the_flow_file(tmp_path):
    flows = tmp_path / "12345.mitm"
    flows.write_bytes(b"raw traffic")
    log = tmp_path / "12345-flows.log"
    log.write_text("GET https://api.example.com/\n")

    assert mitmproxy_capture._discard_raw_capture(flows, log) is True
    assert not flows.exists()
    assert not log.exists()


def test_discard_raw_capture_tolerates_absent_artifacts(tmp_path):
    assert mitmproxy_capture._discard_raw_capture(
        tmp_path / "never-written.mitm", None) is True


def test_discard_raw_capture_reports_a_survivor(tmp_path):
    # A file that cannot be removed must be REPORTED (flows_deleted=False), never
    # silently dropped - the operator has to know full traffic survived.
    if os.name == "posix":
        pytest.skip("directory-as-file trick is POSIX/Windows specific")
    blocked = tmp_path / "blocked.mitm"
    blocked.mkdir()  # unlink() on a directory fails
    assert mitmproxy_capture._discard_raw_capture(blocked) is False


def test_precreate_private_file_creates_an_empty_owner_only_file(tmp_path):
    flows = tmp_path / "run" / "12345.mitm"
    mitmproxy_capture._precreate_private_file(flows)

    assert flows.exists()
    assert flows.read_bytes() == b""
    if os.name == "posix":
        assert (flows.stat().st_mode & 0o777) == 0o600


# ---------------------------------------------------------------------------
# the stage itself: warning + deletion, with every device call faked
# ---------------------------------------------------------------------------


_FIXTURE_DETAIL = (
    "127.0.0.1:38908: GET https://api.example.com/v1/ping HTTP/1.1\n"
    "    authorization: Bearer live-token-value\n"
    " << HTTP/1.1 200 OK\n"
)


def test_capture_stage_warns_and_deletes_the_raw_flow_file(monkeypatch, tmp_path):
    written: list = []

    class FakeProc:
        def communicate(self, timeout=None):
            return _FIXTURE_DETAIL, ""

        def terminate(self):
            pass

        def kill(self):
            pass

    def fake_popen(argv, *a, **kwargs):
        # Record the -w path and write to it, exactly as mitmdump would.
        target = argv[argv.index("-w") + 1]
        written.append(target)
        with open(target, "wb") as handle:
            handle.write(b"raw headers and bodies")
        return FakeProc()

    monkeypatch.setattr(mitmproxy_capture, "_on_wsl2", lambda: False)
    monkeypatch.setattr(mitmproxy_capture.shutil, "which", lambda name: "/usr/bin/mitmdump")
    monkeypatch.setattr(mitmproxy_capture.time, "sleep", lambda s: None)
    monkeypatch.setattr(mitmproxy_capture.subprocess, "Popen", fake_popen)
    monkeypatch.setattr(mitmproxy_capture.device, "create_mitm_ca",
                        lambda confdir: confdir / "mitmproxy-ca-cert.pem")
    monkeypatch.setattr(mitmproxy_capture.device, "push_system_ca",
                        lambda serial, cert: "/system/etc/security/cacerts/x.0")
    monkeypatch.setattr(mitmproxy_capture.device, "adb_reverse",
                        lambda serial, dp, hp, add=True: None)
    monkeypatch.setattr(mitmproxy_capture.device, "set_http_proxy",
                        lambda serial, host, port: None)
    monkeypatch.setattr(mitmproxy_capture.device, "clear_http_proxy", lambda serial: None)
    monkeypatch.setattr(mitmproxy_capture, "_launch_app", lambda serial, package: None)
    monkeypatch.setattr(mitmproxy_capture, "_device_reaches_proxy",
                        lambda serial, port: True)
    # Everything below would shell out to adb; none of it is what this test is
    # about, and the unit suite forbids ambient tool execution.
    monkeypatch.setattr(mitmproxy_capture, "_app_pid", lambda serial, package: None)
    monkeypatch.setattr(mitmproxy_capture, "_device_shell_uid", lambda serial: None)
    monkeypatch.setattr(mitmproxy_capture.proxy_attribution,
                        "sample_proxy_clients_during",
                        lambda serial, port, window: {
                            "uids": set(), "samples": [], "samples_measured": 0})
    monkeypatch.setattr(mitmproxy_capture.proxy_attribution,
                        "package_uid_map", lambda serial: {})
    monkeypatch.setattr(mitmproxy_capture.proxy_attribution,
                        "attribute_proxy_clients",
                        lambda *a, **k: {"reached": None})

    with pytest.warns(RuntimeWarning, match="FULL request/response traffic"):
        result = mitmproxy_capture.run_capture_stage(
            "emulator-5554", "com.example.app", tmp_path,
            capture_window=0.1, drive_ui=False,
        )

    assert result.status == "success", result.error
    assert written, "mitmdump must still be given a -w file"
    # H1: the file existed during the capture and is gone afterwards.
    assert not os.path.exists(written[0])
    assert result.evidence["flows_deleted"] is True
    assert result.evidence["flows_count"] == 1
    # The parsed summary survives - that is the analysis the pipeline consumes.
    assert result.evidence["hosts"] == ["api.example.com"]
    # ...and the token in the header never reaches the persisted evidence.
    assert "live-token-value" not in str(result.evidence)


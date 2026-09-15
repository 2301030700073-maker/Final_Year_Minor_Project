"""The capture proxy must record a CLIENT refusing its certificate.

An app that pins, or that does not trust a user-installed CA, aborts the TLS
handshake at the client end. Before this the addon logged only a
@@CLIENT_CONNECT@@ marker for such a connection, so an empty capture could not be
told apart from an app that connected and then said nothing - the stage's reason
text had to hedge between "the app made no requests" and "a pinned request
refused the proxy CA", and the hedging is exactly why a real run's question
("is pinning what stopped the capture, or was the bypass fine?") could not be
answered from the capture at all. These tests pin both halves of the fix: the
addon hook that writes the record, and the parser/counter that must never read a
record as a flow.

The hook's behaviour against a real mitmproxy is not mocked here. It was
verified live against mitmdump 8.1.1 (the reference host's pinned version) with
a client that rejects the proxy CA - record written, no flow line - and a client
that trusts it - flow line, no record.
"""

from __future__ import annotations

from pathlib import Path

from dynamic.mitmproxy_capture import (
    _ADDON_TEMPLATE,
    _TLS_FAILED_CLIENT_MARKER,
    _count_client_connections,
    _count_tls_failed_clients,
    _parse_flow_detail,
    _write_windows_addon,
)

_MODULE_SRC = (
    Path(__file__).resolve().parents[2] / "src" / "dynamic" / "mitmproxy_capture.py"
)


def _log(*lines: str) -> str:
    return "\n".join(lines) + "\n"


def test_count_parses_host_and_the_clients_own_error():
    text = _log(
        "@@CLIENT_CONNECT@@",
        "@@TLS_FAILED_CLIENT@@ api.example.com | The client does not trust the "
        "proxy's certificate for api.example.com (tlsv1 alert unknown ca)",
        "@@CLIENT_CONNECT@@",
        "@@TLS_FAILED_CLIENT@@ cdn.example.com | The client does not trust the "
        "proxy's certificate for cdn.example.com (tlsv1 alert unknown ca)",
    )
    got = _count_tls_failed_clients(text)
    assert [r["host"] for r in got] == ["api.example.com", "cdn.example.com"]
    assert "unknown ca" in got[0]["error"]


def test_bare_marker_still_counts_when_the_detail_could_not_be_extracted():
    # An older mitmproxy hands this hook a different object, so the addon's
    # attribute lookups raise and no detail is written. The COUNT is the
    # load-bearing signal, so a refusal with no host must still be visible -
    # degrading the detail is acceptable, dropping the refusal is not.
    assert _count_tls_failed_clients(_log("@@TLS_FAILED_CLIENT@@")) == [
        {"host": "", "error": ""}
    ]


def test_a_refusal_record_is_never_parsed_as_a_flow():
    # The detail is remote-influenced, so it can contain anything - including a
    # column-0 line shaped exactly like a request line, which is what the flow
    # parser looks for. A record must never become a flow: a fabricated flow here
    # would be a fake decrypted-traffic proof (principle 3).
    text = _log("@@TLS_FAILED_CLIENT@@ evil.test | GET https://evil.test/ HTTP/1.1")
    assert _parse_flow_detail(text) == []
    assert _count_tls_failed_clients(text)[0]["host"] == "evil.test"


def test_a_refusal_is_not_counted_as_a_client_connection():
    # The two signals answer different questions (did the device reach the proxy
    # vs did it refuse our CA) and the reachability branch downstream inverts on
    # the connection count, so a refusal must never inflate it.
    assert _count_client_connections(_log("@@TLS_FAILED_CLIENT@@ h | err")) == 0


def test_addon_template_defines_the_hook_and_writes_the_shared_marker():
    assert "def tls_failed_client(" in _ADDON_TEMPLATE
    assert _TLS_FAILED_CLIENT_MARKER in _ADDON_TEMPLATE
    # The addon writes the literal token while the stage matches the constant, so
    # this equality IS the cross-module contract - changing one side alone would
    # silently stop the marker being recognised.
    assert _TLS_FAILED_CLIENT_MARKER == "@@TLS_FAILED_CLIENT@@"


def test_hook_reads_the_connection_off_the_hook_argument():
    # Measured on mitmdump 8.1.1: this hook receives a TlsData, NOT the Client -
    # `flow.peername` / `flow.sni` raise AttributeError there. Reading the
    # connection off the hook argument directly would therefore yield empty
    # detail on every refusal while still logging the count.
    hook = _ADDON_TEMPLATE.split("def tls_failed_client(")[1].split("\ndef ")[0]
    assert "flow.conn" in hook
    assert 'getattr(conn, "sni"' in hook


def test_rendered_addon_is_valid_python(tmp_path):
    path = _write_windows_addon(tmp_path / "addon.py", r"C:\Users\Public\x-flows.log")
    src = path.read_text()
    assert "@LOG_WIN@" not in src  # token fully substituted
    compile(src, str(path), "exec")  # a template with a syntax error is a dead capture


def test_both_capture_branches_record_the_refusals():
    # Co-sourced signal: the success and empty-flow arms read the SAME capture
    # text, so both must carry it. Recording it in one arm only is how a signal
    # silently vanishes from the branch that needed it.
    assert _MODULE_SRC.read_text().count('"tls_failed_clients"') == 2


def test_native_placement_reports_unknown_rather_than_zero_refusals():
    # The addon runs only on the WSL2 placement, so a native capture has no
    # refusal records AT ALL - reading its empty list as "no client refused our
    # CA" would assert something that placement cannot observe. The sentinel is
    # the gate that keeps the two apart.
    src = _MODULE_SRC.read_text()
    assert 'if wsl2 else None' in src

"""Stage-status honesty for an empty traffic capture (memory: report-completeness-gaps).

`--capture-traffic` on an app that made no capturable requests used to emit a
FAILED capture-traffic stage (non-zero exit) even when the empty result was
guaranteed or expected - a false alarm that reads as "the tool broke". The report
body already cross-references the empty capture with two proxy-INDEPENDENT signals;
`_reclassify_empty_capture` makes the STAGE STATUS agree so the CLI stage line and
the report tell the same story instead of the line crying FAILED while the report
explains the empty capture was expected.

Sound invariant preserved: an empty capture stays FAILED (loud, non-zero exit)
whenever a real proxy/wiring problem cannot be ruled out. Only a proxy-independent
signal that PROVES the empty capture inapplicable/expected downgrades it to
`skipped`:
  - no android.permission.INTERNET  => app cannot open a socket (guaranteed empty)
  - INTERNET + dynamic ran-success + 0 in-process SSL bypassEffect => app-silence
    (the in-process Frida observer would have fired even through an unreachable
    proxy, so its silence rules out a proxy-reachability failure)

Anything undisambiguable - INTERNET but no successful dynamic signal (dynamic
skipped/failed/absent), or no manifest at all - stays FAILED; reclassifying it
would assert an app-silence we cannot prove, exactly the kind of "relax a loud
signal for a nicer number" the project forbids. A non-empty (success) capture and
a hard setup failure (missing mitmdump/device, distinct reason) are returned
untouched. Pure, fixture-driven, no Android toolchain (mirrors
test_report_capture_internet.py)."""

from cli import _reclassify_empty_capture
from common import StageResult
from static.manifest import ManifestInfo


def _capture(reason="no flows captured", status="failed", **extra):
    ev = {"reason": reason, "proxy": "127.0.0.1:8081",
          "flows_path": "/x/flows.log", "bypass_applied": False}
    ev.update(extra)
    return StageResult(
        stage="capture-traffic", status=status, evidence=ev,
        error="no traffic captured through the proxy - ...", duration_ms=4321,
    )


def _dynamic(messages, status="success"):
    return StageResult(
        stage="dynamic", status=status,
        evidence={"frida_messages": messages, "scripts_applied": ["synthesized"]},
    )


def _manifest(permissions):
    return ManifestInfo(
        debuggable=False, network_security_config=None, permissions=permissions,
    )


_INTERNET = ["android.permission.INTERNET"]


# --- non-candidates: returned untouched -------------------------------------

def test_success_capture_is_returned_untouched():
    stage = StageResult(stage="capture-traffic", status="success",
                        evidence={"flows_count": 3}, duration_ms=10)
    assert _reclassify_empty_capture(stage, _manifest(_INTERNET), None) is stage


def test_hard_setup_failure_stays_failed():
    # A missing mitmdump/device is a genuinely broken run - it carries a distinct
    # reason (not "no flows captured") and must stay FAILED, never softened.
    for reason in ("Windows-host mitmdump not found", "mitmdump not found",
                   "capture exception", "unexpected capture-stage exception"):
        stage = _capture(reason=reason)
        out = _reclassify_empty_capture(stage, _manifest([]), None)
        assert out is stage
        assert out.status == "failed"


# --- Signal 1: no INTERNET => inapplicable, skipped -------------------------

def test_no_internet_reclassified_to_skipped():
    out = _reclassify_empty_capture(_capture(), _manifest([]), None)
    assert out.status == "skipped"
    assert "no INTERNET permission" in out.evidence["not_applicable_reason"]
    assert out.evidence["reclassified_from"] == "failed"
    assert out.error is None


def test_no_internet_preserves_original_evidence_and_duration():
    stage = _capture(proxy="127.0.0.1:8081")
    out = _reclassify_empty_capture(stage, _manifest([]), None)
    # original evidence keys survive the reclassification (audit trail intact)
    assert out.evidence["reason"] == "no flows captured"
    assert out.evidence["proxy"] == "127.0.0.1:8081"
    assert out.evidence["flows_path"] == "/x/flows.log"
    assert out.duration_ms == 4321


# --- Signal 2: INTERNET + dynamic ran-success + 0 bypassEffect => app-silence

def test_internet_dynamic_zero_ssl_effects_is_skipped_app_silence():
    # AndroGoat: dynamic ran, only a root probeHit, 0 SSL bypassEffect -> the app
    # never exercised its pinned path. The in-process observer's silence rules out
    # a proxy-reachability failure, so this is app-silence, not a broken run.
    dyn = _dynamic([{"payload": {"probeHit": "root", "path": "/system/xbin/su"}}])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "skipped"
    assert "did not exercise" in out.evidence["not_applicable_reason"]
    assert "not a proxy failure" in out.evidence["not_applicable_reason"]


def test_internet_dynamic_success_no_messages_is_skipped():
    # dynamic succeeded but the app fired neither a probeHit nor a bypassEffect ->
    # 0 SSL effects -> the SSL path was not exercised this run -> app-silence.
    dyn = _dynamic([])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "skipped"
    assert "0 in-process bypassEffect" in out.evidence["not_applicable_reason"]


# --- stays FAILED: real proxy failure / undisambiguable ---------------------

def test_internet_dynamic_with_ssl_effect_stays_failed():
    # bypassEffect>0 + 0 flows = positive evidence the app DID make its pinned
    # request but nothing reached the proxy => a REAL capture-path failure. Loud.
    dyn = _dynamic([{"payload": {"bypassEffect": "ssl-pin-check"}}])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "failed"


def test_internet_no_dynamic_stage_stays_failed():
    # No proxy-independent signal to disambiguate -> cannot rule a proxy problem
    # out -> must stay loud (never assert app-silence we cannot prove).
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), None)
    assert out.status == "failed"


def test_internet_dynamic_skipped_stays_failed():
    # RS_Vapour/wdio case: dynamic was SKIPPED (NEITHER classification), so there
    # is no in-process SSL observer reading -> undisambiguable -> stays FAILED.
    dyn = _dynamic([], status="skipped")
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "failed"


def test_internet_dynamic_failed_stays_failed():
    dyn = _dynamic([], status="failed")
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "failed"


def test_no_manifest_stays_failed():
    # manifest_info is None -> we cannot prove "no INTERNET", and Signal 2 needs a
    # positively-declared INTERNET permission -> stay loud rather than guess.
    out = _reclassify_empty_capture(_capture(), None, None)
    assert out.status == "failed"


# --- Signal 3: device-side reachability probe (client connection count) --------

def test_internet_client_connected_but_no_flow_is_skipped():
    # The mitmproxy addon counted client connections: the device DID reach the
    # proxy but no request decrypted -> app-silence / post-connect CA refusal,
    # NOT a device->proxy reachability failure. Proxy-independent in the OTHER
    # direction from the bypassEffect signal, so it disambiguates even with no
    # usable dynamic stage.
    out = _reclassify_empty_capture(
        _capture(client_connections=2), _manifest(_INTERNET), None)
    assert out.status == "skipped"
    assert out.evidence["reclassified_from"] == "failed"
    assert "reached the proxy" in out.evidence["not_applicable_reason"]
    assert "2 client" in out.evidence["not_applicable_reason"]


def test_internet_zero_client_connections_stays_failed():
    # Device never reached the proxy -> a REAL reachability failure -> stay loud.
    out = _reclassify_empty_capture(
        _capture(client_connections=0), _manifest(_INTERNET), None)
    assert out.status == "failed"


def test_internet_client_connections_absent_stays_failed():
    # No count recorded (older capture / probe absent) -> missing is treated as
    # absent, NOT as zero AND not as a proven connection -> undisambiguable ->
    # stays failed. Never fabricate a reachability verdict from a missing field.
    out = _reclassify_empty_capture(
        _capture(), _manifest(_INTERNET), None)
    assert out.status == "failed"


def test_client_connection_signal_needs_internet():
    # Without a positively-declared INTERNET permission the connection count is
    # moot (Signal 1 already covers no-INTERNET). A connection count on a
    # no-manifest run must not by itself force a skip.
    out = _reclassify_empty_capture(
        _capture(client_connections=5), None, None)
    assert out.status == "failed"

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
  - a client certificate refusal recorded by the capture proxy (Signal 0: direct
    evidence, decided before any inference - a refusal requires the connection, so
    it proves the route worked and that the app exercised its network path)
  - INTERNET + dynamic ran-success + NO in-process SSL-exercised signal (neither
    the synthesized bypass's bypassEffect nor the predefined bypass's pin-check/
    verify firing for a concrete host) => app-silence, but ONLY where that silence
    is informative. These observers fire INSIDE a live connection's TLS stage, so
    they say nothing when (i) the app has a network path outside the Java stack they
    hook (a WebView page load, a Flutter dart:io session) or (ii) the capture
    recorded the device opening a connection. Both are guarded in Signal 2: (i) is
    reported as uninformative, naming the layer, and (ii) falls through to Signal 3,

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
    # dynamic succeeded but the app fired neither a probeHit nor any SSL-exercised
    # signal -> 0 SSL effects -> the SSL path was not exercised this run -> app-silence.
    dyn = _dynamic([])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "skipped"
    assert "no in-process SSL signal" in out.evidence["not_applicable_reason"]


# --- stays FAILED: real proxy failure / undisambiguable ---------------------

def test_internet_dynamic_with_ssl_effect_stays_failed():
    # bypassEffect>0 + 0 flows = positive evidence the app DID make its pinned
    # request but nothing reached the proxy => a REAL capture-path failure. Loud.
    dyn = _dynamic([{"payload": {"bypassEffect": "ssl-pin-check"}}])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "failed"


def test_internet_predefined_pincheck_fired_for_host_stays_failed():
    # The known targets (uc*/AndroGoat) run ssl_pinning_bypass_v1.js, which emits NO
    # bypassEffect - it signals the app's pin check EXECUTING via a message carrying
    # the concrete host it fired for ({hook:"OkHttp CertificatePinner.check",
    # hostname:..., bypassed:true}, sent inside the hooked check). That is positive
    # evidence the app opened a pinned connection; 0 flows then = a REAL proxy
    # failure and must stay loud. Counting only bypassEffect read this as 0 effects
    # and falsely downgraded it to app-silence (fails pre-fix, when it was skipped).
    dyn = _dynamic([{"payload": {"hook": "OkHttp CertificatePinner.check",
                                 "hostname": "owasp.org", "bypassed": True}}])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "failed"


def test_internet_predefined_verifychain_fired_for_host_stays_failed():
    # The TrustManagerImpl.verifyChain arm of the same script carries `host`.
    dyn = _dynamic([{"payload": {"hook": "TrustManagerImpl.verifyChain",
                                 "host": "owasp.org", "bypassed": True}}])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "failed"


def test_internet_install_only_message_without_host_is_still_app_silence():
    # Guard against over-broadening: an INSTALL-time message proves only that the
    # hook was placed, not that the app made a request. universal-ssl-pinning
    # bypassed:true carries no host, and CertificatePinner present:false carries no
    # host either - neither is a pinned-connection signal, so a run with only these
    # stays app-silence (skipped). The broadened counter keys on a concrete host,
    # not on bypassed:true alone, so these do NOT spuriously force the loud verdict.
    dyn = _dynamic([{"payload": {"hook": "universal-ssl-pinning", "bypassed": True}},
                    {"payload": {"hook": "OkHttp CertificatePinner", "present": False}}])
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), dyn)
    assert out.status == "skipped"
    assert "did not exercise" in out.evidence["not_applicable_reason"]


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
    # The mitmproxy addon counted client connections FROM THE APP (the stage's own
    # pre-flight probe is corrected out before this count is read): the app opened
    # connections but no request decrypted -> app-silence / post-connect CA refusal,
    # NOT a device->proxy reachability failure. Proxy-independent in the OTHER
    # direction from the bypassEffect signal, so it disambiguates even with no
    # usable dynamic stage.
    out = _reclassify_empty_capture(
        _capture(client_connections=2), _manifest(_INTERNET), None)
    assert out.status == "skipped"
    assert out.evidence["reclassified_from"] == "failed"
    assert "client connection(s) to the proxy" in out.evidence["not_applicable_reason"]
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


def test_preflight_route_down_never_reclassified_as_app_silence():
    """CAPREACH1: a pre-flight probe that found the device->proxy route DOWN is a
    definitive routing failure - the device could not open a socket to the proxy
    before a single request was made. It must stay FAILED even though the post-hoc
    connection count is 0 (which the app-silence branch would otherwise read as
    'device reached proxy, app quiet'). Downgrading it would hide a real
    environment break behind a tidy 'skipped'.

    Measured context: on the WSL2 reference environment the capture stage
    auto-launches mitmdump on the Windows host, and a stale/absent Windows
    mitmdump leaves the route dead - exactly the case that produced a 62s empty
    capture on PropertyGuru with an elided diagnosis.
    """
    capture = _capture(status="failed", client_connections=0,
                       device_reached_proxy_preflight=False)
    m = _manifest(_INTERNET)
    out = _reclassify_empty_capture(capture, m, dynamic_stage=None)
    assert out.status == "failed"
    assert "reclassified_from" not in (out.evidence or {})


def test_preflight_route_up_still_allows_the_app_silence_verdict():
    """CAPREACH1 must not make the honest app-silence downgrade unreachable: when
    the route was proven UP and the device connected, an empty capture with no
    in-process SSL signal really is app-silence, and stays `skipped`."""
    capture = _capture(status="failed", client_connections=3,
                       device_reached_proxy_preflight=True)
    m = _manifest(_INTERNET)
    out = _reclassify_empty_capture(capture, m, dynamic_stage=None)
    assert out.status == "skipped"
    assert out.evidence["reclassified_from"] == "failed"


def test_preflight_unknown_is_treated_as_unknown_not_as_down():
    """A probe that could not be RUN (no `nc` on the device, adb error) is None -
    unknown. It must NOT be read as a down route (which would block the legitimate
    app-silence downgrade) nor as up (which would assert a reachability we never
    measured). The pre-existing signal-3 behavior therefore applies unchanged."""
    capture = _capture(status="failed", client_connections=2,
                       device_reached_proxy_preflight=None)
    m = _manifest(_INTERNET)
    out = _reclassify_empty_capture(capture, m, dynamic_stage=None)
    assert out.status == "skipped"


# --- Signal 0: a recorded certificate refusal decides on its own ---------------

def test_recorded_refusal_decides_over_the_app_silence_inference():
    # The dynamic stage ran and recorded no in-process SSL signal - which is
    # Signal 2's "the app did not exercise its network path". But the proxy WATCHED
    # a client refuse our certificate, and it can only do that after connecting, so
    # the app DID exercise that path. The refusal must decide, and the reason must
    # name the host instead of re-offering app-silence as a live possibility.
    out = _reclassify_empty_capture(
        _capture(tls_failed_clients=[{"host": "api.example.com", "error": "unknown ca"}]),
        _manifest(_INTERNET), _dynamic([]))
    assert out.status == "skipped"
    assert out.evidence["reclassified_from"] == "failed"
    assert out.error is None
    reason = out.evidence["not_applicable_reason"]
    assert "api.example.com" in reason
    assert "refused its certificate" in reason
    assert "neither a wiring failure nor app-silence" in reason


def test_refusal_reason_states_its_attribution_bound_when_no_host_was_captured():
    # The reason attributes a refusal to the target app by its SNI host. With no
    # host recorded it is only "some client on the device" (the proxy is set
    # device-globally), and the reason must say so rather than imply the app.
    out = _reclassify_empty_capture(
        _capture(tls_failed_clients=[{"host": "", "error": "unknown ca"}]),
        _manifest(_INTERNET), None)
    reason = out.evidence["not_applicable_reason"]
    assert "host not captured" in reason
    assert "some client on the device" in reason


def test_an_empty_refusal_list_is_not_evidence():
    # The field is written on every capture now, so an empty list means NO refusal
    # was recorded. Reading its presence as a refusal would fabricate one; the
    # branch tests the list, and with nothing else deciding the stage stays loud.
    out = _reclassify_empty_capture(
        _capture(tls_failed_clients=[]), _manifest(_INTERNET), None)
    assert out.status == "failed"


def test_signal_3_no_longer_offers_a_refusal_it_has_already_excluded():
    out = _reclassify_empty_capture(
        _capture(client_connections=2), _manifest(_INTERNET), None)
    reason = out.evidence["not_applicable_reason"]
    assert "no certificate refusal" in reason
    assert "refused the CA after" not in reason


# --- CAPREACH1 ordering: direct evidence about the ROUTE beats an inference ---

def test_preflight_route_down_outranks_the_app_silence_inference():
    """Signal 2 is an inference about the APP, and a proven-dead ROUTE
    invalidates it: its observers (the app's own CertificatePinner.check /
    TrustManagerImpl.verifyChain, and the recipe checkpoints they emit) fire
    INSIDE a live connection's TLS stage, so a device that cannot open the socket
    to the proxy produces their silence whether or not the app ever tried. With
    the pre-flight verdict consulted only after Signal 2, a run whose dynamic
    stage succeeded reported a dead route as "the app did not exercise its
    network/SSL path ... not a proxy failure" - naming the app for an environment
    break. The probe's own producer records False only on a refused/timed-out
    connect ("the route is already broken, the capture is guaranteed to yield
    nothing"), so it decides first, like Signal 0's recorded refusal."""
    capture = _capture(status="failed", client_connections=0,
                       device_reached_proxy_preflight=False)
    out = _reclassify_empty_capture(capture, _manifest(_INTERNET), _dynamic([]))
    assert out.status == "failed"
    assert "reclassified_from" not in (out.evidence or {})


def test_preflight_route_up_leaves_the_app_silence_inference_intact():
    """The reorder must not make the honest app-silence downgrade unreachable:
    route proven UP, no in-process SSL signal, dynamic ran -> app-silence."""
    capture = _capture(status="failed", client_connections=0,
                       device_reached_proxy_preflight=True)
    out = _reclassify_empty_capture(capture, _manifest(_INTERNET), _dynamic([]))
    assert out.status == "skipped"
    assert "did not exercise" in out.evidence["not_applicable_reason"]


def test_a_connection_the_capture_watched_outranks_a_down_probe():
    """The pre-flight verdict is direct evidence about the route, but it is ONE
    sample taken before the capture window (mitmdump may not have been listening
    yet). client_connections counts the connections the proxy really accepted
    during the window, so >0 is proof the route was usable - a down verdict the
    capture's own log contradicts must not assert a wiring break that log
    disproves. It falls through to Signal 3, which reports what was seen."""
    capture = _capture(status="failed", client_connections=4,
                       device_reached_proxy_preflight=False)
    out = _reclassify_empty_capture(
        capture, _manifest(_INTERNET), _dynamic([], status="skipped"))
    assert out.status == "skipped"
    assert "4 client" in out.evidence["not_applicable_reason"]


# --- Signal 2: the 0 it reads is a fact about the OBSERVERS -------------------

def test_signal2_still_reads_observer_silence_as_app_silence_when_nothing_contradicts_it():
    # The one case where the silence IS informative: a Java-stack app, a route the
    # pre-flight probe did not find down, and no connection the capture observed.
    out = _reclassify_empty_capture(_capture(), _manifest(_INTERNET), _dynamic([]))
    assert out.status == "skipped"
    assert "app did not exercise its network/SSL path" in out.evidence["not_applicable_reason"]
    assert "non_java_tls_layers" not in out.evidence


def test_signal2_names_the_invisible_tls_stack_instead_of_the_app():
    # A WebView page load runs Chromium's own TLS stack and never calls
    # CertificatePinner.check / TrustManagerImpl.verifyChain, so the observers'
    # silence cannot establish that the app made no request.
    out = _reclassify_empty_capture(
        _capture(), _manifest(_INTERNET), _dynamic([]),
        non_java_tls_layers=["WebView (Chromium's own TLS stack)"],
    )
    assert out.status == "skipped"
    reason = out.evidence["not_applicable_reason"]
    assert "WebView (Chromium's own TLS stack)" in reason
    assert "cannot say the app did not exercise" in reason
    # The ASSERTION form must be gone, not merely the words: the honest reason
    # necessarily says it *cannot* make this claim, so the regression guard is the
    # exact claiming phrase the old branch emitted.
    assert "app did not exercise its network/SSL path (no in-process SSL signal" not in reason
    assert out.evidence["non_java_tls_layers"] == ["WebView (Chromium's own TLS stack)"]


def test_signal2_does_not_claim_app_silence_when_a_connection_was_observed():
    # RS_CertPinning 2026-09-16: client_connections=1 with 0 in-process signals. A
    # connection IS the app exercising its network path, so Signal 2 must not assert
    # the opposite of what the proxy measured.
    out = _reclassify_empty_capture(
        _capture(client_connections=1), _manifest(_INTERNET), _dynamic([]),
    )
    assert out.status == "skipped"
    reason = out.evidence["not_applicable_reason"]
    assert "the app opened" in reason and "1 client connection" in reason
    assert "app did not exercise" not in reason


def test_signal3_reason_names_the_invisible_path_when_the_app_has_one():
    out = _reclassify_empty_capture(
        _capture(client_connections=1), _manifest(_INTERNET), _dynamic([]),
        non_java_tls_layers=["Dart AOT snapshot (Flutter's own BoringSSL via dart:io)"],
    )
    assert "Dart AOT snapshot" in out.evidence["not_applicable_reason"]


def test_non_java_tls_layers_names_only_layers_the_scan_corpus_established():
    from cli import _non_java_tls_layers
    assert _non_java_tls_layers(None, None) == []
    assert _non_java_tls_layers([], []) == []
    assert len(_non_java_tls_layers(["Webview.java:22: myWebView.loadUrl(\"https://x\")"], [])) == 1
    assert len(_non_java_tls_layers([], ["libapp.so"])) == 1
    assert len(_non_java_tls_layers(["a"], ["libapp.so"])) == 2


def _liveness_capture(extra):
    ev = {"reason": "no flows captured", "proxy": "127.0.0.1:8081",
          "flows_path": "/x/flows", "client_connections": 0,
          "tls_failed_clients": [], "capture_channel_alive": True}
    ev.update(extra)
    return StageResult(stage="capture-traffic", status="failed", evidence=ev,
                       error="no traffic captured through the proxy")


def _liveness_manifest():
    return ManifestInfo(debuggable=False, network_security_config=None,
                        permissions=["android.permission.INTERNET"])


def test_app_that_never_ran_is_not_reclassified_as_not_applicable():
    # Signals 1/2/3 all reason about the app's network BEHAVIOUR, and not one of them
    # is available for a process that was measurably not running: such an app makes no
    # requests for a reason unrelated to the network, so the emptiness is a real
    # failure the operator has to fix - and "skipped" would hide a run whose target
    # never started.
    out = _reclassify_empty_capture(
        _liveness_capture({"app_pid_after_launch": 0, "app_pid_after_capture": 0}),
        _liveness_manifest(), None)
    assert out.status == "failed"
    assert "reclassified_from" not in out.evidence


def test_never_ran_yields_to_a_recorded_certificate_refusal():
    # A refusal requires the client to have opened the connection and started a
    # handshake, so the process started - the early empty sample was simply early,
    # and the refusal is direct evidence that must keep its say.
    refused = [{"host": "api.example.com", "error": "tlsv1 alert unknown ca"}]
    out = _reclassify_empty_capture(
        _liveness_capture({"app_pid_after_launch": 0, "tls_failed_clients": refused}),
        _liveness_manifest(), None)
    assert out.status == "skipped"
    assert out.evidence["reclassified_from"] == "failed"


def test_never_ran_yields_to_a_connection_the_capture_counted():
    out = _reclassify_empty_capture(
        _liveness_capture({"app_pid_after_launch": 0, "client_connections": 1}),
        _liveness_manifest(), None)
    assert out.status == "skipped"


def test_unmeasured_liveness_leaves_reclassification_exactly_as_it_was():
    # None is not-measured and must never be read as "not running": a run whose probe
    # failed keeps every signal it had before this guard existed.
    without_key = _reclassify_empty_capture(_liveness_capture({}), _liveness_manifest(), None)
    unmeasured = _reclassify_empty_capture(
        _liveness_capture({"app_pid_after_launch": None}), _liveness_manifest(), None)
    assert unmeasured.status == without_key.status
    # Evidence dicts differ by the key's mere presence, so compare the verdict each
    # produced rather than the dicts: what matters is that the guard did not fire.
    assert (unmeasured.evidence.get("not_applicable_reason")
            == without_key.evidence.get("not_applicable_reason"))

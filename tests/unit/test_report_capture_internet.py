"""Report completeness: an empty traffic capture must be cross-referenced with the
manifest's INTERNET permission (memory: report-completeness-gaps).

- No INTERNET declared  -> an empty capture is EXPECTED (app cannot open a socket).
- INTERNET declared     -> an empty capture is a COVERAGE LIMITATION of the run,
                           never evidence the app makes no network calls (ADR-0006).

The no-INTERNET branch already existed; the INTERNET-declared branch was lumped
into a generic note that stated only the reason, silently under-claiming. Pure,
fixture-driven, no Android toolchain."""

from common import (
    Action, CategoryVerdict, ClassificationResult, Evidence, StageResult,
)
from static.manifest import ManifestInfo
from report.generator import generate_report


def _neither_classification():
    root = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    ssl = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    return ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)


def _empty_capture_stage():
    # A real capture stage that produced zero flows - reported honestly as a
    # reason, never fabricated flows (matches _capture_summary's contract).
    return StageResult(
        stage="capture-traffic",
        status="failed",
        evidence={"reason": "capture proxy produced no flows", "flow_summary": []},
        error="no flows recorded",
    )


def _dynamic_stage(frida_messages):
    # A dynamic (Frida) stage carrying a real message stream, so the report's
    # in-process bypass-effect signal is available to disambiguate an empty
    # capture (memory: report-completeness-gaps). status is irrelevant to the
    # audit - _hooks_engaged keys only on stage=="dynamic" + frida_messages.
    return StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": frida_messages, "scripts_applied": ["synthesized"]},
    )


def _render(manifest, tmp_path, extra_stages=()):
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[_empty_capture_stage(), *extra_stages], output_dir=tmp_path, manifest=manifest,
    )
    return report_path.read_text(encoding="utf-8")


def test_empty_capture_with_internet_declared_is_a_coverage_limitation(tmp_path):
    manifest = ManifestInfo(
        debuggable=False, network_security_config=None,
        permissions=["android.permission.INTERNET"],
    )
    content = _render(manifest, tmp_path)
    assert "## Captured Traffic" in content
    # the app CAN talk to the network, so an empty capture is a coverage gap...
    assert "declares `android.permission.INTERNET`" in content
    assert "coverage limitation of this run" in content
    assert "not evidence that the app makes no network calls" in content
    # ...and it must NOT read as the no-permission "expected empty" case.
    assert "expected regardless of proxy state" not in content


def test_empty_capture_without_internet_is_expected(tmp_path):
    manifest = ManifestInfo(
        debuggable=False, network_security_config=None, permissions=[],
    )
    content = _render(manifest, tmp_path)
    assert "## Captured Traffic" in content
    # no socket possible -> empty capture is expected, not a coverage gap.
    assert "no `android.permission.INTERNET` permission" in content
    assert "expected regardless of proxy state" in content
    assert "coverage limitation of this run" not in content


def _internet_manifest():
    return ManifestInfo(
        debuggable=False, network_security_config=None,
        permissions=["android.permission.INTERNET"],
    )


def test_empty_capture_with_internet_and_zero_ssl_effects_is_app_silence(tmp_path):
    # AndroGoat case: dynamic ran, the in-process TLS observer saw 0 bypass
    # effects (only a root probeHit), so an empty capture is an un-exercised
    # network/SSL path - NOT the "device could not reach mitmdump" hypothesis.
    # The observer is a Frida hook independent of the proxy, so its silence
    # positively rules out a proxy-reachability failure.
    dynamic = _dynamic_stage([{"payload": {"probeHit": "root", "path": "/system/xbin/su"}}])
    content = _render(_internet_manifest(), tmp_path, extra_stages=[dynamic])
    assert "## Captured Traffic" in content
    assert "0 SSL bypass-effect messages this run" in content
    assert "un-exercised network/SSL path this run" in content
    assert "not a proxy the device could not reach" in content
    # must NOT read as the proxy-wiring-failure branch...
    assert "real capture-path failure" not in content
    # ...nor collapse back to the generic dual-hypothesis clause.
    assert "may not have exercised the network, or a pinned endpoint refused the proxy CA" not in content


def test_empty_capture_with_internet_and_ssl_effects_is_a_proxy_failure(tmp_path):
    # The other branch: the in-process TLS observer DID see the app's pinned
    # request (a bypassEffect), yet no flow reached the proxy -> the device->proxy
    # path is broken (a real capture-path failure), not app-silence.
    dynamic = _dynamic_stage([{"payload": {"bypassEffect": "ssl-pin-check"}}])
    content = _render(_internet_manifest(), tmp_path, extra_stages=[dynamic])
    assert "## Captured Traffic" in content
    assert "real capture-path failure" in content
    assert "the device->mitmdump traffic path did not carry the request" in content
    assert "ssl-pin-check" in content
    # this is NOT the app-silence case.
    assert "un-exercised network/SSL path this run" not in content


def test_empty_capture_without_dynamic_stage_stays_generic_coverage_limitation(tmp_path):
    # No dynamic stage -> no second (proxy-independent) signal to disambiguate ->
    # the honest generic dual-hypothesis coverage-limitation text is preserved,
    # never over-claimed into either determinate branch.
    content = _render(_internet_manifest(), tmp_path)
    assert "coverage limitation of this run" in content
    assert "may not have exercised the network, or a pinned endpoint refused the proxy CA" in content
    assert "real capture-path failure" not in content
    assert "0 SSL bypass-effect messages this run" not in content


def _crashed_bypass_capture_stage():
    # A capture whose injected pinning-bypass script threw at runtime: a clean
    # `failed` (NOT a raised stage exception), reason "no flows captured", with the
    # crash recorded in evidence.bypass_script_errors - exactly what
    # mitmproxy_capture.run_capture_stage emits for that case.
    return StageResult(
        stage="capture-traffic", status="failed",
        evidence={
            "reason": "no flows captured", "flow_summary": [],
            "bypass_applied": True,
            "bypass_script_errors": ["ReferenceError: Java is not defined (pin.js:12)"],
        },
        error="the pinning-bypass script raised 1 uncaught error(s) (ReferenceError: Java is not defined (pin.js:12)) - the bypass likely did not take",
    )


def test_empty_capture_from_crashed_bypass_names_the_script_not_coverage_limitation(tmp_path):
    # End-to-end closure. A crashed pinning-bypass script is a clean `failed` with
    # reason "no flows captured", so capture_errored is False and the empty capture
    # would fall into the has-INTERNET inferential branch. With a dynamic stage
    # showing 0 SSL bypass effects, that branch MISDIAGNOSES the empty capture as an
    # "un-exercised network/SSL path" coverage limitation - hiding the real cause
    # the capture stage recorded. The dedicated bypass-crash branch must PRE-EMPT
    # that inference and name the crashed script as the true cause.
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[
            _crashed_bypass_capture_stage(),
            _dynamic_stage([{"payload": {"probeHit": "root"}}]),  # 0 SSL bypass effects
        ],
        output_dir=tmp_path, manifest=_internet_manifest(),
    )
    content = report_path.read_text(encoding="utf-8")
    assert "## Captured Traffic" in content
    # the true, recorded cause is named...
    assert "pinning-bypass script" in content
    assert "ReferenceError: Java is not defined (pin.js:12)" in content
    # ...and the inferential misdiagnosis is PRE-EMPTED, never printed. Without the
    # fix, this exact scenario prints "un-exercised network/SSL path this run".
    assert "un-exercised network/SSL path this run" not in content
    assert "coverage limitation of this run" not in content


def test_empty_capture_with_empty_bypass_errors_keeps_inferential_branch(tmp_path):
    # Strict-gate regression guard: the crash branch must fire ONLY on recorded
    # bypass errors. An empty capture with an EMPTY bypass_script_errors (a bypass
    # that applied cleanly, or no bypass at all) must still reach the existing
    # has-INTERNET inferential prose - the crash branch must not swallow the normal
    # empty-capture case.
    stage = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "flow_summary": [],
                  "bypass_applied": True, "bypass_script_errors": []},
        error="no flows",
    )
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[stage, _dynamic_stage([{"payload": {"probeHit": "root"}}])],
        output_dir=tmp_path, manifest=_internet_manifest(),
    )
    content = report_path.read_text(encoding="utf-8")
    assert "un-exercised network/SSL path this run" in content
    assert "pinning-bypass script" not in content


def _success_capture_stage(bypass_script_errors):
    # A capture that DID yield flows (success) while the injected bypass recorded
    # zero-or-more uncaught errors - exactly the evidence shape
    # mitmproxy_capture.run_capture_stage emits on its success path.
    return StageResult(
        stage="capture-traffic", status="success",
        evidence={
            "flows_count": 1, "hosts": ["api.example.com"],
            "flow_summary": [{"host": "api.example.com", "method": "GET",
                              "path": "/v1/ping", "status": "200"}],
            "flows_path": "/x/out.mitm",
            "system_ca": "/system/etc/security/cacerts/x.0",
            "proxy": "127.0.0.1:8080", "bypass_script": "ssl_pinning_bypass_universal.js",
            "bypass_applied": True, "bypass_script_errors": bypass_script_errors,
        },
    )


def test_success_capture_with_bypass_errors_flags_flow_list_as_lower_bound(tmp_path):
    # A bypass hook that crashed can still let OTHER hooks yield flows, so a capture
    # SUCCEEDS with genuine {type:error} messages recorded. The success (flow-table)
    # branch must flag the flow list as a lower bound - a crashed hook may leave some
    # pinned endpoints unbypassed and uncaptured - never silently present a partial
    # capture as a complete traffic inventory (principle 3, no silent failures).
    stage = _success_capture_stage(["ReferenceError: Java is not defined (pin.js:12)"])
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[stage], output_dir=tmp_path, manifest=_internet_manifest(),
    )
    content = report_path.read_text(encoding="utf-8")
    # the real flow is still shown (success path)...
    assert "api.example.com" in content
    assert "/v1/ping" in content
    # ...with a caveat that names the crash and frames the list as a lower bound.
    assert "Partial capture" in content
    assert "ReferenceError: Java is not defined (pin.js:12)" in content
    assert "lower bound" in content


def test_success_capture_without_bypass_errors_has_no_partial_caveat(tmp_path):
    # Strict-gate guard: the lower-bound caveat fires ONLY on recorded bypass errors.
    # A clean successful capture shows the flow table with NO partial-capture caveat.
    stage = _success_capture_stage([])
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[stage], output_dir=tmp_path, manifest=_internet_manifest(),
    )
    content = report_path.read_text(encoding="utf-8")
    assert "api.example.com" in content
    assert "Partial capture" not in content


def _render_one(stage, tmp_path):
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[stage], output_dir=tmp_path, manifest=_internet_manifest(),
    )
    return report_path.read_text(encoding="utf-8")


def test_capture_cleanup_warnings_are_rendered_not_only_stored(tmp_path):
    # run_capture_stage's finally block COLLECTS teardown failures (a leaked device
    # proxy, an un-removed adb reverse, a stray mitmdump - including one on the WSL2
    # Windows host) onto evidence.cleanup_warnings instead of swallowing them. But
    # they were only STORED (and unit-tested as stored), never RENDERED - so a
    # leaked teardown was invisible to a reader of the .md report, only half of the
    # "not swallowed, visible in the report" contract (principle 3). The report must
    # actually surface them, on BOTH the flows and the no-flows capture outcomes
    # (the block sits outside the flows/no-flows branch).
    warns = ["local mitmdump terminate failed (may be stray): boom",
             "adb reverse --remove 8080 failed (leaked reverse): denied"]

    # (a) a SUCCESS capture (flows present) still surfaces the teardown warnings.
    success = _success_capture_stage([])
    success.evidence["cleanup_warnings"] = warns
    c1 = _render_one(success, tmp_path)
    assert "Capture cleanup warnings" in c1
    assert "2 warning(s)" in c1
    assert "local mitmdump terminate failed (may be stray): boom" in c1
    assert "adb reverse --remove 8080 failed (leaked reverse): denied" in c1

    # (b) an EMPTY (no-flows) capture surfaces them too - a leak is visible on
    # either outcome, not just when flows happened to be captured.
    empty = _empty_capture_stage()
    empty.evidence["cleanup_warnings"] = warns
    c2 = _render_one(empty, tmp_path)
    assert "Capture cleanup warnings" in c2
    assert "local mitmdump terminate failed (may be stray): boom" in c2


def test_capture_cleanup_warnings_escaped_and_absent_when_clean(tmp_path):
    # Adversarial teardown text (a stray-process message could carry anything) is
    # escaped via `| md`, so a pipe/newline cannot break the report's structure.
    adversarial = _success_capture_stage([])
    adversarial.evidence["cleanup_warnings"] = ["stray mitmdump on host | port 8081\nrow"]
    c = _render_one(adversarial, tmp_path)
    assert "Capture cleanup warnings" in c
    assert "stray mitmdump on host \\| port 8081 row" in c  # pipe escaped, newline->space

    # Strict gate: a clean capture (no cleanup_warnings recorded) shows NO block -
    # the warning must never be fabricated when teardown completed cleanly.
    clean = _success_capture_stage([])
    assert "cleanup_warnings" not in clean.evidence
    assert "Capture cleanup warnings" not in _render_one(clean, tmp_path)


def _reclassified_skipped_capture_stage():
    # Exactly what cli._reclassify_empty_capture emits for its Signal-2 case: an
    # empty capture (reason "no flows captured") reclassified failed->skipped
    # because the in-process SSL observer showed the app never exercised its
    # network/SSL path - a proxy-INDEPENDENT signal, so the empty capture is
    # not-applicable this run, not a proxy failure. status=="skipped" + a
    # definitive not_applicable_reason; the original reason is preserved too.
    return StageResult(
        stage="capture-traffic", status="skipped",
        evidence={
            "reason": "no flows captured", "flow_summary": [],
            "reclassified_from": "failed",
            "not_applicable_reason": (
                "app did not exercise its network/SSL path (no in-process SSL "
                "signal - 0 bypassEffect and no pinned-connection hook fired for a "
                "host; interactive capture needed) - not a proxy failure"),
        },
        error=None,
    )


def test_reclassified_skipped_capture_names_authoritative_reason_not_inference(tmp_path):
    # not-attempted != skipped, in the REPORT layer. cli._reclassify_empty_capture
    # turns a bare empty-capture FAILURE into a `skipped` stage carrying a definitive,
    # proxy-independent not_applicable_reason "so the stage line stops crying wolf".
    # But _capture_summary keyed capture_present on stage existence and capture_reason
    # on the STALE original reason, ignoring the skipped status and dropping
    # not_applicable_reason entirely - so the report rendered a deliberately-skipped,
    # not-applicable capture through the inferential empty-FAILURE ladder, re-deriving
    # a cause (here "un-exercised network/SSL path this run") the reclassifier had
    # already decided authoritatively (and, in the no-hooks case, one it had ruled
    # OUT). The dedicated not-applicable branch must PRE-EMPT that inference and
    # surface the pipeline's own reason.
    dynamic = _dynamic_stage([{"payload": {"probeHit": "root", "path": "/system/xbin/su"}}])
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[_reclassified_skipped_capture_stage(), dynamic],
        output_dir=tmp_path, manifest=_internet_manifest(),
    )
    content = report_path.read_text(encoding="utf-8")
    assert "## Captured Traffic" in content
    # the stage's TRUE classification is named as such...
    assert "reclassified from a bare failure to" in content
    # ...carrying the pipeline's authoritative, proxy-independent reason verbatim...
    assert "app did not exercise its network/SSL path" in content
    assert "a cause re-derived here from the empty flow list" in content
    # ...and the inferential misdiagnosis that would otherwise fire for this exact
    # (INTERNET + 0-SSL-effect dynamic) shape is PRE-EMPTED, never printed.
    assert "un-exercised network/SSL path this run" not in content


def test_failed_empty_capture_is_not_rendered_as_not_applicable(tmp_path):
    # Strict-gate regression: the not-applicable branch must fire ONLY for a
    # `skipped` (reclassified) capture. A genuine `failed` empty capture (a real
    # proxy/wiring problem the reclassifier deliberately left loud) must NOT be
    # softened into "reclassified ... skipped" - it must still reach the inferential
    # ladder and get its honest, un-softened explanation.
    dynamic = _dynamic_stage([{"payload": {"probeHit": "root"}}])  # 0 SSL effects
    content = _render(_internet_manifest(), tmp_path, extra_stages=[dynamic])
    assert "reclassified from a bare failure to" not in content
    assert "un-exercised network/SSL path this run" in content

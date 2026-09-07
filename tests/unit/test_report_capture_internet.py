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

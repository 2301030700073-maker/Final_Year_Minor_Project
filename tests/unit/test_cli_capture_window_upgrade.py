"""ADR-0016: the capture window's own observer can upgrade the run's SSL verdict.

`cli._upgrade_verification_from_capture_window` is the merge half of that decision,
and it is the half that can silently produce a report whose verdict and evidence
contradict each other by moving the wrong lines - so it is tested against a
`VerificationResult` the real check produced, not against hand-written line keys.
The gate that decides WHEN it runs lives at the call site in run() and is
upgrade-only by construction: the capture window is evaluated only when it ran
hooked and recorded messages, and a non-confirming window leaves the run's
verification untouched.
"""

from dataclasses import replace

from common import VerificationResult
from dynamic.success_checks.technology import (
    SSL_CONFIRMATION_LINE,
    SSL_HANDSHAKE_LINE,
    TechnologyHooksEngagedCheck,
    NATIVE_HOOK_INSTALLATION_LINE,
    WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX,)

import cli


def _capture_shape_messages() -> list[dict]:
    """What the capture stage stores: the payload ALONE, with no Frida
    `{type, payload}` envelope (mitmproxy_capture stores `m.get("payload", m)`).
    Built in that shape deliberately - the dynamic stage's envelope shape is the
    one every existing fixture used, and reading only it is the defect ADR-0016
    exists to fix."""
    return [
        {"hostname": "api.example.com", "bypassEffect": "ssl-pin-check"},
        {"bypassEffect": "ssl-handshake"},
    ]


def _capture_window_verification() -> VerificationResult:
    """A real evaluation of the capture window's stream, by the real check, with
    the window label run() passes. Asserts its own premise: if a stream carrying
    the app's pin-check and a completed handshake stopped confirming the bypass,
    every test below would be asserting about a merge that never happens."""
    verification = TechnologyHooksEngagedCheck().check(
        _capture_shape_messages(),
        app_still_running=True,
        ui_liveness={"window_focused": True},
        window="in this run's capture window, launched by am start",
    )
    assert verification.ssl_bypassed is True, verification.evidence_lines
    # ADR-0023 premise: the check files its hook statement under a key carrying
    # this window, which is what lets the merge keep it beside the dynamic
    # launch's. If a later change made that key constant again, the test below
    # would assert about a merge that can no longer preserve both.
    assert any(
        k.startswith(WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX)
        for k in verification.evidence_lines
    ), verification.evidence_lines
    return verification


def _dynamic_window_verification() -> VerificationResult:
    """The dynamic window's evaluation when its observer confirmed root but saw no
    SSL effect - the state the run is in on the very targets the capture stage
    exists for (the spawn stalls on the splash, so its stream stays silent)."""
    return VerificationResult(
        root_bypassed=True,
        ssl_bypassed=None,
        evidence_lines={
            "app still running after bypass": "True (process survived the settle window)",
            "App UI responsiveness (real-time)": "interactive nodes: 12",
            "root bypass confirmation basis": (
                "app's own root-check probed a root artifact and was answered-false"
            ),
            # ADR-0023's shape: the dynamic launch's own hook statement, which the
            # capture launch's answer must not be able to replace.
            NATIVE_HOOK_INSTALLATION_LINE: (
                "hook(s) the injected script could NOT install: SSL_CTX_set_custom_verify"
            ),
            SSL_HANDSHAKE_LINE: "none observed by the in-app SSL observer",
            SSL_CONFIRMATION_LINE: "not confirmed (need BOTH the app's pin-check to run "
                                   "without rejecting and a TLS handshake to complete)",
        },
    )


def test_upgrade_keeps_both_launches_hook_installation_statements():
    """ADR-0023, on the run that produced it. The capture launch reported four
    native SSL hooks it could not install ("already replaced this function")
    while the dynamic launch's stream carried none of that - and cli.py discarded
    the capture launch's statement, leaving a report whose only hook line says
    "no failed hook installation this run", a claim about the RUN that one of its
    two launches contradicts. Both statements must survive the merge, each under
    the key that names its launch."""
    capture = _capture_window_verification()
    dynamic = _dynamic_window_verification()
    merged = cli._upgrade_verification_from_capture_window(capture, dynamic)

    windowed = [
        k for k in capture.evidence_lines
        if k.startswith(WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX)
    ]
    assert len(windowed) == 1, capture.evidence_lines
    assert merged.evidence_lines[windowed[0]] == capture.evidence_lines[windowed[0]]
    assert merged.evidence_lines[NATIVE_HOOK_INSTALLATION_LINE] == (
        dynamic.evidence_lines[NATIVE_HOOK_INSTALLATION_LINE]
    )


def test_upgrade_does_not_adopt_an_unattributed_hook_statement():
    """The other half of the same rule. A hook line filed under the BARE key
    belongs to the run's own launch - the one whose verdict this merge is
    upgrading - so adopting it would let the second launch's statement overwrite
    the first's, which is the defect ADR-0023 exists to close, one window over
    from where F-9 closed it. The merge copies windowed hook lines only."""
    dynamic = _dynamic_window_verification()
    capture = _capture_window_verification()
    capture = replace(
        capture,
        evidence_lines={
            **capture.evidence_lines,
            NATIVE_HOOK_INSTALLATION_LINE: "no failed hook installation",
        },
    )
    merged = cli._upgrade_verification_from_capture_window(capture, dynamic)
    assert merged.evidence_lines[NATIVE_HOOK_INSTALLATION_LINE] == (
        dynamic.evidence_lines[NATIVE_HOOK_INSTALLATION_LINE]
    )


def test_upgrade_takes_only_the_two_ssl_lines():
    dynamic = _dynamic_window_verification()

    merged = cli._upgrade_verification_from_capture_window(
        _capture_window_verification(), dynamic
    )

    assert merged.ssl_bypassed is True
    # Root and liveness stay exactly as the dynamic window measured them: the
    # capture window's bypass is pinning-only, so it has no root evidence to offer,
    # and its liveness belongs to a different launch.
    assert merged.root_bypassed is True
    assert merged.evidence_lines["app still running after bypass"] == (
        "True (process survived the settle window)"
    )
    assert merged.evidence_lines["App UI responsiveness (real-time)"] == "interactive nodes: 12"
    assert merged.evidence_lines["root bypass confirmation basis"].endswith("answered-false")
    # The two SSL lines are the capture window's, and they say so.
    assert "capture window" in merged.evidence_lines[SSL_HANDSHAKE_LINE]
    assert "capture window" in merged.evidence_lines[SSL_CONFIRMATION_LINE]
    assert "none observed" not in merged.evidence_lines[SSL_HANDSHAKE_LINE]


def test_upgrade_names_the_window_it_confirmed_in():
    merged = cli._upgrade_verification_from_capture_window(
        _capture_window_verification(), _dynamic_window_verification()
    )

    # The label run() builds from the capture stage's own app_launch reaches both
    # lines, so a confirmation can never be read as belonging to the other launch.
    assert "launched by am start" in merged.evidence_lines[SSL_HANDSHAKE_LINE]
    assert "launched by am start" in merged.evidence_lines[SSL_CONFIRMATION_LINE]


def test_upgrade_does_not_mutate_the_verification_it_upgrades_from():
    dynamic = _dynamic_window_verification()

    cli._upgrade_verification_from_capture_window(_capture_window_verification(), dynamic)

    assert dynamic.ssl_bypassed is None
    assert dynamic.evidence_lines[SSL_HANDSHAKE_LINE] == (
        "none observed by the in-app SSL observer"
    )


def test_upgrade_with_no_dynamic_verification_adopts_the_capture_evaluation():
    capture = _capture_window_verification()

    merged = cli._upgrade_verification_from_capture_window(capture, None)

    assert merged is capture
    assert merged.ssl_bypassed is True
    # Root is NOT promoted out of a pinning-only bypass: no root hook ran in that
    # window, so there is no root evidence to import and none is manufactured.
    assert merged.root_bypassed is None

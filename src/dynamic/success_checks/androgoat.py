"""Programmatic success check for AndroGoat SSL-pinning bypass (FR-4.5).

AndroGoat's pinning (TrafficActivity.doPinning) builds an OkHttp
CertificatePinner for owasp.org with three sha256 pins, then executes a
request. ssl_pinning_bypass_v1.js hooks okhttp3.CertificatePinner.check and
sends {"hook": "OkHttp CertificatePinner.check", hostname, bypassed: true}
only when that method is actually called at runtime - i.e. when a real TLS
handshake against owasp.org reaches the pin check. doPinning also logs the
response body with Log.v("Response", ...), a bonus positive signal that the
request actually completed.

Verdict follows the same principle as the root success checks: the bypass is
confirmed by the hook actually firing on the live pin-check path, not by
absence of an error. The pin hook firing is the required signal; the logcat
"Response" line is recorded as bonus evidence, not required (the exact logcat
shape is emulator-version dependent and must not gate a legitimate
hook-confirmed result).
"""

from __future__ import annotations

from common import VerificationResult

# The message the bypass script sends from CertificatePinner.check. A hook
# "not present" message uses the same hook name, so only treat it as fired
# when the message carries the runtime `bypassed` flag (loaded-but-never-called
# hooks send nothing, not a negative).
SSL_PIN_HOOK = "OkHttp CertificatePinner.check"
HOOK_FIRED_MARKER = "bypassed"

# doPinning logs the fetched body via Log.v("Response", ...) - bonus evidence.
RESPONSE_LOG_TAG = "V/Response"


def _pin_hook_fired(frida_log: str) -> bool:
    """Line-coherent pin-hook check (RESID-6G). The whole-log AND it replaces -
    `SSL_PIN_HOOK in log and HOOK_FIRED_MARKER in log` - could pair a "not
    present" line's hook name with a stray `bypassed` on a *different* line and
    false-positive ssl_bypassed. Requiring both on the same line matches the
    line-coherent `_fired_hook_ids` design of the root checkers: a hook name and
    its runtime flag must come from the same message."""
    for line in frida_log.splitlines():
        if SSL_PIN_HOOK in line and HOOK_FIRED_MARKER in line:
            return True
    return False


def _root_probe_hit(frida_log: str) -> bool:
    """A root-artifact probe answered-false is the app's own root check being
    defeated - the root counterpart of the pin-hook firing. The synthesized
    native root envelope (loaded alongside the SSL script for an AndroGoat
    BOTH/ROOT run) emits `{probeHit: 'root', path: <su path>}` when it hides a
    libc access/stat/exec probe, so a line carrying both confirms the root check
    was exercised AND answered-hidden. On the rooted test device that probe would
    otherwise return rooted, so the probeHit IS the check being defeated - the
    same root-confirmation rule the technology-level check applies to unknown
    targets."""
    for line in frida_log.splitlines():
        if "probeHit" in line and "root" in line:
            return True
    return False


class AndroGoatSuccessCheck:
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        combined = f"{logcat_output}\n{frida_log}"

        pin_hook_fired = _pin_hook_fired(frida_log)
        root_probe_hit = _root_probe_hit(frida_log)
        response_received = RESPONSE_LOG_TAG in combined

        evidence_lines: dict[str, str] = {}
        if pin_hook_fired:
            evidence_lines["hook_fired_certificate_pinner_check"] = (
                "CertificatePinner.check hook fired (bypassed=true)"
            )
        else:
            evidence_lines["hooks_not_confirmed"] = (
                "CertificatePinner.check hook firing not confirmed - cannot "
                "confirm the SSL bypass took effect"
            )
        if root_probe_hit:
            evidence_lines["root_probe_hit"] = (
                "app's root check probed a root artifact and was answered-hidden "
                "(probeHit) - root bypass confirmed"
            )
        if response_received:
            evidence_lines["response_received"] = (
                "doPinning logged an HTTP response (Log.v 'Response') - the "
                "request completed"
            )

        return VerificationResult(
            # Root is confirmed when the app's own root check probed a root
            # artifact and was answered-hidden (probeHit from the synthesized
            # native root envelope). Not confirmed stays None (inconclusive), not
            # False - matching the technology check and RESID-6F, so it is never
            # blended with a confirmed failure in correlation.
            root_bypassed=True if root_probe_hit else None,
            # RESID-6F: not confirmed is None (inconclusive), not False (a
            # definitive failure) - the pin hook not firing means "could not
            # verify", which must not be blended with a confirmed failure in
            # correlation.
            ssl_bypassed=True if pin_hook_fired else None,
            evidence_lines=evidence_lines,
        )

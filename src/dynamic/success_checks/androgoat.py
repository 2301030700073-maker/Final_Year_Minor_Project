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

import re

from common import VerificationResult

# The message the bypass script sends from CertificatePinner.check. A hook
# "not present" message uses the same hook name, so only treat it as fired
# when the message carries the runtime `bypassed` flag (loaded-but-never-called
# hooks send nothing, not a negative).
SSL_PIN_HOOK = "OkHttp CertificatePinner.check"
# Only a runtime `bypassed: true` FIRE counts (AG-FIRED-POLARITY). The bare word
# "bypassed" also appears in a {\'bypassed\': False} message - the hook ran but the
# pin was NOT defeated - and in the "not present" note this constant's own comment
# warns about, so a substring match on the word would confirm an SSL bypass that
# never happened. Require the value true, mirroring _ROOT_PROBE_RE's value-matching.
HOOK_FIRED_MARKER = "bypassed"
_HOOK_FIRED_RE = re.compile(r"bypassed['\"]?\s*:\s*(?:true|True)\b")

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
        if SSL_PIN_HOOK in line and _HOOK_FIRED_RE.search(line):
            return True
    return False


# The synthesized native root envelope emits `send({probeHit: 'root', path: ...})`;
# cli.py logs each frida message as str(message_dict), so the on-wire form in
# frida_log is Python-repr - `'probeHit': 'root'`. Match the probeHit VALUE, not a
# bare "root" substring (AG-SC1): the old `"probeHit" in line and "root" in line`
# also fired on a line that merely contained both tokens - a frida error/diagnostic
# naming a probeHit handler and a path under /root, or a probeHit of some OTHER type
# whose path happens to contain "root" - over-claiming a confirmed root bypass.
# `['\"]?` on the key tolerates the bare-key JS-object form and the quoted repr/JSON
# forms; requiring the value quoted on both sides keeps it precise. Tolerating single
# OR double quotes means a future switch to JSON logging cannot silently turn this
# into a false negative.
_ROOT_PROBE_RE = re.compile(r"probeHit['\"]?\s*:\s*['\"]root['\"]")
# F-1/F-2: a root probeHit whose artifact was explicitly absent (`present: False`)
# is a no-op hide - hiding a file that was never on the device changes nothing, so
# it is NOT evidence the app's root check was defeated. The exact Python-repr /
# JSON forms cli.py logs both spell it `present: False` / `"present": false`.
_PRESENT_FALSE_RE = re.compile(r"present['\"]?\s*:\s*False")


def _root_probe_hit(frida_log: str) -> bool:
    """A root-artifact probe answered-false is the app's own root check being
    defeated - the root counterpart of the pin-hook firing. The synthesized
    native root envelope (loaded alongside the SSL script for an AndroGoat
    BOTH/ROOT run) emits `{probeHit: 'root', path: <su path>}` when it hides a
    libc access/stat/exec probe, so a line whose probeHit VALUE is 'root' confirms
    the root check was exercised AND answered-hidden. On the rooted test device
    that probe would otherwise return rooted, so the probeHit IS the check being
    defeated - the same root-confirmation rule the technology-level check applies
    to unknown targets.

    AG-SC1: match the probeHit value precisely (`_ROOT_PROBE_RE`) rather than a
    loose `"root" in line`, so a non-root probeHit - or an error line that merely
    mentions "root" - cannot over-claim a confirmed root bypass. Same line-coherent
    rigor `_pin_hook_fired` applies to the SSL side (RESID-6G).

    F-1/F-2: a root probeHit whose artifact was explicitly absent (`present:
    False`) is a no-op hide and is excluded (it would false-confirm root on a
    non-rooted device, ADR-0006). Legacy probeHits with no `present` field still
    confirm, preserving pre-fix behavior."""
    for line in frida_log.splitlines():
        if _ROOT_PROBE_RE.search(line):
            # Skip a probeHit that hid an artifact that was never present - see
            # _PRESENT_FALSE_RE above.
            if _PRESENT_FALSE_RE.search(line):
                continue
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

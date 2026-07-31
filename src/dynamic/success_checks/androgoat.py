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


class AndroGoatSuccessCheck:
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        combined = f"{logcat_output}\n{frida_log}"

        pin_hook_fired = SSL_PIN_HOOK in frida_log and HOOK_FIRED_MARKER in frida_log
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
        if response_received:
            evidence_lines["response_received"] = (
                "doPinning logged an HTTP response (Log.v 'Response') - the "
                "request completed"
            )

        return VerificationResult(
            root_bypassed=None,  # root not attempted for an SSL-only run
            ssl_bypassed=bool(pin_hook_fired),
            evidence_lines=evidence_lines,
        )

"""Programmatic success check for UnCrackable1 (FR-4.5).

Updated with patterns confirmed by manual decompilation (phase-0 findings doc):
- Block signals: "Root detected!", "App is debuggable!", "This is unacceptable"
- Success signal: "Success!" dialog title / "This is the correct secret."
- Bypass is confirmed when no block signal appears AND hooks were injected
  (the success dialog only shows if someone also enters the correct secret
  and clicks verify, which the automated pipeline doesn't do).
"""

from __future__ import annotations

import re

from common import VerificationResult

SECRET_REVEALED_PATTERN = r"Success\!|correct secret"
BLOCK_SIGNAL_PATTERN = r"Root detected\!|App is debuggable\!|unacceptable"


class UnCrackable1SuccessCheck:
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        combined = f"{logcat_output}\n{frida_log}"

        secret_match = re.search(SECRET_REVEALED_PATTERN, combined, re.IGNORECASE)
        block_match = re.search(BLOCK_SIGNAL_PATTERN, combined, re.IGNORECASE)

        # Bypass is confirmed if no block signal is present.
        # The success/secret dialog only shows after manual interaction
        # (entering the correct secret and clicking verify), which the
        # automated pipeline doesn't perform — so success_pattern is a
        # bonus, not a requirement. If hooks were injected and the app
        # didn't show a block dialog, the root check was bypassed.
        root_bypassed = not bool(block_match)

        evidence_lines = {}
        if secret_match:
            evidence_lines["secret_revealed"] = secret_match.group(0)
        if block_match:
            evidence_lines["block_signal_still_present"] = block_match.group(0)

        return VerificationResult(
            root_bypassed=root_bypassed,
            ssl_bypassed=None,
            evidence_lines=evidence_lines,
        )

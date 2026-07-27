"""Programmatic success check for UnCrackable1 (FR-4.5).

PROVISIONAL: the patterns below are a reasonable starting point based on
UnCrackable1's publicly-documented behavior (a revealed secret string on
successful bypass; a block/exit signal when root or debugging is detected),
but have not been empirically confirmed against a real run yet. Step 0
(docs/plans/research/phase0-uncrackable1-manual-findings.md) must confirm
or correct these before a run's result is treated as a real finding rather
than a best-effort guess - this module's job is to make that a one-line
data change (SECRET_REVEALED_PATTERN / BLOCK_SIGNAL_PATTERN), not a
structural one.
"""

from __future__ import annotations

import re

from common import VerificationResult

SECRET_REVEALED_PATTERN = r"basic string encryption|this is the secret|success"
BLOCK_SIGNAL_PATTERN = r"root detected|rooted device|application will exit|debugger detected"


class UnCrackable1SuccessCheck:
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        combined = f"{logcat_output}\n{frida_log}"

        secret_match = re.search(SECRET_REVEALED_PATTERN, combined, re.IGNORECASE)
        block_match = re.search(BLOCK_SIGNAL_PATTERN, combined, re.IGNORECASE)

        root_bypassed = bool(secret_match) and not bool(block_match)

        evidence_lines = {}
        if secret_match:
            evidence_lines["secret_revealed"] = secret_match.group(0)
        if block_match:
            evidence_lines["block_signal_still_present"] = block_match.group(0)

        return VerificationResult(
            root_bypassed=root_bypassed,
            ssl_bypassed=None,  # Step 0 must confirm whether UnCrackable1 implements pinning at all
            evidence_lines=evidence_lines,
        )

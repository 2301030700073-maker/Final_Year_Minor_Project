"""Programmatic success check for UnCrackable1 (FR-4.5).

Patterns confirmed by manual decompilation (phase-0 findings doc):
- Block signals: "Root detected!", "App is debuggable!", "This is unacceptable"
- Success signal: "Success!" dialog title / "This is the correct secret."
  (bonus evidence only - the dialog needs a human to type the decrypted
  secret and click verify, which no automated run does, so this can never
  be the primary signal.)

Verdict is based on the Frida script's own hook-firing confirmation, not
absence of a block signal alone. Absence-of-block-signal was tried first
and proven unreliable in real runs: a logcat clear/capture race meant two
runs with byte-for-byte identical Frida evidence produced opposite
verdicts, purely depending on whether a stale block-signal line survived
the race window. Requiring the hooks to have actually fired (per-method
`forced_result` messages, not just the setup-time "all three hooked"
message, which fires before the app necessarily calls anything) is
evidence the bypass had a real runtime effect, not just that it was
loaded successfully.
"""

from __future__ import annotations

import re

from common import VerificationResult

SECRET_REVEALED_PATTERN = r"Success\!|correct secret"
BLOCK_SIGNAL_PATTERN = r"Root detected\!|App is debuggable\!|unacceptable"
HOOKS_INSTALLED_PATTERN = r"all three hooked"

# The three root-check methods on sg.vantagepoint.a.c that root_bypass_v1.js
# hooks. Each sends {"hook": "<id>", "forced_result": false} only when the
# app actually calls that method at runtime - stronger evidence than the
# "all three hooked" setup-time message alone.
ROOT_CHECK_HOOK_IDS = ("c.a", "c.b", "c.c")
DEBUG_CHECK_HOOK_ID = "b.a"  # sg.vantagepoint.a.b - bonus evidence, not required


def _fired_hook_ids(frida_log: str) -> set[str]:
    """Hook ids with an observed forced_result firing confirmation.

    frida_log is one str(message_dict) per line (built in cli.py) - not
    JSON, so this is a substring scan per line, not a JSON parse. Line-based
    on purpose: keeps a hook id and its forced_result on the same message
    from being matched against a different message's tokens.
    """
    fired: set[str] = set()
    for line in frida_log.splitlines():
        if "forced_result" not in line:
            continue
        for hook_id in ROOT_CHECK_HOOK_IDS + (DEBUG_CHECK_HOOK_ID,):
            if f"'{hook_id}'" in line or f'"{hook_id}"' in line:
                fired.add(hook_id)
    return fired


class UnCrackable1SuccessCheck:
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        combined = f"{logcat_output}\n{frida_log}"

        secret_match = re.search(SECRET_REVEALED_PATTERN, combined, re.IGNORECASE)
        block_match = re.search(BLOCK_SIGNAL_PATTERN, combined, re.IGNORECASE)
        hooks_installed_match = re.search(HOOKS_INSTALLED_PATTERN, frida_log, re.IGNORECASE)
        fired_hooks = _fired_hook_ids(frida_log)
        hooks_confirmed_fired = all(h in fired_hooks for h in ROOT_CHECK_HOOK_IDS)

        evidence_lines: dict[str, str] = {}
        if hooks_installed_match:
            evidence_lines["hooks_installed"] = hooks_installed_match.group(0)
        for hook_id in ROOT_CHECK_HOOK_IDS:
            if hook_id in fired_hooks:
                evidence_lines[f"hook_fired_{hook_id}"] = f"{hook_id}: forced_result=false"
        if DEBUG_CHECK_HOOK_ID in fired_hooks:
            evidence_lines[f"hook_fired_{DEBUG_CHECK_HOOK_ID}"] = f"{DEBUG_CHECK_HOOK_ID}: forced_result=false"
        if secret_match:
            evidence_lines["secret_revealed"] = secret_match.group(0)
        if block_match:
            evidence_lines["block_signal_still_present"] = block_match.group(0)

        if hooks_confirmed_fired and block_match:
            # Contradiction: every root-check hook fired and forced a result,
            # yet a block signal also appeared. Most likely a stale/racy
            # logcat entry, but that's not proven here - never silently
            # resolve this either way, record both signals and flag it.
            root_bypassed = False
            evidence_lines["anomaly"] = (
                "hooks confirmed fired but a block signal was also observed - "
                "contradiction, investigate before trusting either signal alone"
            )
        elif hooks_confirmed_fired and not block_match:
            root_bypassed = True
        else:
            # RESID-6F: not confirmed is inconclusive (None), not a definitive
            # failure (False). The hooks simply didn't fire - that means "could
            # not verify", the same tier the None type exists for, and must not
            # be blended with a confirmed-failed bypass in correlation. Only the
            # contradiction branch above (hooks fired AND block signal) is a real
            # False.
            root_bypassed = None
            missing = sorted(set(ROOT_CHECK_HOOK_IDS) - fired_hooks)
            evidence_lines["hooks_not_confirmed"] = (
                f"hook firing not confirmed for: {missing} - cannot confirm the bypass took effect"
            )

        return VerificationResult(
            root_bypassed=root_bypassed,
            ssl_bypassed=None,
            evidence_lines=evidence_lines,
        )

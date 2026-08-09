"""Programmatic success check for UnCrackable2 (FR-4.5).

Level 2's root-detection is byte-for-byte identical to Level 1's - same
three checks (PATH-split su lookup, Build.TAGS test-keys, 7-entry known-
indicator-file array) - just moved from sg.vantagepoint.a.c to
sg.vantagepoint.a.b. The debug-flag check moved from sg.vantagepoint.a.b
to sg.vantagepoint.a.a. Confirmed against the real decompiled b.java/
a.java, not guessed (see docs/plans/handoff/phase-2-handoff.md).

Level 2 also adds a background AsyncTask that polls
Debug.isDebuggerConnected() and shows a "Debugger detected!" dialog if it
ever returns true. That's neither root-detection nor SSL-pinning - it's
hooked in root_bypass_uncrackable2.js purely as a defensive precaution
(see that script's comment for why), and its evidence is tracked
separately below under its own key, never folded into the root-check hook
set or the root_bypassed verdict.

Same hook-firing-confirmation design as uncrackable1.py - see that
module's docstring for why absence-of-block-signal alone isn't used.
"""

from __future__ import annotations

import re

from common import VerificationResult

SECRET_REVEALED_PATTERN = r"Success\!|correct secret"
BLOCK_SIGNAL_PATTERN = r"Root detected\!|App is debuggable\!|Debugger detected\!|unacceptable"
HOOKS_INSTALLED_PATTERN = r"all three hooked"

# Fully-qualified hook ids - see root_bypass_uncrackable2.js's header
# comment for why (Level 2's classes reuse Level 1's short letters for a
# different purpose, so the full path avoids ambiguity reading the two
# scripts/success-checks side by side).
ROOT_CHECK_HOOK_IDS = (
    "sg.vantagepoint.a.b.a",
    "sg.vantagepoint.a.b.b",
    "sg.vantagepoint.a.b.c",
)
DEBUG_CHECK_HOOK_ID = "sg.vantagepoint.a.a.a"  # bonus evidence, not required
ANTI_DEBUG_POLL_HOOK_ID = "android.os.Debug.isDebuggerConnected"  # NOT root-detection evidence - see module docstring


def _fired_hook_ids(frida_log: str) -> set[str]:
    """Hook ids with an observed forced_result firing confirmation.

    Same substring/line-based scan as uncrackable1.py's _fired_hook_ids -
    frida_log is one str(message_dict) per line (built in cli.py), not JSON.
    """
    fired: set[str] = set()
    all_ids = ROOT_CHECK_HOOK_IDS + (DEBUG_CHECK_HOOK_ID, ANTI_DEBUG_POLL_HOOK_ID)
    for line in frida_log.splitlines():
        if "forced_result" not in line:
            continue
        for hook_id in all_ids:
            if f"'{hook_id}'" in line or f'"{hook_id}"' in line:
                fired.add(hook_id)
    return fired


class UnCrackable2SuccessCheck:
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
        if ANTI_DEBUG_POLL_HOOK_ID in fired_hooks:
            evidence_lines["anti_debug_poll_neutralized"] = (
                f"{ANTI_DEBUG_POLL_HOOK_ID}: forced_result=false - NOT root-detection evidence, "
                "hooked only as a defensive precaution against the anti-debug watchdog thread"
            )
        if secret_match:
            evidence_lines["secret_revealed"] = secret_match.group(0)
        if block_match:
            evidence_lines["block_signal_still_present"] = block_match.group(0)

        if hooks_confirmed_fired and block_match:
            # Contradiction: every root-check hook fired and forced a result,
            # yet a block signal also appeared. Most likely a stale/racy
            # logcat entry (same class of issue as Level 1's, see
            # uncrackable1.py), but that's not proven here - never silently
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
            # failure (False) - see uncrackable1.py for the rationale.
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

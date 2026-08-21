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

from common import VerificationResult
from dynamic.success_checks._base import run_check

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

# Every hook id the fired-scan watches: the root checks plus the debug check
# and the anti-debug poll.
ALL_HOOK_IDS = ROOT_CHECK_HOOK_IDS + (DEBUG_CHECK_HOOK_ID, ANTI_DEBUG_POLL_HOOK_ID)


def _extra_evidence(fired_hooks: set[str], evidence_lines: dict[str, str]) -> None:
    """Bonus, non-root evidence unique to Level 2 - never folded into the
    root_bypassed verdict."""
    if ANTI_DEBUG_POLL_HOOK_ID in fired_hooks:
        evidence_lines["anti_debug_poll_neutralized"] = (
            f"{ANTI_DEBUG_POLL_HOOK_ID}: forced_result=false - NOT root-detection evidence, "
            "hooked only as a defensive precaution against the anti-debug watchdog thread"
        )


class UnCrackable2SuccessCheck:
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        return run_check(
            logcat_output, frida_log,
            secret_pattern=SECRET_REVEALED_PATTERN,
            block_pattern=BLOCK_SIGNAL_PATTERN,
            hooks_installed_pattern=HOOKS_INSTALLED_PATTERN,
            root_hook_ids=ROOT_CHECK_HOOK_IDS,
            debug_hook_id=DEBUG_CHECK_HOOK_ID,
            all_hook_ids=ALL_HOOK_IDS,
            firing_markers=("forced_result",),
            extra_evidence=_extra_evidence,
        )

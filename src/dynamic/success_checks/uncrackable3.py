"""Programmatic success check for UnCrackable3 (FR-4.5).

Root-detection moved again to sg.vantagepoint.util.RootDetection
(checkRoot1/2/3) - byte-for-byte identical to Level 1/2. Debug-flag check
renamed to sg.vantagepoint.util.IntegrityCheck.isDebuggable. Confirmed
against the real decompiled sources, not guessed.

Two genuinely new things here, neither given a signature entry in
root_detection.yaml (same reasoning as Level 2's anti-debug poll - see
that module's docstring):

1. MainActivity.verifyLibs() - a CRC32 anti-tamper check (native library +
   classes.dex), hooked to a full no-op since it's void - there's no
   boolean to force. Tracked under TAMPER_CHECK_HOOK_ID using a
   "neutralized" marker instead of "forced_result", since nothing was
   forced to any particular return value - the method's body just never
   ran.
2. Debug.isDebuggerConnected() poll - unlike Level 2, nothing gates the
   resulting System.exit(0) on a UI tap this pipeline performs, so this
   hook is structurally mandatory by consequence-severity if it ever does
   fire. That said, a real baseline run against this exact APK left the
   poll completely unhooked for a full settle window with no crash, so
   "confirmed necessary by observed behavior" would overclaim - it isn't,
   yet. Tracked under ANTI_DEBUG_POLL_HOOK_ID.

Both of the above, plus the debug-flag check, must actually be neutralized
for a clean run: all five conditions (three root checks, isDebuggable,
tampered) feed the SAME "Rooting or tampering detected." dialog here, so
leaving any one of them un-hooked would trip that block signal even with
every real root check confirmed bypassed - landing in the
hooks-fired-but-block-signal-present branch below. That's a real,
deterministic contradiction in that case, not the Phase 1 logcat race it
was originally designed to catch - both look identical from here, which is
exactly why the anomaly is reported rather than silently guessed at either
way.

Same hook-firing-confirmation design as uncrackable1.py/uncrackable2.py -
see uncrackable1.py's docstring for the full reasoning behind requiring
firing confirmation over absence-of-block-signal.
"""

from __future__ import annotations

from common import VerificationResult
from dynamic.success_checks._base import run_check

SECRET_REVEALED_PATTERN = r"Success\!|correct secret"
BLOCK_SIGNAL_PATTERN = r"Rooting or tampering detected|Debugger detected\!|unacceptable"
HOOKS_INSTALLED_PATTERN = r"all three hooked"

# Fully-qualified hook ids - each target has its own MainActivity, so for
# TAMPER_CHECK_HOOK_ID especially the short form would be genuinely
# ambiguous across targets, not just a readability nicety.
ROOT_CHECK_HOOK_IDS = (
    "sg.vantagepoint.util.RootDetection.checkRoot1",
    "sg.vantagepoint.util.RootDetection.checkRoot2",
    "sg.vantagepoint.util.RootDetection.checkRoot3",
)
DEBUG_CHECK_HOOK_ID = "sg.vantagepoint.util.IntegrityCheck.isDebuggable"  # bonus evidence, not required
ANTI_DEBUG_POLL_HOOK_ID = "android.os.Debug.isDebuggerConnected"  # NOT root-detection evidence - see module docstring
TAMPER_CHECK_HOOK_ID = "sg.vantagepoint.uncrackable3.MainActivity.verifyLibs"  # NOT root-detection evidence either

# Every hook id the fired-scan watches: the root checks plus the debug check
# and the two neutralizer hooks.
ALL_HOOK_IDS = ROOT_CHECK_HOOK_IDS + (
    DEBUG_CHECK_HOOK_ID, ANTI_DEBUG_POLL_HOOK_ID, TAMPER_CHECK_HOOK_ID,
)

# verifyLibs is void, so its firing confirmation uses "neutralized" rather
# than "forced_result" (there's no boolean result to force) - recognize
# either marker as a valid firing confirmation.
FIRING_MARKERS = ("forced_result", "neutralized")


def _extra_evidence(fired_hooks: set[str], evidence_lines: dict[str, str]) -> None:
    """Bonus, non-root evidence unique to Level 3 - never folded into the
    root_bypassed verdict."""
    if ANTI_DEBUG_POLL_HOOK_ID in fired_hooks:
        evidence_lines["anti_debug_poll_neutralized"] = (
            f"{ANTI_DEBUG_POLL_HOOK_ID}: forced_result=false - NOT root-detection evidence, "
            "hooked because nothing gates the resulting System.exit(0) on a UI tap here"
        )
    if TAMPER_CHECK_HOOK_ID in fired_hooks:
        evidence_lines["tamper_check_neutralized"] = (
            f"{TAMPER_CHECK_HOOK_ID}: neutralized=true (void method, no-op'd) - NOT root-detection evidence"
        )


class UnCrackable3SuccessCheck:
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        return run_check(
            logcat_output, frida_log,
            secret_pattern=SECRET_REVEALED_PATTERN,
            block_pattern=BLOCK_SIGNAL_PATTERN,
            hooks_installed_pattern=HOOKS_INSTALLED_PATTERN,
            root_hook_ids=ROOT_CHECK_HOOK_IDS,
            debug_hook_id=DEBUG_CHECK_HOOK_ID,
            all_hook_ids=ALL_HOOK_IDS,
            firing_markers=FIRING_MARKERS,
            extra_evidence=_extra_evidence,
        )

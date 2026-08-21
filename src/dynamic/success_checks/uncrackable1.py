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

from common import VerificationResult
from dynamic.success_checks._base import run_check

SECRET_REVEALED_PATTERN = r"Success\!|correct secret"
BLOCK_SIGNAL_PATTERN = r"Root detected\!|App is debuggable\!|unacceptable"
HOOKS_INSTALLED_PATTERN = r"all three hooked"

# The three root-check methods on sg.vantagepoint.a.c that root_bypass_v1.js
# hooks. Each sends {"hook": "<id>", "forced_result": false} only when the
# app actually calls that method at runtime - stronger evidence than the
# "all three hooked" setup-time message alone.
ROOT_CHECK_HOOK_IDS = ("c.a", "c.b", "c.c")
DEBUG_CHECK_HOOK_ID = "b.a"  # sg.vantagepoint.a.b - bonus evidence, not required

# Every hook id the fired-scan watches: the root checks plus the debug check.
ALL_HOOK_IDS = ROOT_CHECK_HOOK_IDS + (DEBUG_CHECK_HOOK_ID,)


class UnCrackable1SuccessCheck:
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
        )

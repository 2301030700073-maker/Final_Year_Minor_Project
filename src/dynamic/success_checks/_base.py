"""Shared success-check engine for the UnCrackable targets (FR-4.5).

The three UnCrackable levels run the same hook-firing-confirmation verdict
over the same shape of Frida evidence - they differ only in the per-target
patterns, the set of hook ids, and (on Level 3) which firing markers count.
This module holds that shared engine so the per-target modules stay thin and
cannot drift.

The verdict is based on the Frida script's own hook-firing confirmation, not
absence of a block signal alone. Absence-of-block-signal was tried first and
proven unreliable in real runs: a logcat clear/capture race meant two runs
with byte-for-byte identical Frida evidence produced opposite verdicts,
purely depending on whether a stale block-signal line survived the race
window. Requiring the hooks to have actually fired (per-method messages, not
just the setup-time "all three hooked" message, which fires before the app
necessarily calls anything) is evidence the bypass had a real runtime
effect, not just that it was loaded successfully.
"""

from __future__ import annotations

import re

from common import VerificationResult

# The three UnCrackable levels report a root-check hook as fired only when
# the app actually called the method at runtime. Every target emits
# "forced_result"; uc3's verifyLibs is void, so it also emits "neutralized"
# (see uncrackable3.py) - each target passes the markers its scripts use.
DEFAULT_FIRING_MARKERS = ("forced_result", "neutralized")


def fired_hook_ids(frida_log: str, all_hook_ids: tuple[str, ...],
                   firing_markers=DEFAULT_FIRING_MARKERS) -> set[str]:
    """Hook ids with an observed firing confirmation.

    frida_log is one str(message_dict) per line (built in cli.py) - not JSON,
    so this is a substring scan per line, not a JSON parse. Line-based on
    purpose: keeps a hook id and its marker on the same message from being
    matched against a different message's tokens.
    """
    fired: set[str] = set()
    for line in frida_log.splitlines():
        if not any(marker in line for marker in firing_markers):
            continue
        for hook_id in all_hook_ids:
            if f"'{hook_id}'" in line or f'"{hook_id}"' in line:
                fired.add(hook_id)
    return fired


def run_check(
    logcat_output: str,
    frida_log: str,
    *,
    secret_pattern: str,
    block_pattern: str,
    hooks_installed_pattern: str,
    root_hook_ids: tuple[str, ...],
    debug_hook_id: str,
    all_hook_ids: tuple[str, ...],
    firing_markers: tuple[str, ...] = DEFAULT_FIRING_MARKERS,
    extra_evidence=None,
) -> VerificationResult:
    """Hook-firing-confirmation verdict for the UnCrackable targets.

    `extra_evidence`, when given, is a callable (fired_hooks, evidence_lines)
    that appends per-target bonus evidence (e.g. uc2/uc3's anti-debug poll,
    uc3's tamper check) after the common root/debug hook lines.
    """
    combined = f"{logcat_output}\n{frida_log}"

    secret_match = re.search(secret_pattern, combined, re.IGNORECASE)
    block_match = re.search(block_pattern, combined, re.IGNORECASE)
    hooks_installed_match = re.search(hooks_installed_pattern, frida_log, re.IGNORECASE)
    fired_hooks = fired_hook_ids(frida_log, all_hook_ids, firing_markers)
    # `all()` over an empty root_hook_ids is vacuously True, which would confirm a
    # root bypass from ZERO fired hooks - a silent OVER-claim, the worst direction
    # for this tool and a direct violation of this engine's core invariant (never
    # confirm a bypass from absence of evidence - see module docstring). A target
    # with no root-check hooks cannot have a confirmed root bypass, so require at
    # least one hook: the verdict then falls to None (inconclusive) rather than a
    # fabricated True. No current UnCrackable target passes an empty set - this
    # guards the reusable engine against a future/misconfigured caller (the whole
    # reason this shared engine exists is so a new target reuses it without drift).
    hooks_confirmed_fired = bool(root_hook_ids) and all(h in fired_hooks for h in root_hook_ids)

    evidence_lines: dict[str, str] = {}
    if hooks_installed_match:
        evidence_lines["hooks_installed"] = hooks_installed_match.group(0)
    for hook_id in root_hook_ids:
        if hook_id in fired_hooks:
            evidence_lines[f"hook_fired_{hook_id}"] = f"{hook_id}: forced_result=false"
    if debug_hook_id in fired_hooks:
        evidence_lines[f"hook_fired_{debug_hook_id}"] = f"{debug_hook_id}: forced_result=false"
    if extra_evidence is not None:
        extra_evidence(fired_hooks, evidence_lines)
    if secret_match:
        evidence_lines["secret_revealed"] = secret_match.group(0)
    if block_match:
        evidence_lines["block_signal_still_present"] = block_match.group(0)

    if hooks_confirmed_fired and block_match:
        # Contradiction: every root-check hook fired and forced a result,
        # yet a block signal also appeared. Most likely a stale/racy logcat
        # entry, but that's not proven here - never silently resolve this
        # either way, record both signals and flag it.
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
        if not root_hook_ids:
            # The guard above already forced None here; say why plainly so a
            # future target that reused this engine with no root hooks reads a
            # clear cause instead of a bare "not confirmed for: []".
            evidence_lines["hooks_not_confirmed"] = (
                "no root-check hooks were defined for this target - cannot confirm a root bypass"
            )
        else:
            missing = sorted(set(root_hook_ids) - fired_hooks)
            evidence_lines["hooks_not_confirmed"] = (
                f"hook firing not confirmed for: {missing} - cannot confirm the bypass took effect"
            )

    return VerificationResult(
        root_bypassed=root_bypassed,
        ssl_bypassed=None,
        evidence_lines=evidence_lines,
    )

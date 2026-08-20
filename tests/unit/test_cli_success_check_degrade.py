"""Regression test for the success-check stage's unknown-target degrade path.

A real PropertyGuru run exposed a hard-halt defect: after a successful dynamic
stage (Frida attach + synthesized bypass, L-M2), the success-check stage looked
up SUCCESS_CHECKS for an unknown target and found nothing, then _halt'ed the
whole pipeline with EXIT=1 - discarding a complete, correct static + dynamic
run. That is the NORMAL case for a real app not in SCRIPTS_BY_TARGET_ACTION, not
the config-drift error the "must stay in sync" halt is meant to catch.

The fix distinguishes the two:
  * KNOWN target (in SCRIPTS_BY_TARGET_ACTION) with no SUCCESS_CHECKS entry =
    genuine drift -> halt loudly.
  * UNKNOWN target (not in SCRIPTS_BY_TARGET_ACTION) with no SUCCESS_CHECKS
    entry = expected (synthesized bypass, no target-specific check) -> degrade
    to a skipped stage; the report says "not verified / not attempted".

These tests pin the data invariant that discriminator relies on: every known
target has a SuccessCheck, and a representative unknown target is in neither
dict so the degrade path is what runs.
"""

from cli import SUCCESS_CHECKS, _canonical_target
from dynamic.frida_runner import SCRIPTS_BY_TARGET_ACTION


def test_every_known_target_has_a_success_check_in_sync():
    # F-invariant: every target with hand-authored bypass scripts must have a
    # registered SuccessCheck. This is exactly the set where a missing entry is
    # genuine config drift and the success-check stage must halt loudly. If this
    # breaks, a known target's bypass would run with no way to verify its
    # outcome - a silent unverified pass.
    for target in SCRIPTS_BY_TARGET_ACTION:
        assert _canonical_target(target) in SUCCESS_CHECKS, (
            f"'{target}' is in SCRIPTS_BY_TARGET_ACTION but has no SUCCESS_CHECKS "
            "entry - the 'must stay in sync' invariant is broken"
        )


def test_known_and_unknown_target_sets_are_disjoint():
    # The two dicts key on the same known-target set. propertyguru is a real app
    # that is intentionally in neither: its dynamic stage runs the synthesized
    # bypass with no target-specific success check, so the success-check stage
    # must DEGRADE (skip), never halt.
    known = set(_canonical_target(t) for t in SCRIPTS_BY_TARGET_ACTION)
    assert known == set(SUCCESS_CHECKS.keys())
    canon = _canonical_target("propertyguru")
    assert canon not in known, "unknown target must not be a known scripted target"
    assert canon not in SUCCESS_CHECKS, (
        "unknown target must have no SuccessCheck - the success-check stage "
        "degrades to a skipped stage for it, and the run must not halt"
    )


def test_unknown_target_passes_through_canonicalization():
    # _canonical_target passes unknown targets through unchanged (only AndroGoat
    # is case-resolved), so the degrade discriminator sees the true key.
    assert _canonical_target("propertyguru") == "propertyguru"
    assert _canonical_target("androgoat") == "AndroGoat"

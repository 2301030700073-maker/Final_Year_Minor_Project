"""Engine-level contract tests for the shared UnCrackable success-check engine
(dynamic.success_checks._base.run_check). The per-target modules
(uncrackable1/2/3) are tested through their own .check(), which always passes a
fixed, non-empty root-hook set; these cover the shared engine's invariants
directly - including the vacuous-truth hole no current target can reach but a
future target reusing the engine could."""

from dynamic.success_checks._base import run_check


def _run(logcat_output, frida_log, *, root_hook_ids, all_hook_ids=None):
    return run_check(
        logcat_output,
        frida_log,
        secret_pattern=r"Success!",
        block_pattern=r"Root detected",
        hooks_installed_pattern=r"all three hooked",
        root_hook_ids=root_hook_ids,
        debug_hook_id="dbg",
        all_hook_ids=root_hook_ids if all_hook_ids is None else all_hook_ids,
    )


def test_empty_root_hook_ids_is_inconclusive_never_a_vacuous_true():
    # all() over an empty root_hook_ids is vacuously True; without the guard in
    # run_check this returned a CONFIDENT root_bypassed=True from zero fired
    # hooks (any log with no block signal), fabricating a confirmed bypass - the
    # worst direction for this tool and a direct violation of the engine's core
    # invariant (never confirm a bypass from absence of evidence). A target with
    # no root-check hooks cannot have a confirmed root bypass; it must read None.
    result = _run("a benign line, nothing detected", "", root_hook_ids=())
    assert result.root_bypassed is None
    assert result.evidence_lines  # never silently empty on a real verdict
    assert "hooks_not_confirmed" in result.evidence_lines
    assert "no root-check hooks were defined" in result.evidence_lines["hooks_not_confirmed"]


def test_empty_root_hook_ids_stays_none_even_with_fired_looking_markers():
    # Even a log full of forced_result markers cannot confirm a bypass when the
    # target defines no root hooks - the guard gates on the hook set, not on the
    # presence of markers, so a stray/foreign firing message can't vacuously flip
    # the verdict to True.
    frida_log = str({"type": "send", "payload": {"hook": "some.other.thing", "forced_result": False}})
    result = _run("unrelated log line", frida_log, root_hook_ids=(), all_hook_ids=("some.other.thing",))
    assert result.root_bypassed is None
    assert "no root-check hooks were defined" in result.evidence_lines["hooks_not_confirmed"]


def test_guard_is_narrow_non_empty_all_fired_still_confirms():
    # The empty-set guard must not suppress a legitimate confirmation: a single
    # defined root hook that fires (no block signal) still reads True.
    frida_log = str({"type": "send", "payload": {"hook": "only.root.check", "forced_result": False}})
    result = _run("unrelated log line", frida_log, root_hook_ids=("only.root.check",))
    assert result.root_bypassed is True
    assert "hook_fired_only.root.check" in result.evidence_lines

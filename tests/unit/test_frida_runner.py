"""run_dynamic_stage's graceful-degradation paths - the ones that never touch
a device. Anything that reaches `attach()` is validated by real end-to-end
runs on the reference environment, not a unit test (same split as the rest of
the dynamic side)."""

from common import Action
from dynamic import frida_runner


def test_unknown_target_degrades_to_skipped_instead_of_crashing():
    # Real failure mode this pins down: running the pipeline with an
    # unrecognized --target (e.g. "propertyguru") used to raise a bare
    # KeyError at SCRIPTS_BY_TARGET_ACTION[target], which the except-clause
    # turned into status="failed" and halted the whole run with an unhelpful
    # error. Now it returns skipped with a reason, before any device attach.
    result = frida_runner.run_dynamic_stage(
        device_serial="emulator-5554",
        package_name="com.allproperty.android.consumer.my",
        action=Action.ROOT_ONLY,
        target="propertyguru",
    )

    assert result.status == "skipped"
    reason = result.evidence["reason"]
    assert "propertyguru" in reason
    assert "no bypass script available" in reason
    # must not have tried to attach - otherwise this unit test would need a device
    assert "frida_messages" not in result.evidence


def test_neither_classification_is_skipped_without_target_script_lookup():
    # NEITHER short-circuits before the script lookup - locked in so an
    # unrecognized target can't be reached in the first place for a NEITHER
    # run (the negative-control path must never require a device or a script).
    result = frida_runner.run_dynamic_stage(
        device_serial="emulator-5554",
        package_name="com.example.app",
        action=Action.NEITHER,
        target="completely_unknown_target",
    )

    assert result.status == "skipped"
    assert "NEITHER" in result.evidence["reason"]

"""Source-content regression guard for root_bypass_uncrackable3.js.

Same rationale as test_root_bypass_script.py/test_root_bypass_uncrackable2_script.py:
no JS execution harness in this repo, so this only pins known-important
invariants in the script source - it can't verify runtime behavior, that's
the reference machine's job (CLAUDE.md testing philosophy).
"""

from pathlib import Path

SCRIPT = Path(__file__).resolve().parents[2] / "src/dynamic/scripts/root_bypass_uncrackable3.js"


def test_java_available_poll_is_bounded_with_a_failure_signal():
    source = SCRIPT.read_text(encoding="utf-8")
    assert "JAVA_POLL_TIMEOUT_MS" in source
    assert "never became true" in source  # the failure message actually gets sent via send()


def test_hooks_all_six_real_methods_with_fully_qualified_ids():
    source = SCRIPT.read_text(encoding="utf-8")
    for hook_id in (
        "sg.vantagepoint.util.RootDetection.checkRoot1",
        "sg.vantagepoint.util.RootDetection.checkRoot2",
        "sg.vantagepoint.util.RootDetection.checkRoot3",
        "sg.vantagepoint.util.IntegrityCheck.isDebuggable",
        "android.os.Debug.isDebuggerConnected",
        "sg.vantagepoint.uncrackable3.MainActivity.verifyLibs",
    ):
        assert hook_id in source, f"expected hook id {hook_id!r} in script source"


def test_five_boolean_hooks_force_a_false_result():
    # Everything except verifyLibs (void - see next test) forces a boolean
    # return value.
    source = SCRIPT.read_text(encoding="utf-8")
    assert source.count("forced_result: false") == 5


def test_verify_libs_is_a_no_op_not_a_forced_return_value():
    source = SCRIPT.read_text(encoding="utf-8")
    assert "neutralized: true" in source
    verify_libs_start = source.index("MainActivity.verifyLibs.implementation")
    verify_libs_block = source[verify_libs_start:verify_libs_start + 300]
    assert "return false" not in verify_libs_block
    assert "return true" not in verify_libs_block

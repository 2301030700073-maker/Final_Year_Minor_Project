"""Source-content regression guard for root_bypass_uncrackable2.js.

Same rationale as test_root_bypass_script.py: no JS execution harness in
this repo, so this only pins known-important invariants in the script
source - it can't verify runtime behavior, that's the reference machine's
job (CLAUDE.md testing philosophy).
"""

from pathlib import Path

SCRIPT = Path(__file__).resolve().parents[2] / "src/dynamic/scripts/root_bypass_uncrackable2.js"


def test_java_available_poll_is_bounded_with_a_failure_signal():
    source = SCRIPT.read_text(encoding="utf-8")
    assert "JAVA_POLL_TIMEOUT_MS" in source
    assert "never became true" in source  # the failure message actually gets sent via send()


def test_hooks_all_five_real_methods_with_fully_qualified_ids():
    source = SCRIPT.read_text(encoding="utf-8")
    for hook_id in (
        "sg.vantagepoint.a.b.a",
        "sg.vantagepoint.a.b.b",
        "sg.vantagepoint.a.b.c",
        "sg.vantagepoint.a.a.a",
        "android.os.Debug.isDebuggerConnected",
    ):
        assert hook_id in source, f"expected hook id {hook_id!r} in script source"


def test_all_five_hooks_force_a_false_result():
    source = SCRIPT.read_text(encoding="utf-8")
    assert source.count("forced_result: false") == 5

"""Source-content regression guard for root_bypass_v1.js.

No JS execution harness exists in this repo (no package.json/jest/CI config
for JS), and per CLAUDE.md's testing philosophy the dynamic/Frida side is
validated by real end-to-end runs on the reference machine, not pytest.
This only pins the bounded-poll fix in place against someone reverting to
setTimeout(hook_root_checks, 50) with no timeout/failure signal - it can't
verify the timeout actually fires correctly at runtime.
"""

from pathlib import Path

SCRIPT = Path(__file__).resolve().parents[2] / "src/dynamic/scripts/root_bypass_v1.js"


def test_java_available_poll_is_bounded_with_a_failure_signal():
    source = SCRIPT.read_text(encoding="utf-8")
    assert "JAVA_POLL_TIMEOUT_MS" in source
    assert "never became true" in source  # the failure message actually gets sent via send()

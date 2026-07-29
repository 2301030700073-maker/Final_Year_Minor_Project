import sys
import time

import collect_verification_bundle as bundle


def test_run_enforces_the_given_timeout_rather_than_hanging():
    start = time.monotonic()
    result = bundle._run([sys.executable, "-c", "import time; time.sleep(30)"], timeout=1)
    assert time.monotonic() - start < 5  # generous margin, still far below the 30s sleep
    assert result["exit_code"] is None
    assert result["stderr"] == "TIMED OUT"


def test_frida_ps_check_uses_a_short_explicit_timeout_not_the_default(monkeypatch):
    calls = []

    def fake_run(cmd, timeout=60):
        calls.append((cmd, timeout))
        return {"command": " ".join(cmd), "found": True, "exit_code": 0, "stdout": "", "stderr": ""}

    monkeypatch.setattr(bundle, "_run", fake_run)
    bundle.collect_environment()

    frida_ps_calls = [(cmd, t) for cmd, t in calls if "frida-ps" in cmd]
    assert frida_ps_calls, "expected a frida-ps -U check in collect_environment()"
    for _, t in frida_ps_calls:
        assert t <= 5, f"frida-ps -U must use an explicit short timeout, got {t}"

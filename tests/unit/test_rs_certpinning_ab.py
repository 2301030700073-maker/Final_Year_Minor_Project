"""The A/B summary must not assert the bypass from an arm that never ran.

The contrast is the empirical proof the pinning bypass works, and it is computed
by set difference: hosts decrypted WITH the script minus hosts decrypted WITHOUT
it. A WITHOUT arm that failed produces an empty set, so every host the script
decrypted reads as decrypting ONLY with the script - the proof claimed from an
arm that never produced a flow list. Capture fails for ordinary reasons (no
internet, app crash, port conflict), so this is a routine shape, not a corner.
"""

import sys
from pathlib import Path
from types import SimpleNamespace

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "scripts"))

import rs_certpinning_ab as ab  # noqa: E402


def _arm(status, hosts=(), error=None):
    """Only what main() reads off a StageResult - the stage itself is stubbed."""
    evidence = {"hosts": list(hosts), "flows_count": len(hosts), "ui_drive": {}} if status == "success" else {}
    return SimpleNamespace(status=status, evidence=evidence, error=error)


def _run(monkeypatch, without, with_script, capsys):
    monkeypatch.setattr(ab, "_run_arm", lambda script, window, label: without if script is None else with_script)
    monkeypatch.setattr(sys, "argv", ["rs_certpinning_ab.py"])
    rc = ab.main()
    return rc, capsys.readouterr().out


def test_a_failed_without_arm_does_not_become_a_bypass_claim(monkeypatch, capsys):
    rc, out = _run(monkeypatch, _arm("failed", error="capture window closed with no flows"),
                   _arm("success", hosts=["api.redshift.example"]), capsys)
    assert "ONLY with the script" not in out, out
    assert "NOT ATTRIBUTABLE" in out and "WITHOUT script" in out, out
    assert rc == 1


def test_a_failed_with_script_arm_does_not_become_a_negative_finding(monkeypatch, capsys):
    rc, out = _run(monkeypatch, _arm("success", hosts=["api.redshift.example"]),
                   _arm("skipped", error="frida-server not running"), capsys)
    assert "no extra hosts decrypted" not in out, out
    assert "NOT ATTRIBUTABLE" in out and "WITH script" in out, out
    assert rc == 1


def test_the_contrast_is_still_reported_when_both_arms_completed(monkeypatch, capsys):
    rc, out = _run(monkeypatch, _arm("success", hosts=["cdn.example"]),
                   _arm("success", hosts=["cdn.example", "api.redshift.example"]), capsys)
    assert "[bypass] 1 host(s) decrypt ONLY with the script: ['api.redshift.example']" in out, out
    assert rc == 0

"""The `ai-bypass` command's "use AI from scratch" path (--apk) and its refusals.

`--apk` decompiles the app itself and derives --package, so an operator no longer
has to hunt for the opaque sha256 analysis folder. These tests pin the argument
contract without a device or a model call.
"""
import pytest
import typer

from cli import ai_bypass_cmd


def test_ai_bypass_requires_apk_or_decompile_dir(monkeypatch):
    monkeypatch.setenv("AI_ALLOW_AUTHORIZED_TARGET", "1")
    with pytest.raises(typer.Exit) as exc:
        ai_bypass_cmd(
            package="", decompile_dir="", apk="", device="",
            action="SSL_ONLY",
            justification="ACADEMIC_TRAINING_TARGET lab", max_iter=1,
        )
    assert exc.value.exit_code == 2


def test_ai_bypass_refuses_missing_apk_file(monkeypatch):
    monkeypatch.setenv("AI_ALLOW_AUTHORIZED_TARGET", "1")
    with pytest.raises(typer.Exit) as exc:
        ai_bypass_cmd(
            package="", decompile_dir="", apk="/no/such/app.apk", device="",
            action="SSL_ONLY",
            justification="ACADEMIC_TRAINING_TARGET lab", max_iter=1,
        )
    assert exc.value.exit_code == 2


def test_ai_bypass_requires_authorization_gate(monkeypatch):
    monkeypatch.delenv("AI_ALLOW_AUTHORIZED_TARGET", raising=False)
    with pytest.raises(typer.Exit) as exc:
        ai_bypass_cmd(
            package="com.x", decompile_dir="/tmp/jadx", apk="", device="",
            action="SSL_ONLY",
            justification="ACADEMIC_TRAINING_TARGET lab", max_iter=1,
        )
    assert exc.value.exit_code == 2

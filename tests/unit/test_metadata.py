"""Wrapper-contract tests for ingest/metadata.py's tool-subprocess arms.

These mock subprocess.run/shutil.which (a real aapt2/apksigner probe is a
reference-env step), exercising the fail-loud error paths and the pure tool
lookup. Fabricating a tool *result* is not at stake here - each test asserts a
distinct wrapper branch (missing tool, timeout, nonzero exit, version degrade).
"""

import subprocess
from pathlib import Path

from ingest.metadata import (
    Aapt2Error,
    ApksignerError,
    _require_tool,
    run_aapt2_dump,
    run_apksigner_verify,
    tool_versions,
)


def test_require_tool_raises_when_missing(monkeypatch):
    # metadata.py:89-90: a required tool absent from PATH raises loudly (the
    # reference-env fail, never a silent empty result).
    monkeypatch.setattr("ingest.metadata.shutil.which", lambda name: None)
    try:
        _require_tool("aapt2")
        raise AssertionError("expected RuntimeError")
    except RuntimeError as e:
        assert "required tool" in str(e)


def test_run_tool_success_returns_stdout(monkeypatch):
    # metadata.py:126-129: the happy path returns subprocess stdout.
    class _Result:
        stdout = "out"
    monkeypatch.setattr("ingest.metadata.shutil.which", lambda name: "aapt2")
    monkeypatch.setattr("ingest.metadata.subprocess.run", lambda *a, **k: _Result())
    assert run_aapt2_dump(Path("x.apk")) == "out"


def test_run_tool_timeout_raises_tool_error(monkeypatch):
    # metadata.py:130-131: a timeout surfaces as the typed ToolError, not a bare
    # subprocess exception, with the honest cause chained.
    monkeypatch.setattr("ingest.metadata.shutil.which", lambda name: "aapt2")
    def _boom(*a, **k):
        raise subprocess.TimeoutExpired("aapt2", 30)
    monkeypatch.setattr("ingest.metadata.subprocess.run", _boom)
    try:
        run_aapt2_dump(Path("x.apk"))
        raise AssertionError("expected Aapt2Error")
    except Aapt2Error as e:
        assert "timed out" in str(e)


def test_run_tool_called_process_error_surfaces_stderr(monkeypatch):
    # metadata.py:132-135: a nonzero exit is wrapped, keeping the first stderr
    # line (bounded to 200 chars) as the actionable detail.
    monkeypatch.setattr("ingest.metadata.shutil.which", lambda name: "apksigner")
    def _boom(*a, **k):
        raise subprocess.CalledProcessError(1, ["apksigner"], stderr="boom")
    monkeypatch.setattr("ingest.metadata.subprocess.run", _boom)
    try:
        run_apksigner_verify(Path("x.apk"))
        raise AssertionError("expected ApksignerError")
    except ApksignerError as e:
        assert "boom" in str(e)


def test_tool_versions_degrades_to_unknown_when_tool_missing(monkeypatch):
    # metadata.py:164-169: a missing optional tool degrades to "unknown" (never
    # fails ingest), and a _require_tool RuntimeError is swallowed the same way.
    monkeypatch.setattr("ingest.metadata.shutil.which", lambda name: None)
    tool_versions.cache_clear()
    try:
        v = tool_versions()
        assert v == {"aapt2": "unknown", "apksigner": "unknown",
                     "jadx": "unknown", "apktool": "unknown"}
    finally:
        tool_versions.cache_clear()


def test_ingest_apk_not_found_fails_loudly():
    # metadata.py:267: a nonexistent APK path fails loudly with the offending
    # path, never silently no-oping (principle 3).
    from ingest.metadata import ingest
    res = ingest(Path("/nonexistent/does_not_exist.apk"))
    assert res.status == "failed"
    assert "APK not found" in res.error


def test_ingest_full_tool_path_extracts_package(tmp_path, monkeypatch):
    # metadata.py:309: the tool-backed path runs aapt2 badging (mocked here) and
    # parses the package name out of it, reaching the success return.
    import zipfile
    from ingest.metadata import ingest
    apk = tmp_path / "app.apk"
    with zipfile.ZipFile(apk, "w") as z:
        z.writestr("AndroidManifest.xml", "<manifest/>")

    class _Result:
        stdout = "package: name='com.example' versionCode='1' versionName='1.0'\n"
    monkeypatch.setattr("ingest.metadata.shutil.which", lambda name: "aapt2")
    monkeypatch.setattr("ingest.metadata.subprocess.run", lambda *a, **k: _Result())

    res = ingest(apk)
    assert res.status == "success"
    assert res.evidence["package"]["package_name"] == "com.example"


def test_ingest_missing_package_name_fails_loudly(tmp_path, monkeypatch):
    # metadata.py:308-309: aapt2 badging that yields NO package name fails loudly
    # (a None package would only surface as a confusing runtime error downstream
    # in frida_runner.attach) rather than carrying None forward.
    import zipfile
    from ingest.metadata import ingest
    apk = tmp_path / "app.apk"
    with zipfile.ZipFile(apk, "w") as z:
        z.writestr("AndroidManifest.xml", "<manifest/>")

    class _Result:
        stdout = "no package line here\n"
    monkeypatch.setattr("ingest.metadata.shutil.which", lambda name: "aapt2")
    monkeypatch.setattr("ingest.metadata.subprocess.run", lambda *a, **k: _Result())

    res = ingest(apk)
    assert res.status == "failed"
    assert "could not extract package name" in res.error

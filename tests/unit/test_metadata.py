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
    require_tool,
    run_aapt2_dump,
    run_apksigner_verify,
    tool_versions,
)


def testrequire_tool_raises_when_missing(monkeypatch):
    # metadata.py:89-90: a required tool absent from PATH raises loudly (the
    # reference-env fail, never a silent empty result).
    monkeypatch.setattr("common.shutil.which", lambda name: None)
    try:
        require_tool("aapt2")
        raise AssertionError("expected RuntimeError")
    except RuntimeError as e:
        assert "required tool" in str(e)


def test_run_tool_success_returns_stdout(monkeypatch):
    # metadata.py:126-129: the happy path returns subprocess stdout.
    class _Result:
        stdout = "out"
    monkeypatch.setattr("common.shutil.which", lambda name: "aapt2")
    monkeypatch.setattr("ingest.metadata.subprocess.run", lambda *a, **k: _Result())
    assert run_aapt2_dump(Path("x.apk")) == "out"


def test_run_tool_timeout_raises_tool_error(monkeypatch):
    # metadata.py:130-131: a timeout surfaces as the typed ToolError, not a bare
    # subprocess exception, with the honest cause chained.
    monkeypatch.setattr("common.shutil.which", lambda name: "aapt2")
    def _boom(*a, **k):
        raise subprocess.TimeoutExpired("aapt2", 30)
    monkeypatch.setattr("ingest.metadata.subprocess.run", _boom)
    try:
        run_aapt2_dump(Path("x.apk"))
        raise AssertionError("expected Aapt2Error")
    except Aapt2Error as e:
        assert "timed out" in str(e)


def test_run_tool_called_process_error_surfaces_stderr(monkeypatch):
    # metadata.py: a nonzero exit is wrapped as the typed ToolError with the
    # tool's own output as the actionable detail.
    monkeypatch.setattr("common.shutil.which", lambda name: "apksigner")
    def _boom(*a, **k):
        raise subprocess.CalledProcessError(1, ["apksigner"], stderr="boom")
    monkeypatch.setattr("ingest.metadata.subprocess.run", _boom)
    try:
        run_apksigner_verify(Path("x.apk"))
        raise AssertionError("expected ApksignerError")
    except ApksignerError as e:
        assert "boom" in str(e)


def test_run_tool_keeps_the_line_that_explains_the_failure(monkeypatch):
    # The measured defect: apksigner's verdict is its FIRST line and its reason
    # is the SECOND. Keeping only line one reported "DOES NOT VERIFY" for the
    # Facebook and Netflix APKs and discarded the text naming what actually
    # failed, so the failure read as unexplainable.
    monkeypatch.setattr("common.shutil.which", lambda name: "apksigner")
    report = (
        "DOES NOT VERIFY\n"
        "ERROR: Target SDK version 36 requires a minimum of signature scheme v2\n"
        "WARNING: APK Signature Scheme v3 signer #1: Unknown additional attribute\n"
    )
    def _boom(*a, **k):
        raise subprocess.CalledProcessError(1, ["apksigner"], output=report, stderr="")
    monkeypatch.setattr("ingest.metadata.subprocess.run", _boom)
    try:
        run_apksigner_verify(Path("x.apk"))
        raise AssertionError("expected ApksignerError")
    except ApksignerError as e:
        message = str(e)
        assert "DOES NOT VERIFY" in message
        assert "Target SDK version 36" in message
        assert "Unknown additional attribute" in message


def test_run_tool_keeps_both_streams(monkeypatch):
    # `stderr or stdout` meant a tool that wrote to both had one stream dropped
    # entirely; which stream carries the reason is the tool's choice, not ours.
    monkeypatch.setattr("common.shutil.which", lambda name: "apksigner")
    def _boom(*a, **k):
        raise subprocess.CalledProcessError(1, ["apksigner"], output="on stdout", stderr="on stderr")
    monkeypatch.setattr("ingest.metadata.subprocess.run", _boom)
    try:
        run_apksigner_verify(Path("x.apk"))
        raise AssertionError("expected ApksignerError")
    except ApksignerError as e:
        assert "on stdout" in str(e) and "on stderr" in str(e)


def test_a_long_tool_report_loses_its_middle_not_its_conclusion(monkeypatch):
    # Bounded at both ends: a head-only cut is what dropped mitmproxy's
    # SyntaxError line once already; the tail is where tools put conclusions.
    monkeypatch.setattr("common.shutil.which", lambda name: "apksigner")
    long_report = "HEAD-MARKER " + ("x" * 4000) + " TAIL-MARKER"
    def _boom(*a, **k):
        raise subprocess.CalledProcessError(1, ["apksigner"], output=long_report, stderr="")
    monkeypatch.setattr("ingest.metadata.subprocess.run", _boom)
    try:
        run_apksigner_verify(Path("x.apk"))
        raise AssertionError("expected ApksignerError")
    except ApksignerError as e:
        message = str(e)
        assert "HEAD-MARKER" in message and "TAIL-MARKER" in message
        assert "chars elided" in message
        assert len(message) < 2000


def test_tool_versions_degrades_to_unknown_when_tool_missing(monkeypatch):
    # metadata.py:164-169: a missing optional tool degrades to "unknown" (never
    # fails ingest), and a require_tool RuntimeError is swallowed the same way.
    monkeypatch.setattr("common.shutil.which", lambda name: None)
    # Both halves of the resolution have to read as missing for "missing" to
    # mean missing. The vendored tools/ tree is untracked - present on the
    # reference box, absent on CI - so leaving this lookup live would make the
    # test assert one thing locally and another on the runner, for a reason that
    # has nothing to do with the code under test.
    monkeypatch.setattr("ingest.metadata.vendored_tool", lambda name, root, is_windows=None: None)
    # Same for the two optional engines - recorded as absent here, not read from
    # whatever this checkout has vendored.
    monkeypatch.setattr("ingest.metadata.find_cfr_jar", lambda root: "")
    monkeypatch.setattr("ingest.metadata.find_ghidra_headless", lambda root: None)
    tool_versions.cache_clear()
    try:
        v = tool_versions()
        assert v == {"aapt2": "unknown", "apksigner": "unknown",
                     "jadx": "unknown", "apktool": "unknown",
                     "cfr": "not installed", "ghidra": "not installed"}
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
    monkeypatch.setattr("common.shutil.which", lambda name: "aapt2")
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
    monkeypatch.setattr("common.shutil.which", lambda name: "aapt2")
    monkeypatch.setattr("ingest.metadata.subprocess.run", lambda *a, **k: _Result())

    res = ingest(apk)
    assert res.status == "failed"
    assert "could not extract package name" in res.error

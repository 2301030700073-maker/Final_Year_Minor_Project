"""Tests for the opt-in step tracer (src/trace.py, SESSION11L).

The tracer is OFF by default and must be a no-op then (zero output, zero
overhead); when enabled it emits one ordered, structured marker per call. A
marker means the code REACHED a point with the given fields - it never asserts
success (status is caller-supplied).
"""

import importlib

import trace as tracemod  # src/trace.py shadows the stdlib on PYTHONPATH=src


def _fresh():
    importlib.reload(tracemod)


def test_disabled_by_default_emits_nothing(monkeypatch, capsys):
    monkeypatch.delenv("FYMP_TRACE", raising=False)
    _fresh()
    tracemod.trace("stage", "ingest", "ok", ms=1)
    assert capsys.readouterr().err == ""


def test_enabled_emits_structured_marker(monkeypatch, capsys):
    monkeypatch.setenv("FYMP_TRACE", "1")
    _fresh()
    tracemod.trace("stage", "ingest", "ok", ms=0, error=None)
    err = capsys.readouterr().err
    assert "[TRACE" in err
    assert "stage.ingest ok" in err
    assert "ms=0" in err
    # a None field is omitted, never rendered as a fabricated empty value
    assert "error=" not in err


def test_disabled_values(monkeypatch):
    for v in ("0", "false", "no", "off", ""):
        monkeypatch.setenv("FYMP_TRACE", v)
        _fresh()
        assert tracemod.enabled() is False


def test_mirrors_to_trace_file(monkeypatch, tmp_path):
    p = tmp_path / "trace.log"
    monkeypatch.setenv("FYMP_TRACE", "1")
    monkeypatch.setenv("FYMP_TRACE_FILE", str(p))
    _fresh()
    tracemod.trace("dynamic", "spawn", "ok", pid=7)
    assert "dynamic.spawn ok" in p.read_text(encoding="utf-8")
    assert "pid=7" in p.read_text(encoding="utf-8")


def test_a_bad_trace_file_path_never_breaks_the_run(monkeypatch):
    # Tracing must never raise into a run: an unwritable path is ignored.
    monkeypatch.setenv("FYMP_TRACE", "1")
    monkeypatch.setenv("FYMP_TRACE_FILE", "/nonexistent_dir_xyz/t.log")
    _fresh()
    tracemod.trace("stage", "x", "ok")  # must not raise

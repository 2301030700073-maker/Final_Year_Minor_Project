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


def test_a_broken_stderr_never_breaks_the_run(monkeypatch):
    # SESSION11L4 audit finding: the trace contract says "tracing must never
    # break a run", but only the trace-FILE open was guarded - the stderr
    # write was not, so a run whose output pipe lost its reader (BrokenPipe)
    # or a console codepage that cannot encode the marker (UnicodeError)
    # raised out of a marker call mid-pipeline. Both sinks are guarded now.
    import io
    import trace as tracemod

    class _Broken(io.TextIOBase):
        def write(self, *a, **k):
            raise BrokenPipeError("reader went away")

        def flush(self):
            raise BrokenPipeError("reader went away")

    monkeypatch.setenv("FYMP_TRACE", "1")
    monkeypatch.delenv("FYMP_TRACE_FILE", raising=False)
    importlib.reload(tracemod)
    monkeypatch.setattr(tracemod.sys, "stderr", _Broken())
    tracemod.trace("stage", "x", "ok", ms=1)  # must not raise
    tracemod.trace("stage", "y", "info", note="marker with a unicode-ish payload")


def test_an_unencodable_marker_never_breaks_the_run(monkeypatch):
    # The UnicodeError half of the same contract: a marker carrying a character
    # the stderr encoding cannot represent (cp1252 console on Windows) must be
    # dropped, not raised.
    import io
    import trace as tracemod

    class _Latin1(io.TextIOBase):
        encoding = "ascii"

        def write(self, text):
            text.encode("ascii")  # raises UnicodeEncodeError for non-ASCII
            return len(text)

    monkeypatch.setenv("FYMP_TRACE", "1")
    monkeypatch.delenv("FYMP_TRACE_FILE", raising=False)
    importlib.reload(tracemod)
    monkeypatch.setattr(tracemod.sys, "stderr", _Latin1())
    tracemod.trace("stage", "x", "ok", file="café.java")  # must not raise

"""The gap-hunt's liveness line: on the interval, on stderr, never in the report.

The sweep prints a header and then nothing until the walk over the whole corpus
finishes - about nine minutes on the 2026-09-20 corpus (1.8 GB, 411,428 `.java`
files across both the jadx and cfr trees). A sweep that is working and a sweep that
is stuck look identical from the terminal, and this one was misread as stuck; the
same trap as `uv run` leaving a wrapper whose /proc entry is idle while the real
worker runs underneath it.

stdout stays the report: the run is meant to be readable when piped, and a progress
line printed there would land in the middle of a result.
"""

from __future__ import annotations

import io
import os
import sys
import time
import types
from pathlib import Path

_REPO = Path(__file__).resolve().parents[2]


def _load():
    """Import the script with the CWD at the repo root: it loads
    `config/signatures/*.yaml` by relative path at import, and inserts the relative
    "src" onto sys.path."""
    cwd = os.getcwd()
    os.chdir(_REPO)
    try:
        src = _REPO / "scripts" / "gap_hunt_idioms.py"
        # Compile the source directly instead of importing it. The bytecode cache keys
        # on the source's size and whole-second mtime, so a same-size edit made in the
        # same second - exactly what a mutate-and-restore falsification does - serves
        # stale bytecode, and this test then asserts against code that is no longer in
        # the file. That happened here once (see the module docstring).
        mod = types.ModuleType("gap_hunt_idioms")
        mod.__file__ = str(src)
        exec(compile(src.read_text(encoding="utf-8"), str(src), "exec"), mod.__dict__)
        return mod
    finally:
        os.chdir(cwd)


mod = _load()


def test_the_line_is_emitted_on_the_interval_and_not_before_it():
    stream = io.StringIO()
    mod._emit_progress(mod.PROGRESS_EVERY - 1, time.monotonic(), stream=stream)
    assert stream.getvalue() == "", "no line before the interval is reached"
    mod._emit_progress(mod.PROGRESS_EVERY * 3, time.monotonic(), stream=stream)
    line = stream.getvalue()
    assert f"{mod.PROGRESS_EVERY * 3} files read" in line, line
    assert "elapsed" in line, line


def test_progress_goes_to_stderr_so_the_report_stays_pipeable(capsys):
    mod._emit_progress(mod.PROGRESS_EVERY, time.monotonic())
    cap = capsys.readouterr()
    assert cap.out == "", "the report on stdout must not carry progress"
    assert "files read" in cap.err, cap.err

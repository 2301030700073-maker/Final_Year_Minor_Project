"""Opt-in, structured execution tracing for the pipeline (SESSION11L).

WHY: the pipeline reports each STAGE's status, but a stage can fail - or silently
do nothing - at an INTERNAL step (the "app stuck at splash" class), and the stage
line alone does not say WHICH step it reached. This module emits an ordered,
timestamped marker at each instrumented step so a run can be replayed step by
step: you can see exactly how far it got and where it stopped, instead of guessing
from a final verdict.

HONESTY: a marker means the code REACHED that point and recorded the given
fields - it NEVER means the step succeeded. Every marker carries an explicit
status. The conventional set is "start" / "ok" / "failed" / "skipped" /
"info", and call sites may add a more specific status when the fact warrants
one ("timeout" for a budget kill, "error" for a caught exception, "none" for
"ran and found nothing") - the vocabulary is caller-supplied precisely so a
marker never has to round a specific fact up to a generic verdict. Tracing
never changes a verdict and never fabricates a value; it only makes the
existing flow observable.

OFF by default (zero output, zero overhead): enabled by `FYMP_TRACE=1` (or the
`run` command's `--debug` flag, which sets it), and optionally mirrored to a file
via `FYMP_TRACE_FILE`. A disabled trace returns before touching the clock.
"""

from __future__ import annotations

import os
import sys
import time

_enabled_cache: bool | None = None
_t0: float | None = None


def enabled() -> bool:
    """True when tracing is on. Cached after first read (the env var does not
    change mid-run; a --debug flag sets it before the run begins)."""
    global _enabled_cache
    if _enabled_cache is None:
        raw = os.environ.get("FYMP_TRACE", "").strip().lower()
        _enabled_cache = raw not in ("", "0", "false", "no", "off")
    return _enabled_cache


def reset() -> None:
    """Clear the cached flag and clock - for tests and for a --debug flag set
    after an earlier import."""
    global _enabled_cache, _t0
    _enabled_cache = None
    _t0 = None


def trace(phase: str, step: str, status: str = "ok", **fields) -> None:
    """Emit one marker `[TRACE <rel>s] phase.step status k=v ...`.

    `fields` are printed only when not None, so a marker never shows a fabricated
    empty value. `status` is caller-supplied and explicit - this function asserts
    nothing about success. A no-op when tracing is disabled."""
    if not enabled():
        return
    global _t0
    now = time.monotonic()
    if _t0 is None:
        _t0 = now
    rel = now - _t0
    extra = " ".join(f"{k}={v}" for k, v in fields.items() if v is not None)
    line = f"[TRACE {rel:7.2f}s] {phase}.{step} {status}"
    if extra:
        line += " " + extra
    # Both sinks are guarded, not just the file: a closed/EPIPE stderr (a run
    # whose output was piped into a reader that went away) or an unencodable
    # character under a non-UTF-8 console codepage would otherwise raise out of
    # a marker call in the middle of the pipeline - the exact "tracing must
    # never break a run" failure the file sink already guards against.
    try:
        sys.stderr.write(line + "\n")
        sys.stderr.flush()
    except (OSError, UnicodeError):
        pass
    path = os.environ.get("FYMP_TRACE_FILE", "").strip()
    if path:
        try:
            with open(path, "a", encoding="utf-8") as fh:
                fh.write(line + "\n")
        except OSError:
            # Tracing must never break a run: a bad trace-file path is ignored.
            pass

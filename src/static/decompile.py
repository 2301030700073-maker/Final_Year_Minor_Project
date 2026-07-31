"""jadx + apktool decompilation, cached by APK hash (FR-2.1).

Phase 4: tolerates a jadx run that exits non-zero but has already written
real .java output to disk before crashing - confirmed real behavior against
a 151MB production app (1563 real files decompiled - a full webkit package,
a complete auth service, encryption code - before jadx died later in the
DEX). Previously this was indistinguishable from "wrote nothing at all" and
discarded wholesale as status=failed, even though static analysis could
have scanned what DID decompile. "Wrote zero files" is still a hard
failure - this only tolerates a crash that left real, scannable output
behind. apktool gets no such tolerance yet: no real evidence motivates it
(same evidence-before-building discipline FR-2.4/FR-2.5 were dropped
under).
"""

from __future__ import annotations

import json
import shutil
import subprocess
import time
from pathlib import Path

from common import StageResult

STATUS_SIDECAR_NAME = "decompile_status.json"


def _require_tool(name: str) -> str:
    path = shutil.which(name)
    if path is None:
        raise RuntimeError(
            f"required tool '{name}' not found on PATH - this stage only runs on "
            "the reference WSL2 environment with the Android toolchain installed"
        )
    return path


def _tail(text: str, max_chars: int = 4000) -> str:
    """Keep the last max_chars of a stream - a crash/exception message is
    almost always near the end, and a large real-world APK can make jadx
    print megabytes of per-class progress output before it ever gets there."""
    if not text or len(text) <= max_chars:
        return text
    return f"...(truncated, {len(text)} chars total)...\n{text[-max_chars:]}"


def _count_java_files(jadx_dir: Path) -> int:
    """Ground truth for 'did jadx leave anything real behind' - real files
    on disk, not jadx's own progress-log text (an unstable format across
    versions, and not actually what matters - what matters is whether
    static/signatures.py's scan() has something real to walk)."""
    if not jadx_dir.exists():
        return 0
    return sum(1 for p in jadx_dir.rglob("*.java") if p.is_file())


def _has_real_cached_content(jadx_dir: Path, apktool_dir: Path) -> bool:
    """A cache hit needs more than the directories existing - confirmed real
    bug: jadx_dir/apktool_dir can exist as a hollow shell (contents gone,
    directory itself untouched - disk cleanup, a race, manual deletion, cause
    unconfirmed) while the sidecar still, correctly per its own contract,
    reports stats from the original run. Trusting directory-existence alone
    silently turned that into a cache "hit" with zero real content behind
    it - static_scan() then walks an empty tree and reports NEITHER, which
    is indistinguishable from a genuine "nothing found" result but means
    something completely different."""
    return _count_java_files(jadx_dir) > 0 and (apktool_dir / "AndroidManifest.xml").exists()


def decompile(apk_path: Path, output_root: Path, apk_hash: str) -> StageResult:
    start = time.monotonic()
    try:
        apk_path = Path(apk_path)
        target_dir = Path(output_root) / apk_hash
        jadx_dir = target_dir / "jadx"
        apktool_dir = target_dir / "apktool"
        status_sidecar = target_dir / STATUS_SIDECAR_NAME

        cache_was_hollow = False
        if jadx_dir.exists() and apktool_dir.exists():
            if _has_real_cached_content(jadx_dir, apktool_dir):
                return _cached_result(start, jadx_dir, apktool_dir, status_sidecar)
            # Exists but hollow - don't trust it, and don't leave ambiguous
            # stale state behind either. Clear it and re-decompile for real.
            shutil.rmtree(jadx_dir, ignore_errors=True)
            shutil.rmtree(apktool_dir, ignore_errors=True)
            cache_was_hollow = True

        jadx = _require_tool("jadx")
        apktool = _require_tool("apktool")

        jadx_returncode = 0
        jadx_stdout = jadx_stderr = ""
        try:
            proc = subprocess.run(
                [jadx, "-d", str(jadx_dir), str(apk_path)],
                capture_output=True, text=True, check=True,
            )
            jadx_stdout, jadx_stderr = proc.stdout, proc.stderr
        except subprocess.CalledProcessError as exc:
            jadx_returncode = exc.returncode
            jadx_stdout, jadx_stderr = exc.stdout or "", exc.stderr or ""

        jadx_file_count = _count_java_files(jadx_dir)

        if jadx_returncode != 0 and jadx_file_count == 0:
            # Total failure - nothing real to hand downstream. apktool is
            # never attempted against an APK jadx couldn't even begin.
            return StageResult(
                stage="decompile", status="failed", evidence={},
                error=(
                    f"jadx exited {jadx_returncode} and produced no usable output\n"
                    f"stdout: {_tail(jadx_stdout)}\nstderr: {_tail(jadx_stderr)}"
                ),
                duration_ms=int((time.monotonic() - start) * 1000),
            )

        # jadx either fully succeeded, or crashed but left real output behind -
        # apktool runs either way, since its failure modes are independent of
        # jadx's.
        subprocess.run(
            [apktool, "d", "-f", "-o", str(apktool_dir), str(apk_path)],
            capture_output=True, text=True, check=True,
        )

        completeness = "complete" if jadx_returncode == 0 else "partial"
        error_tail = None if jadx_returncode == 0 else _tail(jadx_stderr)
        status_sidecar.write_text(
            json.dumps({
                "decompile_completeness": completeness,
                "jadx_exit_code": jadx_returncode,
                "jadx_file_count": jadx_file_count,
                "jadx_error_tail": error_tail,
            }, indent=2),
            encoding="utf-8",
        )

        return _result(
            start, jadx_dir, apktool_dir, cached=False,
            decompile_completeness=completeness, jadx_exit_code=jadx_returncode,
            jadx_file_count=jadx_file_count, jadx_error_tail=error_tail,
            recovered_from_hollow_cache=cache_was_hollow,
        )
    except subprocess.CalledProcessError as exc:
        # Only apktool's check=True can still raise here - jadx's own
        # CalledProcessError is caught and inspected above.
        return StageResult(
            stage="decompile", status="failed", evidence={},
            error=f"{exc}\nstdout: {_tail(exc.stdout)}\nstderr: {_tail(exc.stderr)}",
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    except Exception as exc:
        return StageResult(
            stage="decompile", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )


def _result(
    start: float, jadx_dir: Path, apktool_dir: Path, cached: bool,
    decompile_completeness: str = "complete", jadx_exit_code: int = 0,
    jadx_file_count: int | None = None, jadx_error_tail: str | None = None,
    recovered_from_hollow_cache: bool = False,
) -> StageResult:
    if jadx_file_count is None:
        jadx_file_count = _count_java_files(jadx_dir)
    return StageResult(
        stage="decompile", status="success",
        evidence={
            "jadx_output": str(jadx_dir),
            "apktool_output": str(apktool_dir),
            "manifest_path": str(apktool_dir / "AndroidManifest.xml"),
            "cached": cached,
            "decompile_completeness": decompile_completeness,
            "partial": decompile_completeness != "complete",
            "jadx_exit_code": jadx_exit_code,
            "jadx_file_count": jadx_file_count,
            "recovered_from_hollow_cache": recovered_from_hollow_cache,
            "jadx_error_tail": jadx_error_tail,
        },
        duration_ms=int((time.monotonic() - start) * 1000),
    )


def _cached_result(start: float, jadx_dir: Path, apktool_dir: Path, status_sidecar: Path) -> StageResult:
    """A cache hit must not silently launder a partial decompile back into
    looking complete - the sidecar is the only durable record of what the
    original (non-cached) invocation actually produced, since jadx itself
    leaves no other trace of its own exit code once the process is gone."""
    if status_sidecar.exists():
        try:
            data = json.loads(status_sidecar.read_text(encoding="utf-8"))
            return _result(
                start, jadx_dir, apktool_dir, cached=True,
                decompile_completeness=data.get("decompile_completeness", "unknown"),
                jadx_exit_code=data.get("jadx_exit_code", 0),
                jadx_file_count=data.get("jadx_file_count"),
                jadx_error_tail=data.get("jadx_error_tail"),
            )
        except (json.JSONDecodeError, OSError):
            pass  # Sidecar unreadable - fall through. The decompiled output
            # itself is untouched and valid; a bookkeeping glitch alone
            # isn't reason to halt the pipeline (falls back to "complete"
            # below, same as the no-sidecar case).
    # No sidecar at all: a justified inference, not a guess - pre-Phase-4
    # code could only ever cache a fully complete result (there was no code
    # path that could leave a partial result cached before this change).
    return _result(start, jadx_dir, apktool_dir, cached=True)

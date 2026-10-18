"""jadx + apktool decompilation, cached by APK hash (FR-2.1).

Phase 4: tolerates a jadx run that exits non-zero but has already written
real .java output to disk before crashing - confirmed real behavior against
a 151MB production app (1563 real files decompiled - a full webkit package,
a complete auth service, encryption code - before jadx died later in the
DEX). Previously this was indistinguishable from "wrote nothing at all" and
discarded wholesale as status=failed, even though static analysis could
have scanned what DID decompile. "Wrote zero files" is still a hard
failure - this only tolerates a crash that left real, scannable output
behind. The same partial-tolerance now applies to apktool (D2): an apktool
crash that still wrote AndroidManifest.xml keeps the jadx output and marks
the run partial; apktool writing nothing is still a hard failure.

Both tools run under a timeout (D1 - a hung/OOM jadx must fail loudly, not
hang forever, per NFR-1) and stream output to a log file rather than
buffering it in RAM via capture_output (D3 - a successful 151MB decompile
can otherwise hold megabytes of progress text that only the last 4KB are
ever used). Only the hollow half of a hollow cache is re-decompiled (D5),
and a successful apktool that wrote no manifest is treated as failure (D4).
"""

from __future__ import annotations

import json
import os
import re
import shutil
import subprocess
import time
import zipfile
from pathlib import Path

from common import (
    StageResult,
    sha256_bytes,
    elapsed_ms,
    find_cfr_jar,
    launcher_candidates,
    require_tool,
    vendored_tool,
)

# The host platform, captured ONCE at import. WINLAUNCH1 needs the launcher
# order to differ per platform, but `_launcher_candidates` must not read
# `os.name` live: tests that need to exercise the Windows branch would have to
# monkeypatch `os.name`, and `monkeypatch.setattr(decompile.os, "name", "nt")`
# mutates the ONE global `os` module process-wide - which flips pathlib into
# instantiating WindowsPath on a POSIX host and crashes pytest's own cache
# teardown ("cannot instantiate 'WindowsPath' on your system"). An import-time
# constant is a single source of truth AND is stubbable per-module without
# touching global interpreter state.
IS_WINDOWS = os.name == "nt"

STATUS_SIDECAR_NAME = "decompile_status.json"

# The sidecar is written once, on a cold run, and never rewritten - every later
# run reads it back on a cache hit. So a sidecar written by an older version of
# this module keeps being read by the current one, and any evidence field added
# since is simply absent from what the cache-hit path rebuilds. That is exactly
# how the ASSET-DROP1 fields went missing on the PropertyGuru run: the writer
# had recorded asset_surface_extracted/asset_file_count since that fix, but the
# APK's 2026-08-26 sidecar predated it, so the reader defaulted the field and
# the coverage certified `js: fully_analyzed` over an asset surface nobody had
# extracted. Bump this whenever the sidecar's shape changes in a way the reader
# must not default around; a sidecar recording an older tag - or none at all,
# which means it predates the field - is re-decompiled for real instead of read
# blind. Same discipline as _DEX_STRING_CACHE_VERSION in androguard_scanner.py
# and _ANALYZE_CACHE_VERSION in native.py.
_SIDECAR_SCHEMA_VERSION = 3

# The evidence fields a reader must carry forward from a sidecar, in one place so
# the version above and the list below move together: adding a field here WITHOUT
# bumping the version leaves every already-cached sidecar read as "field absent",
# which is the failure this constant's version exists to prevent. Measured
# 2026-09-24: asset_entries_in_apk was added to this list and to the writer, the
# version was left at 2, and the very next run (085a8c10) reused the v2 sidecar and
# rendered the pre-fix wording - the fix was correct and unreachable. The test at
# tests/unit/test_decompile_sidecar_schema.py pins the pair.
_SIDECAR_EVIDENCE_FIELDS: tuple[str, ...] = (
    "fallback_engine", "fallback_unavailable", "fallback_recovered",
    "fallback_output", "fallback_error_tail", "fallback_file_count",
    "lazy_decompile", "dex_units", "smali_fallback",
    # Written by the same branch, into the same sidecar, as smali_fallback -
    # carrying one and dropping the other made a cache hit describe that run
    # differently from the cold run that wrote the identical file.
    "apktool_error_tail",
    # ASSET-DROP1 and APKTOOL-TIMEOUT1 evidence: the writer puts these in the
    # sidecar, so a cache hit has to carry them forward too. A field dropped here
    # reads at its consumer as absent - the same failure ASSET-TRI1 caused by
    # adding one to this list at an unchanged version.
    "asset_surface_extracted", "asset_file_count", "asset_entries_in_apk",
    "apktool_timed_out", "jadx_timed_out", "apktool_timeout_s",
)

# D1: hard ceilings so a hung tool fails loudly instead of hanging forever.
# jadx gets more headroom - it is the slower, more memory-hungry of the two,
# and large/obfuscated APKs (the module's own PropertyGuru note) push it.
# L-M1: the jadx ceiling is now SCALED BY APK SIZE, not a flat 600s. A flat
# ceiling makes a hung jadx on a tiny training APK (which real runs finish in
# ~7s) burn the full 10 minutes before being killed, while a genuinely large
# production app (PropertyGuru, 151MB) may want more than 600s even when
# healthy. Floor for small APKs so a hang fails fast, scale up for large ones,
# hard-cap so no single run can stall the pipeline forever. (Memory: jadx's own
# launcher already defaults -XX:MaxRAMPercentage=70, so the plan's memory-flag
# item needs no action here - the real large-app fix is the multi-engine /
# lazy-decompile work of L-M1, not a JVM flag.)
JADX_TIMEOUT_FLOOR = 120     # seconds - minimum headroom for a tiny APK
JADX_TIMEOUT_PER_MB = 4.0    # seconds of jadx headroom per MB of APK
JADX_TIMEOUT_CAP = 900       # seconds - hard ceiling (was flat 600)
# LARGE-APP: apktool's timeout is now SCALED BY APK SIZE like jadx's, not a flat
# 300s. A flat ceiling killed a HEALTHY apktool decode of a large production app
# mid-smali: WhatsApp (133MB), Facebook (143MB) and Netflix (216MB) resource+smali
# decode routinely exceeds 5 minutes. Killing it at 300s degraded those runs to
# partial even when nothing was wrong - the manifest was already written (so the
# pipeline continued) but the smali/ tree walked by the scan was incomplete. Floor
# so a hung apktool on a tiny APK still fails fast; scale up for large ones; a
# hard cap bounds the worst case so one run can't stall the pipeline.
#
# APKTOOL-STALL1: this WALL-CLOCK budget is no longer the primary guard for
# apktool - `_run_tool_until_stalled` is (see its docstring). MEASURED LIVE on
# PropertyGuru (150MB, 6 DEX, 21,139 resources): apktool `d --no-res` ran a
# HEALTHY 5,435 s (90 minutes) and produced 53,426 files, while the old wall-clock
# budget for that APK was 405 s (rate 1.5 s/MB) - so it was killed at ~4,000 files,
# ~7.5% of the real output, discarding the whole smali surface for a decode that
# was working perfectly. Raising the rate alone cannot fix this: clearing 90
# minutes needs ~35 s/MB, which makes every 20MB APK wait ~12 minutes for a
# genuinely HUNG apktool. The real distinction is progress, not elapsed time, so
# the stall window now decides and this ceiling is only the outer backstop. The
# remaining rate/floor/cap values stay modest and honest: they bound the
# worst case, and `APKTOOL_STALL_SECONDS` kills a true hang long before them.
APKTOOL_TIMEOUT_FLOOR = 180   # seconds - outer backstop floor for a tiny APK
APKTOOL_TIMEOUT_PER_MB = 60.0  # seconds of outer-backstop headroom per MB
APKTOOL_TIMEOUT_CAP = 10800   # seconds - absolute outer cap (3h; was 1200)
# No output growth for this long => hung. A working apktool writes a line per DEX
# (and per later phase), so it never goes quiet this long; a wedged one is silent
# forever. 600s is deliberately generous - a single huge DEX can take minutes of
# CPU with no log line - while still bounding a true hang to ~10 minutes rather
# than the 90 a legitimate large decode needs.
APKTOOL_STALL_SECONDS = 600
# NO size bound on decompilation: no APK is refused for being large. A large
# MULTIDEX APK is decompiled per-DEX (jadx once per classes*.dex - memory-safe by
# construction, avoiding the whole-APK OOM a multi-hundred-MB file would risk); an
# APK with no readable DEX falls through to whole-APK jadx, whose produced output
# is kept as partial on a non-zero exit (partial-tolerance below). The size-scaled
# timeouts above remain as the NFR-1 hang backstop - a hung tool fails loudly as a
# partial, never hangs the pipeline, never abandons the app to manual work. The
# honest bound is coverage labeling (partial, ADR-0006 - never overclaim what a
# partial decompile covered), not a refusal by size.

# L-M1: bound the on-disk decompile cache by size instead of letting every
# analyzed hash accumulate forever (a PropertyGuru-class APK is 151MB+ of jadx
# .java plus apktool smali/res; re-analyzing a corpus of them with no eviction
# grows the cache unbounded). Least-recently-used eviction: when a fresh
# decompile would push total cache size over the budget, the oldest-accessed
# hashes are evicted until back under. The budget is injectable for tests.
CACHE_REGISTRY_NAME = "cache_registry.json"
CACHE_SIZE_BUDGET_BYTES = 4 * 1024 * 1024 * 1024  # 4 GiB default

_TIMEOUT_RC = -9  # sentinel for "killed by our timeout", distinct from any real exit code


def jadx_timeout_for_size(size_bytes: int) -> int:
    """Size-scaled jadx timeout (L-M1). Small APKs fail a hung jadx fast (a
    hang is a hang whatever the app size - a tiny training APK should not wait
    the full old 600s); large ones get proportionally more headroom so a
    healthy-but-big decompile isn't killed; a hard cap bounds the worst case
    so one run can't stall the pipeline indefinitely."""
    mb = size_bytes / (1024 * 1024)
    scaled = int(JADX_TIMEOUT_FLOOR + mb * JADX_TIMEOUT_PER_MB)
    return min(scaled, JADX_TIMEOUT_CAP)


def apktool_timeout_for_size(size_bytes: int) -> int:
    """Size-scaled apktool timeout (LARGE-APP), mirroring jadx_timeout_for_size.
    Small APKs fail a hung apktool fast; large ones get proportionally more
    headroom so a healthy-but-big decode isn't killed mid-smali; a hard cap
    bounds the worst case. Same rationale as the jadx ceiling, applied to
    apktool's resource+smali decode which is equally size-bound on the real
    130-220MB production apps."""
    mb = size_bytes / (1024 * 1024)
    scaled = int(APKTOOL_TIMEOUT_FLOOR + mb * APKTOOL_TIMEOUT_PER_MB)
    return min(scaled, APKTOOL_TIMEOUT_CAP)



def _launcher_candidates(base: Path, stem: str) -> list[Path]:
    """Candidate launcher files for a vendored tool, in preference order.

    The ordering itself lives in `common.launcher_candidates` (WINLAUNCH1) - the
    ingest stage records the version of the tool that resolution lands on, so a
    second copy here could name a different build than the one that ran. This
    wrapper supplies the module's own platform flag, which keeps the flag
    stubbable per-module (see IS_WINDOWS above) while the order stays in one
    place."""
    return launcher_candidates(base, stem, IS_WINDOWS)


def _find_jadx() -> str:
    """Prefer the repo-pinned jadx (tools/jadx/bin/jadx) over whatever is on PATH.

    Mirrors _find_cfr_jar: a pinned, reproducible toolchain beats an ambient
    system install whose version can drift. The ambient jadx on the reference
    machine is 1.5.1, which cannot fully decompile some real APKs (verified:
    InsecureBankv2 finishes with 2 errors, rc=1, so the Java surface degrades to
    partial), while the pinned 1.5.6 decompiles them cleanly (rc=0) - upgrading
    genuinely raises completeness without weakening any coverage claim. Falls
    back to PATH (via _require_tool, which fails loudly) when not vendored.

    Launcher selection is platform-aware (WINLAUNCH1): on Windows the vendored
    `.bat` launcher is chosen over the POSIX extensionless script, which cannot
    be executed by CreateProcess."""
    root = Path(__file__).resolve().parents[2]  # <repo>/src/static -> <repo>
    return vendored_tool("jadx", root, IS_WINDOWS) or require_tool("jadx")


def _tail(text: str, max_chars: int = 4000) -> str:
    """Keep the last max_chars of a stream - a crash/exception message is
    almost always near the end, and a large real-world APK can make jadx
    print megabytes of per-class progress output before it ever gets there."""
    if not text or len(text) <= max_chars:
        return text
    return f"...(truncated, {len(text)} chars total)...\n{text[-max_chars:]}"


def _tail_file(log_path: Path, max_chars: int = 4000) -> str:
    """Read only the last max_chars of a log *without* loading the whole file
    into RAM (RESID-3A). read_text re-read the entire multi-MB log just to keep
    the last 4 KB, only partially meeting D3's streaming/avoidance intent. Seek
    to the tail window and read that directly instead. Returns the same shape
    as _tail (a truncation marker when the log is longer than the window)."""
    try:
        size = log_path.stat().st_size
    except FileNotFoundError:
        return ""
    if size == 0:
        return ""
    if size <= max_chars:
        # errors="replace", exactly like the tail-window read below: a tool log
        # is arbitrary bytes (jadx/apktool echo resource paths and class names),
        # and a strict decode here raised UnicodeDecodeError out of the decompile
        # stage for a log the caller only ever reads as text.
        return log_path.read_text(encoding="utf-8", errors="replace")
    with open(log_path, "rb") as f:
        f.seek(size - max_chars)
        tail = f.read().decode("utf-8", errors="replace")
    return f"...(truncated, {size} bytes total)...\n{tail}"


ASSETS_DIRNAME = "assets"


def extract_assets(apk_path: Path, target_dir: Path) -> tuple[int, int | None]:
    """Extract the APK's `assets/` entries into target_dir/assets (ASSET-DROP1).

    Why this exists: on the LAZY per-DEX path, jadx is invoked once per
    classes*.dex (see `_decompile_dexes`). A per-DEX invocation is handed a bare
    `dex_sources/classesN.dex`, NOT the APK - so jadx has no container to pull
    `assets/` from and writes an EMPTY `resources/` dir for every unit. apktool,
    the other scan root, is equally unable to help: on a large real-world APK its
    size-scaled timeout fires mid-"Baksmaling classes.dex" (APKTOOL-TIMEOUT1), so
    it produces no `assets/` either. The result was that a shipped JS bundle -
    the single most important surface for a React Native app's root/SSL logic -
    was present in NEITHER scan root and so was read by NOTHING.

    The coverage model did not catch it either: `_scan_binary_bundles` walks the
    scan roots looking for bundle-suffixed files, finds none (they were never
    extracted), so `has_binary_bundle` stayed False and `js` was reported
    `fully_analyzed` - a CONFIDENT NEGATIVE over a 20 MB Hermes bundle that was
    never looked at. Measured live on PropertyGuru: the `assets/index.android.bundle`
    scans to `js_root_su` / "isRooted", i.e. real root-detection evidence, while
    this run certified `js: fully_analyzed` and `Root: 0.00`.

    Extraction is unconditional and cheap (a zip member copy, no decoding), so it
    is done independently of which jadx path ran - it is the ONE place that
    guarantees the asset surface exists on disk for the scan roots to walk.

    A member whose name escapes target_dir (an `assets/../..` traversal) is
    refused rather than written - see the guard at the copy below - and is not
    counted, so the returned count describes only what is really on disk.

    Returns `(files_written, entries_in_apk)`. `entries_in_apk` is how many
    `assets/` entries the APK itself lists, or None when the archive could not
    be listed at all (missing path, not a zip).

    That second value exists because a count of 0 files written is THREE states,
    not two, and `asset_surface_extracted = written > 0` collapsed them:
    (a) the APK genuinely carries no `assets/` entries - nothing is hidden, and a
    `js` surface held at `partial` for it is bounded by a rule, not by a loss;
    (b) the APK carries a surface and none of it reached disk - a real coverage
    loss, the case ASSET-DROP1 exists for;
    (c) the archive could not be listed - unknown.
    Measured 2026-09-24: every `asset_surface_extracted: false` on disk (AndroGoat
    x2, UnCrackable-Level1, InsecureBankv2, RS_CertPinning) was state (a), while
    every APK that does ship assets (PropertyGuru 25, jerboa 3) recorded True with
    its real count - so the report's ASSET-DROP1 clause, which fired on the bare
    `false`, was naming a run failure for apps that have no asset surface at all.

    A failure stays non-fatal and is reported as 0 written: the asset surface then
    stays un-extracted, and `_scan_binary_bundles` simply finds nothing - the
    pre-existing (wrong) behavior, never a crash that would discard an
    otherwise-good decompile. `asset_surface_extracted` in the sidecar records
    that, so the gap is visible rather than silent (principle 3).
    """
    if not apk_path.is_file():
        return 0, None
    assets_dir = target_dir / ASSETS_DIRNAME
    written = 0
    entries_in_apk = 0
    try:
        with zipfile.ZipFile(apk_path) as z:
            for name in z.namelist():
                if not name.startswith("assets/") or name.endswith("/"):
                    continue
                # Counted before the traversal refusal below: this is what the
                # APK CLAIMS to ship, which is what tells a real loss from an app
                # that has no asset surface.
                entries_in_apk += 1
                # The member name is attacker-controlled, and this is the ONE
                # extractor in the tree that hand-rolls the copy instead of
                # calling ZipFile.extract - the per-DEX read above and
                # native.extract_native_libs both use the stdlib call, whose
                # member sanitizer drops ".." components. Copying by raw name
                # meant an APK shipping `assets/../../../../<anywhere>` chose
                # both the destination path and the bytes, writing outside
                # target_dir - in a tool whose entire input is the hostile APKs
                # it exists to analyse. Refuse any name that escapes; the rule
                # mirrored here is the stdlib's own, applied because this loop
                # bypasses the call that would have applied it.
                if ".." in Path(name).parts:
                    continue
                dest = target_dir / name
                dest.parent.mkdir(parents=True, exist_ok=True)
                with z.open(name) as src, open(dest, "wb") as out:
                    shutil.copyfileobj(src, out)
                written += 1
    except (OSError, zipfile.BadZipFile, KeyError):
        # The archive could not be listed: the entry count is unknown, NOT zero.
        return written, None
    return written, entries_in_apk


def _count_java_files(jadx_dir: Path) -> int:
    """Ground truth for 'did jadx leave anything real behind' - real files
    on disk, not jadx's own progress-log text (an unstable format across
    versions, and not actually what matters - what matters is whether
    static/signatures.py's scan() has something real to walk)."""
    if not jadx_dir.exists():
        return 0
    return sum(1 for p in jadx_dir.rglob("*.java") if p.is_file())


def _count_top_level_smali(apktool_dir: Path) -> int:
    """Count top-level classes in apktool's smali output (G1 denominator).

    apktool writes one .smali file per class, so inner classes (Foo$Inner.smali)
    are SEPARATE files; we count only stems with no '$' so the number is
    comparable to jadx's one-.java-per-top-level-class output. apktool decodes at
    the bytecode level and is far more robust than jadx, so its class count is a
    reasonable proxy for the app's true class total. Multi-dex apps split across
    smali/, smali_classes2/, ... - all are counted. If apktool itself only
    partially decoded, this denominator is itself a lower bound, which is exactly
    why the report labels the derived ratio approximate."""
    if not apktool_dir.exists():
        return 0
    total = 0
    for smali_root in apktool_dir.glob("smali*"):
        if not smali_root.is_dir():
            continue
        total += sum(1 for p in smali_root.rglob("*.smali")
                     if p.is_file() and "$" not in p.stem)
    return total


def _class_recovery(jadx_file_count: int, apktool_dir: Path) -> dict:
    """Approximate top-level class recovery (G1): jadx top-level .java classes
    over apktool top-level .smali classes. Returns the denominator and a ratio,
    or a None ratio when the denominator is 0 - unknown, never a fabricated 0/0.

    This quantifies HOW partial a partial decompile is; it is deliberately not
    presented as a precise coverage percentage, because jadx and apktool
    enumerate synthetic/resource classes slightly differently and a partial
    apktool decode lowers the denominator too (ADR-0006: measured, not
    overclaimed). Computed from the on-disk output, so a cache hit reports it
    too - no sidecar threading required."""
    smali_top = _count_top_level_smali(apktool_dir)
    if smali_top <= 0:
        return {"smali_top_level_classes": smali_top, "class_recovery_ratio": None}
    return {
        "smali_top_level_classes": smali_top,
        "class_recovery_ratio": round(jadx_file_count / smali_top, 3),
    }


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


def _cached_status_is_clean(status_sidecar: Path, current_jadx_version: str = "") -> bool:
    """A cache hit is only trustworthy if the cached decompile was actually
    CLEAN (both tools exited 0). Content presence is not proof of completeness:
    the sidecar is the durable record of the original run's exit codes, and a
    stale sidecar recording a non-zero exit can pin a clean APK to 'partial'
    forever (verified: a Jul-31 UnCrackable1 run cached jadx_exit_code=1 from a
    transient jadx failure; direct jadx today decompiles that APK cleanly in
    both whole-APK and per-DEX modes, yet the cache kept reporting partial).
    Reuse only clean cached output; a partial cache (sidecar explicitly records
    a non-zero exit) is re-decompiled for real - the per-DEX lazy cache still
    reuses the proven-ok DEX units, so the re-run is bounded to the units that
    actually failed. A missing/unreadable sidecar returns True: _cached_result
    then reports 'unknown' completeness honestly (not laundered to 'complete'),
    and forcing a re-decompile there would only break the toolchain-free cache
    path for no benefit.

    A readable sidecar must additionally record the current
    _SIDECAR_SCHEMA_VERSION. An older one predates evidence fields the reader
    would otherwise default around (see that constant), so it is re-decompiled
    for real rather than read with the missing fields papered over."""
    try:
        data = json.loads(status_sidecar.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return True  # reuse as 'unknown' (see _cached_result) - honest, not laundered
    # A toolchain upgrade orphans stale cached output: the sidecar records the
    # jadx version that produced the decompile, so a cache written by an older
    # jadx (which may have left a partial/error-ridden result - e.g. 1.5.1 leaves
    # InsecureBankv2 at rc=1/2 errors) is re-decompiled rather than relabeled
    # complete by the newer tool. A sidecar with no recorded version reads as
    # stale too - it predates this field, so it cannot prove the output matches
    # the current toolchain. Mismatch/absence -> not clean -> real re-decompile.
    # The version check only binds when the caller supplies the current jadx
    # version ("" keeps the legacy callers, e.g. older tests, on exit-code-only
    # semantics). With a real version supplied, a sidecar that records a
    # different version - or none at all (predates the field) - is stale.
    if current_jadx_version and data.get("jadx_version") != current_jadx_version:
        return False
    # Evidence-schema staleness, unconditional: unlike the toolchain check above,
    # there is no caller for which reading a wrong-schema sidecar is the right
    # answer (see _SIDECAR_SCHEMA_VERSION).
    if data.get("schema_version") != _SIDECAR_SCHEMA_VERSION:
        return False
    return data.get("jadx_exit_code", 0) == 0 and data.get("apktool_exit_code", 0) == 0


def _load_registry(output_root: Path) -> dict[str, dict]:
    """Read the cache registry (hash -> {last_accessed, size}). A missing or
    corrupt registry is not a failure - start fresh. A corrupt registry that
    crashed the pipeline would violate principle 3 (silent/hard failure on a
    bookkeeping glitch) in the wrong direction: eviction is a best-effort disk
    bound, not a correctness dependency."""
    reg_path = Path(output_root) / CACHE_REGISTRY_NAME
    try:
        data = json.loads(reg_path.read_text(encoding="utf-8"))
        if isinstance(data, dict):
            return data
    except (OSError, json.JSONDecodeError):
        pass
    return {}


def _save_registry(output_root: Path, registry: dict[str, dict]) -> None:
    Path(output_root).mkdir(parents=True, exist_ok=True)
    (Path(output_root) / CACHE_REGISTRY_NAME).write_text(
        json.dumps(registry, indent=2), encoding="utf-8",
    )


def _dir_size(path: Path) -> int:
    """Total size of every file under `path`, in bytes.

    os.scandir rather than Path.rglob: this walks the entire decompile cache to
    refresh one LRU entry's size on every decompile() entry, hit or miss, and on
    facebook's tree that was 522,594 entries behind 1,306,056 rglob calls - 15.9s
    of a 20.5s decompile stage, nearly all of it pathlib object construction
    (measured with cProfile). scandir hands back the stat data the walk needs
    with no Path per entry. A directory symlink is not followed, so a loop cannot
    make this walk forever; a *file* symlink still counts, as Path.is_file does.
    """
    total = 0
    stack = [os.fspath(path)]
    while stack:
        try:
            entries = os.scandir(stack.pop())
        except OSError:
            continue
        with entries:
            for entry in entries:
                try:
                    if entry.is_dir(follow_symlinks=False):
                        stack.append(entry.path)
                    elif entry.is_file():
                        total += entry.stat().st_size
                except OSError:
                    continue
    return total


def _touch_registry(output_root: Path, apk_hash: str) -> None:
    """Mark this hash as just-accessed and refresh its cached size. Called on
    every decompile() entry (hit or miss) so LRU eviction always knows what was
    used last - a cache hit keeps a hash alive, it never ages it."""
    output_root = Path(output_root)
    registry = _load_registry(output_root)
    entry = registry.setdefault(apk_hash, {})
    entry["last_accessed"] = time.time()
    entry["size"] = _dir_size(output_root / apk_hash)
    _save_registry(output_root, registry)


def _enforce_cache_budget(output_root: Path, budget_bytes: int) -> list[str]:
    """Evict least-recently-accessed cached decompiles until total size is under
    budget. Returns the evicted hashes so the caller/report can state the
    eviction (not silently). The hash about to be decompiled was just touched,
    so it sorts newest and is the last candidate for eviction."""
    output_root = Path(output_root)
    registry = _load_registry(output_root)
    total = sum(int(entry.get("size", 0)) for entry in registry.values())
    evicted: list[str] = []
    for apk_hash in sorted(registry, key=lambda h: registry[h].get("last_accessed", 0)):
        if total <= budget_bytes:
            break
        cache_dir = output_root / apk_hash
        if cache_dir.exists():
            shutil.rmtree(cache_dir, ignore_errors=True)
        total -= int(registry[apk_hash].get("size", 0))
        del registry[apk_hash]
        evicted.append(apk_hash)
    if evicted:
        _save_registry(output_root, registry)
    return evicted


def _find_cfr_jar() -> str:
    """Locate a CFR jar: `CFR_JAR` env first, then `tools/cfr/cfr*.jar` under the
    repo root (the reference-env install location), mirroring how
    native._find_ghidra_headless discovers `tools/ghidra/`. Returns "" when none
    is found so callers can fall back to a `cfr` binary on PATH. This is what
    makes L-M1's secondary recovery work out-of-the-box: the jar is installed at
    `tools/cfr/` but the old loader only read `CFR_JAR`/PATH, so a default shell
    (no profile exports CFR_JAR) silently degraded the whole fallback to
    `fallback_unavailable`. Discovery is best-effort; absence still fails loudly
    in the callers (principle 3), never silently accepted.

    The lookup itself lives in `common.find_cfr_jar` - the ingest stage records
    which engine the run had, and that has to be the same answer this resolves."""
    return find_cfr_jar(Path(__file__).resolve().parents[2])  # <repo>/src/static -> <repo>


def _run_secondary_fallback(apk_path: Path, target_dir: Path, log_path: Path) -> dict:
    """L-M1 core: recover classes jadx failed to decompile with a secondary
    engine. jadx 1.5.1 has a RegionMakerVisitor bug that aborts on AndroidX
    classes like LocalBroadcastManager - a whole APK that would otherwise scan
    clean loses those classes, and a root/ssl check hidden in them becomes an
    invisible hole. The fallback converts the dex to .class with dex2jar, then
    decompiles to .java with CFR. Tooling is discovered (d2j-dex2jar.sh on PATH,
    CFR via CFR_JAR env or a 'cfr' on PATH); if either is absent the result is
    recorded loudly as fallback_unavailable rather than silently accepting the
    partial decompile (principle 3). Returns an evidence dict for the sidecar."""
    apk_path = Path(apk_path)
    cfr_dir = target_dir / "cfr"
    # Lazy: if a prior fallback already recovered .java here (a repeated or
    # degenerate fresh-decompile run), reuse it - re-running dex2jar+CFR over a
    # large APK just to re-derive the same output is the exact waste lazy/on-
    # demand decompile is meant to avoid. Same shape as a fresh recovery, with a
    # flag so a reviewer can tell it was reused, not re-run.
    existing = _count_java_files(cfr_dir)
    if existing > 0:
        return {
            "fallback_engine": "cfr", "fallback_unavailable": False,
            "fallback_recovered": True, "fallback_output": str(cfr_dir),
            "fallback_error_tail": None, "fallback_file_count": existing,
            "fallback_reused": True,
        }
    d2j = shutil.which("d2j-dex2jar.sh")
    cfr_jar = _find_cfr_jar()
    cfr_bin = shutil.which("cfr")
    if not d2j or not (cfr_jar or cfr_bin):
        return {
            "fallback_engine": None, "fallback_unavailable": True,
            "fallback_recovered": False, "fallback_output": None,
            "fallback_error_tail": (
                "secondary decompiler unavailable (need d2j-dex2jar.sh on PATH "
                "and a CFR jar via CFR_JAR or a 'cfr' on PATH)"
            ),
        }
    recovered_jar = target_dir / "recovered.jar"
    cfr_dir = target_dir / "cfr"
    log_path = Path(log_path)
    with open(log_path, "a", encoding="utf-8") as logf:
        try:
            d2j_rc = subprocess.run(
                [d2j, "-f", str(apk_path), "-o", str(recovered_jar)],
                stdout=logf, stderr=subprocess.STDOUT, timeout=600,
            ).returncode
        except subprocess.TimeoutExpired:
            d2j_rc = _TIMEOUT_RC
        except OSError as exc:
            # A resolved-but-unexecutable tool (a .sh without the exec bit, the
            # Windows WinError 193 case _decompile_dexes already guards) used to
            # raise straight out of decompile(), turning a best-effort recovery
            # into a failed stage that discarded a good jadx decompile. Record it
            # and let the honest "recovered nothing" result below stand.
            logf.write(f"\ndex2jar failed to launch: {exc}\n")
            d2j_rc = -1
        if d2j_rc == 0 and recovered_jar.exists():
            cmd = ([cfr_bin, str(recovered_jar), "--outputdir", str(cfr_dir)]
                   if cfr_bin else ["java", "-jar", cfr_jar, str(recovered_jar), "--outputdir", str(cfr_dir)])
            try:
                cfr_rc = subprocess.run(
                    cmd, stdout=logf, stderr=subprocess.STDOUT, timeout=600,
                ).returncode
            except subprocess.TimeoutExpired:
                cfr_rc = _TIMEOUT_RC
            except OSError as exc:
                logf.write(f"\nCFR failed to launch: {exc}\n")
                cfr_rc = -1
        else:
            cfr_rc = -1
    recovered_count = _count_java_files(cfr_dir)
    if recovered_count > 0:
        return {
            "fallback_engine": "cfr", "fallback_unavailable": False,
            "fallback_recovered": True, "fallback_output": str(cfr_dir),
            "fallback_error_tail": None, "fallback_file_count": recovered_count,
        }
    return {
        "fallback_engine": "cfr", "fallback_unavailable": False,
        "fallback_recovered": False, "fallback_output": str(cfr_dir) if cfr_dir.exists() else None,
        "fallback_file_count": 0,
        "fallback_error_tail": (
            f"secondary decompile produced no recoverable .java (d2j rc={d2j_rc}, cfr rc={cfr_rc})"
        ),
    }


def _run_tool_logged(cmd: list[str], log_path: Path, timeout_s: int, what: str) -> tuple[int, str]:
    """Run one tool, streaming its combined stdout+stderr to log_path (D3 -
    capture_output would buffer megabytes of progress text in RAM that only
    the tail is ever used). Returns (returncode, log_text). returncode is the
    process exit code, or _TIMEOUT_RC if it was killed by the timeout (D1)."""
    log_path = Path(log_path)
    log_path.parent.mkdir(parents=True, exist_ok=True)
    with open(log_path, "w", encoding="utf-8") as logf:
        try:
            proc = subprocess.run(
                cmd, stdout=logf, stderr=subprocess.STDOUT, timeout=timeout_s,
            )
            returncode = proc.returncode
        except subprocess.TimeoutExpired:
            logf.write(f"\n[{what} timed out after {timeout_s}s - process killed]\n")
            returncode = _TIMEOUT_RC
    return returncode, _tail_file(log_path)


# Test seam (APKTOOL-STALL1): when set, `_run_tool_until_stalled` delegates to
# this callable instead of spawning a process. Lets the unit suite exercise the
# stall/ceiling policy deterministically; always None in production.
_STALL_RUNNER = None


def _run_tool_until_stalled(
    cmd: list[str], log_path: Path, ceiling_s: int, stall_s: int, what: str,
) -> tuple[int, str]:
    """Run one tool with a STALL-based timeout instead of a wall-clock one
    (APKTOOL-STALL1).

    Why a wall-clock budget is the wrong tool here - MEASURED, not theorized. On
    the PropertyGuru APK (150MB, 6 DEX, 21,139 resources) apktool `d --no-res`
    ran for a HEALTHY **5,435 s (90 minutes)** and produced 53,426 files. The old
    wall-clock budget for that APK was 405 s (rate 1.5 s/MB), so it was killed at
    ~4,000 files: ~7.5% of the real output, discarding the entire smali surface
    for a decode that was working perfectly. Tuning the rate instead does not
    work: reaching 90 minutes needs ~35 s/MB, which would make every 20MB APK
    wait ~12 minutes for a *genuinely hung* apktool - trading a false kill for a
    false wait.

    The actual distinction is not "how long has this run taken" but "is it still
    making progress". Baksmaling streams a line per DEX it finishes, and later
    ("Copying assets and libs", "Copying unknown files") per phase - so a working
    run keeps growing its log. A hung run goes byte-for-byte silent forever. This
    watches the log size and kills only after `stall_s` seconds with NO output
    growth, bounded by a `ceiling_s` absolute cap as the outer hang backstop. A
    legitimately slow 90-minute decode therefore completes, while a true hang is
    still killed (after `stall_s`, not after an arbitrary budget).

    Returns (returncode, log_text) exactly like `_run_tool_logged`, using the
    same `_TIMEOUT_RC` sentinel so every downstream consumer is unchanged. The
    distinguishing evidence is appended to the log: a stall-kill vs a ceiling-kill
    are named differently, so the sidecar can tell "stalled (hung)" from "hit the
    absolute cap (raise it if the tool is genuinely this slow)".

    Ordering matters and is load-bearing: the CEILING is checked before the STALL
    window, and progress does not `continue` past it. Two regressions this guards:
    a runaway tool that keeps chattering must still be capped, and a just-progressed
    tool must not be mislabelled "stalled/hung" by a cheap `continue` that leaves
    `stalled_for` un-recomputed. A tool that produces output and blows the ceiling
    is reported as a ceiling hit, never as a hang."""
    log_path = Path(log_path)
    log_path.parent.mkdir(parents=True, exist_ok=True)
    start = time.monotonic()
    last_size = 0
    last_growth = start
    poll = max(1.0, min(5.0, stall_s / 10.0))
    if _STALL_RUNNER is not None:
        # Test seam: drive the stall logic against an injected runner instead of a
        # real process, so the timeout POLICY is unit-testable without sleeping for
        # real seconds or spawning Java. Production never sets this.
        return _STALL_RUNNER(cmd, log_path, ceiling_s, stall_s, what)
    with open(log_path, "w", encoding="utf-8") as logf:
        proc = subprocess.Popen(cmd, stdout=logf, stderr=subprocess.STDOUT)
        while True:
            try:
                proc.wait(timeout=poll)
                return proc.returncode, _tail_file(log_path)
            except subprocess.TimeoutExpired:
                pass
            now = time.monotonic()
            try:
                size = log_path.stat().st_size
            except OSError:
                size = last_size
            progressed = size > last_size
            if progressed:
                # Still progressing - reset the stall clock. We deliberately do
                # NOT `continue` here: the ceiling must stay enforceable while the
                # tool is producing output, otherwise a runaway-but-chatty tool
                # never hits its cap and runs forever. (Measured: an earlier
                # `continue` made the ceiling unreachable for exactly this case.)
                last_size = size
                last_growth = now
            elapsed = now - start
            stalled_for = now - last_growth
            if elapsed >= ceiling_s:
                # Checked first, while progress is still fresh: this is the
                # outer backstop for a tool that is working but will never finish
                # on its own, and it must not be shadowed by the stall branch.
                proc.kill()
                proc.wait()
                logf.write(
                    f"\n[{what} hit the absolute ceiling of {ceiling_s}s while "
                    f"still producing output - killed. This is NOT a hang: the "
                    f"tool was working and outgrew the cap, so raise "
                    f"APKTOOL_TIMEOUT_CAP for a tool that legitimately needs "
                    f"longer]\n"
                )
                logf.flush()
                return _TIMEOUT_RC, _tail_file(log_path)
            if stalled_for >= stall_s:
                proc.kill()
                proc.wait()
                logf.write(
                    f"\n[{what} produced no output for {int(stalled_for)}s - "
                    f"treated as stalled/hung and killed after {int(elapsed)}s "
                    f"(progress-based timeout; a slow-but-working tool keeps "
                    f"writing and is never killed this way)]\n"
                )
                logf.flush()
                return _TIMEOUT_RC, _tail_file(log_path)
    return _TIMEOUT_RC, _tail_file(log_path)


def _build_error_tail(jadx_rc: int, jadx_log: str, apktool_rc: int, apktool_log: str) -> str | None:
    """Combine whatever failed (jadx, apktool, or both) into one error tail;
    None when both succeeded and there is nothing to surface."""
    parts = []
    # jadx_log/apktool_log are already tails (see _run_tool_logged), so no
    # extra _tail() wrapper here - a second one would just add a nested marker.
    if jadx_rc != 0:
        parts.append(f"jadx exited {jadx_rc}\n{jadx_log}")
    if apktool_rc != 0:
        parts.append(f"apktool exited {apktool_rc}\n{apktool_log}")
    return None if not parts else "\n".join(parts)


def _runs_timed_out(*returncodes: int) -> bool:
    """APKTOOL-TIMEOUT1: whether any of these tool returncodes is our own
    kill-by-timeout sentinel rather than a real process exit code. A timed-out
    run and a crashed run were previously indistinguishable in the sidecar: both
    surfaced only as "exited -9" / "exited 1" inside a text tail, so a reviewer
    could not tell "apktool needs more time on a big APK" (raise the budget) from
    "apktool is broken on this APK" (a real defect). Named separately so the
    sidecar records the distinction explicitly."""
    return any(rc == _TIMEOUT_RC for rc in returncodes)


def _list_dex_entries(apk_path: Path) -> list[dict]:
    """L-M1 lazy decompile: enumerate the APK's DEX units (classes*.dex) so jadx
    can run once per DEX instead of once over the whole APK. Returns [] when the
    APK is not a readable zip or holds no DEX, in which case decompile() falls
    back to the whole-APK path (unit tests call decompile() with fake APK paths,
    so this must degrade to [], not raise)."""
    apk_path = Path(apk_path)
    entries = []
    try:
        with zipfile.ZipFile(apk_path) as z:
            names = [n for n in z.namelist()
                     if re.fullmatch(r"classes\d*\.dex", Path(n).name)]
            for name in sorted(names):
                data = z.read(name)
                entries.append({
                    "name": name,
                    "sha256": sha256_bytes(data),
                    "size": len(data),
                })
    except (OSError, zipfile.BadZipFile, KeyError):
        return []
    return entries


def _jadx_version(jadx: str) -> str:
    """Short jadx version token for the per-DEX cache key. A toolchain upgrade
    must invalidate cached decompiles - otherwise a DEX decompiled by an older
    jadx (which may have left a partial/error-ridden output) is silently reused
    as if the newer tool had produced it (verified: jadx 1.5.1 leaves InsecureBankv2
    with 2 errors, rc=1, while 1.5.6 completes it rc=0 - reusing the old output
    would relabel a partial decompile as complete). Version is read once per
    decompile; a probe failure degrades to 'unknown' rather than crashing the
    run (the key just becomes less specific, never more wrong)."""
    try:
        out = subprocess.run([jadx, "--version"], capture_output=True, text=True, timeout=60)
        text = (out.stdout or out.stderr or "").strip()
        return text.splitlines()[0] if text else "unknown"
    except Exception:
        # Any probe hiccup (missing binary, an odd script, a mock without our
        # kwargs in tests) degrades to 'unknown' - the cache key just becomes
        # less specific, never more wrong, and the decompile itself is unaffected.
        return "unknown"


def _dex_cache_key(entry: dict, jadx_version: str = "") -> str:
    """Dex-stable cache key: the DEX's own name plus a hash of its bytes, and the
    jadx version that produced the output. A DEX identical across APK builds maps
    to the same cached decompile and is reused (the jadx-headless-mcp disk-code-
    cache pattern); a changed DEX gets a fresh key and is re-decompiled on its
    own, leaving untouched DEXes cached. Including jadx_version means a toolchain
    upgrade orphans the old version's output instead of silently relabeling a
    previously-partial decompile as complete."""
    stem = Path(entry["name"]).stem  # classes, classes2, ...
    return f"{stem}-{entry['sha256'][:12]}-{jadx_version}"


def _run_dex_fallback(dex_file: Path, target_dir: Path, log_path: Path) -> dict:
    """L-M1: per-DEX secondary recovery - recover classes a single DEX's jadx
    pass choked on (jadx 1.5.1 RegionMakerVisitor bug). Same dex2jar->CFR
    recovery as the whole-APK fallback, but scoped to ONE dex so lazy mode does
    not leave its largest, most-likely-to-choke unit as an unrecovered hole
    (the friend-flagged design gap). Recovered .java lands in the shared
    target_dir/cfr - the same dir the whole-APK fallback and the static scan
    use (cli.py appends fallback_output to the scan roots) - so recovered
    classes are scanned like any other decompiled output. Tooling discovery
    mirrors _run_secondary_fallback; absent tooling is recorded loudly as
    fallback_unavailable, never silently accepted (principle 3)."""
    cfr_dir = target_dir / "cfr"
    d2j = shutil.which("d2j-dex2jar.sh")
    cfr_jar = _find_cfr_jar()
    cfr_bin = shutil.which("cfr")
    if not d2j or not (cfr_jar or cfr_bin):
        return {
            "fallback_engine": None, "fallback_unavailable": True,
            "fallback_recovered": False, "fallback_file_count": 0,
            "fallback_error_tail": (
                "per-DEX secondary decompiler unavailable (need d2j-dex2jar.sh "
                "on PATH and a CFR jar via CFR_JAR or a 'cfr' on PATH)"
            ),
        }
    recovered_jar = dex_file.with_name(f"{dex_file.stem}-recovered.jar")
    with open(log_path, "a", encoding="utf-8") as logf:
        try:
            d2j_rc = subprocess.run(
                [d2j, "-f", str(dex_file), "-o", str(recovered_jar)],
                stdout=logf, stderr=subprocess.STDOUT, timeout=600,
            ).returncode
        except subprocess.TimeoutExpired:
            d2j_rc = _TIMEOUT_RC
        except OSError as exc:
            # Same guard as _run_secondary_fallback: an unexecutable tool must
            # not raise out of the per-DEX loop and fail the whole stage.
            logf.write(f"\ndex2jar failed to launch: {exc}\n")
            d2j_rc = -1
        if d2j_rc == 0 and recovered_jar.exists():
            cmd = ([cfr_bin, str(recovered_jar), "--outputdir", str(cfr_dir)]
                   if cfr_bin else ["java", "-jar", cfr_jar, str(recovered_jar), "--outputdir", str(cfr_dir)])
            try:
                cfr_rc = subprocess.run(
                    cmd, stdout=logf, stderr=subprocess.STDOUT, timeout=600,
                ).returncode
            except subprocess.TimeoutExpired:
                cfr_rc = _TIMEOUT_RC
            except OSError as exc:
                logf.write(f"\nCFR failed to launch: {exc}\n")
                cfr_rc = -1
        else:
            cfr_rc = -1
    recovered = _count_java_files(cfr_dir)
    return {
        "fallback_engine": "cfr", "fallback_unavailable": False,
        "fallback_recovered": recovered > 0, "fallback_file_count": recovered,
        "fallback_output": str(cfr_dir) if recovered > 0 else None,
        "fallback_error_tail": None if recovered > 0 else (
            f"per-DEX CFR recovered nothing for {dex_file.name} (d2j rc={d2j_rc}, cfr rc={cfr_rc})"
        ),
    }


# A jadx-failed DEX is treated as "covered" (not a hole) only when a secondary
# engine (dex2jar+CFR) independently re-read the dex and produced at least this
# fraction of the .java jadx wrote. dex2jar converts the WHOLE dex, so a
# comparable recovered count is honest evidence the dex is broadly readable by
# a second engine; a recovered count far below it means both engines struggled,
# so the dex stays a partial hole rather than being laundered into full coverage
# (ADR-0006 - measured, never overclaimed).
_RECOVERY_COVERAGE_RATIO = 0.5


def _jadx_covered(
    per_dex: bool, jadx_returncode: int, fallback: dict, jadx_file_count: int,
) -> bool:
    """Whether the jadx (Java) surface counts as COVERED for the completeness
    label. Extracted so the per-DEX vs whole-APK distinction is testable.

    A clean jadx (rc == 0) is always covered.

    Per-DEX path: _decompile_dexes ALREADY decided coverage per DEX - folding
    each DEX's own secondary-recovery into a per-DEX covered flag and returning
    jadx_returncode != 0 iff at least one DEX is a real unrecovered hole. So the
    per-DEX verdict is trusted verbatim: rc != 0 means partial. Re-deriving from
    the AGGREGATE recovery count here would let one heavily-recovered DEX mask an
    unrecovered sibling (sum_recovered >= 0.5*total_files can hold while a sibling
    DEX contributed nothing), laundering a partial into 'complete' - a confident
    negative over a DEX that was never read (ADR-0006). Removing that clause can
    only make a per-DEX run's completeness worse-or-equal: the safe direction.

    Whole-APK path: a single jadx exit 1 can still be rescued by a secondary
    engine that independently re-read the WHOLE APK with comparable output (>=
    _RECOVERY_COVERAGE_RATIO of the .java jadx wrote) - the same measured rule,
    correctly applied to the one run there is on this path."""
    if jadx_returncode == 0:
        return True
    if per_dex:
        return False
    return (
        bool(fallback.get("fallback_recovered"))
        and fallback.get("fallback_file_count", 0)
        >= _RECOVERY_COVERAGE_RATIO * max(jadx_file_count, 1)
    )


def _dex_unit_covered(rc: int, files: int, recovered: bool, recovered_count: int) -> bool:
    """Whether ONE per-DEX unit counts as COVERED (no hole) for the completeness
    label. Extracted from _decompile_dexes for the same reason _jadx_covered was:
    the decision is verdict-critical (it feeds the aggregate returncode, hence
    'complete' vs 'partial'), so it must be unit-testable without the real
    jadx/dex2jar/CFR toolchain.

    Rules, mirroring the whole-APK _jadx_covered:
      * A clean jadx unit (rc == 0 and it wrote real .java) is covered.
      * A jadx-FAILED unit is covered only if a secondary engine independently
        recovered >= _RECOVERY_COVERAGE_RATIO of the .java jadx wrote.

    The `files > 0` guard is the parity fix. When jadx wrote NOTHING for this DEX
    there is no baseline to measure recovery against, and the old inline
    `recovered_count >= _RECOVERY_COVERAGE_RATIO * max(files, 1)` degenerated to
    `>= 0.5` - so ANY single recovered file certified the whole DEX covered,
    laundering a total jadx-failure DEX with minimal CFR recovery into 'complete'
    (ADR-0006: an UNMEASURED recovery must never certify completeness). The
    whole-APK path never hits this because its total-failure gate (rc != 0 and
    file_count == 0) returns early, so _jadx_covered only ever sees files > 0 and
    its own max() is a no-op; the per-DEX path has no such per-unit early return,
    so the guard must live here. The recovered .java is still scanned regardless
    (it lands in the shared cfr/ scan root cli.py appends), so this tightens only
    the completeness LABEL, never what gets analyzed - no detection is lost, the
    run is just honestly labeled partial when a jadx-empty DEX can't be measured."""
    if rc == 0 and files > 0:
        return True
    if files > 0 and recovered and recovered_count > 0:
        return recovered_count >= _RECOVERY_COVERAGE_RATIO * files
    return False


def _decompile_dexes(
    apk_path: Path, target_dir: Path, dex_entries: list[dict], jadx: str,
) -> tuple[int, int, list[dict], dict]:
    """L-M1 lazy per-DEX decompile. Runs jadx once per DEX, bounded-memory - a
    hung/OOM on one DEX no longer discards the whole APK (the all-or-nothing
    cliff lazy decompile exists to remove). Each DEX output is cached under
    target_dir/jadx/<dex-key>/ and reused on a later run. Returns
    (aggregate_returncode, total_java_files, units). aggregate_returncode is 0
    only when every DEX decompiled cleanly; any failed DEX degrades it to 1
    (partial) while its siblings' output is preserved, so a partial result still
    hands real, scannable .java to static analysis."""
    jadx_dir = target_dir / "jadx"
    dex_sources = target_dir / "dex_sources"
    # Read the jadx version once so every DEX key carries it. A toolchain upgrade
    # must orphan the old version's cached output (it may be partial/error-ridden)
    # instead of silently reusing and relabeling it complete - keying on the DEX
    # alone let a 1.5.1 partial decompile masquerade as fresh 1.5.6 output.
    jadx_version = _jadx_version(jadx)
    units: list[dict] = []
    any_failed = False
    # Aggregate per-DEX secondary-recovery evidence (friend L-M1 work item 2):
    # a DEX whose jadx exits non-zero - the largest, most-likely-to-choke unit -
    # must not be left as an unrecovered hole in lazy mode.
    fallback = {"fallback_engine": None, "fallback_unavailable": False,
                "fallback_recovered": False, "fallback_file_count": 0,
                "fallback_output": None, "fallback_per_dex": []}
    for entry in dex_entries:
        out_dir = jadx_dir / _dex_cache_key(entry, jadx_version)
        existing = _count_java_files(out_dir)
        if existing > 0:
            # Per-DEX lazy reuse: this exact DEX was already decompiled (same
            # dex-stable identity) - don't re-run jadx over it. A cached unit was
            # proven ok when it was first produced, so it counts as covered.
            units.append({"dex": entry["name"], "status": "cached", "files": existing,
                          "covered": True})
            continue
        dex_file = dex_sources / entry["name"]
        try:
            if not dex_file.exists():
                dex_sources.mkdir(parents=True, exist_ok=True)
                with zipfile.ZipFile(apk_path) as z:
                    z.extract(entry["name"], dex_sources)
            rc, log = _run_tool_logged(
                [jadx, "-d", str(out_dir), str(dex_file)],
                dex_sources / f"{Path(entry['name']).stem}.log",
                jadx_timeout_for_size(entry["size"]), "jadx",
            )
        except (OSError, zipfile.BadZipFile, KeyError) as exc:
            # WINLAUNCH1: an OSError here (notably WinError 193, 'not a valid
            # Win32 application') means the resolved jadx launcher is not
            # executable on this platform - a toolchain/configuration fault, not
            # a decompile failure. Surface the real cause in the error tail
            # (principle 3: fail loud) instead of the bare str(exc), so the
            # report says WHY jadx could never run rather than only that the
            # DEX ended up empty.
            rc, log = -1, f"spawn failed for {jadx!r}: {type(exc).__name__}: {exc}"
        files = _count_java_files(out_dir)
        # A DEX that wrote .java but whose jadx still exited non-zero is a
        # PARTIAL decompile, not a clean one. Whether it is a *covered* DEX (no
        # hole) is decided AFTER the recovery block below - a secondary engine
        # that independently re-read it can lift it out of hole territory. A
        # files==0 DEX that recovery also cannot fill stays a hard hole.
        units.append({"dex": entry["name"], "status": "ok" if files > 0 else "failed",
                      "files": files, "exit": rc, "error_tail": log if files == 0 else None,
                      "recovered": False, "recovered_count": 0, "recovery_unavailable": False,
                      "covered": False})
        # Per-DEX recovery: jadx choked on this DEX (exit != 0) - recover the
        # classes it lost with dex2jar+CFR instead of leaving the hole. Cached
        # units were proven ok earlier and are skipped. Recovery is scoped to
        # this one dex_file, so a hung/partial dex is recovered on its own and
        # its siblings' output is preserved.
        if rc != 0:
            dex_fb = _run_dex_fallback(dex_file, target_dir, dex_sources / f"{Path(entry['name']).stem}.log")
            dex_fb["dex"] = entry["name"]
            fallback["fallback_per_dex"].append(dex_fb)
            if dex_fb.get("fallback_unavailable"):
                fallback["fallback_unavailable"] = True
            if dex_fb.get("fallback_recovered"):
                fallback["fallback_recovered"] = True
                fallback["fallback_engine"] = dex_fb["fallback_engine"]
                fallback["fallback_output"] = dex_fb["fallback_output"]
                fallback["fallback_file_count"] += dex_fb["fallback_file_count"]
            # Per-dex recovery honesty (friend L-M1 item): a reviewer reading
            # dex_units must see whether THIS dex was recovered, not just the
            # aggregate. Merge the recovery result onto the unit just appended.
            units[-1]["recovered"] = dex_fb.get("fallback_recovered")
            units[-1]["recovered_count"] = dex_fb.get("fallback_file_count")
            units[-1]["recovery_unavailable"] = dex_fb.get("fallback_unavailable")
            units[-1]["recovery_error_tail"] = dex_fb.get("fallback_error_tail")
        # Finalise per-DEX coverage after recovery in one testable place
        # (_dex_unit_covered): a clean jadx unit is covered; a jadx-failed unit is
        # covered ONLY if a secondary engine independently recovered >=
        # _RECOVERY_COVERAGE_RATIO of the .java jadx wrote. A files==0 unit (jadx
        # wrote nothing, so recovery has no baseline to be measured against) is
        # never certified covered from a recovery count alone - it stays a partial
        # hole, never laundered into 'complete' (ADR-0006). The recovered .java is
        # still scanned via the shared cfr/ root, so only the LABEL tightens.
        units[-1]["covered"] = _dex_unit_covered(
            rc, files, units[-1]["recovered"], units[-1]["recovered_count"])
    # any_failed is set only by a DEX that is NOT covered after recovery - a hole
    # the pipeline did not (or could not) fill. This lets a CFR-recovered DEX lift
    # the aggregate toward complete, while an unrecovered one honestly degrades it.
    any_failed = not all(u.get("covered", True) for u in units)
    jadx_file_count = _count_java_files(jadx_dir)
    if not fallback["fallback_per_dex"]:
        fallback = {}
    return (1 if any_failed else 0), jadx_file_count, units, fallback


def decompile(apk_path: Path, output_root: Path, apk_hash: str) -> StageResult:
    start = time.monotonic()
    try:
        apk_path = Path(apk_path)
        target_dir = Path(output_root) / apk_hash
        jadx_dir = target_dir / "jadx"
        apktool_dir = target_dir / "apktool"
        status_sidecar = target_dir / STATUS_SIDECAR_NAME

        # L-M1: mark this hash as just-accessed (LRU bookkeeping) on every entry.
        _touch_registry(output_root, apk_hash)

        cache_was_hollow = False
        jadx = _find_jadx()
        if jadx_dir.exists() and apktool_dir.exists():
            # A cache hit must be clean AND produced by the current jadx - a
            # sidecar from an older toolchain version is stale output, re-decompiled.
            if _has_real_cached_content(jadx_dir, apktool_dir) and _cached_status_is_clean(
                status_sidecar, _jadx_version(jadx),
            ):
                return _cached_result(start, jadx_dir, apktool_dir, status_sidecar)
            cache_was_hollow = True
        # L-M1: this is the decompile-for-real path (not a valid cache hit) - the
        # cache is about to grow, so enforce the size budget first. Evictions are
        # surfaced on the report via the returned list when wired to cli.
        _enforce_cache_budget(output_root, CACHE_SIZE_BUDGET_BYTES)

        # No size hard-stop: no APK is refused for being large. A large MULTIDEX
        # APK takes the bounded per-DEX path below (jadx once per classes*.dex,
        # per-DEX disk cache) - memory-safe by construction, avoiding the OOM a
        # single whole-APK jadx over a multi-hundred-MB file would risk. An APK
        # with NO readable DEX (not a readable zip / no classes*.dex) falls
        # through to whole-APK jadx, whose produced output is kept as partial on
        # a non-zero exit (partial-tolerance below); the size-scaled timeout
        # (jadx_timeout_for_size) is the NFR-1 hang backstop, so a hung run is
        # killed loudly -> partial, never a silent stall, and never a refusal
        # that abandons the app to manual work. apk_size still feeds the
        # size-scaled timeouts; dex_entries drives the per-DEX dispatch and is
        # enumerated exactly once here.
        try:
            apk_size = apk_path.stat().st_size
        except OSError:
            apk_size = 0
        dex_entries = _list_dex_entries(apk_path)

        apktool = require_tool("apktool")

        # L-M1 lazy decompile: when the APK is a zip holding classes*.dex, run
        # jadx once PER DEX - bounded memory, so a hung/OOM on one DEX no longer
        # discards the whole APK (the all-or-nothing cliff lazy decompile exists
        # to remove) - with a per-DEX disk cache keyed by dex-stable identity
        # (a DEX already decompiled is reused). Fall back to whole-APK jadx when
        # the APK is not a readable zip or holds no DEX (unit tests use fake
        # paths, so this branch is what keeps them on the proven whole-APK path).
        # dex_entries was already computed above - reused, never re-read, so a
        # large APK's dex metadata is enumerated exactly once.
        per_dex_units = None
        fallback = {}
        if dex_entries:
            jadx_returncode, jadx_file_count, per_dex_units, per_dex_fallback = _decompile_dexes(
                apk_path, target_dir, dex_entries, jadx)
            jadx_log_text = ""
            fallback = per_dex_fallback  # per-DEX recovery evidence (friend L-M1 work item 2)
        else:
            # D5: re-decompile only the half that is missing or hollow. A hollow
            # half is cleared before re-running so no ambiguous stale state is
            # left behind; a valid half (real .java / a real manifest already on
            # disk from a prior partial run) is reused rather than thrown away.
            jadx_log = target_dir / "jadx.log"
            if _count_java_files(jadx_dir) > 0:
                jadx_returncode, jadx_log_text = 0, ""  # reuse existing valid jadx output
            else:
                if jadx_dir.exists():
                    shutil.rmtree(jadx_dir, ignore_errors=True)
                # L-M1: size-scaled timeout. The APK always exists here in the
                # real pipeline (ingest verified it), but decompile() is also
                # called directly in unit tests with fake paths, so a non-stat-
                # able path must not crash - fall back to the floor timeout
                # (fail-fast), which is the safe direction for an absent/corrupt
                # file anyway.
                try:
                    apk_size = apk_path.stat().st_size
                except OSError:
                    apk_size = 0
                jadx_returncode, jadx_log_text = _run_tool_logged(
                    [jadx, "-d", str(jadx_dir), str(apk_path)], jadx_log,
                    jadx_timeout_for_size(apk_size), "jadx",
                )
            jadx_file_count = _count_java_files(jadx_dir)

        if jadx_returncode != 0 and jadx_file_count == 0:
            # Total failure on the PRIMARY surface - jadx wrote nothing usable.
            # Old behavior hard-failed here WITHOUT ever attempting apktool,
            # discarding the one surface that reliably survives a jadx crash:
            # apktool's smali tree. smali/ is in SCANNED_SUFFIXES and
            # apktool_output is a scan root in cli.py, so smali is genuinely
            # scannable for root/ssl bytecode signatures.
            # L-M1: before giving up, attempt an apktool --no-res smali decode as
            # a last-resort fast path. --no-res skips resource decoding (faster
            # and more memory-frugal on large/obfuscated APKs, and the manifest
            # stage reads the binary manifest straight from the APK anyway) but
            # still emits smali/ + AndroidManifest.xml. If apktool lands real
            # output, the run continues as an honestly-labeled PARTIAL - the Java
            # surface is unrecovered (jadx_file_count == 0), so nothing is ever
            # laundered to complete (ADR-0006; the recovered smali is scanned,
            # the completeness stays partial). Only when apktool ALSO produces
            # nothing is this a true hard failure.
            apktool_fb_rc, apktool_fb_log = _run_tool_until_stalled(
                [apktool, "d", "-f", "--no-res", "-o", str(apktool_dir), str(apk_path)],
                target_dir / "apktool_fallback.log", apktool_timeout_for_size(apk_size),
                APKTOOL_STALL_SECONDS, "apktool --no-res smali fallback",
            )
            if (apktool_dir / "AndroidManifest.xml").exists():
                status_sidecar.write_text(
                    json.dumps({
                        "schema_version": _SIDECAR_SCHEMA_VERSION,
                        "decompile_completeness": "partial",
                        "jadx_exit_code": jadx_returncode,
                        "apktool_exit_code": apktool_fb_rc,
                        "jadx_file_count": 0,
                        "jadx_version": _jadx_version(jadx),
                        "jadx_error_tail": jadx_log_text,
                        "smali_fallback": True,
                        "apktool_error_tail": apktool_fb_log,
                        # APKTOOL-TIMEOUT1: attribute the fallback's outcome. A
                        # timed-out fallback on a large APK means the budget was
                        # too small, NOT that apktool is broken - without this the
                        # sidecar only showed a bare "-9" inside the log tail.
                        "apktool_timed_out": _runs_timed_out(apktool_fb_rc),
                        # The jadx half of the same attribution. This gate is
                        # only reached with jadx_file_count == 0, but the units
                        # still hold why each DEX failed - folding them in keeps
                        # a per-DEX timeout visible on the sidecar that records
                        # the worst run, instead of absent from it.
                        "jadx_timed_out": _runs_timed_out(
                            jadx_returncode,
                            *(u.get("exit", 0) for u in (per_dex_units or []))),
                        "apktool_timeout_s": apktool_timeout_for_size(apk_size),
                    }, indent=2),
                    encoding="utf-8",
                )
                result = _result(
                    start, jadx_dir, apktool_dir, cached=False,
                    decompile_completeness="partial", jadx_exit_code=jadx_returncode,
                    apktool_exit_code=apktool_fb_rc, jadx_file_count=0,
                    jadx_error_tail=jadx_log_text,
                )
                result.evidence["smali_fallback"] = True
                result.evidence["apktool_error_tail"] = apktool_fb_log
                return result
            return StageResult(
                stage="decompile", status="failed", evidence={},
                error=(
                    f"jadx exited {jadx_returncode} and produced no usable output; "
                    "apktool --no-res smali fallback also produced nothing\n"
                    f"log: {jadx_log_text}\napktool: {apktool_fb_log}"
                ),
                duration_ms=elapsed_ms(start),
            )

        # L-M1 core: when jadx is partial (exit != 0 but wrote real .java - the
        # AndroidX LocalBroadcastManager RegionMakerVisitor bug), try to recover
        # the classes it choked on with a secondary engine instead of leaving a
        # hole. Recorded loudly when tooling is absent (principle 3). Whole-APK
        # path only (per-DEX recovery already ran inside _decompile_dexes).
        if per_dex_units is None and jadx_returncode != 0 and jadx_file_count > 0:
            # L-M1 core: when jadx is partial (exit != 0 but wrote real .java -
            # the AndroidX LocalBroadcastManager RegionMakerVisitor bug), try to
            # recover the classes it choked on with a secondary engine instead of
            # leaving a hole. Recorded loudly when tooling is absent (principle 3).
            # Only on the whole-APK path - per-DEX is already granular, and
            # re-running CFR over the whole APK would defeat the memory benefit.
            fallback = _run_secondary_fallback(apk_path, target_dir, jadx_log)

        # jadx either fully succeeded, or crashed but left real output behind -
        # apktool runs either way, since its failure modes are independent of
        # jadx's.
        apktool_log = target_dir / "apktool.log"
        if (apktool_dir / "AndroidManifest.xml").exists():
            apktool_returncode, apktool_log_text = 0, ""  # reuse existing valid apktool output
        else:
            if apktool_dir.exists():
                shutil.rmtree(apktool_dir, ignore_errors=True)
            # LARGE-APP: size-scaled timeout. The APK always exists in the real
            # pipeline (ingest verified it), but decompile() is also called
            # directly in unit tests with fake paths, so a non-stat-able path
            # must not crash - fall back to the floor (fail-fast), the safe
            # direction for an absent/corrupt file anyway.
            try:
                apktool_size = apk_path.stat().st_size
            except OSError:
                apktool_size = 0
            # APKTOOL-STALL1: progress-based, not wall-clock. A measured HEALTHY
            # apktool decode of a 150MB production app takes 5,435s; a wall-clock
            # budget killed it at 405s having written 7.5% of its output. The
            # ceiling below stays as the absolute backstop, but the stall window
            # is what actually detects a hang (no output growth at all).
            apktool_returncode, apktool_log_text = _run_tool_until_stalled(
                [apktool, "d", "-f", "-o", str(apktool_dir), str(apk_path)], apktool_log,
                apktool_timeout_for_size(apktool_size), APKTOOL_STALL_SECONDS, "apktool",
            )

        # D4 (relaxed, limitation 9): apktool wrote no AndroidManifest.xml. This
        # used to hard-fail the whole run - discarding an otherwise-good jadx Java
        # analysis (the primary root/SSL surface) because a SECONDARY tool failed.
        # That is worse than an honest partial, so now we degrade instead of halt.
        # Reaching here guarantees jadx produced real output (the jadx-zero-files
        # gate above already returned). The manifest stage reads the binary
        # manifest straight from the APK (parse_manifest_apk), and with no decoded
        # res/ tree a declared NSC degrades the manifest surface to partial too.
        # ADR-0006: a good analysis continues as an honestly-labeled partial - it
        # is never discarded, and a clean verdict is never certified from it. A
        # TOTAL failure (nothing from either tool) still hard-fails at the jadx
        # gate above.
        apktool_has_manifest = (apktool_dir / "AndroidManifest.xml").exists()

        # ASSET-DROP1: guarantee the asset surface exists on disk for the scan
        # roots, independently of jadx's per-DEX mode and apktool's timeout. On
        # the lazy per-DEX path jadx never sees the APK, so it writes no
        # resources/ - and apktool on a large app is killed mid-smali before it
        # reaches assets/. Without this, a shipped JS bundle (the primary root/SSL
        # surface on a React Native app) was read by NOBODY while `js` still
        # reported `fully_analyzed` - a confident negative over an unread bundle
        # (see extract_assets). Counted so the sidecar can show whether the
        # surface was actually recovered.
        asset_file_count, asset_entries_in_apk = extract_assets(apk_path, target_dir)

        # A failure on either side degrades the whole run to partial (D2);
        # only when both exit 0 is the decompile complete. jadx coverage is
        # decided by _jadx_covered: on the per-DEX path the per-DEX verdict is
        # authoritative (its rc already folds in per-DEX recovery), and on the
        # whole-APK path a jadx exit 1 can be rescued by a secondary engine that
        # independently re-read the APK with comparable output. Deciding it in
        # one place stops the aggregate-recovery rescue from laundering a per-DEX
        # hole into 'complete' (ADR-0006 - measured, never overclaimed).
        jadx_covered = _jadx_covered(
            per_dex_units is not None, jadx_returncode, fallback, jadx_file_count)
        completeness = (
            "complete"
            if (apktool_has_manifest and jadx_covered and apktool_returncode == 0)
            else "partial"
        )
        error_tail = _build_error_tail(jadx_returncode, jadx_log_text, apktool_returncode, apktool_log_text)
        # APKTOOL-TIMEOUT1's jadx half, answered on BOTH paths. The per-DEX path
        # folds every unit's exit code into a 0/1 aggregate - that returncode is
        # a COVERAGE verdict (did any DEX stay a hole), not a process outcome -
        # so on the one path every real multidex APK takes,
        # _runs_timed_out(jadx_returncode) was structurally False: a jadx killed
        # by its own budget on classes2.dex read as "did not time out" while the
        # unit held the real -9 unread. Each unit keeps its own exit code, so the
        # question is answered from those; on the whole-APK path there are no
        # units and the aggregate IS the process rc, exactly as before. The field
        # exists to tell an operator "raise the budget" from "the tool is broken",
        # so it must not be answerable only on the path real APKs do not take.
        jadx_timed_out = _runs_timed_out(
            jadx_returncode, *(u.get("exit", 0) for u in (per_dex_units or [])))
        status_sidecar.write_text(
            json.dumps({
                # See _SIDECAR_SCHEMA_VERSION - the reader refuses a sidecar
                # written under an older evidence schema instead of defaulting
                # the fields the current reader expects.
                "schema_version": _SIDECAR_SCHEMA_VERSION,
                "decompile_completeness": completeness,
                "jadx_exit_code": jadx_returncode,
                "apktool_exit_code": apktool_returncode,
                "jadx_file_count": jadx_file_count,
                "jadx_version": _jadx_version(jadx),
                "jadx_error_tail": error_tail,
                # ASSET-DROP1: 0 means the asset surface (JS bundles incl.) was
                # NOT recovered this run - the report/coverage must not then read
                # `js: fully_analyzed` over a bundle nobody extracted.
                "asset_surface_extracted": asset_file_count > 0,
                "asset_file_count": asset_file_count,
                # ASSET-TRI1: how many `assets/` entries the APK itself lists
                # (None = the archive could not be listed). Distinguishes an app
                # that ships no asset surface from one whose surface was dropped,
                # which `asset_surface_extracted` alone reports identically.
                "asset_entries_in_apk": asset_entries_in_apk,
                # APKTOOL-TIMEOUT1: distinguish "our timeout killed a healthy but
                # slow decode" from "the tool genuinely crashed". Without this a
                # partial degrade is unattributable (both read as a bare exit
                # code), and the operator cannot tell whether to raise the budget.
                "apktool_timed_out": _runs_timed_out(apktool_returncode),
                "jadx_timed_out": jadx_timed_out,
                # The budget actually used, so the report can state it (and a
                # reviewer can compare it against a measured real runtime).
                "apktool_timeout_s": apktool_timeout_for_size(apk_size),
                **fallback,
                **({"lazy_decompile": True, "dex_units": per_dex_units} if per_dex_units else {}),
            }, indent=2),
            encoding="utf-8",
        )

        result = _result(
            start, jadx_dir, apktool_dir, cached=False,
            decompile_completeness=completeness, jadx_exit_code=jadx_returncode,
            apktool_exit_code=apktool_returncode, jadx_file_count=jadx_file_count,
            jadx_error_tail=error_tail, recovered_from_hollow_cache=cache_was_hollow,
        )
        result.evidence["asset_surface_extracted"] = asset_file_count > 0
        result.evidence["asset_file_count"] = asset_file_count
        result.evidence["asset_entries_in_apk"] = asset_entries_in_apk
        result.evidence["apktool_timed_out"] = _runs_timed_out(apktool_returncode)
        result.evidence["jadx_timed_out"] = jadx_timed_out
        result.evidence["apktool_timeout_s"] = apktool_timeout_for_size(apk_size)
        if fallback:
            result.evidence.update(fallback)
        if per_dex_units:
            result.evidence["lazy_decompile"] = True
            result.evidence["dex_units"] = per_dex_units
        return result
    except Exception as exc:
        # _require_tool RuntimeError, unexpected filesystem/JSON errors. No
        # CalledProcessError can reach here - both tools run check=False and
        # report via returncode (see _run_tool_logged).
        return StageResult(
            stage="decompile", status="failed", evidence={}, error=str(exc),
            duration_ms=elapsed_ms(start),
        )


def _result(
    start: float, jadx_dir: Path, apktool_dir: Path, cached: bool,
    decompile_completeness: str = "complete", jadx_exit_code: int = 0,
    apktool_exit_code: int = 0, jadx_file_count: int | None = None,
    jadx_error_tail: str | None = None, recovered_from_hollow_cache: bool = False,
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
            "apktool_exit_code": apktool_exit_code,
            "jadx_file_count": jadx_file_count,
            # G1: approximate top-level class recovery, recomputed from the
            # on-disk output so a cache hit reports it too (no sidecar threading).
            **_class_recovery(jadx_file_count, apktool_dir),
            "recovered_from_hollow_cache": recovered_from_hollow_cache,
            "jadx_error_tail": jadx_error_tail,
        },
        duration_ms=elapsed_ms(start),
    )


def _cached_result(start: float, jadx_dir: Path, apktool_dir: Path, status_sidecar: Path) -> StageResult:
    """A cache hit must not silently launder a partial decompile back into
    looking complete - the sidecar is the only durable record of what the
    original (non-cached) invocation actually produced, since jadx itself
    leaves no other trace of its own exit code once the process is gone."""
    if status_sidecar.exists():
        try:
            data = json.loads(status_sidecar.read_text(encoding="utf-8"))
            result = _result(
                start, jadx_dir, apktool_dir, cached=True,
                decompile_completeness=data.get("decompile_completeness", "unknown"),
                jadx_exit_code=data.get("jadx_exit_code", 0),
                apktool_exit_code=data.get("apktool_exit_code", 0),
                jadx_file_count=data.get("jadx_file_count"),
                jadx_error_tail=data.get("jadx_error_tail"),
            )
            for key in _SIDECAR_EVIDENCE_FIELDS:
                if key in data:
                    result.evidence[key] = data[key]
            return result
        except (json.JSONDecodeError, OSError):
            pass  # Sidecar unreadable - fall through. The decompiled output
            # itself is untouched and valid; a bookkeeping glitch alone
            # isn't reason to halt the pipeline (falls back to "unknown"
            # below, same as the no-sidecar case).
    # No sidecar at all: the completeness of the cached output is not provable
    # from the output alone (jadx leaves no exit code behind once the process
    # is gone). RESID-3B: do NOT assume "complete" - that would launder a
    # partial decompile into calibration as a full scan. Report "unknown" so
    # calibration excludes it (a negative from an unknown-completeness scan is
    # not proof of absence), rather than guessing the safest-sounding value.
    return _result(start, jadx_dir, apktool_dir, cached=True, decompile_completeness="unknown")

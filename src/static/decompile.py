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

import hashlib
import json
import os
import re
import shutil
import subprocess
import time
import zipfile
from pathlib import Path

from common import StageResult

STATUS_SIDECAR_NAME = "decompile_status.json"

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
APKTOOL_TIMEOUT = 300

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
        return log_path.read_text(encoding="utf-8")
    with open(log_path, "rb") as f:
        f.seek(size - max_chars)
        tail = f.read().decode("utf-8", errors="replace")
    return f"...(truncated, {size} bytes total)...\n{tail}"


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
    path = Path(path)
    if not path.exists():
        return 0
    return sum(p.stat().st_size for p in path.rglob("*") if p.is_file())


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
    cfr_jar = os.environ.get("CFR_JAR") or ""
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
        if d2j_rc == 0 and recovered_jar.exists():
            cmd = ([cfr_bin, str(recovered_jar), "--outputdir", str(cfr_dir)]
                   if cfr_bin else ["java", "-jar", cfr_jar, str(recovered_jar), "--outputdir", str(cfr_dir)])
            try:
                cfr_rc = subprocess.run(
                    cmd, stdout=logf, stderr=subprocess.STDOUT, timeout=600,
                ).returncode
            except subprocess.TimeoutExpired:
                cfr_rc = _TIMEOUT_RC
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
                    "sha256": hashlib.sha256(data).hexdigest(),
                    "size": len(data),
                })
    except (OSError, zipfile.BadZipFile, KeyError):
        return []
    return entries


def _dex_cache_key(entry: dict) -> str:
    """Dex-stable cache key: the DEX's own name plus a hash of its bytes. A DEX
    identical across APK builds maps to the same cached decompile and is reused
    (the jadx-headless-mcp disk-code-cache pattern); a changed DEX gets a fresh
    key and is re-decompiled on its own, leaving untouched DEXes cached."""
    stem = Path(entry["name"]).stem  # classes, classes2, ...
    return f"{stem}-{entry['sha256'][:12]}"


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
    cfr_jar = os.environ.get("CFR_JAR") or ""
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
        if d2j_rc == 0 and recovered_jar.exists():
            cmd = ([cfr_bin, str(recovered_jar), "--outputdir", str(cfr_dir)]
                   if cfr_bin else ["java", "-jar", cfr_jar, str(recovered_jar), "--outputdir", str(cfr_dir)])
            try:
                cfr_rc = subprocess.run(
                    cmd, stdout=logf, stderr=subprocess.STDOUT, timeout=600,
                ).returncode
            except subprocess.TimeoutExpired:
                cfr_rc = _TIMEOUT_RC
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
    units: list[dict] = []
    any_failed = False
    # Aggregate per-DEX secondary-recovery evidence (friend L-M1 work item 2):
    # a DEX whose jadx exits non-zero - the largest, most-likely-to-choke unit -
    # must not be left as an unrecovered hole in lazy mode.
    fallback = {"fallback_engine": None, "fallback_unavailable": False,
                "fallback_recovered": False, "fallback_file_count": 0,
                "fallback_output": None, "fallback_per_dex": []}
    for entry in dex_entries:
        out_dir = jadx_dir / _dex_cache_key(entry)
        existing = _count_java_files(out_dir)
        if existing > 0:
            # Per-DEX lazy reuse: this exact DEX was already decompiled (same
            # dex-stable identity) - don't re-run jadx over it.
            units.append({"dex": entry["name"], "status": "cached", "files": existing})
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
            rc, log = -1, str(exc)
        files = _count_java_files(out_dir)
        # Partial-honesty: a DEX that wrote .java but whose jadx still exited
        # non-zero is a PARTIAL decompile, not a clean one (the same rule as the
        # whole-APK path - an exit code of 1 must degrade completeness, never be
        # laundered into "complete"). Only cached units (proven ok earlier) skip
        # the check. A files==0 DEX is a hard failure on top of that.
        if files == 0 or (rc != 0 and files > 0):
            any_failed = True
        units.append({"dex": entry["name"], "status": "ok" if files > 0 else "failed",
                      "files": files, "exit": rc, "error_tail": log if files == 0 else None})
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
        if jadx_dir.exists() and apktool_dir.exists():
            if _has_real_cached_content(jadx_dir, apktool_dir):
                return _cached_result(start, jadx_dir, apktool_dir, status_sidecar)
            cache_was_hollow = True
        # L-M1: this is the decompile-for-real path (not a valid cache hit) - the
        # cache is about to grow, so enforce the size budget first. Evictions are
        # surfaced on the report via the returned list when wired to cli.
        _enforce_cache_budget(output_root, CACHE_SIZE_BUDGET_BYTES)

        jadx = _require_tool("jadx")
        apktool = _require_tool("apktool")

        # L-M1 lazy decompile: when the APK is a zip holding classes*.dex, run
        # jadx once PER DEX - bounded memory, so a hung/OOM on one DEX no longer
        # discards the whole APK (the all-or-nothing cliff lazy decompile exists
        # to remove) - with a per-DEX disk cache keyed by dex-stable identity
        # (a DEX already decompiled is reused). Fall back to whole-APK jadx when
        # the APK is not a readable zip or holds no DEX (unit tests use fake
        # paths, so this branch is what keeps them on the proven whole-APK path).
        per_dex_units = None
        fallback = {}
        dex_entries = _list_dex_entries(apk_path)
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
            # Total failure - nothing real to hand downstream. apktool is
            # never attempted against an APK jadx couldn't even begin.
            return StageResult(
                stage="decompile", status="failed", evidence={},
                error=(
                    f"jadx exited {jadx_returncode} and produced no usable output\n"
                    f"log: {jadx_log_text}"
                ),
                duration_ms=int((time.monotonic() - start) * 1000),
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
            apktool_returncode, apktool_log_text = _run_tool_logged(
                [apktool, "d", "-f", "-o", str(apktool_dir), str(apk_path)], apktool_log, APKTOOL_TIMEOUT, "apktool",
            )

        # D4: apktool succeeded but wrote no manifest, or crashed before
        # writing one - either way there is nothing for parse_manifest to
        # read and nothing for the scan's apktool pass to walk. Hard fail.
        if not (apktool_dir / "AndroidManifest.xml").exists():
            return StageResult(
                stage="decompile", status="failed", evidence={},
                error=(
                    f"apktool exited {apktool_returncode} and produced no "
                    f"AndroidManifest.xml\nlog: {apktool_log_text}"
                ),
                duration_ms=int((time.monotonic() - start) * 1000),
            )

        # A failure on either side degrades the whole run to partial (D2);
        # only when both exit 0 is the decompile complete.
        completeness = "complete" if (jadx_returncode == 0 and apktool_returncode == 0) else "partial"
        error_tail = _build_error_tail(jadx_returncode, jadx_log_text, apktool_returncode, apktool_log_text)
        status_sidecar.write_text(
            json.dumps({
                "decompile_completeness": completeness,
                "jadx_exit_code": jadx_returncode,
                "apktool_exit_code": apktool_returncode,
                "jadx_file_count": jadx_file_count,
                "jadx_error_tail": error_tail,
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
            duration_ms=int((time.monotonic() - start) * 1000),
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
            result = _result(
                start, jadx_dir, apktool_dir, cached=True,
                decompile_completeness=data.get("decompile_completeness", "unknown"),
                jadx_exit_code=data.get("jadx_exit_code", 0),
                apktool_exit_code=data.get("apktool_exit_code", 0),
                jadx_file_count=data.get("jadx_file_count"),
                jadx_error_tail=data.get("jadx_error_tail"),
            )
            for key in ("fallback_engine", "fallback_unavailable", "fallback_recovered",
                        "fallback_output", "fallback_error_tail", "fallback_file_count",
                        "lazy_decompile", "dex_units"):
                if key in data:
                    result.evidence[key] = data[key]
            return result
        except (json.JSONDecodeError, OSError):
            pass  # Sidecar unreadable - fall through. The decompiled output
            # itself is untouched and valid; a bookkeeping glitch alone
            # isn't reason to halt the pipeline (falls back to "complete"
            # below, same as the no-sidecar case).
    # No sidecar at all: the completeness of the cached output is not provable
    # from the output alone (jadx leaves no exit code behind once the process
    # is gone). RESID-3B: do NOT assume "complete" - that would launder a
    # partial decompile into calibration as a full scan. Report "unknown" so
    # calibration excludes it (a negative from an unknown-completeness scan is
    # not proof of absence), rather than guessing the safest-sounding value.
    return _result(start, jadx_dir, apktool_dir, cached=True, decompile_completeness="unknown")

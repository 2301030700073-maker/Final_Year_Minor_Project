"""CLI entrypoint wiring the full Phase 1 pipeline together.

Plain sequential pipeline, no orchestration framework (ADR-0002). Every
stage's status is checked before moving on; a failed stage halts the run
loudly with the full StageResult (NFR-1). One adjustment from the plan's
literal ordering: ingest runs before the audit record rather than after,
so the audit log can carry the real APK hash instead of a raw file path -
ingest is identification, not security analysis, so it doesn't need to be
gated behind the authorization check the way decompilation/scanning/
classification/dynamic-bypass do (ADR-0005/FR-8.2). A failed ingest still
writes an `ingest_failed` audit event (with the hash if computed) so the
attempt is never invisible (ADR-0005).
"""

from __future__ import annotations

import os
import subprocess
import sys
import time
import uuid
from datetime import datetime, timezone
from pathlib import Path
from typing import Optional

import typer
from rich.console import Console
from rich.table import Table

from audit.attestation import (
    record_authorization,
    record_classification,
    record_ingest_failure,
    validate_justification,
    record_run_completion,
    record_re_attribution,
    verify_audit_log,
    authorization_for_run,
)
from calibration.ground_truth import DEFAULT_PATH as DEFAULT_GROUND_TRUTH_PATH
from calibration.ground_truth import load_ground_truth
from calibration.report import compute_calibration_report
from dataclasses import asdict, replace

from common import (
    ssl_path_effects,
    elapsed_ms,
    CATEGORIES,
    Action,
    CategoryVerdict,
    ClassificationResult,
    CorrelationResult,
    Evidence,
    StageResult,
    SuccessCheck,
    VerificationResult,
)
from dynamic import correlation as correlation_module
from dynamic import device
from dynamic import frida_runner
from dynamic import mitmproxy_capture
from dynamic.synthesizer import synthesize
from dynamic.success_checks.androgoat import AndroGoatSuccessCheck
from dynamic.success_checks.uncrackable1 import UnCrackable1SuccessCheck
from dynamic.success_checks.uncrackable2 import UnCrackable2SuccessCheck
from dynamic.success_checks.uncrackable3 import UnCrackable3SuccessCheck
from dynamic.success_checks.technology import (
    SSL_CONFIRMATION_LINE,
    WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX,
    SSL_HANDSHAKE_LINE,
    TechnologyHooksEngagedCheck,
    liveness_evidence_lines,
)
from ingest.metadata import compute_hashes, ingest
from ingest.normalize import normalize_input
from report.attribution import attribute_root_evidence, gate_all_third_party
from report.generator import generate_calibration_report, generate_report
from static.coverage import (
    apply_attribution_degraded_java,
    apply_coverage_bound,
    apply_unattributed_indicators,
    apply_dynamic_loading_java,
    apply_unreadable_files_java,
    apply_unresolved_native,
    dart_aot_coverage,
    is_dart_aot_lib,
    confidence_bound,
    coverage_bound_line,
    js_surface_coverage,
    per_surface_coverage,
    verdict_label,
)
from static.dynload import find_dynamic_loading
from static.hermes import is_binary_bundle, is_bundle_candidate, scan_bundle
from static.webview import find_webview_js
from static.jnibridge import has_unresolved
from static.deobfuscate import find_mapping_file, parse_mapping
from static.decision_engine import DEFAULT_THRESHOLD, classify
from static.androguard_scanner import BrokenSignatureError, scan_dex_strings
from static.decompile import decompile
from static.manifest import (
    ManifestInfo,
    is_decoded_manifest,
    parse_manifest,
    parse_manifest_apk,
)
from static.native import (
    compute_degradation,
    extract_native_libs,
    load_native_signatures,
    match_native,
    packed_library_rows,
)
from static.obfuscation import detect_obfuscation_level
from static.packers import detect_packers, load_packer_signatures
from static.signatures import corpus_fingerprint, load_signatures, scan
from static.stringrecover import match_recovered_strings, recover_hidden_strings
from storage.results import existing_metadata, load_runs_for_calibration, save_metadata, save_run
from storage.run_status import RunStatusRecorder, read_run_status, run_is_alive

app = typer.Typer()
console = Console()

# Config inputs (signatures, thresholds, ground truth) are read-only project
# assets versioned in git alongside this code, so they anchor to the project
# root and resolve no matter what cwd the CLI is invoked from. A bare relative
# "config/..." silently fell back to default thresholds - or falsely failed a
# signature load - when the tool was run from any other directory: a principle-3
# silent-wrong-answer / false-failure (A2). Outputs deliberately stay cwd-
# relative below: they are operator-produced artifacts, and writing them under
# the invocation directory is intended CLI behavior, not a detection-correctness
# input.
PROJECT_ROOT = Path(__file__).resolve().parents[1]
CONFIG_ROOT = PROJECT_ROOT / "config"

# ADR-0022: the detection corpus is one named set of files, listed here and
# nowhere else. Every loader call site reads its path out of this mapping, and a
# run records a fingerprint of exactly these bytes. Both halves matter: a glob
# over the directory would silently include a stray file and produce a hash no
# run could reproduce, and a fifth corpus file loaded from a path written inline
# somewhere would be invisible to the hash entirely.
SIGNATURE_CORPUS: dict[str, Path] = {
    "root_detection": CONFIG_ROOT / "signatures" / "root_detection.yaml",
    "ssl_pinning": CONFIG_ROOT / "signatures" / "ssl_pinning.yaml",
    "native_detection": CONFIG_ROOT / "signatures" / "native_detection.yaml",
    "packers": CONFIG_ROOT / "signatures" / "packers.yaml",
}

OUTPUTS_ROOT = Path("outputs")
ANALYSIS_ROOT = OUTPUTS_ROOT / "analysis"
REPORTS_ROOT = OUTPUTS_ROOT / "reports"
CALIBRATION_REPORTS_ROOT = OUTPUTS_ROOT / "reports" / "calibration"
AUDIT_LOG_PATH = OUTPUTS_ROOT / "audit_log.jsonl"

# The Protocol is the live contract for the dispatch table: every concrete
# success check must satisfy `check(logcat_output, frida_log) -> VerificationResult`
# (structural subtyping), so adding a check that deviates from the signature
# fails at the type/contract level, not silently at runtime.
SUCCESS_CHECKS: dict[str, SuccessCheck] = {
    "uncrackable1": UnCrackable1SuccessCheck(),
    "uncrackable2": UnCrackable2SuccessCheck(),
    "uncrackable3": UnCrackable3SuccessCheck(),
    "AndroGoat": AndroGoatSuccessCheck(),
}


def _canonical_target(target: str) -> str:
    """Normalize a user-typed --target to the registered lookup key.

    SCRIPTS_BY_TARGET_ACTION and SUCCESS_CHECKS both key on lowercase
    ``uncrackable1/2/3`` but mixed-case ``AndroGoat``. A natural lowercase
    ``--target androgoat`` matches neither dict - the dynamic stage degrades
    to a synthesized bypass, then SUCCESS_CHECKS.get("androgoat") returns None
    and the run halts with a spurious "no success check registered" after the
    Frida evidence was already captured (a real bug the live AndroGoat run
    surfaced). Resolving AndroGoat case-insensitively keeps the two lookup
    sites - and the "must stay in sync" invariant they share - consistent with
    how a user actually types the target. Unmatched targets pass through
    unchanged so real apps still degrade gracefully to "no bypass script."
    """
    return "AndroGoat" if target.lower() == "androgoat" else target


# App-agnostic routing: when --target is omitted, the detected APK package name
# resolves to the canonical augmentation target for the known reference apps
# (whose package names are their real manifests - OWASP MASVS uncrackable1/2/3,
# AndroGoat), so they keep their hand-authored scripts + success checks. Any
# other package passes through unchanged and routes to the general synthesized-
# bypass path. This is what lets an arbitrary APK run every phase with no
# app-specific --target: known apps augment, unknown apps go general, all of
# them go through the full pipeline.
PACKAGE_TO_TARGET: dict[str, str] = {
    "owasp.sat.agoat": "AndroGoat",
    "owasp.mstg.uncrackable1": "uncrackable1",
    "owasp.mstg.uncrackable2": "uncrackable2",
    "owasp.mstg.uncrackable3": "uncrackable3",
}

def _git_commit_hash() -> str:
    """The analysis code's commit, made dirty-aware (RESID-7B). Stamping bare
    HEAD was a false precision: a report could print a commit even when the
    working tree carried uncommitted edits to the exact code that ran - a false
    statement about which code produced the report (principle 3). Flags it the
    same way _git_last_commit_touching does, so every provenance stamp (report,
    audit log, saved run) honestly says uncommitted changes were present.
    `git diff HEAD --quiet` covers staged and unstaged edits to tracked files,
    and an untracked file under the code's OWN directories is checked separately:
    a new module in src/, a signature YAML in config/ or a change under scripts/
    runs while `git diff HEAD` reports a clean tree, so the stamp would name a
    commit that does not contain the code that produced the report - the same
    false precision one layer down. That second check is path-limited on purpose:
    the untracked artifacts this repo always carries (outputs/, bundles,
    run_logs/) are not analysis code, and letting them dirty every stamp would
    leave the flag carrying no information."""
    try:
        result = subprocess.run(["git", "rev-parse", "HEAD"], capture_output=True, text=True, check=True)
        commit = result.stdout.strip()
        if not commit:
            return "unknown"
        dirty = subprocess.run(["git", "diff", "HEAD", "--quiet"], capture_output=True).returncode == 1
        if not dirty:
            untracked = subprocess.run(
                ["git", "status", "--porcelain", "--untracked-files=all",
                 "--", "src", "config", "scripts"],
                capture_output=True, text=True,
            )
            dirty = untracked.returncode == 0 and any(
                line.startswith("??") for line in (untracked.stdout or "").splitlines()
            )
        return f"{commit} (dirty working tree)" if dirty else commit
    except Exception:
        return "unknown"


def _git_last_commit_touching(path: Path) -> str:
    """The commit that actually last changed `path`, not whatever HEAD
    happens to be at computation time - stamping HEAD implied a false
    precision about which exact version of the file a report was computed
    against, since HEAD moves on every unrelated commit even when the file
    itself hasn't changed in days."""
    try:
        result = subprocess.run(
            ["git", "log", "-1", "--format=%H", "--", str(path)],
            capture_output=True, text=True, check=True,
        )
        commit = result.stdout.strip()
        if not commit:
            return "unknown (no commit history for this file)"
        dirty = subprocess.run(
            ["git", "diff", "--quiet", "--", str(path)], capture_output=True,
        ).returncode == 1
        return f"{commit} (uncommitted changes present)" if dirty else commit
    except Exception:
        return "unknown"


def _run_native_scan(apk_path, analysis_root, apk_hash, java_files=None):
    """Extract lib/<abi>/*.so, analyze each with readelf/nm/strings, match native
    signatures, and return a NativeScanResult (including per-ABI coverage).
    Returns None when the APK has no native libs (a legitimate 'nothing to scan',
    which the coverage contract records as native=unscannable, not a failure).

    Boundary-3 static half: when `java_files` (the decompiled .java sources) is
    supplied, every Java-declared `native` method is reconciled against these
    libraries into a JNI binding map (jnibridge), so a declared native method is
    never a silent blind spot - an `unresolved` binding is the unexamined-surface
    signal the caller degrades native coverage for (ADR-0006)."""
    from static.native import (
        NativeScanResult, _clone_lib_for_path, analyze_so_many,
        find_external_native_loads, group_identical_so_files, security_triggers,
        platform_libs_exempted,
        unaccounted_native_loads,
    )
    # Native-analysis disk cache: keyed on .so bytes' SHA-256 + analysis version
    # + security-trigger set, so the expensive readelf/nm/Ghidra pass runs once
    # per distinct .so and is served from disk on re-analysis of unchanged bytes
    # (see native.analyze_so cache_dir). A repo-level cache, not per-run: the
    # same lib analyzed across APKs and re-runs is the same result, and this is
    # what makes the ~42-min native pass on PG-sized apps a one-time cost.
    native_cache_dir = Path("outputs/cache/native")
    from static.jnibridge import extract_declared_natives, resolve_jni_bindings

    native_dir = Path(analysis_root) / apk_hash / "native"
    # Members the APK ships that did not land on disk - a native surface this run
    # never reads, recorded rather than dropped (extract_native_libs). Their
    # basenames are still "shipped": the loads reconciliation below must not read
    # the app's own loadLibrary for one as a load from OUTSIDE the APK, which is
    # what an extraction gap otherwise looks like from there.
    extraction_failures: list[str] = []
    so_files = extract_native_libs(apk_path, native_dir, failures_out=extraction_failures)
    _failed_basenames = {Path(e.split(":", 1)[0]).name for e in extraction_failures}
    if not so_files:
        # CALIB-NATIVE-VACUOUS: the APK was enumerated and ships zero .so, so
        # there is no native surface for a root/pinning check to hide in and the
        # native coverage state is vacuously fully_analyzed rather than
        # unscannable. That is only sound if the "loads a lib we never read"
        # escape hatch is still checked, so unaccounted_loads is computed on this
        # path too: an app with no bundled .so that calls
        # System.load("/data/local/tmp/x.so") has a real unexamined native
        # surface and must still degrade to partial. Returning early without this
        # would have turned the vacuous-coverage upgrade into a false negative.
        _loads = find_external_native_loads(java_files) if java_files else []
        return NativeScanResult(
            libraries=[],
            abi_coverage={},
            # Empty because every member failed to extract is NOT "the APK ships
            # no .so": that would grant the vacuous fully_analyzed above to a
            # corpus we could not read at all. Only a genuinely empty member list
            # earns it (ADR-0006).
            native_libs_absent=not extraction_failures,
            # Excluding the failed members' basenames here (rather than passing a
            # bare set()) keeps this from announcing "loads a library the APK
            # does not ship" for a lib it does ship: that surface is recorded as
            # the extraction failure it is, and bounds native coverage from
            # _native_unexamined instead.
            unaccounted_loads=unaccounted_native_loads(_loads, _failed_basenames),
            platform_libs_exempted=platform_libs_exempted(_loads, _failed_basenames),
            extraction_failures=extraction_failures,
        )
    # Load signatures BEFORE the scan so the Gap-1 body-decompilation gate can be
    # driven by the actual detection corpus: a stripped lib whose exports/strings
    # overlap a signature pattern gets its bodies decompiled even with no Java_*
    # export (closing the stripped-non-JNI blind spot). The trigger set is the
    # union of every pattern - self-maintaining as signatures are added.
    signatures = load_native_signatures(SIGNATURE_CORPUS["native_detection"])
    triggers = security_triggers(signatures)
    libraries = []
    errors: list[str] = []
    # Fix 3 / time: group extracted .so by byte-identical SHA-256 so the
    # expensive readelf/nm/Ghidra pass runs once per DISTINCT binary, then clone
    # the representative result for the other paths in the group (ABI/name
    # overridden, all analysis fields shared). This preserves per-ABI coverage
    # (abi_coverage keys on ABI) and match_native Evidence (keys on (abi, name))
    # while never re-running Ghidra on the same bytes. ABI variants are distinct
    # builds, so groups are normally size 1 - a correctness-preserving dedup, not
    # a shortcut; the real ~42-min scan is genuine per-ABI analysis.
    groups = group_identical_so_files(so_files)
    # Parallelize the expensive per-lib analysis (readelf/nm/strings + the Ghidra
    # body-decomp) across the digest-group representatives with a bounded thread
    # pool (native.analyze_so_many). Each representative is analyzed once; the
    # byte-identical group is cloned in group order below, so per-ABI coverage
    # and match_native (abi,name) evidence are unchanged from the serial loop.
    # A cache-warm run is near-instant regardless of workers (analyze_so serves
    # unchanged bytes from disk); parallelism is what turns the cold ~42-min
    # Ghidra pass on PG-sized apps into ~N/2 wall-clock. A missing tool raises
    # loudly through analyze_so_many -> this stage fails, never a silent no-op.
    representatives = [group[0] for _, group in groups]
    analyzed = analyze_so_many(
        representatives, security_triggers=triggers, cache_dir=native_cache_dir,
    )
    lib_by_path = dict(zip(representatives, analyzed))
    for _, group in groups:
        # analyze_so is the single Ghidra integration point (L-M6, ADR-0008): it
        # runs readelf/nm/strings AND, for a stripped/obfuscated lib where those
        # are blind, Ghidra headless decompiles the function bodies so
        # compute_degradation() can upgrade it to fully_analyzed and match_native()
        # can match decompiled bodies. A Ghidra failure degrades gracefully
        # (ghidra_error set, lib stays partial) - never a silent no-op, never a
        # hard scan failure.
        representative = group[0]
        lib = lib_by_path[representative]
        if len(group) == 1:
            libraries.append(lib)
        else:
            for so in group:
                libraries.append(lib if so == representative else _clone_lib_for_path(lib, so))
        if lib.scan_error:
            # Prefixed with the library. Most producers already name it (the tool
            # message carries the .so path it failed on) but the UPX and the
            # Ghidra-last-resort ones do not, and the report has to identify the
            # library without the reader cross-referencing the scan.
            errors.append(f"{lib.name}: {lib.scan_error}")
    result = match_native(libraries, signatures)
    result.abi_coverage = compute_degradation(libraries)
    result.errors = errors
    # Boundary-3 static half: reconcile every Java-declared native method against
    # these libraries. A declared method with no Java_* export and no JNI_OnLoad
    # anywhere is `unresolved` - a genuine unexamined surface the report flags and
    # that degrades native coverage (see _apply_jni_binding_coverage). Only runs
    # when the decompiled sources are available; otherwise the binding map stays
    # empty and coverage is untouched (the pre-existing behavior).
    if java_files:
        declared = extract_declared_natives(java_files)
        result.jni_bindings = resolve_jni_bindings(declared, libraries)
    # Boundary-4: record which explicit System.load/loadLibrary targets are NOT
    # covered by an extracted+analyzed .so (loaded from an absolute path, or
    # loadLibrary("foo") with no libfoo.so bundled). Each is a loaded-but-
    # unexamined native surface; the caller degrades native coverage to partial
    # for them (see _native_unexamined in the pipeline). lib/<abi>/*.so AND
    # assets/*.so are both extracted+analyzed, so an assets-loaded lib is
    # accounted for - only genuinely missing/absolute-path loads surface here.
    _loads = find_external_native_loads(java_files) if java_files else []
    # The failed members' basenames join the shipped set: they ARE shipped (the
    # APK's member list says so), and leaving them out would report the app's own
    # loadLibrary for one as a load from outside the APK instead of as the
    # extraction failure it is.
    _shipped = {so.name for so in so_files} | _failed_basenames
    result.unaccounted_loads = unaccounted_native_loads(_loads, _shipped)
    # PLATFORM-LIB1 transparency: the same inputs, so what is reported as
    # exempted is exactly what the check above exempted.
    result.platform_libs_exempted = platform_libs_exempted(_loads, _shipped)
    # The extraction gap itself (member + error), carried so the coverage bound
    # below and the report both name the libs this run could not read rather than
    # leaving a truncated native corpus looking complete.
    result.extraction_failures = extraction_failures
    return result


def _merge_native_evidence(static_evidence, native_evidence) -> None:
    """Native evidence feeds the same confidence model as Java (ADR-0001): merge
    native root/ssl confidence + evidence into StaticEvidence so classify() and
    the report treat both identically. Confidence is capped at 1.0 per category,
    same as the Java matcher's cap. Native unattributed indicators (boundary-2)
    are unioned into StaticEvidence.unattributed_indicators so the single
    apply_unattributed_indicators call in the pipeline marks those categories
    coverage-limited exactly as it does Java-side - no separate coverage path."""
    static_evidence.root_confidence = min(1.0, static_evidence.root_confidence + native_evidence.root_confidence)
    static_evidence.ssl_confidence = min(1.0, static_evidence.ssl_confidence + native_evidence.ssl_confidence)
    static_evidence.root_evidence.extend(native_evidence.root_evidence)
    static_evidence.ssl_evidence.extend(native_evidence.ssl_evidence)
    static_evidence.unattributed_indicators.update(native_evidence.unattributed_indicators)


def _route_evidence(static_evidence, sig_id, category, weight, ev, already) -> bool:
    """Apply one deduped evidence item to its category bucket (root/ssl): add its
    weight to the category confidence (capped at 1.0) and append the evidence.
    Shared by the dex and JS merge loops so both route and dedup identically.
    Returns True when the item was newly added; False when already present (by
    signature_id) or its category is neither root nor ssl."""
    if sig_id in already:
        return False
    if category == "root":
        static_evidence.root_confidence = min(1.0, static_evidence.root_confidence + weight)
        static_evidence.root_evidence.append(ev)
    elif category == "ssl":
        static_evidence.ssl_confidence = min(1.0, static_evidence.ssl_confidence + weight)
        static_evidence.ssl_evidence.append(ev)
    else:
        return False
    already.add(sig_id)
    return True


def _merge_dex_evidence(static_evidence, dex_evidence, signatures, app_package) -> int:
    """Merge androguard DEX matches into StaticEvidence, deduped per-signature so
    a signature the java/smali scan already matched is NOT double-counted. Only
    newly-matched signatures get their weight applied (capped at 1.0 per category,
    the same cap _merge_native_evidence uses). Returns the number of new
    signatures added. app_package is used only to label the evidence file."""
    weight = {s.id: s.weight for s in signatures}
    cat = {s.id: s.category for s in signatures}
    already = {e.signature_id for e in static_evidence.root_evidence}
    already |= {e.signature_id for e in static_evidence.ssl_evidence}
    added = 0
    for ev in dex_evidence:
        if _route_evidence(static_evidence, ev.signature_id, cat.get(ev.signature_id),
                           weight.get(ev.signature_id, 0.0), ev, already):
            added += 1
    return added


_JS_EVIDENCE_WEIGHT = 0.2


def _merge_js_evidence(static_evidence, js_matches) -> int:
    """Merge Hermes/binary JS-bundle idiom matches into StaticEvidence. Each
    `js_matches` entry is (sig_id, category, matched_text, file) recovered from a
    binary JS bundle's string table - deterministic evidence (the literal is really
    present in the app) at a modest fixed weight, because we recover string
    constants, not full JS control flow (the surface stays `partial`). Deduped per
    signature_id across bundles and routed by category like _merge_dex_evidence.
    Returns the number of new signatures added."""
    already = {e.signature_id for e in static_evidence.root_evidence}
    already |= {e.signature_id for e in static_evidence.ssl_evidence}
    added = 0
    for sig_id, category, matched_text, bundle_file in js_matches:
        ev = Evidence(
            signature_id=sig_id,
            file=bundle_file,
            line_or_offset=0,
            matched_text=matched_text[:200],
            verification_state="deterministic_matched",
        )
        if _route_evidence(static_evidence, sig_id, category, _JS_EVIDENCE_WEIGHT, ev, already):
            added += 1
    return added


def _scan_binary_bundles(roots):
    """HERM2: recover binary JS bundles across the SAME roots the text signature
    engine scans (static_roots = jadx + apktool + optional cfr), not just
    assets/.

    A Hermes/`.hbc`/`.bundle` blob can ship under `res/raw/` (or any decoded
    resource dir), not only `assets/`. The text engine skips it everywhere (the
    `signatures._is_binary` NUL probe), so scanning binary bundles under `assets/`
    ALONE left a bundle placed elsewhere unread by BOTH engines - `has_binary_bundle`
    stayed False and `js` read `fully_analyzed`, certifying a confident negative
    over root/SSL logic we never looked at (ADR-0006). Mirroring the text engine's
    root list closes that asymmetry: the binary path now covers exactly what the
    text path covers, differing only in handling the binary files the text probe
    skips.

    `is_bundle_candidate` (suffix) + `is_binary_bundle` (NUL probe) still gate
    every file, so widening the walk only ever surfaces MORE real binary bundles:
    a plain-text `.js` is `is_binary_bundle == False` -> left to the text engine
    (never double-counted), and a non-bundle resource (`.png`, `.arsc`) fails the
    suffix gate. Only actual bundle-suffixed files are ever opened, so the wider
    walk adds negligible cost. Returns `(has_binary_bundle, js_matches)` where each
    match is `(sig_id, category, matched_text, file)`. Module-level + pure-ish
    (filesystem read only) so the walk scope is unit-testable without the pipeline."""
    has_binary_bundle = False
    js_matches: list[tuple[str, str, str, str]] = []
    for root in roots:
        if root is None:
            continue
        root_path = Path(root)
        if not root_path.is_dir():
            continue
        for bundle in root_path.rglob("*"):
            if not is_bundle_candidate(bundle) or not is_binary_bundle(bundle):
                continue
            res = scan_bundle(bundle)
            # HERM2-GUARD1 (own-your-guard): degrade `js` for ANY bundle scan_bundle
            # did not classify as plain-text, rather than trusting a hardcoded list
            # of binary kinds. scan_bundle returns "plain" ONLY when is_binary_bundle
            # is False, and the gate above already excluded those, so every result
            # here is a recovered-constants-only binary bundle and js MUST read
            # partial. `!= "plain"` keeps this correct if scan_bundle ever grows a
            # new binary kind - a hardcoded ("hermes","binary","opaque") would then
            # silently under-report has_binary_bundle -> js falsely fully_analyzed ->
            # a confident negative over an unread bundle (ADR-0006). Zero behavior
            # change today (plain is unreachable past the gate); this closes the
            # cross-module coupling so the decider owns its own contract.
            has_binary_bundle = has_binary_bundle or res["kind"] != "plain"
            # JS-PATH-REL1: report the path RELATIVE to the root it was found
            # under, exactly like the text signature engine
            # (`signatures.scan` -> `file_path.relative_to(root)`). An absolute
            # `outputs/analysis/<sha256>/apktool/assets/index.android.bundle`
            # leaked the local layout into stored evidence and, worse, could not be
            # anchored by `derive_namespace` in `report/attribution.py`, so the
            # namespace read as `outputs.analysis.<sha>.apktool.assets...` and
            # matched no vendor prefix - the same anchoring failure as CFR-NS1. A
            # bundle shipped under a bundled SDK's resource subtree was therefore
            # always counted app-owned. Relative paths anchor correctly and make
            # this evidence source consistent with every other one.
            for sig_id, category, matched_text in res["matches"]:
                js_matches.append(
                    (sig_id, category, matched_text, str(bundle.relative_to(root_path)))
                )
    return has_binary_bundle, js_matches


def _full_java_corpus(roots):
    """The decompiled-Java corpus across every decompiler root the completeness
    metric counts as COVERED: jadx_output AND the CFR fallback recovery
    (cfr_output).

    DYNCOV1: `_jadx_covered` (decompile.py) credits CFR recovery toward a
    `complete` completeness label on the whole-APK path - jadx can exit non-zero,
    CFR rescue re-reads the APK, and completeness reads `complete` → java
    `fully_analyzed`. The signature engine already scans cfr_output (cli appends
    `fallback_output` to `static_roots`), so the dynload / webview
    coverage-degradation scans that gate the confident-negative decision MUST see
    it too. Otherwise a `DexClassLoader` or a remote `loadUrl` in a class jadx
    FAILED on but CFR RECOVERED is missed, `has_remote_js`/`dynamic_loads` stay
    empty, and java stays `fully_analyzed` - a confident negative over code the
    completeness metric already counted as read (ADR-0006).

    Deduped by class-relative path because a whole-APK CFR rescue re-reads classes
    jadx already wrote; on a collision the LARGER file wins so a truncated jadx
    stub never shadows CFR's fuller recovery (recall-safe). Widening the corpus is
    purely conservative: it can only ADD a load/remote-JS hit → java partial,
    never remove one. A `stat` is taken only on an actual path collision (the rare
    rescue case), so the common no-fallback path pays nothing extra."""
    best: dict[str, Path] = {}
    for root in roots:
        if not root:
            continue
        rp = Path(root)
        if not rp.is_dir():
            continue
        for f in rp.rglob("*.java"):
            rel = f.relative_to(rp).as_posix()
            cur = best.get(rel)
            if cur is None:
                best[rel] = f
                continue
            try:
                if f.stat().st_size > cur.stat().st_size:
                    best[rel] = f
            except OSError:
                pass  # keep the first-seen copy if the newer one is unreadable
    return list(best.values())


_OBF_ORDER = {"clear": 0, "light": 1, "heavy": 2}


def _max_obfuscation(a, b):
    """Return the MORE-SEVERE of two obfuscation levels (clear < light < heavy)."""
    return a if _OBF_ORDER[a] >= _OBF_ORDER[b] else b


def _obfuscation_level_over_corpus(jadx_output, cfr_output, app_package=None):
    """DYNCOV1 (obfuscation half): read obfuscation over BOTH the jadx-only corpus
    and the full jadx+CFR corpus, returning the more-severe.

    `_jadx_covered` credits the CFR recovery toward a `complete` completeness label,
    so string-encryption OR heavy minification in a class jadx failed on but CFR
    recovered must be able to force java→partial - otherwise it certifies
    `fully_analyzed` over hidden literals / obfuscated detection code (ADR-0006).
    `_any_string_encryption` is a monotonic existence check and benefits directly
    from the wider corpus. But `_minified_name_ratio` is a RATIO, not monotonic
    under corpus widening: CFR's extra classes could in principle dilute a heavy
    reading downward. So we FLOOR the wider reading at the jadx-only reading - the
    CFR classes can only ever RAISE the level, never dilute it. Conservative in the
    one safe direction (more partial), never sharpening a negative."""
    jadx_level = detect_obfuscation_level(_full_java_corpus([jadx_output]), app_package)
    full_level = detect_obfuscation_level(_full_java_corpus([jadx_output, cfr_output]), app_package)
    return _max_obfuscation(jadx_level, full_level)


def _apply_manifest_ssl_signal(static_evidence, manifest_info) -> None:
    """Record a declared android:networkSecurityConfig as SSL evidence so the
    report can show it (5-1) - but give it no confidence weight. A bare
    declaration is only a prerequisite for config-based pinning, not pinning
    evidence itself; real pinning is credited by the content signatures
    (network_security_config_pinset / network_security_config_pin_digest) when
    actual <pin-set> entries are present. Adding weight here double-counted the
    same NSC on any app that both declared and configured it (RESID-4E). No-op
    when there is no manifest/NSC."""
    if manifest_info is None or manifest_info.network_security_config is None:
        return
    static_evidence.ssl_evidence.append(Evidence(
        signature_id="manifest_network_security_config",
        file=str(manifest_info.network_security_config),
        line_or_offset="manifest",
        matched_text=manifest_info.network_security_config,
    ))


def _load_thresholds() -> tuple[float, float]:
    """Per-category detection thresholds from config/settings.yaml (4-3), so
    root and ssl can be tuned/calibrated independently instead of sharing one
    hardcoded number.

    Absence is legitimate: thresholds are an optional tuning knob, so a
    settings.yaml that does not exist (or exists but carries no `thresholds`
    section) falls back to the engine default. But a settings.yaml that EXISTS
    yet cannot be read or parsed is a different case - someone placed tuned
    thresholds here intending them to govern detection, and silently reverting
    to defaults would be a principle-3 silent-wrong-answer: the decision
    boundary would move with no signal. That case now fails loud. The path is
    anchored to the project root (CONFIG_ROOT), not cwd, so invoking the CLI
    from another directory no longer silently drops the tuned thresholds (A2)."""
    import yaml

    settings_path = CONFIG_ROOT / "settings.yaml"
    if not settings_path.exists():
        # Absent settings is a legitimate "use engine defaults" - not an error.
        return DEFAULT_THRESHOLD, DEFAULT_THRESHOLD
    try:
        with open(settings_path, encoding="utf-8") as f:
            parsed = yaml.safe_load(f) or {}
        # A wrong-SHAPE settings.yaml - the top level, or the `thresholds` section,
        # is a scalar/list instead of a mapping (a hand-edit that wrote
        # `thresholds: 0.7` expecting a single knob) - makes the .get() lookups
        # below raise AttributeError, which is NOT in the except tuple: it would
        # escape as a raw traceback, bypassing the curated "fix the file, or remove
        # it" guidance this block exists to give for a present-but-malformed file.
        # Normalize both shape errors into TypeError (already funneled below) with a
        # precise reason so every malformed-file mode fails loud the same way. An
        # absent or explicitly-null `thresholds:` is NOT malformed - it carries no
        # value to lose, so it falls back to the engine default like a missing file.
        if not isinstance(parsed, dict):
            raise TypeError(f"top-level YAML is a {type(parsed).__name__}, expected a mapping")
        raw = parsed.get("thresholds")
        if raw is None:
            raw = {}
        if not isinstance(raw, dict):
            raise TypeError(f"'thresholds' is a {type(raw).__name__}, expected a mapping")
        root = float(raw.get("root", DEFAULT_THRESHOLD))
        ssl = float(raw.get("ssl", DEFAULT_THRESHOLD))
    except (OSError, ValueError, TypeError, yaml.YAMLError) as exc:
        # The file is present but unreadable/unparseable, a threshold value is
        # non-numeric (float() raise), or its shape is wrong (the TypeErrors just
        # above). Falling back to defaults here would move the detection boundary
        # with no signal (principle 3). Fail loud instead.
        raise RuntimeError(
            f"{settings_path} exists but could not be read/parsed ({exc}); "
            "refusing to silently fall back to default detection thresholds - a "
            "tuned decision boundary would be lost with no signal. Fix the file, "
            "or remove it to intentionally use engine defaults."
        ) from exc
    # RESID-4D: a threshold is the one hand-authored input that was never
    # range-checked - a typo like root: 1.5 or -0.2 silently pinned detection
    # always-NEITHER / always-DETECTED with no error, unlike every other config
    # input (signatures, justification, manifest root) which fails loudly.
    # Validate after the missing/unreadable fallback, so a bad *value* raises
    # instead of being swallowed by the fallback guard.
    for name, value in (("root", root), ("ssl", ssl)):
        if not (0 <= value <= 1):
            raise ValueError(
                f"{settings_path}: threshold '{name}' = {value} is out of range - "
                f"must be in [0, 1]"
            )
    return root, ssl


def _operator_identity() -> str:
    """Who ran this - prefer an explicit env identity, fall back to git config,
    and fail loudly if neither resolves (A6). An unverifiable "unknown" operator
    is not an acceptable attestation for a dual-use tool (ADR-0005); NFR-1 says
    such a failure should halt the run, not silently log a spoofable blank."""
    env_identity = os.environ.get("ANALYSIS_OPERATOR")
    if env_identity:
        return env_identity
    try:
        result = subprocess.run(["git", "config", "user.name"], capture_output=True, text=True, check=True)
        name = result.stdout.strip()
        if name:
            return name
    except Exception:
        pass
    raise RuntimeError(
        "could not determine operator identity - set ANALYSIS_OPERATOR or "
        "git config user.name before running (ADR-0005 requires a verifiable 'who ran it')"
    )


# The progress sidecar of the run in flight (ADR-0021), set by run() once the run
# is authorized and hashed, and finalized after the run is saved. _print_stage is
# the single choke point every stage passes through, so recording there cannot
# miss a stage the console printed. Read (never rebound) by helpers, so no global
# declaration is needed to consult it.
_RUN_STATUS: RunStatusRecorder | None = None


def _caution_sidecar(exc: Exception) -> None:
    """One wording for the sidecar's write failure, shared by both writers below.

    Never silent: an unwritable sidecar is precisely the condition that would
    leave an interrupted run unrecorded. It does not halt a 40-minute analysis,
    but it says so, loudly, on the spot."""
    console.print(
        f"[red]CAUTION: could not write the run-status sidecar ({exc}) - "
        "an interruption from here would not record where it stopped.[/red]"
    )


def _begin_stage(stage_name: str) -> None:
    """Mark a stage as STARTED in the progress sidecar (ADR-0021).

    A run that dies inside a stage is recorded by its completions alone as having
    died in the stage before it: the Telegram run of 2026-09-18 was killed 20
    minutes into `native_scan` and its sidecar read `last stage: manifest_parse
    (success)`, naming the stage before the one it died in. Nothing is printed
    here - the stage's own OK/FAILED line reports the console - but a write that
    fails gets the same caution `_print_stage` gives it.

    Called from every named stage boundary: the `_wrap_stage` helper covers the
    stages dispatched through it, and the directly-invoked stages (audit,
    decompile, dynamic, the capture window) call it themselves. A boundary that
    does not is not a false claim - the note falls back to the last completed
    stage - it is only a coarser answer."""
    if _RUN_STATUS is None:
        return
    try:
        _RUN_STATUS.begin(stage_name)
    except OSError as exc:
        _caution_sidecar(exc)


def _print_stage(result: StageResult) -> None:
    icon = {"success": "[green]OK[/green]", "failed": "[bold red]FAILED[/bold red]", "skipped": "[yellow]SKIPPED[/yellow]"}[result.status]
    console.print(f"{icon}  {result.stage}  ({result.duration_ms}ms)")
    if result.error:
        console.print(f"    [red]{result.error}[/red]")
    if _RUN_STATUS is not None:
        try:
            _RUN_STATUS.record(result)
        except OSError as exc:
            _caution_sidecar(exc)


def _completeness_console_caveat(
    completeness: str, jadx_file_count, jadx_exit_code
) -> str | None:
    """Live-console mirror of the report's decompile-completeness caveat
    (generator.py Limitations block). Returns the CAUTION line for a lower-bound
    decompile state, or None for a complete decompile (no caveat, like the report).

    L-M7 mirrored only the `partial` state to the console; `unknown` (missing or
    unreadable completeness record, reachable on the LIVE path via cli.py's
    `.get("decompile_completeness", "unknown")` default and via a reused decompile
    whose sidecar could not be read, DECCMT-UNKNOWN1) was left unnamed on the
    console even though the report carried a dedicated caveat for it. The lower-bound
    CONSEQUENCE was already surfaced live (unknown -> java `unscannable` -> the
    coverage-limited line), so nothing false printed - but the specific cause went
    unnamed, breaking the stated console<->report parity (the report carries it, the
    console must too). Extending the mirror to `unknown` closes that parity gap in the
    safe direction (more disclosure), reversing nothing."""
    if completeness == "partial":
        return (
            f"[bold red]CAUTION: based on a PARTIAL decompile "
            f"({jadx_file_count} files, jadx exit {jadx_exit_code}) - "
            "a NEITHER here is a lower bound, not a confident negative; see Limitations.[/bold red]"
        )
    if completeness == "unknown":
        return (
            "[bold red]CAUTION: decompile completeness could not be determined "
            "(missing or unreadable completeness record from a cached run) - treat any "
            "NEITHER/Inconclusive verdict as a lower bound, not a confident negative; "
            "see Limitations.[/bold red]"
        )
    return None


def _correlation_skip_reason_for_failed_stage(
    existing: str | None, dynamic_status: str, dynamic_reason: str | None
) -> str | None:
    """not-attempted != skipped: name the honest reason a FAILED dynamic stage left
    no verification to correlate, so the report's correlation fallback does not print
    the generic "dynamic stage skipped" - a false statement, the stage failed, it did
    not skip.

    The three early dynamic-failure paths (setup failed, install-verify failed,
    unexpected dynamic-stage exception) fail BEFORE the success branch, so none of the
    success-branch `correlation_skip_reason` assignments (logcat-fail, check-raised,
    unknown-target tech check) ever run - leaving `correlation_skip_reason` None and the
    template falling through to the plain else ("dynamic stage skipped"). That else is
    correct only for a genuine skip (--skip-dynamic / NEITHER classification, where the
    stage status is "skipped"); for a "failed" status it is a false cause.

    Decider-owns-its-guard: this single centralized guard covers every failed path at
    once (rather than editing each failure site and risking one drifting), preserves any
    more-specific reason a caller already set, and returns None for a non-failed stage so
    the genuine-skip fallback stays reserved for actual skips."""
    if existing is not None:
        return existing
    if dynamic_status == "failed":
        return (
            f"dynamic stage failed ({dynamic_reason or 'see stage status'}) "
            "- no verification to correlate"
        )
    return None


def _non_java_tls_layers(webview_sites, dart_aot_libs) -> list[str]:
    """The TLS stacks this run has EVIDENCE the app uses which the dynamic stage's
    in-process observers structurally cannot see, named for the empty-capture reason.

    Both inputs come from the same scan corpus the report already prints as
    coverage-limited, so naming them here adds no new claim: a WebView call site
    (find_webview_js) means the app hands at least one page load to Chromium, whose
    TLS stack is its own; a Dart AOT snapshot (find_dart_aot_libs) means a Flutter
    app whose dart:io TLS runs its own BoringSSL. Neither routes through
    javax.net.ssl.X509TrustManager, so neither ever reaches the dynamic stage's
    CertificatePinner.check / TrustManagerImpl.verifyChain hooks - however many
    requests the app makes.

    Deliberately NOT listed: a native libssl.so. The synthesizer DOES hook
    SSL_CTX_* on those when symbols survive, so treating native TLS as invisible
    would be an overclaim in the other direction (the stripped-BoringSSL case is
    already reported honestly on its own line, [[native-boringssl-symbol-stripping]]).
    Absence from this list is not a claim that a layer is observable."""
    layers: list[str] = []
    if webview_sites:
        layers.append("WebView (Chromium's own TLS stack)")
    if dart_aot_libs:
        layers.append("Dart AOT snapshot (Flutter's own BoringSSL via dart:io)")
    return layers


def _ssl_path_exercised(messages) -> int:
    """How many messages in ONE observer's stream say the app opened a pinned
    connection: the synthesized bypass's own `bypassEffect`, or a predefined
    pin-check/cert-verify hook firing for a concrete host (`hostname`/`host`).

    Both are emitted INSIDE a live connection's TLS stage, so neither can appear
    unless the app actually made the request. An INSTALL-time message
    (`universal-ssl-pinning bypassed:true` with no host, or `CertificatePinner
    present:false`) carries no host and is deliberately not counted: it proves the
    hook was PLACED, not that a request was made - so the discriminator keys on a
    concrete host or an effect, never on `bypassed:true` alone.

    The rule itself is `common.ssl_path_effects`, which the report layer's
    `_observer_signal` reads too - one extractor for both layers as well as both
    windows, because they HAD drifted: the report counted only `bypassEffect`, so a
    fired predefined-script pin-check scored 0 there while this ladder counted it
    and kept the stage loud, and the two would render one stream as two different
    findings ([[observer-silence-is-a-fact-about-observers]],
    [[probehit-value-parity-across-consumers]])."""
    return sum(ssl_path_effects(messages).values())


def _adopt_capture_window_hook_lines(
    capture_verification: VerificationResult,
    verification: VerificationResult,
) -> VerificationResult:
    """Fold the capture launch's windowed native-hook statement(s) into the run's
    verification, and nothing else (ADR-0023).

    Data, and windowed keys only: `_capture_window_hook_lines` is the whole
    selector, so a rename of the constant cannot silently stop this matching.
    """
    merged_lines = dict(verification.evidence_lines)
    merged_lines.update(_capture_window_hook_lines(capture_verification))
    return replace(verification, evidence_lines=merged_lines)


def _capture_window_hook_lines(
    capture_verification: VerificationResult,
) -> dict[str, str]:
    """The windowed native-hook statement(s) a capture-window evaluation filed.

    ADR-0023 files that statement under a key carrying the window, so the capture
    launch's answer sits beside the dynamic launch's rather than replacing it. The
    bare key - the dynamic launch's own - is deliberately not selected: it belongs
    to the other launch.
    """
    return {
        key: value
        for key, value in capture_verification.evidence_lines.items()
        if key.startswith(WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX)
    }


def _merge_capture_window_evaluation(
    capture_verification: VerificationResult,
    verification: VerificationResult | None,
    *,
    upgraded: bool,
) -> VerificationResult | None:
    """Fold a capture-window evaluation into the run's verification (ADR-0016,
    ADR-0023). Returns the verification the run should carry, or None when there is
    still nothing to carry.

    Two questions, two predicates, and they are NOT the same predicate:

    - The SSL pair moves only on `upgraded` (ADR-0016): that window's observer
      carried BOTH the app's pin-check and a completed handshake, so its better
      observation of the app supersedes. An inconclusive window never retracts a
      confirmation from another, so nothing else moves either.
    - The native-hook statement moves on EVERY evaluation that filed one
      (ADR-0023). It answers a question about a LAUNCH - "did the script injected
      into this process install its hooks" - not about the app, so it does not wait
      on a verdict. Gating it on `upgraded` (the first implementation) computed it
      and then discarded it on every run whose window stayed inconclusive, which is
      the common case and exactly the run whose two launches can disagree.
      Measured 2026-09-24 on AndroGoat run 0a69e8b8: the window's check filed "the
      injected script reported no failed hook installation this run" with
      ssl_bypassed None, and no such line reached the report.

    A capture window with no dynamic verification to merge into becomes the run's
    verification only on an upgrade; its inconclusive self is not adopted, because
    its root and liveness lines describe a different launch than the run's.
    """
    if verification is None:
        return capture_verification if upgraded else None
    with_hooks = _adopt_capture_window_hook_lines(capture_verification, verification)
    if not upgraded:
        return with_hooks
    merged_lines = {
        **with_hooks.evidence_lines,
        SSL_HANDSHAKE_LINE: capture_verification.evidence_lines[SSL_HANDSHAKE_LINE],
        SSL_CONFIRMATION_LINE: capture_verification.evidence_lines[SSL_CONFIRMATION_LINE],
    }
    return replace(with_hooks, ssl_bypassed=True, evidence_lines=merged_lines)
    """Fold a confirming capture-window evaluation into the run's verification
    (ADR-0016). Called only when that window's own observer carried BOTH the app's
    pin-check and a completed handshake AND the run had not already confirmed, so
    this function performs the merge without deciding to: the upgrade-only property
    stays visible at the call site rather than buried in here.

    With an existing verification, ONLY the two SSL lines move, plus the capture
    launch's own native-hook statement when its check filed one (ADR-0023). The
    capture window cannot speak to root - its bypass is pinning-only by construction
    (ADR-0015), so it carries no root recipe and observed no root probe - and its
    post-bypass liveness belongs to a different launch than the one the run's lines
    were measured in. Those stay exactly as the dynamic window measured them. The
    two keys are the check's own constants rather than literals here: a rename in one
    file that silently stopped merging them would leave a report whose SSL verdict
    and SSL evidence line contradict each other, with nothing raising.

    The hook line is adopted rather than overwritten, and only in its windowed form
    (ADR-0023): it reports what the script injected into ONE process managed to
    install, so the capture launch's answer neither replaces nor is replaced by the
    dynamic launch's. Selective by construction - an unattributed hook line is the
    dynamic window's own key and is left alone, which is also what keeps this
    function from becoming a general evidence merge that would drag the capture
    launch's liveness and root lines across with it.

    With no existing verification (the dynamic stage produced none), the capture
    window's own evaluation becomes the run's. Its root lines say no root-artifact
    probe was observed during the run, which is what this window measured, and
    `root_bypassed` stays unpromoted rather than being manufactured out of a
    pinning-only bypass."""
    if verification is None:
        return capture_verification
    merged_lines = {
        **verification.evidence_lines,
        SSL_HANDSHAKE_LINE: capture_verification.evidence_lines[SSL_HANDSHAKE_LINE],
        SSL_CONFIRMATION_LINE: capture_verification.evidence_lines[SSL_CONFIRMATION_LINE],
    }
    for key, value in capture_verification.evidence_lines.items():
        if key.startswith(WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX):
            merged_lines[key] = value


def _reclassify_empty_capture(
    capture_stage: StageResult,
    manifest_info,
    dynamic_stage: StageResult | None,
    non_java_tls_layers: list[str] | None = None,
) -> StageResult:
    """An empty traffic capture is only a FAILURE when a real proxy/wiring problem
    is the plausible cause. When a proxy-INDEPENDENT signal already in hand proves
    the empty capture was expected or inapplicable, a "failed" status is a false
    alarm - it reads as "the tool broke" when nothing broke. Reclassify those to
    "skipped" with the definitive reason, and leave a genuine proxy failure "failed".

    This mirrors the report body's capture cross-reference (report/generator.py) so
    the CLI stage line and the report agree on the cause instead of the stage line
    saying FAILED while the report explains it was expected. One recorded fact
    decides on its own; three inference signals disambiguate what it does not:

      0. The capture proxy RECORDED a client refusing its certificate
         (evidence["tls_failed_clients"], written by whichever source this run's
         placement has). Direct evidence rather than an inference, so it is checked
         before all three below: a TLS refusal requires the connection, which proves
         both that the route worked and that the app exercised its network path -
         making signal 2's "did not exercise" reason false whenever both would
         apply. -> skipped (the host rejected our CA; a pinning result, not a
         capture fault).

      P. The capture's own pre-flight probe found the device->proxy route DOWN
         (evidence["device_reached_proxy_preflight"] is False; the producer
         records that only for a refused/timed-out connect). Direct evidence
         about the ROUTE rather than an inference about the app, so like 0 it is
         decided ahead of signal 2 - whose observers fire inside a live
         connection's TLS stage, so a device that cannot open the socket produces
         their silence whether or not the app tried, and the "their silence rules
         out a proxy-reachability failure" step does not hold on a route already
         proven dead. It does not override a connection the capture WATCHED:
         client_connections > 0 is the proxy having really accepted one, which
         outranks a single probe of an earlier instant, so a contradicted down
         verdict falls through to 3. -> failed (a real environment break).

      1. Manifest declares NO android.permission.INTERNET -> the app cannot open a
         socket, so zero flows is guaranteed regardless of proxy state. Sound
         invariant (no INTERNET => no traffic). -> skipped (not applicable).
      2. INTERNET declared, dynamic stage RAN, and it recorded NO in-process signal
         that the app exercised its SSL path - neither the synthesized bypass's
         bypassEffect ('ssl-pin-check'/'ssl-handshake') NOR the predefined
         ssl_pinning_bypass_v1.js pin-check/cert-verify firing for a concrete host
         (a message carrying `hostname`/`host`, sent inside the hooked
         CertificatePinner.check / TrustManagerImpl.verifyChain). Those observers are
         in-process, so a proxy the device could not reach would still let them fire;
         their combined silence rules out a proxy-reachability failure and means the
         app simply did not exercise its network path in a non-interactive window.
         -> skipped (app-silence, interactive capture needed). Counting bypassEffect
         alone (which ONLY the synthesizer emits) read a fired pin-check on a known
         target - uc*/AndroGoat all map to ssl_pinning_bypass_v1.js - as zero effects
         and wrongly downgraded a genuine 0-flows proxy failure to app-silence.

      3. INTERNET declared, no in-process signal available (dynamic skipped/failed/
         absent), but the capture addon recorded >0 client connections to the proxy
         -> the device DID reach mitmdump; zero flows then means the app was silent
         or a pinned request refused the CA after connecting, not a device->proxy
         wiring failure. This is the reachability probe that closes the last
         previously-undisambiguable case. -> skipped (device reached proxy, app quiet).

    Anything else stays failed: INTERNET + an in-process SSL signal (bypassEffect,
    or a pin-check/verify that fired for a host) + 0 flows is a REAL capture-path
    failure (the app made the request, nothing reached the proxy);
    INTERNET + 0 client connections is a genuine reachability failure (the device
    never reached the proxy); a route the pre-flight probe found DOWN and no
    observed connection contradicted is that same failure, proven before the
    window; and INTERNET with no dynamic signal AND no connection count at all
    cannot rule a proxy problem out, so all remain loud. A missing
    client_connections is treated as absent (not zero) - it never invents a
    reachability verdict. A non-empty (success) capture and a hard setup failure
    (Windows mitmdump missing, no usable device) are returned untouched - only an
    empty-capture "failed" whose evidence carries a flow count of zero is a
    reclassification candidate (decider-owns-its-guard: this function alone decides,
    so no caller can drift).

    Signal 2 carries two guards the 0 it reads does not establish, both applied
    BEFORE it concludes app-silence (non_java_tls_layers):
      - an app whose TLS runs outside the Java stack the observers hook (a WebView
        page load, a Flutter dart:io TLS session) produces their silence whether or
        not it made a request, so the 0 is uninformative in both directions and the
        reason says that instead of naming the app for not trying;
      - a capture that recorded the device opening a connection to the proxy has
        direct evidence the network path WAS exercised, which the 0 cannot override
        - that case falls through to Signal 3, which owns it."""
    if capture_stage.status != "failed":
        return capture_stage
    evidence = capture_stage.evidence or {}
    # Only the "no flows captured" outcome is a candidate. A hard setup failure
    # (mitmdump/device missing) carries a different reason and must stay failed -
    # that IS a broken run, not an expected-empty one.
    reason = evidence.get("reason")
    if reason not in ("no flows captured", "no traffic captured"):
        return capture_stage

    permissions = getattr(manifest_info, "permissions", None) or []
    has_internet = "android.permission.INTERNET" in permissions

    # Signal 1: no INTERNET -> capture is inapplicable, empty is guaranteed.
    if manifest_info is not None and not has_internet:
        return StageResult(
            stage="capture-traffic", status="skipped",
            evidence={**evidence, "reclassified_from": "failed",
                      "not_applicable_reason": "no INTERNET permission"},
            error=None, duration_ms=capture_stage.duration_ms,
        )

    # The app's OWN liveness is direct device-side evidence about the app, and it is
    # the one fact none of the signals below can substitute for. An app that was
    # measurably not running when the launch was issued makes no requests for a
    # reason that has nothing to do with the network, so signals 0/P/2/3 all become
    # unevaluable and the capture's emptiness is fully explained - by a real fault
    # the operator has to fix. It therefore stays `failed`, never `skipped`: a
    # "not applicable" line would hide a run whose target never started, which is
    # the opposite of what the operator needs to see ([[not-attempted-neq-skipped]],
    # [[observer-silence-is-a-fact-about-observers]]). The stage's own recorded cause
    # is already the launch failure, so returning it untouched IS the corrected
    # verdict, not a failure to reclassify.
    #
    # Guarded exactly as run_capture_stage guards its own version: a proxy-recorded
    # certificate refusal, or a device connection the capture counted, can only
    # happen after the process started - so on such a run an early empty sample is a
    # slow start, not a crash, and the signals below keep their say.
    if evidence.get("app_pid_after_launch") == 0 and not (
            evidence.get("tls_failed_clients")
            or (evidence.get("client_connections") or 0) > 0):
        return capture_stage

    # Signal 0 (checked before every inference below, because it is not one): the
    # capture proxy RECORDED a client refusing its certificate this run - direct
    # evidence, from whichever source this placement writes, of why the capture is
    # empty. Without this branch that record had no consumer in the function that
    # owns the empty-capture verdict: a capture that came back empty BECAUSE the app
    # rejected our CA was reclassified with a hedge ("app-silence or a pinned
    # request that refused the CA") that the evidence in hand had already resolved -
    # naming app-silence as a live possibility on a run where the proxy watched the
    # client refuse. It must also precede Signal 2, whose reason ("the app did not
    # exercise its network path") is false here: a client can only refuse our
    # certificate after opening the connection and starting a handshake.
    refusals = evidence.get("tls_failed_clients")
    if isinstance(refusals, list) and refusals:
        hosts = sorted({
            r.get("host") for r in refusals
            if isinstance(r, dict) and r.get("host")
        })
        where = ", ".join(hosts) if hosts else "host not captured (no SNI recorded)"
        return StageResult(
            stage="capture-traffic", status="skipped",
            evidence={**evidence, "reclassified_from": "failed",
                      "not_applicable_reason": (
                          f"the capture proxy recorded {len(refusals)} client TLS "
                          f"handshake(s) it refused its certificate for ({where}) - the "
                          "client rejected the capture CA, the proxy-side signature of "
                          "certificate pinning (or a custom/limited trust store). A "
                          "refusal requires the connection, so the device->proxy route "
                          "worked AND the app exercised its network path: this is neither "
                          "a wiring failure nor app-silence, and the host(s) above were "
                          "not decryptable by this route - a pinning result, not a "
                          "capture fault. Attribution bound: the proxy is set "
                          "device-globally for a capture, so a refusal is attributed to "
                          "the target app by its recorded SNI host; with no host "
                          "captured it is only some client on the device")},
            error=None, duration_ms=capture_stage.duration_ms,
        )

    # CAPREACH1 / pre-flight route verdict, decided BEFORE Signal 2 - because
    # Signal 2 is an inference about the APP that a proven-dead ROUTE invalidates.
    # The producer records False only after a refused or timed-out connect ("the
    # route is already broken, the capture is guaranteed to yield nothing"), and
    # Signal 2's observers (the app's own CertificatePinner.check /
    # TrustManagerImpl.verifyChain, plus the recipe checkpoints they emit) fire
    # INSIDE a live connection's TLS stage - so a device that cannot open the
    # socket to the proxy produces their silence whether or not the app ever
    # tried. That is exactly the proxy-reachability failure Signal 2's own text
    # claims the silence rules out. Left after Signal 2 this guard's promise
    # ("never reclassify that as app-silence") was unenforceable: on any run whose
    # dynamic stage succeeded, Signal 2 fired first and reported a dead route as
    # "the app did not exercise its network/SSL path ... not a proxy failure" -
    # naming the app for an environment break, in a reason that is false twice
    # over.
    #
    # The verdict is direct evidence about the route, but it is one sample taken
    # BEFORE the capture window (mitmdump may not have been listening yet), so it
    # may not override a connection the capture actually observed:
    # client_connections counts the connections the proxy really accepted during
    # the window APART FROM this stage's own pre-flight probe (the pipeline's own
    # `nc` connect is corrected out by _app_client_connections), and >0 is proof
    # the route carried app traffic. A down verdict the
    # capture's own log contradicts therefore falls through to Signal 3 rather
    # than asserting a wiring break that log disproves. 0 (or absent) leaves it
    # uncontradicted and the stage loud; None is unknown and never asserts either
    # way.
    client_connections = evidence.get("client_connections")
    _observed_connection = isinstance(client_connections, int) and client_connections > 0
    if evidence.get("device_reached_proxy_preflight") is False and not _observed_connection:
        return capture_stage

    # Signal 2: INTERNET + dynamic ran + NO in-process signal that the app exercised
    # its SSL path -> app-silence. "Exercised" is any of: the synthesized bypass's
    # bypassEffect ('ssl-pin-check'/'ssl-handshake'), OR the predefined
    # ssl_pinning_bypass_v1.js pin-check/cert-verify firing for a concrete host
    # (payload carries a `hostname`/`host`). Those latter messages are sent INSIDE
    # the hooked CertificatePinner.check / TrustManagerImpl.verifyChain, so they
    # appear only when the app actually opened a pinned connection. Counting only
    # bypassEffect (emitted ONLY by the synthesizer) read a fired pin-check on a
    # known target (uc*/AndroGoat, all mapped to ssl_pinning_bypass_v1.js) as 0
    # effects and falsely downgraded a genuine 0-flows proxy failure to app-silence
    # - the "relax a loud signal for a nicer number" move this reclassifier exists
    # to avoid. An INSTALL-time message (universal-ssl-pinning bypassed:true with no
    # host, or CertificatePinner present:false) carries no host and correctly does
    # NOT count: it proves the hook was placed, not that a request was made - so the
    # discriminator keys on a concrete host, never on bypassed:true alone.
    # Signal 2's verdict is about THIS capture window ("the app simply did not
    # exercise its network path in a non-interactive window"), but its evidence was
    # the DYNAMIC stage's observer - a different launch of the app. That was the only
    # stream in existence when this ladder was written. The capture window is now
    # launched under the same pinning-only bypass, so it runs the same observer
    # script and records its OWN stream: direct evidence about the window being
    # judged rather than a proxy for it. Both are read, and an effect in EITHER
    # refutes app-silence - "the app did not exercise its SSL path" is a claim about
    # the APP, so the silence it rests on has to hold in every window that could have
    # seen it. Reading only the dynamic stage's stream let a run whose capture window
    # watched the app's own pin-check fire for a host, with 0 flows reaching the
    # proxy, be downgraded to "app-silence, not applicable" - relaxing the one signal
    # that proves a real capture-path failure. An un-hooked capture window (a
    # --skip-dynamic run, or a NEITHER/ROOT_ONLY action) records no messages at all,
    # so the dynamic stage's stream decides alone exactly as before.
    if has_internet and dynamic_stage is not None and dynamic_stage.status == "success":
        dyn_ev = dynamic_stage.evidence or {}
        window_messages = [
            ("the dynamic stage's observer", dyn_ev.get("frida_messages") or []),
        ]
        capture_messages = evidence.get("frida_messages") or []
        if capture_messages:
            window_messages.append(
                ("this capture window's own observer", capture_messages),
            )
        ssl_effects = sum(_ssl_path_exercised(msgs) for _, msgs in window_messages)
        # Named so that a reason concluding app-silence cannot read as though more
        # windows were consulted than actually were.
        windows = " and ".join(name for name, _ in window_messages)
        # The 0 below is a fact about the OBSERVERS, and two things follow from it
        # only if the observers could have seen this app's TLS at all:
        #
        # (a) A network path outside the Java stack they hook. CertificatePinner.check
        #     and TrustManagerImpl.verifyChain are Java-stack hooks: a WebView page
        #     load runs Chromium's own TLS stack and a Flutter app's dart:io runs its
        #     own BoringSSL, so neither reaches them however many requests the app
        #     makes. On such an app the 0 is uninformative in BOTH directions, and
        #     calling it app-silence would be the empty-evidence-channel-read-as-
        #     evidence-of-absence mistake one layer up - the same class this ladder's
        #     predecessor guards exist for.
        # (b) A connection the capture actually recorded. A connection IS the app
        #     exercising its network path, so concluding "did not exercise" here would
        #     assert the opposite of what the proxy measured; the evidence belongs to
        #     Signal 3, which is exactly where this falls through
        #     ([[guard-order-relative-to-the-branch-it-guards]]).
        if ssl_effects == 0 and not _observed_connection:
            if non_java_tls_layers:
                layers = ", ".join(non_java_tls_layers)
                return StageResult(
                    stage="capture-traffic", status="skipped",
                    evidence={**evidence, "reclassified_from": "failed",
                              "non_java_tls_layers": list(non_java_tls_layers),
                              "not_applicable_reason": (
                                  f"no in-process SSL signal was recorded by {windows}, "
                                  f"and this app has at least one network path outside the "
                                  f"Java stack those observers hook ({layers}) - so that silence is "
                                  "uninformative this run. A request on such a path never "
                                  "reaches CertificatePinner.check or "
                                  "TrustManagerImpl.verifyChain whether or not the app "
                                  "made one, which makes the app exercising exactly that "
                                  "path indistinguishable from the app making no request "
                                  "at all. This run therefore cannot say the app did not "
                                  "exercise its network/SSL path: the empty capture is "
                                  "evidence neither way, and it is not a proxy failure "
                                  "either. Confirming or refuting pinning on that path "
                                  "needs a runtime that sees that TLS stack (ADR-0006)")},
                    error=None, duration_ms=capture_stage.duration_ms,
                )
            return StageResult(
                stage="capture-traffic", status="skipped",
                evidence={**evidence, "reclassified_from": "failed",
                          "not_applicable_reason": "app did not exercise its "
                          f"network/SSL path (no in-process SSL signal from {windows} - "
                          "0 bypassEffect and no pinned-connection hook fired for a "
                          "host; interactive capture needed) - not a proxy failure"},
                error=None, duration_ms=capture_stage.duration_ms,
            )

    # Signal 3 (device-side reachability probe): the previously-undisambiguable case
    # - INTERNET declared but NO in-process signal (dynamic skipped/failed/absent) -
    # is now decidable by the capture addon's client-connection count, which is
    # proxy-path-independent in the OTHER direction: it proves whether the device
    # actually REACHED mitmdump at all. connections>0 + 0 flows => the device opened
    # a connection to the proxy but no request produced a decrypted flow (app-silence
    # - a refusal would have been decided by Signal 0 above, so it is not among the
    # remaining causes) - NOT a device->proxy
    # wiring failure, so the loud "failed" would be a false alarm -> skipped. It is
    # only consulted when Signals 1-2 did not already decide, and ONLY the >0 case
    # downgrades: connections==0 means the device never reached the proxy, which is a
    # genuine reachability failure and MUST stay loud (never downgrade a real break).
    # A missing count (older addon / non-WSL2 path that didn't record it) is absent,
    # not zero, so it never fabricates a reachability claim - stays failed.
    if has_internet and _observed_connection:
        return StageResult(
            stage="capture-traffic", status="skipped",
            evidence={**evidence, "reclassified_from": "failed",
                      "not_applicable_reason": (
                          f"the app opened {client_connections} client "
                          "connection(s) to the proxy (this stage's own pre-flight "
                          "probe is excluded) but no request produced a decrypted flow, and "
                          "the proxy recorded no certificate refusal on either source - "
                          "nothing this capture saw says a client rejected our CA, so "
                          "what is left is the app staying silent on the network path "
                          "this run (interactive capture needed) or a request this "
                          "parser could not read (a non-standard verb is the known "
                          "residual of the _METHODS enumeration). This is NOT a "
                          "device->proxy reachability failure")
                          + (f". This app also has a network path outside the Java stack "
                             f"the in-process observers cover ({', '.join(non_java_tls_layers)}), "
                             "so their silence does not narrow these causes: a request on "
                             "that path is invisible to them whether or not it was made."
                             if non_java_tls_layers else "")},
            error=None, duration_ms=capture_stage.duration_ms,
        )

    # Otherwise: a real proxy-wiring failure (or undisambiguable) - stay loud.
    return capture_stage


def _wrap_stage(stage_name: str, fn, *args, **kwargs):
    """For pure functions that don't return a StageResult themselves - always
    produces one, so failures here are as loud as everywhere else (NFR-1)."""
    # The stage is marked in flight before the work starts, so a run killed inside
    # it names this stage rather than the one it finished last (ADR-0021).
    _begin_stage(stage_name)
    start = time.monotonic()
    try:
        raw_result = fn(*args, **kwargs)
        return StageResult(stage=stage_name, status="success", evidence={}, duration_ms=elapsed_ms(start)), raw_result
    except Exception as exc:
        return StageResult(stage=stage_name, status="failed", evidence={}, error=str(exc), duration_ms=elapsed_ms(start)), None


def _halt(stage_results: list[StageResult]) -> None:
    console.print("[bold red]Pipeline halted - see the failed stage above.[/bold red]")
    raise typer.Exit(code=1)


def _finalize_run(
    report_kwargs: dict,
    analysis_root: Path,
    apk_hash: str,
    run_id: str,
    save_payload: dict,
    completion_kwargs: dict,
) -> Path:
    """Write the report, persist the run to SQLite, and record the audit
    completion, surfacing any failure loudly (H1/H2). Returns the final report
    path.

    H1: the completion StageResult used to be discarded - a failed completion
    (e.g. a corrupt audit log) was silent and the CLI printed unqualified green
    success. It is now captured, appended to the report's stage_results (and the
    report regenerated so the Stage Results table shows it); a failed completion
    prints the error and exits non-zero instead of claiming success.

    H2: a save_run DB failure must not silently drop the audit completion or the
    report path - completion is still recorded (the audit log is the
    traceability loop's source of truth, LIM-A), the report path is surfaced,
    and the command exits non-zero rather than leaving an inconsistent state.
    """
    report_path = generate_report(**report_kwargs)

    # H3: append the completion stage to stage_results BEFORE save_run. report_kwargs
    # and save_payload reference the SAME list, so save_run snapshots it at call
    # time - if it ran first it would persist the list without the completion
    # stage while the regenerated report showed it, a report-vs-DB inconsistency.
    completion_stage = record_run_completion(**completion_kwargs)
    report_kwargs["stage_results"].append(completion_stage)

    save_error: str | None = None
    try:
        save_run(analysis_root, apk_hash, run_id, save_payload)
    except Exception as exc:
        save_error = str(exc)

    report_path = generate_report(**report_kwargs)  # regenerate with the completion stage

    # ADR-0021: the run has reached an outcome by here - every branch below either
    # returns or exits non-zero - so the sidecar is finalized BEFORE them. Doing it
    # last, after the two failure branches, left a run that ended with a failed
    # audit completion or a failed DB save reading `started`, which asserts an
    # interruption that never happened. `audited` keeps those two endings apart:
    # the first is an orphan by the audit log's own verdict, the second is a
    # complete run that merely has no `runs` row.
    if _RUN_STATUS is not None:
        try:
            _RUN_STATUS.finish(
                report_path=report_path,
                audited=completion_stage.status != "failed",
                save_error=save_error,
                audit_error=completion_stage.error if completion_stage.status == "failed" else None,
            )
        except OSError as exc:
            console.print(f"[red]CAUTION: could not finalize the run-status sidecar ({exc}).[/red]")

    if completion_stage.status == "failed":
        console.print(f"[red]Audit completion failed: {completion_stage.error}[/red]")
        if save_error is not None:
            console.print(f"[red]Run save failed: {save_error}[/red]")
        raise typer.Exit(code=1)

    if save_error is not None:
        console.print(
            f"[yellow]Report written and run audited, but the run was not saved to the DB: {save_error}[/yellow]"
        )
        console.print(f"\n[bold green]Report: {report_path}[/bold green]")
        raise typer.Exit(code=1)

    console.print(f"\n[bold green]Report: {report_path}[/bold green]")
    return report_path


def _effective_dynamic_action(action: Action, force_dynamic: bool) -> Action:
    """The action that DRIVES bypass synthesis + on-device deployment, which may
    differ from the static verdict `action` ONLY under the operator override
    --force-dynamic (ADR-0005). A NEITHER static verdict normally skips the dynamic
    stage entirely (frida_runner.run_dynamic_stage: `if action == Action.NEITHER:
    return skipped`), so a coverage-limited miss - e.g. PropertyGuru's React-Native/
    Hermes root checks, a documented false negative - never gets an empirical
    attempt. When the operator explicitly forces it, drive synthesis/deployment
    with Action.BOTH so the universal root+SSL bypass envelope is generated and
    loaded, WITHOUT mutating the static verdict: confidence, calibration, storage,
    and correlation all keep reading classification.action. No-op when the flag is
    off and for any already-detected action (those already run the dynamic stage)."""
    if force_dynamic and action == Action.NEITHER:
        return Action.BOTH
    return action


@app.command("run")
def run(
    apk: Path = typer.Option(..., "--apk", exists=True, help="Path to the APK to analyze"),
    justification: str = typer.Option(
        ..., "--justification",
        help="OWN_APP | CTF | AUTHORIZED_ENGAGEMENT:<id> | ACADEMIC_TRAINING_TARGET",
    ),
    skip_dynamic: bool = typer.Option(False, "--skip-dynamic", help="Skip the dynamic analysis stage"),
    capture_traffic: bool = typer.Option(
        False, "--capture-traffic",
        help=(
            "Opt-in mitmproxy capture stage: route the target app's traffic "
            "through mitmdump, decrypt it, and record the captured flows in the "
            "report as real SSL-bypass proof. Requires a rooted device and "
            "mitmdump reachable from the adb-server host. Off by default so "
            "normal runs never touch the device's proxy settings. When the run's "
            "effective action attempts an SSL bypass, this window launches the app "
            "under that pinning-only bypass, so its decrypted flows are evidence "
            "the bypass took effect and the window can report its own pin-check/"
            "handshake effects; with --skip-dynamic, or an action that never "
            "attempts an SSL bypass, it stays an un-hooked cold start instead."
        ),
    ),
    drive_ui: bool = typer.Option(
        True, "--drive-ui/--no-drive-ui",
        help=(
            "With --capture-traffic (and only then), make at most ONE "
            "deterministic tap to get the app past a control that gates its "
            "network path, so a button-triggered pinned request can be exercised "
            "inside the capture window (ADR-0011). The target is read from the "
            "device's own live UI hierarchy, never a stored coordinate, and the "
            "drive REFUSES to tap when the choice is ambiguous. Every outcome is "
            "recorded on the capture stage and reaches the report."
        ),
    ),
    force_dynamic: bool = typer.Option(
        False, "--force-dynamic",
        help=(
            "Operator override (ADR-0005): deploy the universal root+SSL bypass on a "
            "NEITHER target - a static verdict that normally skips the dynamic stage. "
            "Does NOT change the static verdict, confidence, or calibration; the "
            "dynamic result stays gated on real observed behaviour (dynamically_confirmed "
            "only on a real probe-hit / pin-check+handshake, else UNVERIFIED). Intended "
            "for coverage-limited misses (e.g. a React-Native/Hermes app whose root "
            "checks the signature engine cannot attribute). No-op with --skip-dynamic or "
            "when a category was already detected."
        ),
    ),
    device_serial: Optional[str] = typer.Option(None, "--device", help="Specific device/emulator serial"),
    target: Optional[str] = typer.Option(
        None, "--target",
        help=(
            "Target app this run is analyzing - selects the Frida bypass script and "
            "success-check module. Optional: when omitted, it is auto-derived from "
            "the APK's detected package name (known reference apps resolve to their "
            "hand-authored augmentation; any other app routes to the general "
            "synthesized-bypass path). Every app goes through the full pipeline "
            "regardless. An unrecognized target (anything other than uncrackable1/2/3 "
            "or AndroGoat) is fine and expected for real apps - the dynamic stage "
            "degrades gracefully to the synthesized bypass rather than failing."
        ),
    ),
):
    global _RUN_STATUS
    stage_results: list[StageResult] = []
    # Full 128-bit uuid, not a [:8] truncation: RunRecord.run_id is the PK and
    # save_run upserts via session.merge, so a 32-bit collision would silently
    # overwrite a prior run's record instead of erroring - unacceptable in a
    # dual-use tool that values audit integrity (FR-7.1/ADR-0005).
    # androguard logs a DEBUG flood via loguru on every APK parse, making real
    # run output unreadable. Nothing this project reports depends on those
    # lines (this project's own output is Rich/Typer, not loguru), so drop
    # DEBUG globally - keep INFO+ (including androguard's useful validations).
    try:
        from loguru import logger as _loguru
        _loguru.remove()
        _loguru.add(sys.stderr, level="WARNING")
    except Exception:
        pass

    run_id = uuid.uuid4().hex
    git_commit = _git_commit_hash()
    # ADR-0022: the corpus identity, resolved beside the code identity and for the
    # same reason - the run is about to acquire a record and both facts describe
    # what it is analysing. Taken before any of the corpus is loaded, which is what
    # makes the recorded value the corpus the run started with.
    signature_corpus = corpus_fingerprint(SIGNATURE_CORPUS.values())
    operator = _operator_identity()

    # --- auth gate (M3): validate the justification BEFORE any real analysis ---
    # record_authorization below also validates, but it runs after ingest (so it
    # can carry the computed hash) - leaving that as the only gate would tool-
    # analyze the target (aapt2 badging + apksigner verify) and persist metadata
    # before an invalid justification halted the run. Fail the cheap pure check
    # up front so no unauthorized target is ever analyzed (FR-8.2/ADR-0005).
    if not validate_justification(justification):
        console.print(
            f"[bold red]Invalid --justification '{justification}' - aborting before "
            "any analysis. Use one of OWN_APP, CTF, ACADEMIC_TRAINING_TARGET, or "
            "AUTHORIZED_ENGAGEMENT:<id>.[/bold red]"
        )
        raise typer.Exit(code=1)

    # Resolve the --target to the canonical key once, up front, so the bypass
    # dispatch (SCRIPTS_BY_TARGET_ACTION) and the success-check lookup
    # (SUCCESS_CHECKS) below both agree on the same key regardless of casing
    # (uncrackable1/2/3 are lowercase; AndroGoat is mixed-case). The raw
    # `target` is still what the report shows - what the operator asked for.
    # target_canonical is a provisional value when --target was omitted; it is
    # finalized from the detected package right after ingest (below).
    target_canonical = _canonical_target(target) if target else None

    # --- ingest (identification, not gated behind auth - see module docstring) ---
    # FR-1.3: re-running against an already-ingested APK references the existing
    # record rather than re-ingesting. Hash first (cheap, in-memory) to resolve
    # the record; ingest() then reuses its aapt2/apksigner metadata and skips the
    # toolchain spawns instead of re-running them on every run. On a hash mismatch
    # (file changed) ingest falls through to a full tool-backed re-ingest.
    # Hash once, use twice: resolve the FR-1.3 reuse record by the hash, then
    # pass the precomputed HashSet into ingest so the file isn't streamed a
    # second time for its evidence (a full SHA-256/SHA-1/MD5 read per run).
    # --- input normalization (real-world deliveries) ---
    # The pipeline below assumes a single self-contained APK (root manifest, root
    # classes*.dex, lib/<abi>/*.so). An Android App Bundle (.aab) or a split-APK
    # directory carries that content under base/ or across several zips, so before
    # hashing we synthesize a single root-level APK (pure zipfile, no new toolchain).
    # The normalized APK is what gets hashed -> the output dir keys to the content
    # actually analyzed, and every downstream reader stays unchanged.
    try:
        apk = normalize_input(apk, ANALYSIS_ROOT / "normalized")
    except Exception as exc:
        # ADR-0005 parity with the failed-ingest handler below. Normalization is
        # the input stage feeding ingest and fails loudly by design on a malformed
        # AAB / non-APK zip / empty split dir - but it runs one line before the
        # ingest-failure audit path, so an uncaught raise here would crash with
        # only an ephemeral stderr traceback and leave ZERO audit trail. The
        # justification is already validated (above) and operator/git_commit are
        # set, so a normalize failure is an authorized analysis ATTEMPT that must
        # be traceable, exactly like the failed ingest six lines down. Mirror that
        # path: record a failed input-stage event (no APK hash yet - normalize
        # failed before hashing, and a split-dir input has no single hash;
        # record_ingest_failure takes apk_hash=None), surface a failed StageResult,
        # and halt. Additive traceability only - it still halts nonzero, never
        # masking the failure.
        norm_result = StageResult(
            stage="normalize", status="failed", evidence={},
            error=f"{type(exc).__name__}: {exc}",
        )
        stage_results.append(norm_result)
        _print_stage(norm_result)
        logged = record_ingest_failure(
            audit_log_path=AUDIT_LOG_PATH,
            apk_hash=None,
            justification=justification,
            operator=operator,
            git_commit=git_commit,
            error=norm_result.error or "input normalization failed",
        )
        if logged.status == "failed":
            console.print(
                "[bold red]WARNING: could not append the input-failure event - the "
                "audit log appears corrupt, so this failed attempt may be "
                "untraceable.[/bold red]"
            )
        _halt(stage_results)
    # PREP-AUDIT1: hashing and the FR-1.3 reuse lookup also run before
    # record_authorization. compute_hashes can raise on an IO/TOCTOU error, and
    # existing_metadata opens the SQLite store where a concurrent run can hit
    # "database is locked" (an OperationalError) - either would crash in the
    # one-line gap between the normalize guard above and the ingest-failure
    # handler below with ZERO audit trail, the same ADR-0005 hole NORM-AUDIT1
    # closed for normalize. Mirror that path: record the real hash if it was
    # already computed (else None), surface a failed StageResult, and halt.
    prehashed = None
    try:
        prehashed = compute_hashes(apk)
        existing = existing_metadata(ANALYSIS_ROOT, prehashed.sha256)
    except Exception as exc:
        prep_result = StageResult(
            stage="input-prep", status="failed", evidence={},
            error=f"{type(exc).__name__}: {exc}",
        )
        stage_results.append(prep_result)
        _print_stage(prep_result)
        logged = record_ingest_failure(
            audit_log_path=AUDIT_LOG_PATH,
            apk_hash=prehashed.sha256 if prehashed else None,
            justification=justification,
            operator=operator,
            git_commit=git_commit,
            error=prep_result.error or "input preparation failed",
        )
        if logged.status == "failed":
            console.print(
                "[bold red]WARNING: could not append the input-prep-failure event - "
                "the audit log appears corrupt, so this failed attempt may be "
                "untraceable.[/bold red]"
            )
        _halt(stage_results)
    ingest_result = ingest(apk, reuse_metadata=existing, precomputed_hashes=prehashed)
    stage_results.append(ingest_result)
    _print_stage(ingest_result)
    if ingest_result.status == "failed":
        # ADR-0005: a failed ingest is still an analysis attempt and must be
        # traceable. record_authorization runs after ingest (so it can carry the
        # real hash), so a failed ingest would otherwise leave zero audit trail -
        # write a dedicated ingest_failed event with the hash if it was computed.
        logged = record_ingest_failure(
            audit_log_path=AUDIT_LOG_PATH,
            apk_hash=(ingest_result.evidence.get("hashes") or {}).get("sha256"),
            justification=justification,
            operator=operator,
            git_commit=git_commit,
            error=ingest_result.error or "ingest failed",
        )
        # L7: a corrupt log that also drops the ingest_failed event is a double
        # failure - the attempt becomes invisible. Surface a failed status
        # loudly instead of swallowing it.
        if logged.status == "failed":
            console.print(
                "[bold red]WARNING: could not append the ingest_failed event - the "
                "audit log appears corrupt, so this failed attempt may be "
                "untraceable.[/bold red]"
            )
        _halt(stage_results)

    apk_hash = ingest_result.evidence["hashes"]["sha256"]
    # SAVEMETA-AUDIT1: save_metadata is the LAST unguarded operation before
    # record_authorization (885) writes the first audit event of the run. It is a
    # DB-backed SQLite write (storage/results.py, session.merge) into the SAME
    # store existing_metadata reads - PREP-AUDIT1 guarded that READ one stage up
    # but not this WRITE, which takes an exclusive lock and so is at least as
    # exposed to a concurrent run's "database is locked" (OperationalError). A
    # raise here crashed a justification-validated attempt in the window between
    # the ingest handler and the authorization record with ZERO audit trail
    # (record_authorization, the first success-path audit event, hasn't run yet),
    # the exact NORM/PREP-AUDIT1 hole one stage further down than PREP-AUDIT1
    # swept - and its own note said to sweep EVERY pre-auth stage. Mirror that
    # path: surface a failed StageResult, record the failed attempt with the REAL
    # hash (apk_hash is known here), and halt.
    try:
        save_metadata(ANALYSIS_ROOT, apk_hash, ingest_result.evidence)
    except Exception as exc:
        save_meta_result = StageResult(
            stage="metadata-persist",
            status="failed",
            evidence={},
            error=f"{type(exc).__name__}: {exc}",
        )
        stage_results.append(save_meta_result)
        _print_stage(save_meta_result)
        logged = record_ingest_failure(
            audit_log_path=AUDIT_LOG_PATH,
            apk_hash=apk_hash,
            justification=justification,
            operator=operator,
            git_commit=git_commit,
            error=save_meta_result.error or "metadata persistence failed",
        )
        if logged.status == "failed":
            console.print(
                "[bold red]WARNING: could not append the metadata-persist-failure event - "
                "the audit log appears corrupt, so this failed attempt may be "
                "untraceable.[/bold red]"
            )
        _halt(stage_results)

    # App-agnostic target resolution. With --target omitted, the real package is
    # now known from ingest - resolve the augmentation target from it so ANY apk
    # runs the full pipeline with no app-specific input: known reference apps
    # (by package) keep their hand-authored scripts + success checks, and every
    # other app routes to the general synthesized-bypass path. All of them go
    # through every phase. This is what makes the platform not app-specific in
    # operation: you hand it an APK, it routes itself.
    if target is None:
        package_for_target = ingest_result.evidence["package"]["package_name"]
        target = PACKAGE_TO_TARGET.get(package_for_target, package_for_target)
        target_canonical = _canonical_target(target)

    # ADR-0021: the run is authorized, hashed and about to start its heavy
    # stages, so from here it has an identity worth recording on disk. Written
    # BEFORE the first of them: a run killed mid-pipeline then leaves a sidecar
    # naming the last stage it reached, which is what the Netflix run of
    # 2026-09-17 left nowhere but the console.
    _RUN_STATUS = RunStatusRecorder(
        ANALYSIS_ROOT,
        apk_hash,
        {
            "run_id": run_id,
            "apk_hash": apk_hash,
            "package_name": (ingest_result.evidence.get("package") or {}).get("package_name"),
            "target": target,
            "operator": operator,
            "justification": justification,
            "git_commit": git_commit,
            "signature_corpus": signature_corpus,
        },
    )
    _RUN_STATUS.start()

    # --- audit (FR-8.2/FR-3.3: before any actual analysis stage) ---
    _begin_stage("audit")
    audit_result = record_authorization(
        audit_log_path=AUDIT_LOG_PATH,
        justification=justification,
        apk_hash=apk_hash,
        operator=operator,
        git_commit=git_commit,
        run_id=run_id,
    )
    stage_results.append(audit_result)
    _print_stage(audit_result)
    if audit_result.status == "failed":
        _halt(stage_results)

    # --- decompile ---
    _begin_stage("decompile")
    decompile_result = decompile(apk, ANALYSIS_ROOT, apk_hash)
    stage_results.append(decompile_result)
    _print_stage(decompile_result)
    if decompile_result.status == "failed":
        _halt(stage_results)

    jadx_output = Path(decompile_result.evidence["jadx_output"])
    apktool_output = Path(decompile_result.evidence["apktool_output"])
    manifest_path = Path(decompile_result.evidence["manifest_path"])

    # --- load signature sets ---
    # Wrapped (4-1): a malformed/unvalidated YAML raises inside load_signatures,
    # so it must become a loud StageResult and halt - not a raw traceback with
    # no StageResult and an invisible attempt (NFR-1).
    # Two distinct loads share one generic stage name, which renders as two
    # identical "signature_load" rows in the Stage Results table - a reader
    # cannot tell which signature corpus each loaded. Name them per-corpus so
    # the table is unambiguous (root vs ssl signature set).
    root_sig_stage, root_signatures = _wrap_stage(
        "signature_load:root", load_signatures, SIGNATURE_CORPUS["root_detection"]
    )
    ssl_sig_stage, ssl_signatures = _wrap_stage(
        "signature_load:ssl", load_signatures, SIGNATURE_CORPUS["ssl_pinning"]
    )
    stage_results.append(root_sig_stage)
    stage_results.append(ssl_sig_stage)
    _print_stage(root_sig_stage)
    _print_stage(ssl_sig_stage)
    if root_sig_stage.status == "failed" or ssl_sig_stage.status == "failed":
        _halt(stage_results)

    # --- static signature scan + manifest ---
    static_roots = [jadx_output, apktool_output]
    # ASSET-DROP1: the assets/ tree extracted straight from the APK (decompile.py
    # -> extract_assets). On the lazy per-DEX path jadx is handed a bare .dex and
    # never sees the APK, and apktool can be killed mid-smali on a large app - so
    # neither scans root carries assets/ on a real React Native APK. Without
    # this root the shipped JS bundle was read by NOBODY while `js` still read
    # `fully_analyzed` (a confident negative over an unread bundle). Added only
    # when the extraction actually produced files, so a genuine absence stays an
    # absence rather than an empty-but-present root.
    assets_output = jadx_output.parent / "assets"
    if assets_output.is_dir():
        static_roots.append(assets_output)
    # L-M1: a secondary decompiler fallback that recovered classes jadx missed
    # leaves its output in fallback_output - scan it too, so the recovered source
    # is actually walked (otherwise the recovery would have no detection effect).
    cfr_output = decompile_result.evidence.get("fallback_output")
    if cfr_output and Path(cfr_output).exists():
        static_roots.append(Path(cfr_output))
    # L-M3 (chimera): if the app bundles an R8/ProGuard mapping.txt (assets/ or
    # res/raw/), restore obfuscated identifiers before matching so original-name
    # signatures can hit code the obfuscator renamed. Best-effort identification
    # surface, additive - the original text is still scanned unchanged. A missing
    # mapping is the common case and just yields mapping=None (no deobfuscation).
    mapping = None
    mapping_path = find_mapping_file(static_roots)
    if mapping_path is not None:
        # DEOBF-GUARD1: this is an additive best-effort enhancement (see comment
        # above) whose documented failure mode is mapping=None -> scan the original
        # text unchanged, exactly the common missing-mapping case. But read_text
        # still raises on a mapping.txt find_mapping_file saw as a file yet is
        # unreadable (mode 000, another owner in a shared analysis dir) or that
        # vanished in the TOCTOU window between the find and the read (errors=
        # "replace" only handles DECODE errors, not IO). An uncaught OSError here
        # would crash the whole run AFTER decompile+audit+signature-load already
        # succeeded, discarding that completed work over a lost recall bonus.
        # Degrade to mapping=None with a loud yellow warning, matching the two
        # other additive enhancements below (androguard, string-recovery).
        # parse_mapping itself never raises (it skips malformed lines by design),
        # so a corrupt mapping already degrades - this closes the IO-error hole.
        try:
            mapping = parse_mapping(mapping_path.read_text(encoding="utf-8", errors="replace"))
        except Exception as exc:
            mapping = None
            console.print(f"[yellow]deobfuscation skipped: {exc}[/yellow]")
        if mapping:
            console.print(
                f"[dim]Deobfuscation: recovered {len(mapping.obfuscated_to_original)} "
                f"identifier(s) from {mapping_path}[/dim]"
            )
    scan_stage, static_evidence = _wrap_stage(
        "static_scan", scan, static_roots, root_signatures + ssl_signatures,
        sqlite_path=Path(ANALYSIS_ROOT) / apk_hash / "xref.sqlite",
        mapping=mapping,
        # Bug-B parity: hand scan() the app's declared package so a first-party
        # app whose own package sits under a vendor prefix (e.g. com.squareup.cash,
        # com.google.android.apps.*) keeps its own source files in the scan
        # instead of being excluded as a bundled SDK (a confident-NEITHER over the
        # app's own unscanned code). Matches the DEX scan and report attribution.
        app_package=ingest_result.evidence["package"]["package_name"],
    )
    # L-M8: the pure scan returns StaticEvidence, but _wrap_stage's generic
    # wrapper only surfaces status (evidence={}) - so the OSError/unreadable-file
    # slice was dropped at this boundary and never round-tripped into the SQLite
    # run row (stage_results_json). It only ever appeared on console/report/in-
    # memory. Enrich the stage evidence so a reviewer re-querying a past run sees
    # exactly which candidate files the scan could not read (principle 3).
    # Guard: _wrap_stage returns static_evidence=None when the scan itself raised
    # (status="failed"), so enrich only on success - otherwise the real error is
    # masked by a None deref instead of halting loudly (principle 3).
    if static_evidence is not None:
        scan_stage.evidence["unreadable_file_count"] = static_evidence.unreadable_file_count
        scan_stage.evidence["unreadable_files"] = list(static_evidence.unreadable_files)
        scan_stage.evidence["scanned_file_count"] = static_evidence.scanned_file_count
    stage_results.append(scan_stage)
    _print_stage(scan_stage)
    if scan_stage.status == "failed":
        _halt(stage_results)

    # androguard (the FIRST static evidence source in the cascade): read the raw
    # DEX constant pools and match app-owned strings against the SAME signature
    # corpus, then merge only newly-matched signatures. This closes the
    # "jadx/apktool under-decompile" hole - a string_literal signature source
    # decompilation dropped can still be recovered from the raw DEX. Per-signature
    # dedup in _merge_dex_evidence keeps it non-duplicative with the java/smali
    # scan. An absent/unreadable androguard degrades to a note, not a halt: it is
    # an enhancement source and the pipeline still has real decompiled roots.
    # Starts False and is only ever set by a scan that RAN: an androguard that
    # never ran (absent/unreadable, the except below) is not an attribution
    # failure - jadx remains the primary java evidence and java_coverage already
    # reflects its completeness, so degrading java there would over-report on
    # every environment without androguard installed.
    _dex_attribution_degraded = False
    try:
        dex_scan = scan_dex_strings(
            apk,
            root_signatures + ssl_signatures,
            cache_dir=Path("outputs/cache/dexstrings"),
        )
        _dex_attribution_degraded = bool(dex_scan["attribution_degraded"])
        merged = _merge_dex_evidence(static_evidence, dex_scan["evidence"],
                                     root_signatures + ssl_signatures, dex_scan["app_package"])
        if merged:
            console.print(
                f"[dim]androguard: {merged} new DEX-level signature(s) "
                f"from {dex_scan['string_count']} app-owned string(s)[/dim]"
            )
        else:
            console.print(
                f"[dim]androguard: {dex_scan['string_count']} app-owned DEX string(s), no new matches[/dim]"
            )
        if _dex_attribution_degraded:
            # Visible, not silent: the operator must be able to see that these
            # DEX matches are whole-pool (possibly vendor-owned) and that the
            # java surface is bounded as a result.
            console.print(
                "[yellow]androguard: app-owned attribution unavailable - matched the "
                "WHOLE DEX string pool, so matches may include vendor-library strings "
                "and app-owned strings may have been missed; java surface bounded to "
                "partial (unknown, not absent).[/yellow]"
            )
    except BrokenSignatureError as exc:
        # A signature whose matcher raised on EVERY DEX string it was evaluated
        # against is a broken detection RULE, not androguard being unavailable: it
        # contributed no evidence, and a swallowed-continue would let that read as a
        # clean negative (principle 3/NFR-1). Halt loudly and record it as a failed
        # stage - the same treatment a malformed regex gets at load time (RESID-4B) -
        # so the defect is fixed at source, never worked around. Kept ABOVE the
        # tolerant handler below, which would otherwise absorb this RuntimeError
        # subclass into the benign "androguard unavailable" skip and hide the defect.
        broken_stage = StageResult(
            stage="dex_string_scan",
            status="failed",
            evidence={"broken_signatures": str(exc)},
            error=str(exc),
        )
        stage_results.append(broken_stage)
        _print_stage(broken_stage)
        _halt(stage_results)
    except Exception as exc:  # androguard absent / unreadable - enhancement, not a halt
        console.print(f"[yellow]androguard skipped: {exc}[/yellow]")

    # RESID-5C: pass the apktool output root so parse_manifest can resolve the
    # declared NSC reference against res/xml/ and say whether the file exists.
    # Prefer the decoded apktool manifest when present (full NSC resolution
    # against the decoded res/ tree); when apktool produced none, fall back to
    # reading the BINARY manifest straight from the APK via pyaxmlparser
    # (parse_manifest_apk), so a manifest is never lost to an apktool failure
    # (limitation 9). The binary path still honors apktool_output as the resource
    # root when present; without it, a declared NSC degrades the manifest surface
    # to partial rather than certifying clean (ADR-0006).
    #
    # APKTOOL-XML1: the predicate is "is this file DECODED XML", not "does it
    # exist". An apktool run that could not decode the resource table - notably
    # the `apktool d --no-res` smali fallback in decompile.py, which logs
    # "Copying raw manifest" - still WRITES apktool/AndroidManifest.xml, but the
    # bytes are the APK's original BINARY AXML. `exists()` was therefore true for
    # a binary manifest, `parse_manifest` (ET.parse) raised ParseError ("not
    # well-formed (invalid token): line 1, column 0"), and the manifest stage
    # FAILED even though parse_manifest_apk reads that exact APK successfully
    # (it resolves the NSC resource-ID itself and honors apktool_output as the
    # resource root, so the fallback loses no capability). The bug was invisible
    # to the unit suite because its e2e fixture writes a well-formed "<manifest/>".
    # `is_decoded_manifest` sniffs the leading bytes so the choice is made on
    # content, and the try/except is the safety net for a manifest that looks
    # like XML but still will not parse - either way we degrade to the binary
    # reader rather than failing a stage we can satisfy.
    if is_decoded_manifest(manifest_path):
        _manifest_callable, _manifest_args = parse_manifest, (manifest_path, apktool_output)
        manifest_stage, manifest_info = _wrap_stage(
            "manifest_parse", _manifest_callable, *_manifest_args
        )
        if manifest_stage.status == "failed":
            # A file that sniffed as XML but did not parse (truncated decode,
            # mixed encoding). Re-read from the APK rather than losing the whole
            # manifest signal; the retry's own failure is what gets reported.
            _manifest_callable = parse_manifest_apk
            _manifest_args = (apk, apktool_output)
            manifest_stage, manifest_info = _wrap_stage(
                "manifest_parse", _manifest_callable, *_manifest_args
            )
    else:
        _manifest_callable, _manifest_args = parse_manifest_apk, (apk, apktool_output)
        manifest_stage, manifest_info = _wrap_stage(
            "manifest_parse", _manifest_callable, *_manifest_args
        )
    stage_results.append(manifest_stage)
    _print_stage(manifest_stage)
    # 5-1: a successful manifest parse now feeds the SSL evidence (NSC presence)
    # before classification and surfaces in the report - so a failed parse is a
    # real, visible absence, not a silent no-op. Still non-fatal to classification
    # (signatures already scanned the raw manifest text as part of static_scan's
    # apktool_output pass) - log it but continue without the manifest signal.
    if manifest_stage.status == "success":
        _apply_manifest_ssl_signal(static_evidence, manifest_info)

    # --- native .so analysis (ADR-0008 items 4-6) ---
    # Deterministic, additive: native evidence feeds the same confidence model as
    # Java (it is merged into static_evidence below before classify), and it
    # emits per-ABI degradation for the coverage contract (G10/G-B/G6). Fails
    # loudly if the native toolchain (readelf/nm/strings/unzip) is missing - it
    # never silently no-ops (principle 3).
    native_evidence = None
    # Boundary-3 static half: feed the decompiled .java sources into the native
    # scan so it can reconcile every declared `native` method against the libs
    # (jnibridge). Only when jadx produced sources; otherwise reconciliation is
    # skipped and coverage is untouched.
    # DYNCOV1: scan the FULL decompiled-Java corpus the completeness metric counts
    # as covered - jadx_output AND the CFR fallback recovery (cfr_output) - not
    # jadx alone. `_jadx_covered` credits CFR recovery toward a `complete`
    # completeness label (decompile.py), so a `DexClassLoader`/remote `loadUrl` in
    # a class jadx FAILED on but CFR RECOVERED would otherwise be missed by the
    # dynload/webview scans below, leaving java `fully_analyzed`: a confident
    # negative over code the metric already counted as read (ADR-0006). Purely
    # additive - it can only degrade java to partial, never sharpen a negative.
    native_java_files = (
        _full_java_corpus([jadx_output, cfr_output]) if jadx_output else []
    )
    # Coverage-limited: dynamic code loading (DexClassLoader/PathClassLoader/
    # Class.forName/DexFile/loadDex) releases and loads a payload DEX at runtime -
    # code we cannot see statically. Detect the loading call sites over the same
    # corpus; when present we degrade the java surface to partial so a java
    # NEITHER is never a confident negative over the dynamically-hidden payload
    # (ADR-0006). Mirrors the boundary-4 unaccounted-loads handling, java surface.
    dynamic_loads = (
        find_dynamic_loading(
            native_java_files,
            # DYNLOAD-VENDOR1: same app_package the source and DEX scans get, so
            # the three share one third-party definition (Bug-B parity).
            app_package=ingest_result.evidence["package"]["package_name"],
        )
        if native_java_files else []
    )
    # Coverage-limited: WebView JS bridge (gap A2). A WebView that loads JS via
    # addJavascriptInterface / evaluateJavascript / loadUrl("javascript:") /
    # loadDataWithBaseURL may run root/SSL checks in JS. Local HTML/JS containers
    # are now scannable (.html/.htm in SCANNED_SUFFIXES), so the bridge call sites
    # are labelled below without degrading coverage; only a *remote* http(s) JS
    # source is JS we cannot read statically and forces the java surface to
    # partial (handled in the apply_dynamic_loading_java fold below, ADR-0006).
    webview_sites, webview_has_remote_js = (
        find_webview_js(
            native_java_files,
            # WEBVIEW-VENDOR1: same app_package find_dynamic_loading gets, so the
            # two java coverage-limited scans share one third-party definition. A
            # bundled WebView SDK's remote-JS load is the vendor's content, not the
            # app hiding its own checks - counting it degraded java to partial for
            # every app bundling such an SDK (the DYNLOAD-VENDOR1 false-partial).
            app_package=ingest_result.evidence["package"]["package_name"],
        )
        if native_java_files else ([], False)
    )
    native_stage, native_evidence = _wrap_stage(
        "native_scan", _run_native_scan, apk, ANALYSIS_ROOT, apk_hash, native_java_files
    )
    stage_results.append(native_stage)
    _print_stage(native_stage)
    if native_stage.status == "failed":
        _halt(stage_results)
    if native_evidence is not None:
        _merge_native_evidence(static_evidence, native_evidence)

    # Real-world gap A1 + HERM2: Hermes/binary JS bundles (React Native release
    # assets/index.android.bundle, .hbc) are binary, so the text engine skips them
    # (signatures._is_binary NUL-probe) and jadx only reads DEX. Recover each
    # bundle's string-constant table and match root/SSL idioms against it, across
    # the SAME roots the text scan walks (static_roots) - a bundle under res/raw/
    # is just as unread by the text engine as one under assets/. The recovered
    # constants are real deterministic evidence, but we see constants, not full JS
    # control flow - so a binary bundle also degrades the `js` surface to partial
    # below (ADR-0006). Plain-text JS needs no work here: the signature engine
    # already scans `.js/.jsbundle/.bundle` (is_binary_bundle gates it out).
    has_binary_bundle, js_matches = _scan_binary_bundles(static_roots)
    if js_matches:
        _merge_js_evidence(static_evidence, js_matches)

    # --- obfuscation level (ADR-0008 item 2) + coverage (items 9-11) ---
    # Pure deterministic signals. obfuscation_level drives the Java surface's
    # coverage (heavy -> partial, N1/G-C); native degradation + manifest parse
    # drive native/manifest coverage. The per-surface map is persisted per run
    # and feeds the report + calibration exclusion (G1/F2/G-A).
    obfuscation_stage, obfuscation_level = _wrap_stage(
        "obfuscation", _obfuscation_level_over_corpus, jadx_output, cfr_output,
        ingest_result.evidence["package"]["package_name"],
    )
    stage_results.append(obfuscation_stage)
    _print_stage(obfuscation_stage)
    if obfuscation_stage.status == "failed":
        _halt(stage_results)

    # --- packer / protector identification (Gap-2) + coverage ---
    # A detected packer forces the Java/DEX surface to partial - the real DEX is
    # hidden behind a loader, so a packed app can never certify a confident
    # static negative over code that wasn't actually read (ADR-0006). The
    # detector is deterministic and in-stack (native loader libs, stub
    # Application class, encrypted-DEX assets), versioned in
    # config/signatures/packers.yaml. Absence of a match is NOT proof of absence
    # of packing - an unlisted packer is still bounded by the same partial rule
    # whenever the DEX is not fully readable. androguard absence/unreadability
    # degrades to a note, not a halt (enhancement source, like the androguard
    # DEX scan).
    packer_signatures = load_packer_signatures(SIGNATURE_CORPUS["packers"])
    packer_stage, packer_findings = _wrap_stage(
        "packers", detect_packers, apk, packer_signatures
    )
    stage_results.append(packer_stage)
    _print_stage(packer_stage)
    if packer_stage.status == "failed":
        console.print(f"[yellow]packer detection degraded (non-fatal): {packer_stage.error}[/yellow]")
        packed = False
        # PACK1: a FAILED packer scan (androguard could not read the APK - the
        # very failure the design anticipates for adversarial/packed targets)
        # leaves packing un-ruled-out. Do not halt (enhancement source), but
        # java_coverage must NOT then certify a confident negative: a cleanly-
        # packed app decompiles only its loader stub to exit-0 `complete`, so
        # `packed` is the sole gate. packer_scanned=False forces java->partial
        # WITHOUT fabricating a packed=True detection (ADR-0006, safe direction).
        packer_scanned = False
    else:
        packed = bool(packer_findings)
        packer_scanned = True
        for pf in packer_findings:
            console.print(
                f"[yellow]packer: {pf.packer} ({pf.packer_id}) -> {', '.join(pf.signals)}[/yellow]"
            )

    # --- string-deobfuscation (Gap-3) ---
    # The obfuscation stage detects *that* strings are hidden and forces the Java
    # surface to partial; this recovers the flat pure-numeric R8 decryptor back to
    # plaintext and matches it against the SAME signature corpus - so a hidden
    # `new String(int[])` holding "su" can fire root evidence the plain-text scan
    # can't see. Deterministic and additive: every match is a real literal decoded
    # from the binary (ADR-0001), and _merge_dex_evidence dedups per-signature so
    # a signature the java/smali/dex scan already fired is never double-counted.
    # Honest boundary (ADR-0006): only flat pure-numeric arrays are recoverable
    # pure-Python; algorithmic/expression-built decryptors are a full DEX
    # deobfuscator's domain, so that hidden-string surface stays `partial` -
    # recovery is additive, never an exhaustive-cleanup claim. Recovery degrades
    # to a note on any read error (enhancement source, like the androguard scan).
    if jadx_output:
        # DYNCOV1 (string-recovery half): recover hidden strings over the FULL
        # corpus the completeness metric counts as covered (jadx + CFR recovery),
        # not jadx alone - an R8-encrypted literal in a class jadx failed on but CFR
        # recovered would otherwise stay hidden from the signature engine. Purely
        # additive: more recovered strings can only ADD a match, never remove one.
        java_files = _full_java_corpus([jadx_output, cfr_output])
        try:
            recovered = recover_hidden_strings(java_files)
        except Exception as exc:
            recovered = []
            console.print(f"[yellow]string-recovery skipped: {exc}[/yellow]")
        if recovered:
            recovered_evidence = match_recovered_strings(
                recovered, root_signatures + ssl_signatures
            )
            recovered_added = _merge_dex_evidence(
                static_evidence, recovered_evidence, root_signatures + ssl_signatures, None
            )
            console.print(
                f"[dim]string-recovery: {len(recovered)} hidden string(s) recovered, "
                f"{recovered_added} new signature(s)[/dim]"
            )

    # L-M7: capture the decompile completeness once so both per_surface_coverage
    # and the console CAUTION below read the same value. Previously it was only
    # consumed by the coverage map (and the report), so the console run showed
    # "OK decompile -> Decision: NEITHER" with no hint the decompile was partial
    # (Finding L) - a NEITHER there read as a confident negative.
    decompile_completeness = (
        decompile_result.evidence.get("decompile_completeness", "unknown")
        if decompile_result.status == "success" else "unknown"
    )
    jadx_file_count = decompile_result.evidence.get("jadx_file_count")
    jadx_exit_code = decompile_result.evidence.get("jadx_exit_code")
    coverage_map = per_surface_coverage(
        decompile_completeness=decompile_completeness,
        obfuscation_level=obfuscation_level,
        abi_coverage=(
            native_evidence.abi_coverage
            if native_evidence is not None else {}
        ),
        # CALIB-NATIVE-VACUOUS: only the native scan can prove the APK ships zero
        # .so. A missing native_evidence (stage did not run) leaves this False, so
        # its empty abi_coverage still reads as unscannable.
        native_libs_absent=bool(
            native_evidence is not None and native_evidence.native_libs_absent
        ),
        manifest_parsed=manifest_stage.status == "success",
        # H3: resources_complete comes from the real read (a declared NSC that's
        # missing/unparseable degrades the manifest surface to partial), not a
        # tautology of manifest_parsed - which could never fire the partial branch.
        resources_complete=(
            manifest_info.resources_complete if manifest_stage.status == "success" else False
        ),
        # Gap-2: a detected packer forces the Java surface to partial - the real
        # DEX is hidden, so a confident static negative is impossible.
        packed=packed,
        # PACK1: a failed packer scan (packing never ruled out) forces java
        # partial the same way, without claiming a packer was detected.
        packer_scanned=packer_scanned,
    )
    # Boundary-3 static half: a declared `native` method that no extracted lib
    # statically binds and no JNI_OnLoad can dynamically register is `unresolved`
    # - a genuine unexamined surface. It downgrades the native surface to partial
    # so a native NEITHER is never a confident negative over it (ADR-0006). The
    # binding map itself flows to the report so the analyst sees which methods
    # only a runtime (Frida) view can confirm.
    # Boundary-3 static half: a declared `native` method that no extracted lib
    # statically binds and no JNI_OnLoad can dynamically register is `unresolved`
    # - a genuine unexamined surface. Boundary-4 adds the sibling case: an
    # explicit System.load/loadLibrary target whose .so was not extracted+analyzed
    # (loaded from an absolute path, or loadLibrary("foo") with no libfoo.so
    # bundled) is likewise a loaded-but-unexamined native surface. Either one
    # downgrades the native surface to partial so a native NEITHER is never a
    # confident negative over it (ADR-0006). An extraction gap is the third and
    # quietest cause: a member that shipped but did not land is invisible to both
    # of the above, because unaccounted_loads is computed against the EXTRACTED
    # libs. Additive: never touches confidence, never invents evidence.
    _native_unexamined = (
        has_unresolved(native_evidence.jni_bindings)
        if native_evidence is not None else False
    ) or bool(
        native_evidence is not None and native_evidence.unaccounted_loads
    ) or bool(
        native_evidence is not None and native_evidence.extraction_failures
    )
    coverage_map = apply_unresolved_native(coverage_map, _native_unexamined)
    # Coverage-limited: dynamic class loading present -> the payload DEX is
    # invisible statically, so the java surface degrades to partial. Same
    # additive, downgrade-only semantics as the native case above (ADR-0006).
    # Coverage-limited: WebView remote JS (gap A2) is folded into the same java
    # downgrade - a remote http(s) JS source (loadUrl/loadDataWithBaseURL with an
    # external URL) is JS we cannot read statically, semantically the same
    # unexamined-java case as dynamic class loading. apply_dynamic_loading_java is
    # idempotent (fully_analyzed -> partial only), so combining is safe.
    _java_dynamic_unexamined = bool(dynamic_loads) or bool(webview_has_remote_js)
    coverage_map = apply_dynamic_loading_java(coverage_map, _java_dynamic_unexamined)
    # Coverage-limited: the DEX string scan lost app-owned attribution and matched
    # the WHOLE constant pool (no app-owned namespace derivable, or the xref walk
    # raised). Those matches may include vendor strings and the same broken view
    # may have missed app-owned ones, so the java surface is not the fully-
    # attributed one `fully_analyzed` claims - bound it to partial so a java
    # NEITHER over it reads as "unknown, not absent" (ADR-0006). Same additive,
    # downgrade-only semantics as the cases above; the evidence found is kept.
    coverage_map = apply_attribution_degraded_java(coverage_map, _dex_attribution_degraded)
    # UNREAD1: the scan enumerated candidate files it could not READ (OSError).
    # Those bytes were never matched against any signature, so the java surface is
    # not the complete one `fully_analyzed` claims. This CAUTION already reached the
    # console (below) and the report, but never the coverage map - so a NEITHER over
    # unread files could still certify as a confident negative, and the calibration
    # layer (which reads the map, not the CAUTION) would count it as a Tier-2 true
    # negative. Same additive, downgrade-only semantics as the cases above.
    coverage_map = apply_unreadable_files_java(
        coverage_map, static_evidence.unreadable_file_count
    )
    # Real-world gap A1: a Hermes/binary JS bundle present degrades the `js` surface
    # to partial - we recover its string constants, not full JS control flow, so a
    # js/root/ssl NEITHER is never a confident negative over bundle-hidden logic
    # (ADR-0006). Always set (fully_analyzed when no binary bundle), because `js` is
    # now a governing surface in coverage.py.
    # ASSET-DROP1: an asset surface that was never extracted makes has_binary_bundle
    # meaningless (a bundle in the APK is invisible to every scan root), so `js`
    # must degrade to partial rather than certify a confident negative over it.
    # Default False, not True. An absent field means this surface's evidence was
    # never recorded on the path that produced it, and "we did not record it" has
    # to degrade the surface - never license `js: fully_analyzed` over assets
    # nobody extracted. The sidecar schema guard in decompile.py is what stops a
    # stale cache from creating that absence; this default is the second,
    # consumer-side guard on the same failure.
    _asset_surface_extracted = bool(
        decompile_result.evidence.get("asset_surface_extracted", False)
    )
    coverage_map["js"] = js_surface_coverage(has_binary_bundle, _asset_surface_extracted)
    # Flutter/Dart-AOT: a release Flutter app compiles its Dart logic (the real
    # root/SSL detection surface) into a native snapshot blob - libapp.so /
    # dart.so - that native symbol/string/Ghidra tooling cannot analyze like a
    # normal .so (no Java_* exports, no readable symbols). Its presence forces
    # the native surface to partial so a native NEITHER over a Flutter app is
    # never a confident negative (ADR-0006); the snapshot names flow to the
    # report so the analyst sees exactly which lib bounds the verdict.
    dart_aot_libs = (
        sorted({lib.name for lib in native_evidence.libraries if is_dart_aot_lib(lib.name)})
        if native_evidence is not None else []
    )
    coverage_map = dart_aot_coverage(coverage_map, bool(dart_aot_libs))

    # --- decision engine (per-category thresholds, 4-3) ---
    root_threshold, ssl_threshold = _load_thresholds()
    classify_stage, classification = _wrap_stage(
        "decision_engine", classify, static_evidence, root_threshold, ssl_threshold
    )
    stage_results.append(classify_stage)
    _print_stage(classify_stage)
    if classify_stage.status == "failed":
        _halt(stage_results)

    # L-M4/L-M3: bind each verdict to its governing-surface coverage. A category
    # whose surface isn't fully analyzed gets coverage_limited=True on its verdict
    # and is recorded in classification.unknown_uncovered - the machine-readable
    # "unknown, not absent" marker - so a NEITHER over an uncovered surface can't
    # be read as a confident negative by any consumer of the persisted
    # classification_json (NFR-7). The coverage_map is computed above (line 519).
    classification = apply_coverage_bound(classification, coverage_map)
    # Boundary-1: surface UNATTRIBUTED detection indicators (detection-shaped
    # code that matched no signature) as coverage-limited too - a fully-analyzed
    # surface can still hide a technique the corpus doesn't encode (ADR-0001),
    # and such a NEITHER must read as "unknown, not absent", never a confident
    # clean (ADR-0006). Additive: only ever marks coverage_limited, never touches
    # confidence, never removes what apply_coverage_bound already flagged.
    classification = apply_unattributed_indicators(
        classification, static_evidence.unattributed_indicators
    )

    # --force-dynamic (ADR-0005 operator override): compute the action that will
    # DRIVE bypass synthesis + deployment. It differs from classification.action
    # ONLY when the operator forces a bypass on a NEITHER verdict (-> Action.BOTH);
    # the static verdict is never mutated, so every static / confidence / calibration
    # / correlation consumer below keeps reading classification.action unchanged.
    # Gated on `not skip_dynamic` so --force-dynamic is a true no-op alongside
    # --skip-dynamic (the flag's documented contract).
    dynamic_action = _effective_dynamic_action(
        classification.action, force_dynamic and not skip_dynamic
    )
    forced_dynamic = dynamic_action != classification.action

    console.print(f"[bold]Decision: {classification.action.value}[/bold]")
    # Mirror report/generator.py's Decision-line caveat live: when a governing
    # surface was not fully analyzed (coverage_limited) or detection-shaped code
    # matched no signature (unattributed indicators), unknown_uncovered is
    # non-empty and a NEITHER is "unknown, not absent" - a bare "Decision:
    # NEITHER" on the console would read as a confident negative (ADR-0006).
    # Same degradation-class as the unreadable-files / partial-decompile CAUTIONs
    # below; the report carries it, the console must too.
    if classification.unknown_uncovered:
        # UNCOV-CAUSE1: name WHICH mechanism flagged each category. "surface not
        # fully analyzed, or code matched no signature" left the operator unable
        # to act - the two have opposite remediations (analyze more of the app vs.
        # author a signature) and a category can carry both at once.
        causes = classification.unknown_uncovered_causes
        _CAUSE_TEXT = {
            "incomplete_coverage": "governing surface not fully analyzed",
            "unattributed_indicator": "detection-shaped code matched no signature",
        }
        parts = []
        for cat in classification.unknown_uncovered:
            why = [_CAUSE_TEXT.get(c, c) for c in causes.get(cat, [])]
            # No recorded cause means a row/path predating UNCOV-CAUSE1, where
            # either mechanism could have fired - keep the honest or-clause rather
            # than silently dropping the reason or inventing a specific one.
            if not why:
                why = ["governing surface not fully analyzed, or detection-shaped "
                       "code matched no signature"]
            parts.append(f"{cat} ({', '.join(why)})")
        detail = "; ".join(parts)
        console.print(
            f"[bold yellow]Coverage-limited (unknown, not absent): "
            f"{detail} - a NEITHER here is "
            "a lower bound, not a confident negative; see "
            "Limitations.[/bold yellow]"
        )
    # Finding J: surface the scan degradation live, not just in the rendered
    # report - a reviewer watching the console run (cli_output.txt) must see
    # that the corpus was degraded AND which file failed, not be blindsided by
    # a CAUTION that only appears in the .md. Mirrors report/generator.py.
    if classification.unreadable_files:
        console.print(
            f"[bold red]CAUTION: {len(classification.unreadable_files)} candidate file(s) "
            f"could not be read (OSError): {', '.join(classification.unreadable_files)} - "
            "treat any NEITHER/Inconclusive verdict as degraded, not a full-scan clean.[/bold red]"
        )
    # L-M7 + completeness parity: mirror the report's decompile-completeness caveat
    # live for BOTH lower-bound states (partial AND unknown) via
    # _completeness_console_caveat, so a reviewer watching cli_output.txt sees the same
    # lower-bound hint the .md carries and the specific cause is named for `unknown`
    # too (previously only `partial` was mirrored - see the helper's docstring).
    _completeness_caveat = _completeness_console_caveat(
        decompile_completeness, jadx_file_count, jadx_exit_code
    )
    if _completeness_caveat:
        console.print(_completeness_caveat)
    # L-M4: surface the coverage bound explicitly in the Decision block - the
    # per-surface map plus, per category, whether a NEITHER would be a confident
    # negative or a coverage-bound lower bound. L-M7's CAUTION above only covers
    # java=partial; this also catches native=unscannable / manifest=partial,
    # which per G-A bind the verdict even when Java is complete (most real apps
    # ship no scannable .so, so native=unscannable alone already blocks a
    # confident root/ssl NEITHER).
    console.print(f"[dim]{coverage_bound_line(coverage_map)}[/dim]")
    # L-M4: mirror the report's per-category confidence lines on the console so
    # the numeric confidence a reviewer watches is never read as a bare point
    # estimate on a coverage-limited category. confidence_bound appends the
    # "(upper bound: ...)" annotation only when that verdict is coverage-limited;
    # a fully-analyzed category prints the plain number, identical to the report.
    # LABEL1: the label comes from verdict_label, the same helper the report uses,
    # so the console can no longer print "Inconclusive" on a verdict the coverage
    # line two rows up calls a confident negative (and that calibration counts as a
    # certified true negative). It splits on verdict.coverage_limited - the same
    # field confidence_bound gates its "(upper bound: ...)" annotation on - so both
    # halves of each line below always agree.
    console.print(
        f"  Root: {confidence_bound('root', classification.root, coverage_map)} -> "
        f"{verdict_label('root', classification.root, coverage_map)}"
    )
    console.print(
        f"  SSL : {confidence_bound('ssl', classification.ssl, coverage_map)} -> "
        f"{verdict_label('ssl', classification.ssl, coverage_map)}"
    )

    # --- machine-readable ownership caveat (report-only attribution was the gap) ---
    # Attach the root attribution to the classification object itself so it
    # persists to classification_json (save_run asdicts the ClassificationResult)
    # and the report reads it - an automated consumer of a bundled-SDK-only
    # ROOT_ONLY is told it is NOT the app's own logic, instead of being left to
    # read a benign app as root-positive with no third-party indicator.
    package_name = ingest_result.evidence["package"]["package_name"]
    # Gated on detected (gate_all_third_party): the all_third_party qualifier
    # annotates a DETECTED verdict only (ADR-0010). A non-detected run must not
    # carry it in classification_json/report - the denormalized column was gated
    # but the JSON and report surfaces were not, so all three must agree here.
    classification.root_attribution = gate_all_third_party(
        attribute_root_evidence(package_name, classification.root.evidence),
        classification.root.detected,
    )
    # SSL attribution is the same attribution question: most real SSL pinning
    # is okhttp3's CertificatePinner inside a bundled SDK, so an SSL verdict
    # built entirely from bundled network libraries (okhttp3/com.squareup/RN)
    # is not the app's own pinning logic. The vendor taxonomy is shared with
    # root - attribute_root_evidence is generic over evidence (its is_known_
    # third_party logic does not need app_package). Same machine caveat, same
    # detected gate.
    classification.ssl_attribution = gate_all_third_party(
        attribute_root_evidence(package_name, classification.ssl.evidence),
        classification.ssl.detected,
    )

    # FR-3.3: log the classification + full evidence trail BEFORE any dynamic
    # stage begins. The verdict is otherwise only serialized in _finalize_run,
    # which runs after dynamic - so a frida-spawn crash or a mid-run _halt would
    # lose the deterministic decision. Flushing it to the immutable, hash-chained
    # audit log here (the same partial-evidence-preservation the project applies
    # to ingest, LIM-1/ADR-0005) guarantees the decision survives a downstream
    # crash. Fails loudly (NFR-1) if the flush can't be written.
    classification_audit = asdict(classification)
    classification_audit["action"] = classification.action.value
    classification_flush = record_classification(
        audit_log_path=AUDIT_LOG_PATH,
        run_id=run_id,
        apk_hash=apk_hash,
        justification=justification,
        operator=operator,
        git_commit=git_commit,
        action=classification.action.value,
        classification=classification_audit,
    )
    stage_results.append(classification_flush)
    _print_stage(classification_flush)
    if classification_flush.status == "failed":
        _halt(stage_results)

    # --- dynamic analysis ---
    if forced_dynamic:
        console.print(
            "[bold yellow]OPERATOR-FORCED DYNAMIC (--force-dynamic): static verdict "
            f"{classification.action.value} is unchanged; deploying the universal "
            "root+SSL bypass at operator direction. The result is gated on real "
            "observed behaviour (dynamically_confirmed only on a real probe-hit / "
            "pin-check+handshake), never on static detection.[/bold yellow]"
        )
    verification: Optional[VerificationResult] = None
    correlation_result = None
    # Honest reason for the report's "Not evaluated" correlation line when
    # dynamic RAN but no static/dynamic correlation was produced - distinct
    # from "dynamic stage skipped" (dynamic never ran). A dynamic run that used
    # the technology-level hooks-engaged tier, or whose verification could not
    # be captured, is NOT a skipped stage and must not be reported as one.
    correlation_skip_reason = None
    verification = None
    # GAP-2: a failed dynamic stage used to _halt and discard the already-correct
    # static analysis + report (a frida-server connection reset lost the static
    # report entirely). Dynamic is a separate concern from the deterministic
    # static core, so a dynamic failure now still produces the static report with
    # correlation=not_attempted and the failure surfaced in the report + a loud
    # non-zero exit after the report is written (see _finalize_run below).
    dynamic_failed = False
    # L-M2: synthesize a deterministic bypass from the techniques the static
    # engine detected, so a real app (no hand-authored script) still gets a real
    # dynamic attempt. Generation is PURE - it needs no device, only deployment
    # does - so synthesize it for EVERY run and attach the generated script to
    # the record. This makes the synthesizer provably exercised against a real
    # classification (never "only unit-verified") and keeps the generated script
    # in the run evidence even when no device can deploy it.
    synth = synthesize(classification, dynamic_action)
    # The dynamic stage is the longest in the pipeline (install, launch, hook, run),
    # so a death inside it must not be recorded as the classification it followed.
    _begin_stage("dynamic")
    if skip_dynamic:
        dynamic_stage = StageResult(
            stage="dynamic", status="skipped",
            evidence={
                "reason": "--skip-dynamic passed",
                "synthesized": {"source": synth.source, "applied_hooks": synth.applied_hooks},
            },
        )
        stage_results.append(dynamic_stage)
        _print_stage(dynamic_stage)
    else:
        # GAP-2 (setup path): discover_device and install_apk are the EARLIEST
        # dynamic steps and the most likely to fail on a box with no connected
        # device/emulator - discover_device raises RuntimeError when `adb devices`
        # is empty, or CalledProcessError when the adb daemon itself is unreachable
        # (e.g. the WSL2 adb socket failure). install_apk runs `adb install` with
        # check=True, so an incompatible APK (ABI/signature/minSdk/storage) raises
        # CalledProcessError. Both were UNGUARDED: either one crashed the entire
        # CLI with a raw traceback and DISCARDED the already-complete static report
        # - the exact report-losing failure GAP-2 fixed for the install-verification
        # and run_dynamic_stage paths, still live on the two steps that run before
        # them (and the first thing hit on any environment without a device). Wrap
        # them - and verify_installed, which shells out to `pm list packages` and
        # can also raise on a dying device - in the same pattern: record a failed
        # dynamic stage, keep the static report, surface loudly, exit non-zero.
        # serial is reset to None so no downstream stage (logcat, traffic capture)
        # touches a half-open device.
        serial = None
        install_ok = False
        install_result: dict = {}
        dynamic_setup_error = ""
        try:
            serial = device.discover_device(device_serial)
            # FR-4.2: install_apk's check=True only confirms adb accepted the
            # install command - not that the package actually registered. A silent
            # install failure (signature mismatch, insufficient storage, device
            # quirk) must fail loudly here via pm list packages, not sail into the
            # dynamic stage where frida can't attach to a non-installed package and
            # fails confusingly downstream (NFR-1). verify_installed was dead code;
            # this is where it belongs.
            # install_apk reports what the install had to do to succeed. It
            # recovers from exactly one case - a differently-signed copy of the
            # same package already on the device, which adb cannot replace and
            # which would otherwise make every build after the first of a given
            # target permanently unanalyzable - and it says so rather than doing
            # it silently. Carried onto the dynamic stage's evidence below.
            install_result = device.install_apk(serial, apk, package_name) or {}
            install_ok = device.verify_installed(serial, package_name)
        except Exception as exc:
            dynamic_stage = StageResult(
                stage="dynamic", status="failed",
                evidence={
                    "reason": (
                        "dynamic setup failed before the app could run - no usable "
                        "device/emulator, or the APK could not be installed/verified "
                        "(pass --skip-dynamic to run static-only cleanly)"
                    ),
                    "synthesized": {"source": synth.source, "applied_hooks": synth.applied_hooks},
                },
                error=f"dynamic setup failed ({type(exc).__name__}): {exc}",
            )
            stage_results.append(dynamic_stage)
            _print_stage(dynamic_stage)
            dynamic_failed = True
            serial = None
            # Kept so the capture stage below can say WHY there is no device to
            # capture on. `serial is None` is reached by every setup failure -
            # no device/emulator, an install adb refused, an install that did not
            # register - and the capture stage used to name only the first of
            # them, so a refused install was reported as a missing emulator.
            dynamic_setup_error = str(exc)
        if serial is not None and not install_ok:
            # FR-4.2 / GAP-2: an arbitrary real-world app that fails to install
            # (ABI mismatch, signature, minSdk, storage) must NOT _halt and
            # discard the already-complete static analysis - exactly the report-
            # losing bug GAP-2 fixed for frida crashes, still present on the
            # install path. Record the failed dynamic stage and continue to the
            # static report, surfacing the failure loudly there and exiting
            # non-zero after the report is written. correlation stays None ->
            # "not attempted", never a fake pass.
            dynamic_stage = StageResult(
                stage="dynamic", status="failed",
                evidence={
                    "reason": (
                        f"install verification failed - package '{package_name}' "
                        "not found via pm list packages after install"
                    )
                },
                error=(
                    f"FR-4.2: APK install not verified - '{package_name}' missing "
                    "from pm list packages"
                ),
            )
            stage_results.append(dynamic_stage)
            _print_stage(dynamic_stage)
            dynamic_failed = True
        elif serial is not None:
            # Passed as synthesized to run_dynamic_stage, which only consumes it
            # when there's no target-specific script (unknown target / real app) -
            # hand-authored scripts for known targets take precedence. `synth` was
            # computed above, before the device gate, so it exists even when no
            # device deploys.
            try:
                dynamic_stage = frida_runner.run_dynamic_stage(
                    serial, package_name, dynamic_action, target=target_canonical,
                    synthesized={"source": synth.source, "applied_hooks": synth.applied_hooks},
                )
                if forced_dynamic:
                    # Record the override on the dynamic stage's OWN evidence so the
                    # report's operator-forced banner (generator._forced_dynamic)
                    # fires on the live run AND on any later regenerated report - it
                    # round-trips in stage_results_json, needing no schema change
                    # (ADR-0005 provenance: a NEITHER target that ran a bypass must
                    # say plainly why).
                    dynamic_stage.evidence = {
                        **(dynamic_stage.evidence or {}),
                        "forced_dynamic": True,
                        "effective_dynamic_action": dynamic_action.value,
                        "static_action": classification.action.value,
                    }
            except Exception as exc:
                # GAP-2 on an UNEXPECTED dynamic-stage exception: run_dynamic_stage
                # returns clean failed/skipped StageResults for its known failure
                # modes (timeout, no script, install), but a real app can still hit
                # an unmapped error (a new frida/device failure, a synthesized-script
                # quirk). Letting that propagate would discard the already-complete
                # static report - the same report-losing bug fixed for install. Record
                # it as a failed dynamic stage, continue to the static report, surface
                # the error loudly, and exit non-zero after the report is written.
                dynamic_stage = StageResult(
                    stage="dynamic", status="failed",
                    evidence={"reason": "unexpected dynamic-stage exception"},
                    error=f"dynamic stage raised unexpectedly: {exc}",
                )
            stage_results.append(dynamic_stage)
            _print_stage(dynamic_stage)
            if dynamic_stage.status == "failed":
                # GAP-2: produce the static report instead of discarding it. The
                # failure is already in stage_results (shown in the report) and is
                # surfaced loudly after the report is written. correlation stays None
                # -> reported as "not attempted", never a fake pass.
                dynamic_failed = True
        if install_result.get("recovered_from_signature_conflict"):
            # A device state change the operator did not ask for belongs on the
            # record, not only in the scrollback (ADR-0005): the stale
            # differently-signed copy of this package was removed so the install
            # could proceed, and adb's own refusal that triggered it is kept
            # beside it. Rides on the dynamic stage's evidence, so it round-trips
            # in stage_results_json and reaches any later regenerated report
            # without a schema change.
            dynamic_stage.evidence = {
                **(dynamic_stage.evidence or {}),
                "install_recovery": install_result,
            }
        if dynamic_stage.status == "success":
            try:
                device.clear_logcat(serial)
                logcat_output = device.capture_logcat(serial)
            except Exception as exc:
                # GAP-2 on a device/logcat failure after a successful dynamic
                # stage (adb disconnect, logcat buffer, device quirk): for a real
                # app this must not discard the already-complete static report.
                # Record a failed check, mark logcat unavailable, and continue to
                # the report - the run still exits non-zero after it is written.
                logcat_output = None
                logcat_capture_failed = True
                check_stage = StageResult(
                    stage="success-check", status="failed",
                    evidence={"reason": "logcat capture failed"},
                    error=f"logcat capture after dynamic stage raised: {exc}",
                )
                stage_results.append(check_stage)
                _print_stage(check_stage)
                dynamic_failed = True
            else:
                logcat_capture_failed = False
            frida_log = "\n".join(str(m) for m in dynamic_stage.evidence.get("frida_messages", []))
            # F: SCRIPTS_BY_TARGET_ACTION and SUCCESS_CHECKS must stay in sync.
            # run_dynamic_stage degrades gracefully for unknown targets (returns a
            # skipped StageResult), so reaching here with success means a script ran
            # but no success check is registered - fail loudly as a StageResult
            # (NFR-1), not a raw KeyError traceback.
            success_check = SUCCESS_CHECKS.get(target_canonical)
            if success_check is None:
                # A missing SuccessCheck is config-drift ONLY for a KNOWN target
                # (one with hand-authored bypass scripts in SCRIPTS_BY_TARGET_ACTION):
                # there the F invariant requires both dicts to hold it, and a missing
                # entry is a real defect to surface loudly. For an UNKNOWN target (a
                # real app not in SCRIPTS_BY_TARGET_ACTION, e.g. propertyguru), the
                # dynamic stage just ran the L-M2 *synthesized* bypass and there is no
                # target-specific success check to register - that is the normal,
                # expected case, not drift. Halting here would discard a complete,
                # correct static + dynamic run (GAP-2's lesson: never lose good static
                # work to a downstream stage). Degrade honestly instead: record a
                # skipped check and leave verification/correlation None, so the report
                # says "not verified / not attempted", never a fake pass.
                if target_canonical in frida_runner.SCRIPTS_BY_TARGET_ACTION:
                    check_stage = StageResult(
                        stage="success-check", status="failed",
                        evidence={"target": target},
                        error=(
                            f"no success check registered for target '{target}' - "
                            "SCRIPTS_BY_TARGET_ACTION and SUCCESS_CHECKS are out of sync"
                        ),
                    )
                    stage_results.append(check_stage)
                    _print_stage(check_stage)
                    _halt(stage_results)
                # Unknown real target (not in SCRIPTS_BY_TARGET_ACTION): the
                # synthesized bypass ran (L-M2). There is no target-specific
                # SuccessCheck, but each applied recipe hook emits a frida
                # send({hook: <id>}) checkpoint once attached - so prove which
                # technology-specific hooks ENGAGED in the live process. Honest,
                # deterministic, non-app-specific: this stage's status reflects
                # "machinery reached the app". The same check ALSO computes a
                # technology-level verification (root confirmed on a probeHit; ssl
                # on pin-check + handshake) that is reported separately in Dynamic
                # Verification - so an unknown app whose root check was genuinely
                # defeated IS reported as root_bypassed=True, never understated to
                # "not a bypass confirmation". Correlation is not attempted (no
                # target-specific success check). Never a fake pass (ADR-0006).
                tech_check = TechnologyHooksEngagedCheck()
                check_stage: StageResult | None = None
                try:
                    verification = tech_check.check(
                        dynamic_stage.evidence.get("frida_messages", []),
                        app_still_running=dynamic_stage.evidence.get("app_still_running"),
                        ui_liveness=dynamic_stage.evidence.get("ui_liveness"),
                    )
                except Exception as exc:
                    # The known-target arm below guards the identical call
                    # (success_check.check) because an unexpected exception out of
                    # a success check must never discard the already-complete
                    # static analysis (GAP-2). This arm is the same dynamic
                    # surface and was the one success check left unwrapped: a
                    # raise here escaped run() as a raw traceback, losing the
                    # report AND the audit completion record for a run whose
                    # static half and on-device bypass had both already finished.
                    # The check's own engine is defensive precisely because its
                    # inputs are device- and Frida-shaped, which is why the
                    # surrounding stages treat a raise from it as reachable. Same
                    # treatment, same reason: record the failure, keep the static
                    # report, exit non-zero after it is written.
                    dynamic_failed = True
                    verification = None
                    correlation_result = None
                    correlation_skip_reason = (
                        "technology hooks-engaged check raised an unexpected "
                        "exception - correlation not attempted"
                    )
                    check_stage = StageResult(
                        stage="success-check", status="failed",
                        evidence={"reason": "unexpected technology-check exception"},
                        error=(
                            "technology hooks-engaged check raised unexpectedly: "
                            f"{exc}"
                        ),
                    )
                if check_stage is None:
                    engaged = verification.evidence_lines.get("bypass hooks engaged", "none")
                    check_stage = StageResult(
                        stage="success-check",
                        status=(
                            "success"
                            if engaged != "none (no hook checkpoint observed)"
                            else "skipped"
                        ),
                        evidence={
                            "target": target,
                            "bypass_hooks_engaged": engaged,
                            "note": (
                                "no target-specific success-check script for this app; "
                                "this stage reports technology-level hooks-engaged. The "
                                "same check also promotes root/ssl from the app's own "
                                "observable behaviour, reported under Dynamic Verification"
                            ),
                        },
                    )
                    # Dynamic RAN here (technology hooks-engaged tier, real root/ssl
                    # evidence surfaced under Dynamic Verification) - it was not
                    # skipped. Correlation needs a TARGET-SPECIFIC verification to
                    # compare static findings against, and this check produces one:
                    # it promotes root/ssl from the app's OWN observable behaviour (a
                    # `probeHit` IS the app's root-check being answered-false), not
                    # merely from our hooks attaching to the process.
                    #
                    # So when it confirmed a category there IS dynamic evidence to
                    # correlate against, and correlation runs; when it confirmed
                    # nothing there is none, and the honest reason stands instead.
                    # Calling correlate() unconditionally would be worse than the
                    # skip: with nothing confirmed, its documented fall-through is
                    # "agreement by non-claim", which would report a confident static
                    # negative as AGREEING with a dynamic run that measured nothing.
                    # A confirmed category always populates a correlation list, so
                    # matches can never be fabricated on this path.
                    if verification.root_bypassed or verification.ssl_bypassed:
                        correlation_result = correlation_module.correlate(
                            classification, verification
                        )
                    else:
                        correlation_skip_reason = (
                            "dynamic used the technology-level hooks-engaged check (no "
                            "target-specific success check for this app); correlation "
                            "requires a target-specific verification"
                        )
                stage_results.append(check_stage)
                _print_stage(check_stage)
            else:
                if logcat_capture_failed:
                    # logcat was unavailable - the failed check stage was already
                    # recorded above; running the target-specific check on empty
                    # logcat would be misleading. Leave verification None (report
                    # says "not verified") and correlation not attempted - stated
                    # with the honest reason (dynamic ran; it was not skipped).
                    verification = None
                    correlation_result = None
                    correlation_skip_reason = (
                        "logcat capture failed - no verification to correlate against"
                    )
                else:
                    try:
                        verification = success_check.check(logcat_output, frida_log)
                        # Surface the post-bypass liveness + real-time UI
                        # evidence on EVERY target, not just unknown/technology
                        # ones - the target-specific check reports the bypass
                        # result, this injects the auditable liveness lines so
                        # a known target's report also states whether the app
                        # survived and its UI is live/focused/un-ANRed.
                        if verification is not None:
                            verification.evidence_lines.update(
                                liveness_evidence_lines(
                                    dynamic_stage.evidence.get("app_still_running"),
                                    dynamic_stage.evidence.get("ui_liveness"),
                                )
                            )
                        correlation_result = correlation_module.correlate(classification, verification)
                    except Exception as exc:
                        # GAP-2 on an unexpected success-check exception for a
                        # known target: preserve the static report, surface the
                        # error, exit non-zero after the report is written.
                        dynamic_failed = True
                        verification = None
                        correlation_result = None
                        correlation_skip_reason = (
                            "success-check raised an unexpected exception - "
                            "correlation not attempted"
                        )
                        check_stage = StageResult(
                            stage="success-check", status="failed",
                            evidence={"reason": "unexpected success-check exception"},
                            error=f"success check raised unexpectedly: {exc}",
                        )
                        stage_results.append(check_stage)
                        _print_stage(check_stage)

    # --- mitmproxy capture stage (opt-in --capture-traffic) ---
    # Real decrypted-traffic proof: route the app through mitmdump, decrypt its
    # HTTPS, and record the flows. GAP-2-style: a capture failure writes the
    # report anyway and exits non-zero after - it must never discard an
    # already-complete static/dynamic result. It resolves its own device serial
    # so it still works under --skip-dynamic.
    capture_failed = False
    if capture_traffic:
        capture_start = time.monotonic()
        try:
            # serial is None here after ANY dynamic setup failure, not only a
            # missing device: discover_device, install_apk and verify_installed
            # all funnel into the same handler. So the reason carries the setup
            # failure's own words rather than naming one of its causes - the
            # hardcoded "failed to find a connected device/emulator" was false
            # whenever the device was found and the APK was refused, which is
            # what a differently-signed re-install looks like (measured on the
            # 7 MB AndroGoat build: a signature conflict reported as an absent
            # emulator). Still caught below -> failed capture stage, report
            # preserved, non-zero exit. Under --skip-dynamic the capture stage
            # resolves its own serial since dynamic never ran.
            if skip_dynamic:
                capture_serial = device.discover_device(device_serial)
            elif serial is not None:
                capture_serial = serial
            else:
                raise RuntimeError(
                    "no usable device for traffic capture - dynamic setup failed "
                    "before a device was usable: "
                    f"{dynamic_setup_error or 'no reason recorded'}"
                )
            # The capture window runs under the SAME deterministic SSL bypass the
            # dynamic stage was directed to attempt, so its decrypted flows are
            # evidence about DEFEATING pinning rather than only about pinning being
            # absent. Without this the window that actually completes handshakes
            # measured a cold-started, un-hooked app (`bypass_applied=False`), so its
            # flow list could not speak to the bypass at all - the two windows
            # measured different things and only the report said so.
            #
            # Pinning-only, per run_capture_stage's own contract: Action.SSL_ONLY
            # never composes a root recipe, and the synthesizer's universal SSL base
            # carries the pin-check/handshake effect observer with it (synthesizer.py
            # :1164-1170), so this window reports its own SSL observer effects instead
            # of only being read through the dynamic window's. It is a fresh
            # synthesize() call rather than a reuse of `synth.source` so a BOTH action
            # cannot smuggle root hooks into the capture window.
            #
            # Gated on the EFFECTIVE action (post --force-dynamic): a run whose action
            # is NEITHER -- or ROOT_ONLY -- never attempted an SSL bypass, so hooking
            # its capture window would be an unforced SSL bypass on a target we were
            # not directed to bypass. `--skip-dynamic` means no instrumentation at all,
            # so that arm also keeps the plain cold start and stays the no-hooks
            # control. Whatever the arm, the report states which window it is.
            capture_bypass = None
            if not skip_dynamic and dynamic_action in (Action.SSL_ONLY, Action.BOTH):
                capture_bypass = synthesize(classification, Action.SSL_ONLY).source
            _begin_stage("capture-traffic")
            capture_stage = mitmproxy_capture.run_capture_stage(
                capture_serial, package_name, ANALYSIS_ROOT / "captures",
                drive_ui=drive_ui,
                # by SOURCE, not by filename: the synthesized bypass is generated in
                # memory and never exists under src/dynamic/scripts/. Passing it to
                # `bypass_script` (a filename under that directory) made the stage
                # build a path out of the whole script and die with `[Errno 36] File
                # name too long` before the bypass was loaded - so this window ran
                # un-hooked on every real run while its own comment claimed the
                # opposite. The two parameters reach two different loaders; there is
                # no inference about which was meant.
                bypass_source=capture_bypass or None,
            )
        except Exception as exc:
            capture_stage = StageResult(
                stage="capture-traffic", status="failed",
                evidence={"reason": "unexpected capture-stage exception"},
                error=f"capture stage raised unexpectedly: {exc}",
            )
        # run_capture_stage returns a StageResult without a duration (defaults to
        # 0), which _print_stage would otherwise render as a misleading "(0ms)"
        # for a stage that actually took the whole capture window. Stamp the
        # measured wall time so the stage line is honest; _reclassify_empty_capture
        # preserves it.
        capture_stage.duration_ms = capture_stage.duration_ms or elapsed_ms(capture_start)
        # An empty capture is only a real FAILURE when a proxy/wiring problem is
        # the plausible cause. A proxy-independent signal in hand (no INTERNET, or
        # dynamic ran with 0 in-process SSL bypassEffect) can prove the empty
        # capture was expected/inapplicable - reclassify those to "skipped" so the
        # stage line stops crying wolf while a genuine proxy failure stays loud.
        capture_stage = _reclassify_empty_capture(
            capture_stage, manifest_info, dynamic_stage,
            # The app's own out-of-Java-stack TLS layers, from the same scan corpus
            # the report prints as coverage-limited ([[gap8-webview-js-bridge]],
            # [[dart-aot-coverage-bound]]).
            non_java_tls_layers=_non_java_tls_layers(webview_sites, dart_aot_libs),
        )
        stage_results.append(capture_stage)
        _print_stage(capture_stage)
        if capture_stage.status == "failed":
            capture_failed = True

        # --- ADR-0016: evaluate the capture window's own observer ---
        #
        # The success-check stage above ran BEFORE this window existed, so the only
        # stream it could ever see was the dynamic stage's launch - and that launch is
        # the one that stalls on its splash, which is the entire reason this capture
        # stage exists. Since ADR-0015 this window runs under the same pinning-only
        # bypass and the same observer script, so its stream is a second, complete
        # evaluation of the identical predicate: the app's own pin-check ran without
        # rejecting AND a handshake then completed. A run could therefore hold both
        # effects - in this stage's own evidence - and still report SSL inconclusive,
        # because the check that set `verification` never saw them.
        #
        # A second evaluation, not a union of the two streams: the predicate is one
        # connection's story (the pin logic accepting a connection it would otherwise
        # reject), and a pin-check from one launch plus a handshake from another is a
        # connection neither launch observed (ADR-0016).
        #
        # Upgrade-only, and gated on `bypass_applied` - an un-hooked window has no
        # observer in it, so its empty stream is a fact about the window rather than
        # about the app ([[observer-silence-is-a-fact-about-observers]]), exactly as a
        # hooked window that legitimately stayed silent is. Neither may retract a
        # confirmation from the dynamic window, so that arm is not evaluated at all
        # rather than evaluated and then ignored.
        capture_evidence = capture_stage.evidence or {}
        if capture_evidence.get("bypass_applied") and capture_evidence.get("frida_messages"):
            # Name the launch, not just the stage: the confirmation lines this
            # evaluation produces say which window they are about, so a confirmation
            # can never be read as belonging to the other one.
            capture_window = "in this run's capture window"
            capture_launched_by = (capture_evidence.get("app_launch") or {}).get("launched_by")
            if capture_launched_by:
                capture_window += f", launched by {capture_launched_by}"
            # A run the dynamic window already confirmed has nothing to upgrade. The
            # capture window is still evaluated - part 3 of the ADR keeps both named
            # evaluations of both named launches in the record - but its verdict cannot
            # change the run's, and correlation is only re-run when the object it reads
            # actually changed.
            already_confirmed = verification is not None and verification.ssl_bypassed is True
            try:
                capture_verification = TechnologyHooksEngagedCheck().check(
                    capture_evidence.get("frida_messages") or [],
                    app_still_running=capture_evidence.get("app_target_running"),
                    # This window's OWN UI record, gathered by the capture stage
                    # itself (_capture_ui_liveness) - the same input shape the
                    # dynamic window's evaluation is given, so the two evaluations
                    # of the ADR-0016 predicate differ only in which launch they
                    # observed. None is honest ("not captured") and moves no
                    # verdict; see the check's own docstring.
                    ui_liveness=capture_evidence.get("ui_liveness"),
                    window=capture_window,
                )
                upgraded = capture_verification.ssl_bypassed is True and not already_confirmed
                if upgraded or _capture_window_hook_lines(capture_verification):
                    # The merge runs whenever the window filed a hook statement, not
                    # only when it upgrades: that statement is a fact about a launch
                    # and does not wait on a verdict, and gating it on the upgrade
                    # discarded it on every inconclusive window - the run whose two
                    # launches can actually disagree (ADR-0023).
                    verification = _merge_capture_window_evaluation(
                        capture_verification, verification, upgraded=upgraded
                    )
                if upgraded:
                    # correlate() is a pure function of (classification, verification) and
                    # reads ssl_bypassed in five places, so a verdict upgraded after the
                    # first correlation ran would otherwise sit beside a correlation
                    # computed from the pre-upgrade object. Re-running it is the whole
                    # fix; nothing from the earlier result is carried over.
                    correlation_result = correlation_module.correlate(classification, verification)
                    # Correlation now HAS a verification to compare against, so the
                    # "no verification to correlate" reason no longer applies. The
                    # failed-stage helper further down preserves an existing reason but
                    # the report renders the correlation branch ahead of the skip
                    # reason, so a stale one could never contradict a real result.
                    correlation_skip_reason = None
                if upgraded:
                    capture_note = (
                        "the capture window's own observer carried BOTH the app's "
                        "pin-check and a completed handshake; the run's verification was "
                        "upgraded and correlation re-run against it"
                    )
                elif already_confirmed:
                    capture_note = (
                        "the dynamic window had already confirmed the SSL bypass, so this "
                        "window's evaluation could not upgrade anything; recorded so both "
                        "launches' evaluations are in the audit trail"
                    )
                else:
                    capture_note = (
                        "the capture window's own observer did not carry BOTH the app's "
                        "pin-check and a completed handshake, so the run's verification "
                        "stands as the dynamic window measured it - an absence in this "
                        "window never retracts a confirmation from another"
                    )
                capture_check_stage = StageResult(
                    stage="success-check (capture window)",
                    status="success",
                    evidence={
                        "window": capture_window,
                        "bypass_applied": True,
                        "ssl_bypassed": capture_verification.ssl_bypassed,
                        "upgraded_ssl_verification": upgraded,
                        "bypass_hooks_engaged": capture_verification.evidence_lines.get(
                            "bypass hooks engaged", "none"
                        ),
                        "note": capture_note,
                    },
                )
            except Exception as exc:
                # Same treatment as the dynamic-side arms: an unexpected raise out of a
                # success check must not discard the static analysis or the capture
                # evidence already gathered, and must never be silent.
                dynamic_failed = True
                capture_check_stage = StageResult(
                    stage="success-check (capture window)", status="failed",
                    evidence={"reason": "unexpected capture-window check exception"},
                    error=(
                        "capture-window hooks-engaged check raised unexpectedly: "
                        f"{exc}"
                    ),
                )
            stage_results.append(capture_check_stage)
            _print_stage(capture_check_stage)

    # dynamic_stage.evidence["reason"] already distinguishes "operator passed
    # --skip-dynamic" from "NEITHER classification - no bypass technique to
    # apply" (see frida_runner.run_dynamic_stage) - surfaced in the report
    # rather than collapsed into one hardcoded string, so a negative-control
    # run doesn't misleadingly look like someone chose to skip verification.
    dynamic_skip_reason = dynamic_stage.evidence.get("reason", "skipped") if dynamic_stage.status == "skipped" else None

    # not-attempted != skipped: a FAILED dynamic stage (setup/install/unexpected
    # exception before the success branch) leaves correlation_skip_reason None, so the
    # report's correlation fallback would falsely read "dynamic stage skipped". Name the
    # honest failed-stage reason once here (decider-owns-its-guard), preserving any
    # more-specific reason already set and leaving genuine skips as None.
    correlation_skip_reason = _correlation_skip_reason_for_failed_stage(
        correlation_skip_reason, dynamic_stage.status, dynamic_stage.evidence.get("reason")
    )

    # --- terminal persistence: report + SQLite save + audit completion ---
    # Extracted into _finalize_run so the H1/H2 failure handling is unit-testable
    # (a failed audit completion must not be silent; a DB save failure must still
    # record the completion and surface the report path).
    #
    # A3: the run-local annotations that explain each coverage bound, built once
    # and used two ways - spread into report_kwargs so the live report renders the
    # cause sections, and persisted in save_payload (below) so a regenerated report
    # reproduces them instead of silently dropping the cause, which ADR-0006
    # forbids reading as "cause absent". Keys are exactly generate_report()'s
    # parameter names so the dict spreads straight into both call sites.
    coverage_causes = dict(
        jni_bindings=(
            native_evidence.jni_bindings if native_evidence is not None else None
        ),
        unaccounted_loads=(
            native_evidence.unaccounted_loads if native_evidence is not None else None
        ),
        platform_libs_exempted=(
            native_evidence.platform_libs_exempted if native_evidence is not None else None
        ),
        # A member the APK ships that did not extract, with its error. Named here
        # for the same reason as the two above: the native surface reads `partial`
        # once this is set, and a reader must be able to see that the bound was an
        # unread lib rather than obfuscation or an unscannable ELF.
        extraction_failures=(
            native_evidence.extraction_failures if native_evidence is not None else None
        ),
        # The per-lib tool failures (timeout / non-zero exit / unpack failure).
        # These already bound native coverage through _lib_coverage's rule 4, but
        # the bound is legible only if its cause is: the coverage table shows
        # native=partial, which reads the same whether a tool failed, the lib was
        # obfuscated, or it parsed empty. Same argument as dex_attribution_degraded
        # for the java bound.
        native_scan_errors=(
            native_evidence.errors if native_evidence is not None else None
        ),
        dynamic_loads=dynamic_loads or None,
        js_evidence=js_matches or None,
        webview_sites=webview_sites or None,
        dart_aot_libs=dart_aot_libs or None,
        # Name the CAUSE of the java bound in the report, not just its effect: the
        # coverage table shows java=partial, which alone is indistinguishable from
        # heavy obfuscation or a packer. An analyst reading the report without the
        # console output must be able to tell that DEX matches here have unverified
        # ownership (ADR-0006: the bound is only honest if its reason is legible).
        dex_attribution_degraded=_dex_attribution_degraded,
        # Gap-2: the packer identification itself. A detected packer is the
        # strongest reason the java surface reads `partial` - the DEX this run
        # decompiled is a loader stub, not the app's own code - and until now the
        # identification reached the console only (the per-finding print above), so
        # a report could show java=partial with no cause and never state that
        # packing was identified at all. Same argument as dex_attribution_degraded
        # below, whose own comment already named "a packer" among the causes the
        # coverage table cannot distinguish.
        packer_findings=packer_findings or None,
        # PACK1: the scan did not complete, so packing is un-ruled-out. Not a
        # detection - the safe direction - but java_coverage() bounds the surface on
        # it, so the bound has to be legible where it is read.
        packer_scan_incomplete=not packer_scanned,
        # Gap-4: the packed NATIVE libraries, with the coverage each one's packed
        # state left it at. Until now the identification lived only on the
        # NativeLibrary dataclass (one test asserted the field was set; no source
        # consumer read it), so a report could show native=partial with no cause
        # and never record that a library was packed or that its code was analyzed
        # from a reconstructed copy rather than the shipped bytes.
        packed_native_libs=(
            (packed_library_rows(native_evidence.libraries) or None)
            if native_evidence is not None
            else None
        ),
        # COV-JS-NOTE1: `js` is the third surface the coverage table bounds, and
        # its note asserted a cause rather than the cause: `partial` comes from a
        # binary bundle really being there OR from ASSET-DROP1's un-extracted
        # asset surface, and only the first was ever named. Both facts are already
        # computed here; they just never reached the report.
        js_binary_bundle=bool(has_binary_bundle),
        js_asset_surface_extracted=bool(_asset_surface_extracted),
        # COV-MANIFEST-NOTE1: the manifest surface governs ssl and can be bounded
        # two ways - the manifest did not parse (unscannable) or resource
        # resolution was incomplete (partial, H3: a declared NSC that is missing or
        # unparseable). Both facts are computed here and, like the js pair, reached
        # no artifact: the coverage table rendered `| manifest | partial |` with no
        # cause while java, native and js each explained theirs.
        manifest_parsed=(manifest_stage.status == "success"),
        manifest_resources_complete=(
            bool(manifest_info.resources_complete)
            if manifest_stage.status == "success" else False
        ),
    )
    report_kwargs = dict(
        run_id=run_id,
        apk_hash=apk_hash,
        timestamp=datetime.now(timezone.utc).isoformat(),
        metadata=ingest_result.evidence,
        classification=classification,
        verification=verification,
        dynamic_skip_reason=dynamic_skip_reason,
        correlation_skip_reason=correlation_skip_reason,
        correlation=correlation_result,
        stage_results=stage_results,
        output_dir=REPORTS_ROOT,
        manifest=manifest_info if manifest_stage.status == "success" else None,
        git_commit=git_commit,
        signature_corpus=signature_corpus,
        coverage=coverage_map,
        obfuscation_level=obfuscation_level,
        operator=operator,
        justification=justification,
        **coverage_causes,
    )
    # The report path is returned (not used) here - _finalize_run writes the .md
    # and prints it itself, so binding the return to a local was a dead assignment
    # (pyflakes F841). Dropped: the report is produced and surfaced by _finalize_run.
    _finalize_run(
        report_kwargs=report_kwargs,
        analysis_root=ANALYSIS_ROOT,
        apk_hash=apk_hash,
        run_id=run_id,
        save_payload={
            "classification": classification,
            "verification": verification,
            "correlation": correlation_result,
            "correlation_skip_reason": correlation_skip_reason,
            # The GATED value (None unless the stage was skipped), not something
            # storage re-derives from the stage's evidence - the failure path
            # records a reason too, and the column means "dynamic never ran".
            "dynamic_skip_reason": dynamic_skip_reason,
            "stage_results": stage_results,
            "git_commit": git_commit,
            "signature_corpus": signature_corpus,
            "target": target,
            "package_name": package_name,
            "coverage": coverage_map,
            "coverage_causes": coverage_causes,
            "obfuscation_level": obfuscation_level,
            "manifest": asdict(manifest_info) if manifest_info else None,
        },
        completion_kwargs=dict(
            audit_log_path=AUDIT_LOG_PATH,
            run_id=run_id,
            apk_hash=apk_hash,
            justification=justification,
            operator=operator,
            git_commit=git_commit,
            action=classification.action.value,
            stage_statuses={s.stage: s.status for s in stage_results},
            # F-8: the dict above is keyed by stage name, so the three `audit`
            # stages (authorization, run-outcome, attestation) collapse to one
            # entry and two outcomes vanish from the immutable record. This ordered
            # list is the complete one; the record names the collapsed names too,
            # so the lossy view cannot be mistaken for the whole set.
            stage_statuses_list=[(s.stage, s.status) for s in stage_results],
            verification=(
                f"root_bypassed={verification.root_bypassed}, ssl_bypassed={verification.ssl_bypassed}"
                if verification else "not run"
            ),
            force_dynamic=forced_dynamic,
            effective_dynamic_action=dynamic_action.value,
        ),
    )

    if dynamic_failed or capture_failed:
        # GAP-2: the static analysis + report were still produced and audited;
        # the run failed only at the dynamic/capture stage. Surface that loudly -
        # the report's Stage Results table already shows the failed stage and
        # correlation is "not attempted" - and exit non-zero so no automated
        # consumer mistakes a dynamic-failed run for a fully verified one.
        failures = []
        if dynamic_failed:
            failures.append(f"Dynamic stage FAILED ({dynamic_stage.error or 'see report'})")
        if capture_failed:
            failures.append(f"capture-traffic stage FAILED ({capture_stage.error or 'see report'})")
        # The trailing note must not claim dynamic was never attempted when it
        # ran. correlation=not_attempted means no *correlation* was evaluated (a
        # dynamic run with no target-specific success check), not that dynamic did
        # not run - the ROOT_ONLY case runs dynamic (as "machinery ran; bypass not
        # confirmed") and only the capture fails. Say what actually happened.
        if dynamic_stage.status == "skipped":
            dynamic_note = "dynamic verification was not attempted (no bypass technique to apply)"
        elif dynamic_failed:
            dynamic_note = "the dynamic bypass ran but failed"
        else:
            dynamic_note = "the dynamic bypass ran but was not confirmed, and no traffic was captured"
        console.print(
            f"[bold red]{', '.join(failures)} - "
            f"static analysis and report were still produced; {dynamic_note} "
            f"(correlation=not_attempted).[/bold red]"
        )
        raise typer.Exit(code=1)


def _calibration_table(report) -> tuple[list[str], list[list[str]]]:
    """Build the calibration summary as plain data (column headers + string
    cells). Kept separate from the Rich rendering so header/cell parity is a
    unit-testable fact rather than a hand-maintained layout: a future cell
    added without its header (or vice versa) would misalign the table
    silently. Renders both Tier-2 exclusion counts - no-GT, and the
    negative-not-proof-of-absence count (which covers BOTH partial decompiles
    and under-covered governing surfaces) - for parity with the generated
    report's two "Excluded from Tier 2..." lines.

    CALIB-EXCL-MISS1: also renders the KNOWN-MISS subset of that exclusion -
    APKs whose ground truth says the category IS present, whose prediction was
    NEITHER, and which were excluded anyway because coverage couldn't certify
    the negative. They are correctly not false negatives, so they do not
    depress the recall in this very table; a non-zero count here is the only
    thing on the console that stops "recall 1.00" from reading as unqualified.
    The count alone can't discharge that - the caller prints the hashes."""
    def _fmt(rate: float | None) -> str:
        return f"{rate:.2f}" if rate is not None else "N/A"

    columns = [
        "Category", "Tier 1 confirmation", "Tier 2 precision", "Tier 2 recall",
        "Tier 2 F1", "n", "Excl no-GT", "Excl partial", "Excl known-miss",
    ]
    rows: list[list[str]] = []
    for category in CATEGORIES:
        t1, t2 = report.tier1[category], report.tier2[category]
        rows.append([
            category,
            f"{_fmt(t1.confirmation_rate.rate)} ({t1.confirmed}/{t1.confirmed + t1.not_confirmed})",
            _fmt(t2.precision.rate), _fmt(t2.recall.rate), _fmt(t2.f1), str(t2.n),
            str(report.excluded_no_ground_truth.get(category, 0)),
            str(report.excluded_partial_decompile.get(category, 0)),
            str(len(report.excluded_missed_positives.get(category, []))),
        ])
    return columns, rows


def _tn0_tautology_caveats(report) -> list[str]:
    """Console parity for the generated report's CALIB-TN0-LABEL caveat
    (report/generator.py): the lines qualifying any Tier-2 precision that reads
    1.00 ONLY because the corpus is positive-only. A positive-only Tier-2 corpus
    (TP>0, FP=0, TN=0) makes precision a tautology - the false-positive direction
    was never tested and a false positive would be structurally invisible - yet
    _calibration_table shows a bare 1.00, and the console (read first, often
    alone) carried no warning while the markdown report did. Returned as data,
    like _calibration_table, so the gate is a unit-testable fact.

    The gate is the caveat's EXACT claim - TN==0 AND FP==0 AND TP>0 - never a
    precision==1.00 proxy: that proxy also matches an n=0 cell (precision renders
    N/A, no tautology) and a <1.00 cell where FP>0 (a mis-detected negative
    control DOES exist), which would print a self-contradictory note under a cell
    that is not 1.00 (CALIB-TN0-LABEL / caveat-gate-matches-its-text)."""
    lines: list[str] = []
    for category in CATEGORIES:
        t2 = report.tier2[category]
        if t2.true_negative == 0 and t2.false_positive == 0 and t2.true_positive > 0:
            lines.append(
                f"{category} Tier 2 precision reads 1.00 but TN=0 - every "
                f"ground-truthed {category} case in Tier 2 is a positive, so the "
                f"false-positive direction has never been tested and a false "
                f"positive would be structurally invisible here. That 1.00 is a "
                f"tautology, not validated precision; add a {category}-negative "
                f"control (e.g. a stock app) and re-measure before trusting it "
                f"(ADR-0006)."
            )
    return lines


@app.command("calibration-report")
def calibration_report(
    ground_truth: Path = typer.Option(
        DEFAULT_GROUND_TRUTH_PATH, "--ground-truth",
        help="Path to the independently-sourced ground-truth registry",
    ),
):
    """Compute precision/recall/F1 and a confidence-calibration curve
    against every accumulated run (FR-9.2, ADR-0006). Reports over an
    already-audited historical corpus, not a fresh analysis act - no
    --apk/--justification, unlike `run`."""
    runs = load_runs_for_calibration(ANALYSIS_ROOT)
    gt_entries = load_ground_truth(ground_truth)
    # G2-residual: honor the same tuned root/ssl thresholds the live decision
    # engine uses (_load_thresholds, 4-3) so the report's decision boundary
    # matches reality instead of silently defaulting to 0.7 for both categories.
    root_threshold, ssl_threshold = _load_thresholds()
    report = compute_calibration_report(
        runs, gt_entries,
        generated_at=datetime.now(timezone.utc).isoformat(),
        ground_truth_commit=_git_last_commit_touching(ground_truth),
        analysis_code_commit=_git_commit_hash(),
        threshold={"root": root_threshold, "ssl": ssl_threshold},
    )

    columns, rows = _calibration_table(report)
    table = Table(title="Calibration Summary")
    for column in columns:
        table.add_column(column)
    for row in rows:
        table.add_row(*row)
    console.print(table)
    if report.skeleton_warning:
        console.print(f"[yellow]{report.skeleton_warning}[/yellow]")

    # CALIB-EXCL-MISS1: name the known misses, don't just count them. The
    # "Excl known-miss" column says how many, but a reader of this table's
    # "recall 1.00" needs to know WHICH APK we know we missed - the whole
    # hazard is that this case is honestly excluded from Tier 2 (an
    # uncertifiable negative is not proof of absence, ADR-0006/ADR-0008) and
    # therefore never depresses recall, so a bare count folded in next to
    # "Excl partial" is indistinguishable from an ordinary uncertifiable
    # negative. Printed as its own red line, above the N/A note, because it
    # qualifies a number the operator has already read.
    for category in CATEGORIES:
        missed = report.excluded_missed_positives.get(category, [])
        if missed:
            console.print(
                f"[bold red]Known miss: {len(missed)} excluded {category} negative(s) "
                f"is/are NOT merely uncertifiable - ground truth says {category}-detection "
                f"IS present in {', '.join(missed)}, the prediction was NEITHER, and the "
                f"exclusion means it is not counted as a false negative. The "
                f"{category} recall above is therefore measured over the certifiable "
                f"subset only, not over every known {category}-positive target.[/bold red]"
            )

    # A bare "N/A" Tier 2 reads like a missing computation, but here it is the
    # honest result of a negative-direction exclusion (report.py): a detected=False
    # verdict is dropped from Tier 2 whenever it isn't proof of absence - either
    # the decompile was partial/unknown, OR a governing surface (native/manifest/
    # js) was under-covered (e.g. a stripped .so, or a pre-coverage run with no
    # map). excluded_partial_decompile holds BOTH causes (report.py's two
    # negative-only gates), so the note must name both rather than blame the
    # decompile alone and send the operator to fix the wrong thing. When the
    # exclusion leaves a category with no TP/FP/FN to measure, say so explicitly.
    for category in CATEGORIES:
        excluded = report.excluded_partial_decompile.get(category, 0)
        if report.tier2[category].precision.rate is None and excluded:
            console.print(
                f"[yellow]Note: {category} Tier 2 is N/A - {excluded} ground-truth "
                f"observation(s) were excluded because a negative there isn't proof "
                f"of absence (partial/unknown decompile, or an under-covered "
                f"native/manifest/js surface); a Tier-2 verdict needs an "
                f"{category}:true target that both decompiles completely and has "
                f"every governing surface fully analyzed, otherwise there is no "
                f"true-positive to measure precision/recall against.[/yellow]"
            )

    # CALIB-TN0-LABEL (console parity): qualify a Tier-2 precision that reads 1.00
    # only because the corpus is positive-only (TP>0, FP=0, TN=0). The generated
    # report already carries this caveat; the console table showed a bare 1.00,
    # and the console is read first and often alone. Same exact gate as the
    # markdown, so the two views agree on how far to trust that 1.00.
    for line in _tn0_tautology_caveats(report):
        console.print(f"[yellow]Note: {line}[/yellow]")

    output_path = generate_calibration_report(report, CALIBRATION_REPORTS_ROOT)
    console.print(f"\n[bold green]Calibration report: {output_path}[/bold green]")


@app.command("re-attribute")
def re_attribute_cmd(
    justification: str = typer.Option(
        ...,
        "--justification",
        help="Authorization justification for mutating stored attribution - must "
        "be OWN_APP, CTF, ACADEMIC_TRAINING_TARGET, or AUTHORIZED_ENGAGEMENT:<id> "
        "(FR-8.1/ADR-0005). Required: re-attribute writes consumer-visible state "
        "and must be as traceable as the run that produced it.",
    ),
    force: bool = typer.Option(
        False,
        "--force",
        help="Recompute attribution for every stored run, including rows that "
        "already carry it (default re-runs only fill rows still missing it).",
    ),
):
    """Backfill machine-readable root/ssl attribution into stored runs that
    predate the attribution feature. The feature is forward-only (it protects
    new runs); this brings existing classification_json blobs up to date so an
    automated consumer no longer reads a bundled-SDK-only ROOT_ONLY/SSL_ONLY as
    the app's own anti-tampering. Non-destructive: it only attaches caveats
    (root_attribution/ssl_attribution) - it never rewrites the verdict,
    confidence, or evidence. By default it fills only rows still missing
    attribution (idempotent); --force recomputes even already-attributed rows
    so a taxonomy/namespace fix can correct stale caveats on disk."""
    # M3 auth gate (FR-8.1/ADR-0005): re-attribute mutates a persisted finding's
    # attribution - a consumer-visible caveat (ADR-0010) - so it must carry the
    # same authorization as the run that produced it. Validate BEFORE any DB
    # write so an invalid justification aborts without touching stored state.
    if not validate_justification(justification):
        console.print(
            f"[bold red]Invalid --justification '{justification}' - aborting before "
            "re-attribute. Use one of OWN_APP, CTF, ACADEMIC_TRAINING_TARGET, or "
            "AUTHORIZED_ENGAGEMENT:<id>.[/bold red]"
        )
        raise typer.Exit(code=1)
    # A6: an unverifiable operator aborts before any mutation, so re-attribute
    # never runs unattributable.
    operator = _operator_identity()

    from sqlalchemy import select
    from sqlalchemy.orm import Session

    from storage.db import ApkRecord, RunRecord, get_engine

    with Session(get_engine(ANALYSIS_ROOT)) as session:
        rows = session.execute(
            select(RunRecord, ApkRecord)
            .outerjoin(ApkRecord, RunRecord.apk_sha256 == ApkRecord.sha256)
        ).all()
        updated = 0
        third_party_only = 0
        regenerated = 0
        errors: list[str] = []
        # FR-8: collect the specific runs the backfill touches so the audit
        # record names them, not just counts them (ADR-0005 traceability).
        affected_run_ids: list[str] = []
        # Item 2: the report is rendered by the CURRENT code, so the Analysis-code
        # line must name the rendering commit, not the original run's (which an
        # ancestor that predates the attribution caveat). Compute once, not per row.
        rendering_commit = _git_commit_hash()
        for run, apk in rows:
            cj = dict(run.classification_json or {})
            root = cj.get("root") or {}
            ssl = cj.get("ssl") or {}
            root_ev = root.get("evidence") or []
            ssl_ev = ssl.get("evidence") or []
            pkg = (apk.package_name if apk else None) or ""
            root_attr = gate_all_third_party(
                attribute_root_evidence(pkg, root_ev), bool(root.get("detected"))
            )
            ssl_attr = gate_all_third_party(
                attribute_root_evidence(pkg, ssl_ev), bool(ssl.get("detected"))
            )
            changed = False
            # Compare-and-write, not "is None". Gating the JSON write on
            # `is None` left a latent drift: a stale row whose classification_json
            # already carried all_third_party=True (pre-fix) would never be
            # corrected without --force, because the guard was permanently False,
            # while the column gate below corrects unconditionally - so column
            # flipped to False but JSON stayed True and never self-healed. Writing
            # only when the freshly-gated value differs fixes that drift AND stays
            # idempotent for already-correct rows (attribute_root_evidence is
            # deterministic, so an up-to-date value compares equal and is skipped).
            if root_attr is not None and (force or cj.get("root_attribution") != root_attr):
                cj["root_attribution"] = root_attr
                changed = True
            if ssl_attr is not None and (force or cj.get("ssl_attribution") != ssl_attr):
                cj["ssl_attribution"] = ssl_attr
                changed = True
            # F1: run rows now denormalize the authoritative package identity
            # (derived from the APK manifest) so a consumer keying on the run
            # doesn't rely on the operator-supplied `target` label.
            if run.package_name != pkg:
                run.package_name = pkg
                changed = True
            # Item 1: denormalized bundled-SDK qualifiers, so calibration and
            # the column view carry the caveat alongside the DETECTED verdict.
            # Gated on detected: the qualifier only annotates a DETECTED category
            # (ADR-0010); a non-detected one must not carry it. 8 runs were
            # misflagged because this ignored the threshold - fixed here.
            root_third = bool((root_attr or {}).get("all_third_party")) if root.get("detected") else False
            ssl_third = bool((ssl_attr or {}).get("all_third_party")) if ssl.get("detected") else False
            if run.root_all_third_party != root_third:
                run.root_all_third_party = root_third
                changed = True
            if run.ssl_all_third_party != ssl_third:
                run.ssl_all_third_party = ssl_third
                changed = True
            if changed:
                run.classification_json = cj
                updated += 1
                affected_run_ids.append(run.run_id)
                if root_third or ssl_third:
                    third_party_only += 1
                # F2: a changed attribution leaves the persisted .md stale (it
                # was rendered pre-attribution and still reads as app-implemented).
                # Regenerate it from the stored JSON so DB and report agree. A
                # per-row failure is surfaced loudly (item 2) and never aborts
                # the backfill or rolls back attribution already applied.
                try:
                    _regenerate_report(run, apk, rendering_commit)
                    regenerated += 1
                except Exception as exc:  # NFR-1: fail loudly, never silently
                    errors.append(f"{run.run_id}: report regeneration failed: {exc}")
        session.commit()
    # FR-8/ADR-0005: re-attribute is a write to persisted analysis state OUTSIDE
    # the run flow - record it on the audited trail like every other mutation,
    # so a consumer-visible attribution change is attributable. Written even
    # when 0 rows changed: running the backfill is itself a traceable act.
    audit = record_re_attribution(
        audit_log_path=AUDIT_LOG_PATH,
        justification=justification,
        operator=operator,
        git_commit=rendering_commit,
        runs_updated=updated,
        third_party_only=third_party_only,
        regenerated=regenerated,
        affected_run_ids=affected_run_ids,
        force=force,
    )
    if audit.status == "failed":
        console.print(
            f"[bold red]re-attribute applied {updated} run(s) but its audit record "
            f"could not be appended: {audit.error}[/bold red]"
        )
    console.print(
        f"[bold green]re-attributed {updated} stored run(s); "
        f"{third_party_only} now carry an all-third-party caveat; "
        f"regenerated {regenerated} report(s)[/bold green]"
    )
    if errors:
        for err in errors:
            console.print(f"[bold red]{err}[/bold red]")
        console.print(
            f"[bold red]{len(errors)} report(s) could not be regenerated - "
            f"their DB attribution was still applied.[/bold red]"
        )


def _regenerate_report(run, apk, rendering_commit: str) -> None:
    # `run` is intentionally un-annotated: RunRecord is imported function-locally
    # inside the re-attribute command (~line 1027), so it is not in module scope
    # here. With `from __future__ import annotations` any annotation would be a
    # lazy string never resolved at runtime, and pyflakes resolves names inside
    # even quoted string annotations - so annotating would only invite a false
    # F821. The docstring documents the type instead.
    """Re-render a stored run's .md from its persisted JSON, so a classification
    backfill (re-attribute) is reflected on disk, not just in the DB. The header
    metadata comes from the stored APK record's raw ingest metadata (the exact
    original payload) plus the persisted manifest/obfuscation level (item 3), so
    the regenerated report is faithful. `rendering_commit` is the CURRENT code's
    commit (the report was rendered by it), so the Analysis-code line isn't
    misattributed to the original run's pre-feature commit (item 2). Raises on
    malformed stored data - the caller records the error loudly rather than
    swallowing it (NFR-1)."""
    cls = _classification_from_json(run.classification_json or {})
    metadata = (apk.raw_metadata if apk else None) or {
        "package": {"package_name": run.package_name or ""},
        "hashes": {"sha256": run.apk_sha256},
    }
    timestamp = f"{run.timestamp} (report regenerated from stored data)"
    if run.obfuscation_level:
        metadata.setdefault("package", {})
        metadata["package"]["obfuscation_level"] = run.obfuscation_level
    # A3: the coverage cause annotations are now persisted as a single JSON column
    # (runs.coverage_causes), so a regenerated report reproduces the DEX-attribution
    # / Dart-AOT / JNI / unaccounted-load / dynamic-load / JS / WebView sections
    # faithfully instead of dropping them. Keys are generate_report()'s parameter
    # names, so the stored dict feeds straight through. The round-trip is lossless
    # for rendering: the template accesses these via {{ item }} on primitives, Jinja
    # attribute-or-getitem (works unchanged on the reloaded dicts), and 4-tuple
    # unpacking (a JSON list unpacks identically) - there is no Python-side attribute
    # access on them, so plain dicts/lists render exactly as the live objects did.
    causes = run.coverage_causes or {}
    # ADR-0005: a run's authorization (operator + justification) is not a column on
    # the mutable RunRecord - its authoritative, tamper-evident home is the audit
    # log. Recover it by run_id so the regenerated report's "Authorized by" line is
    # faithful to the original run rather than silently dropped. A regenerated report
    # that omitted authorization would misrepresent a dual-use analysis as
    # unauthorized - the opposite of this project's disclosure discipline (Principle 7).
    _auth = authorization_for_run(AUDIT_LOG_PATH, run.run_id)
    if _auth is not None:
        regen_operator = _auth.get("operator")
        regen_justification = _auth.get("justification")
    else:
        # Genuinely unrecoverable (a legacy run authorized before run_id was carried
        # in the log, or whose authorizing record AND its archive were pruned):
        # disclose it explicitly. Never render a silent absence that a reader would
        # take as "no authorization was required" (NFR-1/ADR-0006).
        regen_operator = "unavailable on regeneration"
        regen_justification = (
            "not recoverable from audit log - see the immutable audit log (ADR-0005)"
        )
    generate_report(
        run_id=run.run_id,
        apk_hash=run.apk_sha256,
        timestamp=timestamp,
        operator=regen_operator,
        justification=regen_justification,
        metadata=metadata,
        classification=cls,
        verification=_verification_from_json(run.verification_json),
        correlation=_correlation_from_json(run.correlation_json),
        stage_results=[_stage_from_json(s) for s in (run.stage_results_json or [])],
        output_dir=REPORTS_ROOT,
        dynamic_skip_reason=run.dynamic_skip_reason,
        correlation_skip_reason=run.correlation_skip_reason,
        manifest=_manifest_from_json(run.manifest_json),
        git_commit=rendering_commit,
        # ADR-0022: read from the record, never re-derived. Unlike the line above -
        # deliberately the RENDERING commit, since that is the code that produced
        # this file - the corpus is the rule set the ANALYSIS ran under, and the
        # record is the only place it survives. None is the honest "not recorded
        # for this run", which the template renders as such rather than as blank.
        signature_corpus=run.signature_corpus,
        coverage=run.coverage,
        obfuscation_level=run.obfuscation_level,
        jni_bindings=causes.get("jni_bindings"),
        unaccounted_loads=causes.get("unaccounted_loads"),
        platform_libs_exempted=causes.get("platform_libs_exempted"),
        extraction_failures=causes.get("extraction_failures"),
        native_scan_errors=causes.get("native_scan_errors"),
        dynamic_loads=causes.get("dynamic_loads"),
        js_evidence=causes.get("js_evidence"),
        webview_sites=causes.get("webview_sites"),
        dart_aot_libs=causes.get("dart_aot_libs"),
        dex_attribution_degraded=bool(causes.get("dex_attribution_degraded", False)),
        packer_findings=causes.get("packer_findings"),
        packer_scan_incomplete=bool(causes.get("packer_scan_incomplete", False)),
        packed_native_libs=causes.get("packed_native_libs"),
        # COV-JS-NOTE1: absent on a run stored before these fields - None, which
        # the template reads as "not recorded", never as "no".
        js_binary_bundle=causes.get("js_binary_bundle"),
        js_asset_surface_extracted=causes.get("js_asset_surface_extracted"),
        manifest_parsed=causes.get("manifest_parsed"),
        manifest_resources_complete=causes.get("manifest_resources_complete"),
        # The annotation-loss disclosure now fires ONLY for runs written before
        # coverage_causes existed (the column is NULL there): those genuinely cannot
        # reconstruct the cause, so the report must say so rather than let a missing
        # section read as "cause absent" (ADR-0006). A run WITH persisted causes
        # regenerates faithfully and needs no disclaimer.
        regenerated_with_annotation_loss=run.coverage_causes is None,
    )


def _classification_from_json(cj: dict) -> ClassificationResult:
    def _ev(d: dict) -> Evidence:
        return Evidence(
            signature_id=d["signature_id"],
            file=d["file"],
            line_or_offset=d["line_or_offset"],
            matched_text=d["matched_text"],
            # G11 provenance: restore the forensic evidence_type so a regenerated
            # report keeps its "(bytecode_string)"-style HOW-detected annotation
            # (generator template renders `{{ e.evidence_type }}`). Dropping it
            # silently re-rendered every match as "(unspecified)". Default matches
            # the dataclass, so a row predating the field stays unspecified.
            evidence_type=d.get("evidence_type", "unspecified"),
            verification_state=d.get("verification_state", "deterministic_matched"),
        )

    def _cat(d: dict) -> CategoryVerdict:
        return CategoryVerdict(
            confidence=d["confidence"],
            detected=d["detected"],
            evidence=[_ev(e) for e in d.get("evidence", [])],
            # L-M4/ADR-0006: restore the per-category coverage-limited flag so the
            # reconstructed verdict keeps "detected=False here is a lower bound, not
            # a confident negative". Default False matches the dataclass.
            coverage_limited=d.get("coverage_limited", False),
        )

    return ClassificationResult(
        action=Action(cj["action"]),
        root=_cat(cj["root"]),
        ssl=_cat(cj["ssl"]),
        root_threshold=cj.get("root_threshold", 0.7),
        ssl_threshold=cj.get("ssl_threshold", 0.7),
        scanned_file_count=cj.get("scanned_file_count", 0),
        unreadable_file_count=cj.get("unreadable_file_count", 0),
        unreadable_files=cj.get("unreadable_files", []),
        root_attribution=cj.get("root_attribution"),
        ssl_attribution=cj.get("ssl_attribution"),
        # L-M3/ADR-0006 (the consequential one): restore the coverage-limited
        # category list. The report template renders the "Coverage-limited
        # (unknown, not absent)" caveat from classification.unknown_uncovered;
        # dropping it on regeneration made a coverage-bound NEITHER re-render as a
        # CONFIDENT NEGATIVE - the exact mislabel this field exists to prevent.
        # Default [] matches the dataclass, so a genuinely-covered (or pre-field)
        # row stays empty rather than fabricating a caveat.
        unknown_uncovered=cj.get("unknown_uncovered", []),
        # UNCOV-CAUSE1, and REGEN-FIELDLOSS1 discipline: restore the per-category
        # CAUSE alongside the list itself. Dropping it would re-render a
        # regenerated report without the "why" line while still printing the
        # caveat - the reader would see "coverage-limited" with no way to tell
        # whether to decompile more or author a signature. Default {} matches the
        # dataclass, so a row stored before this field existed reports no cause
        # rather than guessing one.
        unknown_uncovered_causes=cj.get("unknown_uncovered_causes", {}),
        # RESID-4F: restore the per-signature truncation counts so the regenerated
        # report keeps its "Evidence truncated (N signatures matched >50x)"
        # disclosure instead of silently implying the shown 50 rows were the whole
        # story. Default {} matches the dataclass.
        evidence_capped_counts=cj.get("evidence_capped_counts", {}),
    )


def _verification_from_json(v) -> VerificationResult | None:
    if not v:
        return None
    return VerificationResult(
        root_bypassed=v.get("root_bypassed"),
        ssl_bypassed=v.get("ssl_bypassed"),
        evidence_lines=v.get("evidence_lines") or {},
    )


def _correlation_from_json(c) -> CorrelationResult | None:
    if not c:
        return None
    return CorrelationResult(
        matches=c.get("matches"),
        mismatches=c.get("mismatches") or [],
        unverified=c.get("unverified") or [],
        coverage_confirmed=c.get("coverage_confirmed") or [],
    )


def _stage_from_json(s: dict) -> StageResult:
    return StageResult(
        stage=s.get("stage"),
        status=s.get("status"),
        evidence=s.get("evidence"),
        error=s.get("error"),
        duration_ms=s.get("duration_ms"),
    )


def _manifest_from_json(m) -> ManifestInfo | None:
    """Rebuild a ManifestInfo from the persisted manifest_json (item 3), so a
    regenerated report keeps its Debuggable/network-security-config section
    instead of dropping it. None on runs that predate manifest persistence."""
    if not m:
        return None
    return ManifestInfo(
        debuggable=bool(m.get("debuggable")),
        network_security_config=m.get("network_security_config"),
        application_present=bool(m.get("application_present", True)),
        nsc_file_present=m.get("nsc_file_present"),
        stored_certs=int(m.get("stored_certs") or 0),
        device_admin=bool(m.get("device_admin")),
        resources_complete=bool(m.get("resources_complete", True)),
        # A regenerated report must carry the SAME attack-surface + SSL-policy facts
        # the live report showed. These were dropped, so a re-attribute regeneration
        # silently blanked them: package/permissions/exported-components (the
        # reachable attack surface), the effective cleartext policy + per-domain
        # permits, allowBackup (a data-exfil control), and - most consequential -
        # the NSC pin_set_expirations, since an EXPIRED pin-set is declared-but-
        # inactive pinning the report must flag (generator.py:640 cross-checks it
        # against the run timestamp; dropping it re-read an expired pin-set as
        # active). Dropping `permissions` also inverted the INTERNET cross-reference
        # (an empty list reads as "no INTERNET declared"). None/[] defaults match
        # the dataclass, so a row predating a field keeps its safe default rather
        # than fabricating one. The tri-state bools (allow_backup / cleartext_
        # permitted / uses_cleartext_traffic) are passed through WITHOUT bool() so
        # "unset" (None) stays distinct from "no" (False) - the template renders
        # those three cases differently, and a bool() would collapse unset into no.
        package_name=m.get("package_name"),
        uses_cleartext_traffic=m.get("uses_cleartext_traffic"),
        allow_backup=m.get("allow_backup"),
        cleartext_permitted=m.get("cleartext_permitted"),
        cleartext_domains=m.get("cleartext_domains") or [],
        pin_set_expirations=m.get("pin_set_expirations") or [],
        permissions=m.get("permissions") or [],
        exported_components=m.get("exported_components") or [],
    )


def _print_uncompleted_runs(result: dict) -> None:
    """Report authorizations whose runs never completed (ADR-0021).

    Printed on BOTH the valid and the failed path. Chain integrity and
    run-history incompleteness are independent facts about a log, and exiting on
    a chain error before printing this is how this repository's 32 interrupted
    runs stayed invisible from the command line: the log carries the known
    line-185 fork, so the note below was unreachable on the authoritative log.

    Each orphan is named individually, with the identity the audit log holds and
    the last stage its sidecar recorded. A bare count is not actionable and a
    bare run_id is not either - an auditor needs to know which APK was mid-flight
    and how far it got."""
    details = result.get("uncompleted_run_details")
    if details is None:
        # A result dict from before this field existed: fall back to the ids
        # rather than dropping the fact on the floor.
        details = [{"run_id": rid} for rid in (result.get("uncompleted_runs") or [])]
    if not details:
        return
    console.print(
        f"[yellow]Note: {len(details)} authorized run(s) have no completion in this "
        "log (in flight, interrupted, or deliberately halted):[/yellow]"
    )
    for entry in details:
        status = read_run_status(ANALYSIS_ROOT, entry.get("apk_hash"))
        if status is None:
            where = "no sidecar (progress was not recorded for this run)"
        elif status.get("state") == "unreadable":
            where = f"sidecar unreadable ({status.get('error')})"
        elif status.get("state") == "ended_unaudited":
            # The run ended on purpose - the process exited non-zero - but its
            # completion never reached the log, which is what leaves it an orphan
            # here. Reporting the last stage alone would read as an interruption,
            # which is the opposite of what happened, so the ending is named.
            why = status.get("audit_error") or "no reason recorded"
            where = (
                f"reached '{status.get('last_stage') or 'none recorded'}' then ended "
                f"without an audit completion ({why})"
            )
        else:
            # Where the run was, not only where it last succeeded. A run killed
            # inside a stage has no completion for it, so the last completed stage
            # is the one BEFORE the one it died in - the Telegram run of
            # 2026-09-18 read `manifest_parse` while it was 20 minutes into the
            # native scan. The in-flight marker names the real stage; without one
            # (an older sidecar, or a boundary not marked) the last completed stage
            # is all there is to say, and it is said as that.
            last = status.get("last_stage")
            in_flight = status.get("in_flight_stage")
            if in_flight and in_flight != last:
                last_note = f"last completed: {last or 'none recorded'}"
                if last:
                    last_note += f" ({status.get('last_stage_status') or 'n/a'})"
                stage = f"was in '{in_flight}' when the record stops ({last_note})"
            else:
                stage = (
                    f"last stage: {last or 'none recorded'} "
                    f"({status.get('last_stage_status') or 'n/a'})"
                )
            # `started` is not a death. A run whose process is still here is in
            # flight, and reporting it among the never-completed would assert an
            # ending that has not happened (ADR-0021, its end-to-end correction).
            # The probe answers about a host, so where it cannot be taken the
            # answer is unknown - never "ended".
            alive = run_is_alive(status)
            if alive is True:
                where = (
                    f"IN FLIGHT - process {status.get('pid')} recorded by this "
                    f"sidecar is still running; {stage}"
                )
            elif alive is None:
                where = (
                    f"{stage}; liveness not established (recorded on host "
                    f"{status.get('host') or 'unrecorded'}, which this reader "
                    "cannot probe)"
                )
            else:
                where = f"ended with its process gone; {stage}"
        console.print(
            f"  [yellow]{entry.get('run_id')}[/yellow]  "
            f"apk={entry.get('apk_hash')}  action={entry.get('action')}  {where}"
        )


@app.command("verify-audit-log")
def verify_audit_log_cmd(
    audit_log: Path = typer.Option(
        AUDIT_LOG_PATH, "--audit-log",
        help="Path to the audit log to verify",
    ),
) -> None:
    """Parse the audit log and re-derive its hash chain to confirm no record
    was edited, deleted, or reordered (A1/A5 - tamper-evidence for ADR-0005)."""
    result = verify_audit_log(audit_log)
    if result["errors"]:
        console.print("[bold red]Audit log integrity FAILED:[/bold red]")
        for err in result["errors"]:
            console.print(f"  [red]{err}[/red]")
    else:
        console.print(
            f"[green]Audit log OK[/green] - {result['total']} record(s), "
            f"{result['chained']} chained, {result['legacy']} legacy"
        )
    # A log can contain authorizations whose runs never completed (a crashed or
    # deliberately-halted analysis). Not a failure - but an auditor must not read
    # a plain "OK" as "every run finished", and must not lose the fact to an
    # unrelated chain error either, so it is reported before the exit.
    _print_uncompleted_runs(result)
    if result["errors"]:
        raise typer.Exit(code=1)


@app.command("verify-device")
def verify_device_cmd(
    device_serial: str = typer.Option(
        "emulator-5554", "--device",
        help="Device/emulator serial to preflight before a dynamic scan",
    ),
) -> None:
    """Preflight the device + Frida path before a dynamic scan.

    One command replaces the manual adb/frida boot checks: confirms the device
    is present, adbd is root, frida-server is running at the venv-matching
    version (auto-provisioning or re-pushing the pinned tools/ binary if it is
    missing or the wrong version), and Frida can connect through the WSL2 relay
    and enumerate processes. Exits non-zero with the real reason on any failure
    (principle 3 / NFR-7) - never a silent OK. This is the command the runbook's
    "verify the Frida path" step should call instead of ``frida-ps -U``, which
    cannot discover a TCP emulator from WSL2."""
    console = Console()

    # 1. Device present and online.
    try:
        adb = device._require_adb()
        proc = subprocess.run(
            [adb, "devices"], capture_output=True, text=True, timeout=20,
        )
    except Exception as exc:
        # _require_adb (adb binary missing) or subprocess timeout/OS error. The
        # docstring promises the REAL reason on ANY failure - never a silent OK
        # and never a raw traceback - so surface it and exit non-zero.
        console.print(f"[bold red]Could not run `adb devices`:[/bold red] {exc}")
        raise typer.Exit(code=1)
    devices_out = proc.stdout
    # `adb devices` exiting non-zero means the adb daemon itself is unreachable -
    # e.g. the WSL2 adb relay socket failure ("UtilConnectUnix: socket failed") -
    # NOT merely "no emulator booted". That diagnostic is written to stderr, which
    # the old code dropped (reading only .stdout), so the operator saw a
    # misleading "(empty)" and the unhelpful "boot the emulator" advice for what
    # is actually a broken relay. Surface stderr and name the daemon failure
    # distinctly, with the remediation that actually applies.
    if proc.returncode != 0:
        console.print(
            f"[bold red]`adb devices` failed (exit {proc.returncode}) - the adb "
            "daemon is unreachable, not merely missing an emulator:[/bold red]\n"
            f"{(proc.stderr or devices_out).strip() or '(no output)'}\n"
            "Fix the adb/WSL2 relay (restart the Windows adb server) before a "
            "dynamic scan."
        )
        raise typer.Exit(code=1)
    present = any(
        (line.split()[:2] == [device_serial, "device"])
        for line in devices_out.splitlines()[1:]
    )
    if not present:
        console.print(
            f"[bold red]Device {device_serial} not online in `adb devices`:[/bold red]\n"
            f"{devices_out.strip() or '(empty)'}\n"
            "Boot the emulator on the Windows host and confirm it appears."
        )
        raise typer.Exit(code=1)
    console.print(f"[green]device[/green] {device_serial} present")

    # 2. G13 resolution guard: known-target dynamic scans drive the UI with
    #    hardcoded tap coordinates validated at ONE resolution; if the AVD was
    #    recreated at another size those taps miss, the app's check never fires,
    #    and the run reports a false "inconclusive" no mocked-UI unit test can
    #    catch. Surface any drift loudly here. Advisory: it warns, never gates
    #    (a wrong resolution is the operator's to fix, not a reason to block an
    #    otherwise-green preflight) - but it is never a silent no-op (NFR-7).
    try:
        res = device.screen_resolution_check(device_serial)
    except Exception as exc:
        console.print(f"[yellow]resolution guard skipped:[/yellow] {exc}")
    else:
        if res["status"] == "mismatch":
            console.print(f"[bold yellow]RESOLUTION WARNING[/bold yellow] {res['message']}")
        elif res["status"] == "unknown":
            console.print(f"[yellow]resolution guard:[/yellow] {res['message']}")
        else:
            console.print(f"[green]resolution[/green] {res['message']}")

    # 3. Root + frida-server (auto version-check/re-provision) + WSL2 relay +
    #    connect + enumerate. Any failure here surfaces the real reason.
    try:
        frida_dev, _instrument = device.setup_frida_connection(device_serial)
        count = len(frida_dev.enumerate_processes())
    except Exception as exc:
        console.print(f"[bold red]Frida connection failed:[/bold red] {exc}")
        raise typer.Exit(code=1)

    console.print(
        f"[bold green]FRIDA_OK[/bold green] connected, {count} process(es) on "
        f"{device_serial} - ready for a dynamic scan"
    )


if __name__ == "__main__":
    app()

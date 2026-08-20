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
)
from calibration.ground_truth import DEFAULT_PATH as DEFAULT_GROUND_TRUTH_PATH
from calibration.ground_truth import load_ground_truth
from calibration.report import compute_calibration_report
from dataclasses import asdict

from common import (
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
from dynamic.synthesizer import synthesize
from dynamic.success_checks.androgoat import AndroGoatSuccessCheck
from dynamic.success_checks.uncrackable1 import UnCrackable1SuccessCheck
from dynamic.success_checks.uncrackable2 import UnCrackable2SuccessCheck
from dynamic.success_checks.uncrackable3 import UnCrackable3SuccessCheck
from dynamic.success_checks.technology import TechnologyHooksEngagedCheck
from ingest.metadata import compute_hashes, ingest
from ingest.normalize import normalize_input
from report.attribution import attribute_root_evidence, gate_all_third_party
from report.generator import generate_calibration_report, generate_report
from static.coverage import (
    apply_coverage_bound,
    apply_unattributed_indicators,
    apply_unresolved_java,
    apply_unresolved_native,
    confidence_bound,
    coverage_bound_line,
    js_surface_coverage,
    per_surface_coverage,
)
from static.dynload import find_dynamic_loading
from static.hermes import is_binary_bundle, is_bundle_candidate, scan_bundle
from static.webview import find_webview_js
from static.jnibridge import has_unresolved
from static.deobfuscate import find_mapping_file, parse_mapping
from static.decision_engine import DEFAULT_THRESHOLD, classify
from static.androguard_scanner import scan_dex_strings
from static.decompile import decompile
from static.manifest import ManifestInfo, parse_manifest, parse_manifest_apk
from static.native import (
    compute_degradation,
    extract_native_libs,
    load_native_signatures,
    match_native,
)
from static.obfuscation import detect_obfuscation_level
from static.packers import detect_packers, load_packer_signatures
from static.signatures import load_signatures, scan
from static.stringrecover import match_recovered_strings, recover_hidden_strings
from storage.results import existing_metadata, load_runs_for_calibration, save_metadata, save_run

app = typer.Typer()
console = Console()

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
    `git diff HEAD --quiet` covers staged and unstaged edits to tracked files
    while ignoring untracked artifacts (outputs/, bundles) that always exist."""
    try:
        result = subprocess.run(["git", "rev-parse", "HEAD"], capture_output=True, text=True, check=True)
        commit = result.stdout.strip()
        if not commit:
            return "unknown"
        dirty = subprocess.run(["git", "diff", "HEAD", "--quiet"], capture_output=True).returncode == 1
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
    so_files = extract_native_libs(apk_path, native_dir)
    if not so_files:
        return NativeScanResult(libraries=[], abi_coverage={})
    # Load signatures BEFORE the scan so the Gap-1 body-decompilation gate can be
    # driven by the actual detection corpus: a stripped lib whose exports/strings
    # overlap a signature pattern gets its bodies decompiled even with no Java_*
    # export (closing the stripped-non-JNI blind spot). The trigger set is the
    # union of every pattern - self-maintaining as signatures are added.
    signatures = load_native_signatures(Path("config/signatures/native_detection.yaml"))
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
            errors.append(lib.scan_error)
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
    result.unaccounted_loads = unaccounted_native_loads(
        find_external_native_loads(java_files) if java_files else [],
        {so.name for so in so_files},
    )
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
        if ev.signature_id in already:
            continue
        w = weight.get(ev.signature_id, 0.0)
        c = cat.get(ev.signature_id)
        if c == "root":
            static_evidence.root_confidence = min(1.0, static_evidence.root_confidence + w)
            static_evidence.root_evidence.append(ev)
        elif c == "ssl":
            static_evidence.ssl_confidence = min(1.0, static_evidence.ssl_confidence + w)
            static_evidence.ssl_evidence.append(ev)
        else:
            continue
        already.add(ev.signature_id)
        added += 1
    return added


_JS_EVIDENCE_WEIGHT = 0.2


def _merge_js_evidence(static_evidence, js_matches) -> int:
    """Merge Hermes/binary JS-bundle idiom matches into StaticEvidence. Each
    `js_matches` entry is (sig_id, category, matched_text, file) recovered from a
    binary JS bundle's string table - deterministic evidence (the literal is really
    present in the app) at a modest fixed weight, because we recover string
    constants, not full JS control flow (the surface stays `partial`). Deduped per
    signature_id across bundles and routed by category exactly like
    _merge_dex_evidence. Returns the number of new signatures added."""
    already = {e.signature_id for e in static_evidence.root_evidence}
    already |= {e.signature_id for e in static_evidence.ssl_evidence}
    added = 0
    for sig_id, category, matched_text, bundle_file in js_matches:
        if sig_id in already:
            continue
        ev = Evidence(
            signature_id=sig_id,
            file=bundle_file,
            line_or_offset=0,
            matched_text=matched_text[:200],
            verification_state="deterministic_matched",
        )
        if category == "root":
            static_evidence.root_confidence = min(1.0, static_evidence.root_confidence + _JS_EVIDENCE_WEIGHT)
            static_evidence.root_evidence.append(ev)
        elif category == "ssl":
            static_evidence.ssl_confidence = min(1.0, static_evidence.ssl_confidence + _JS_EVIDENCE_WEIGHT)
            static_evidence.ssl_evidence.append(ev)
        else:
            continue
        already.add(sig_id)
        added += 1
    return added


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
    hardcoded number. Thresholds are a tuning knob, not pipeline-fatal input -
    a missing/unreadable section falls back to the engine default rather than
    failing the run."""
    try:
        import yaml
        with open("config/settings.yaml", encoding="utf-8") as f:
            thresholds = (yaml.safe_load(f) or {}).get("thresholds", {})
        root = float(thresholds.get("root", DEFAULT_THRESHOLD))
        ssl = float(thresholds.get("ssl", DEFAULT_THRESHOLD))
    except (OSError, ValueError, TypeError, yaml.YAMLError):
        return DEFAULT_THRESHOLD, DEFAULT_THRESHOLD
    # RESID-4D: a threshold is the one hand-authored input that was never
    # range-checked - a typo like root: 1.5 or -0.2 silently pinned detection
    # always-NEITHER / always-DETECTED with no error, unlike every other config
    # input (signatures, justification, manifest root) which fails loudly.
    # Validate after the missing/unreadable fallback, so a bad *value* raises
    # instead of being swallowed by the fallback guard.
    for name, value in (("root", root), ("ssl", ssl)):
        if not (0 <= value <= 1):
            raise ValueError(
                f"config/settings.yaml: threshold '{name}' = {value} is out of range - "
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


def _print_stage(result: StageResult) -> None:
    icon = {"success": "[green]OK[/green]", "failed": "[bold red]FAILED[/bold red]", "skipped": "[yellow]SKIPPED[/yellow]"}[result.status]
    console.print(f"{icon}  {result.stage}  ({result.duration_ms}ms)")
    if result.error:
        console.print(f"    [red]{result.error}[/red]")


def _wrap_stage(stage_name: str, fn, *args, **kwargs):
    """For pure functions that don't return a StageResult themselves - always
    produces one, so failures here are as loud as everywhere else (NFR-1)."""
    start = time.monotonic()
    try:
        raw_result = fn(*args, **kwargs)
        return StageResult(stage=stage_name, status="success", evidence={}, duration_ms=int((time.monotonic() - start) * 1000)), raw_result
    except Exception as exc:
        return StageResult(stage=stage_name, status="failed", evidence={}, error=str(exc), duration_ms=int((time.monotonic() - start) * 1000)), None


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


@app.command("run")
def run(
    apk: Path = typer.Option(..., "--apk", exists=True, help="Path to the APK to analyze"),
    justification: str = typer.Option(
        ..., "--justification",
        help="OWN_APP | CTF | AUTHORIZED_ENGAGEMENT:<id> | ACADEMIC_TRAINING_TARGET",
    ),
    skip_dynamic: bool = typer.Option(False, "--skip-dynamic", help="Skip the dynamic analysis stage"),
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
    apk = normalize_input(apk, ANALYSIS_ROOT / "normalized")
    prehashed = compute_hashes(apk)
    existing = existing_metadata(ANALYSIS_ROOT, prehashed.sha256)
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
    save_metadata(ANALYSIS_ROOT, apk_hash, ingest_result.evidence)

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

    # --- audit (FR-8.2/FR-3.3: before any actual analysis stage) ---
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
    root_sig_stage, root_signatures = _wrap_stage(
        "signature_load", load_signatures, Path("config/signatures/root_detection.yaml")
    )
    ssl_sig_stage, ssl_signatures = _wrap_stage(
        "signature_load", load_signatures, Path("config/signatures/ssl_pinning.yaml")
    )
    stage_results.append(root_sig_stage)
    stage_results.append(ssl_sig_stage)
    _print_stage(root_sig_stage)
    _print_stage(ssl_sig_stage)
    if root_sig_stage.status == "failed" or ssl_sig_stage.status == "failed":
        _halt(stage_results)

    # --- static signature scan + manifest ---
    static_roots = [jadx_output, apktool_output]
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
        mapping = parse_mapping(mapping_path.read_text(encoding="utf-8", errors="replace"))
        if mapping:
            console.print(
                f"[dim]Deobfuscation: recovered {len(mapping.obfuscated_to_original)} "
                f"identifier(s) from {mapping_path}[/dim]"
            )
    scan_stage, static_evidence = _wrap_stage(
        "static_scan", scan, static_roots, root_signatures + ssl_signatures,
        sqlite_path=Path(ANALYSIS_ROOT) / apk_hash / "xref.sqlite",
        mapping=mapping,
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
    try:
        dex_scan = scan_dex_strings(apk, root_signatures + ssl_signatures)
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
    if manifest_path.exists():
        _manifest_callable, _manifest_args = parse_manifest, (manifest_path, apktool_output)
    else:
        _manifest_callable, _manifest_args = parse_manifest_apk, (apk, apktool_output)
    manifest_stage, manifest_info = _wrap_stage("manifest_parse", _manifest_callable, *_manifest_args)
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
    native_java_files = list(Path(jadx_output).rglob("*.java")) if jadx_output else []
    # Coverage-limited: dynamic code loading (DexClassLoader/PathClassLoader/
    # Class.forName/DexFile/loadDex) releases and loads a payload DEX at runtime -
    # code we cannot see statically. Detect the loading call sites over the same
    # corpus; when present we degrade the java surface to partial so a java
    # NEITHER is never a confident negative over the dynamically-hidden payload
    # (ADR-0006). Mirrors the boundary-4 unaccounted-loads handling, java surface.
    dynamic_loads = find_dynamic_loading(native_java_files) if native_java_files else []
    # Coverage-limited: WebView JS bridge (gap A2). A WebView that loads JS via
    # addJavascriptInterface / evaluateJavascript / loadUrl("javascript:") /
    # loadDataWithBaseURL may run root/SSL checks in JS. Local HTML/JS containers
    # are now scannable (.html/.htm in SCANNED_SUFFIXES), so the bridge call sites
    # are labelled below without degrading coverage; only a *remote* http(s) JS
    # source is JS we cannot read statically and forces the java surface to
    # partial (handled in the apply_unresolved_java fold below, ADR-0006).
    webview_sites, webview_has_remote_js = (
        find_webview_js(native_java_files) if native_java_files else ([], False)
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

    # Real-world gap A1: Hermes/binary JS bundles (React Native release
    # assets/index.android.bundle, .hbc) are binary, so the text engine skips them
    # (signatures._is_binary NUL-probe) and jadx only reads DEX. Recover each
    # bundle's string-constant table and match root/SSL idioms against it. The
    # recovered constants are real deterministic evidence, but we see constants,
    # not full JS control flow - so a binary bundle also degrades the `js` surface
    # to partial below (ADR-0006). Plain-text JS needs no work here: the signature
    # engine already scans `.js/.jsbundle/.bundle`.
    js_matches: list[tuple[str, str, str, str]] = []
    has_binary_bundle = False
    assets_root = apktool_output / "assets" if apktool_output else None
    if assets_root is not None and assets_root.is_dir():
        for bundle in assets_root.rglob("*"):
            if not is_bundle_candidate(bundle) or not is_binary_bundle(bundle):
                continue
            res = scan_bundle(bundle)
            has_binary_bundle = has_binary_bundle or res["kind"] in ("hermes", "binary", "opaque")
            for sig_id, category, matched_text in res["matches"]:
                js_matches.append((sig_id, category, matched_text, str(bundle)))
    if js_matches:
        _merge_js_evidence(static_evidence, js_matches)

    # --- obfuscation level (ADR-0008 item 2) + coverage (items 9-11) ---
    # Pure deterministic signals. obfuscation_level drives the Java surface's
    # coverage (heavy -> partial, N1/G-C); native degradation + manifest parse
    # drive native/manifest coverage. The per-surface map is persisted per run
    # and feeds the report + calibration exclusion (G1/F2/G-A).
    obfuscation_stage, obfuscation_level = _wrap_stage(
        "obfuscation", detect_obfuscation_level, list((Path(jadx_output)).rglob("*.java"))
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
    packer_signatures = load_packer_signatures(Path("config/signatures/packers.yaml"))
    packer_stage, packer_findings = _wrap_stage(
        "packers", detect_packers, apk, packer_signatures
    )
    stage_results.append(packer_stage)
    _print_stage(packer_stage)
    if packer_stage.status == "failed":
        console.print(f"[yellow]packer detection degraded (non-fatal): {packer_stage.error}[/yellow]")
        packed = False
    else:
        packed = bool(packer_findings)
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
        java_files = list(Path(jadx_output).rglob("*.java"))
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
    # confident negative over it (ADR-0006). Additive: never touches confidence,
    # never invents evidence.
    _native_unexamined = (
        has_unresolved(native_evidence.jni_bindings)
        if native_evidence is not None else False
    ) or bool(
        native_evidence is not None and native_evidence.unaccounted_loads
    )
    coverage_map = apply_unresolved_native(coverage_map, _native_unexamined)
    # Coverage-limited: dynamic class loading present -> the payload DEX is
    # invisible statically, so the java surface degrades to partial. Same
    # additive, downgrade-only semantics as the native case above (ADR-0006).
    # Coverage-limited: WebView remote JS (gap A2) is folded into the same java
    # downgrade - a remote http(s) JS source (loadUrl/loadDataWithBaseURL with an
    # external URL) is JS we cannot read statically, semantically the same
    # unexamined-java case as dynamic class loading. apply_unresolved_java is
    # idempotent (fully_analyzed -> partial only), so combining is safe.
    _java_dynamic_unexamined = bool(dynamic_loads) or bool(webview_has_remote_js)
    coverage_map = apply_unresolved_java(coverage_map, _java_dynamic_unexamined)
    # Real-world gap A1: a Hermes/binary JS bundle present degrades the `js` surface
    # to partial - we recover its string constants, not full JS control flow, so a
    # js/root/ssl NEITHER is never a confident negative over bundle-hidden logic
    # (ADR-0006). Always set (fully_analyzed when no binary bundle), because `js` is
    # now a governing surface in coverage.py.
    coverage_map["js"] = js_surface_coverage(has_binary_bundle)

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

    console.print(f"[bold]Decision: {classification.action.value}[/bold]")
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
    # L-M7: the partial-decompile CAUTION was console-invisible (Finding L) - a
    # reviewer watching cli_output.txt saw the Decision with no lower-bound hint,
    # while the report carried "CAUTION: based on a PARTIAL decompile". Mirror
    # the report (generator.py) live so a partial decompile is never read as a
    # confident negative on the console.
    if decompile_completeness == "partial":
        console.print(
            f"[bold red]CAUTION: based on a PARTIAL decompile "
            f"({jadx_file_count} files, jadx exit {jadx_exit_code}) - "
            "a NEITHER here is a lower bound, not a confident negative; see Limitations.[/bold red]"
        )
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
    console.print(
        f"  Root: {confidence_bound('root', classification.root, coverage_map)} -> "
        f"{'DETECTED' if classification.root.detected else 'Inconclusive'}"
    )
    console.print(
        f"  SSL : {confidence_bound('ssl', classification.ssl, coverage_map)} -> "
        f"{'DETECTED' if classification.ssl.detected else 'Inconclusive'}"
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
    verification: Optional[VerificationResult] = None
    correlation_result = None
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
    synth = synthesize(classification, classification.action)
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
        serial = device.discover_device(device_serial)
        # FR-4.2: install_apk's check=True only confirms adb accepted the
        # install command - not that the package actually registered. A silent
        # install failure (signature mismatch, insufficient storage, device
        # quirk) must fail loudly here via pm list packages, not sail into the
        # dynamic stage where frida can't attach to a non-installed package and
        # fails confusingly downstream (NFR-1). verify_installed was dead code;
        # this is where it belongs.
        device.install_apk(serial, apk)
        install_ok = device.verify_installed(serial, package_name)
        if not install_ok:
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
        else:
            # Passed as synthesized to run_dynamic_stage, which only consumes it
            # when there's no target-specific script (unknown target / real app) -
            # hand-authored scripts for known targets take precedence. `synth` was
            # computed above, before the device gate, so it exists even when no
            # device deploys.
            try:
                dynamic_stage = frida_runner.run_dynamic_stage(
                    serial, package_name, classification.action, target=target_canonical,
                    synthesized={"source": synth.source, "applied_hooks": synth.applied_hooks},
                )
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
                verification = tech_check.check(
                    dynamic_stage.evidence.get("frida_messages", [])
                )
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
                            "no target-specific success check; this stage reports "
                            "technology-level hooks-engaged. The technology check "
                            "also computes the root/ssl verification, reported "
                            "separately in Dynamic Verification; correlation is "
                            "not attempted"
                        ),
                    },
                )
                stage_results.append(check_stage)
                _print_stage(check_stage)
            else:
                if logcat_capture_failed:
                    # logcat was unavailable - the failed check stage was already
                    # recorded above; running the target-specific check on empty
                    # logcat would be misleading. Leave verification None (report
                    # says "not verified") and correlation not attempted.
                    verification = None
                    correlation_result = None
                else:
                    try:
                        verification = success_check.check(logcat_output, frida_log)
                        correlation_result = correlation_module.correlate(classification, verification)
                    except Exception as exc:
                        # GAP-2 on an unexpected success-check exception for a
                        # known target: preserve the static report, surface the
                        # error, exit non-zero after the report is written.
                        dynamic_failed = True
                        verification = None
                        correlation_result = None
                        check_stage = StageResult(
                            stage="success-check", status="failed",
                            evidence={"reason": "unexpected success-check exception"},
                            error=f"success check raised unexpectedly: {exc}",
                        )
                        stage_results.append(check_stage)
                        _print_stage(check_stage)

    # dynamic_stage.evidence["reason"] already distinguishes "operator passed
    # --skip-dynamic" from "NEITHER classification - no bypass technique to
    # apply" (see frida_runner.run_dynamic_stage) - surfaced in the report
    # rather than collapsed into one hardcoded string, so a negative-control
    # run doesn't misleadingly look like someone chose to skip verification.
    dynamic_skip_reason = dynamic_stage.evidence.get("reason", "skipped") if dynamic_stage.status == "skipped" else None

    # --- terminal persistence: report + SQLite save + audit completion ---
    # Extracted into _finalize_run so the H1/H2 failure handling is unit-testable
    # (a failed audit completion must not be silent; a DB save failure must still
    # record the completion and surface the report path).
    report_kwargs = dict(
        run_id=run_id,
        apk_hash=apk_hash,
        timestamp=datetime.now(timezone.utc).isoformat(),
        metadata=ingest_result.evidence,
        classification=classification,
        verification=verification,
        dynamic_skip_reason=dynamic_skip_reason,
        correlation=correlation_result,
        stage_results=stage_results,
        output_dir=REPORTS_ROOT,
        manifest=manifest_info if manifest_stage.status == "success" else None,
        git_commit=git_commit,
        coverage=coverage_map,
        obfuscation_level=obfuscation_level,
        operator=operator,
        justification=justification,
        jni_bindings=(
            native_evidence.jni_bindings if native_evidence is not None else None
        ),
        unaccounted_loads=(
            native_evidence.unaccounted_loads if native_evidence is not None else None
        ),
        dynamic_loads=dynamic_loads or None,
        js_evidence=js_matches or None,
        webview_sites=webview_sites or None,
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
            "stage_results": stage_results,
            "git_commit": git_commit,
            "target": target,
            "package_name": package_name,
            "coverage": coverage_map,
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
            verification=(
                f"root_bypassed={verification.root_bypassed}, ssl_bypassed={verification.ssl_bypassed}"
                if verification else "not run"
            ),
        ),
    )

    if dynamic_failed:
        # GAP-2: the static analysis + report were still produced and audited;
        # the run failed only at the dynamic stage. Surface that loudly - the
        # report's Stage Results table already shows the failed dynamic stage and
        # correlation is "not attempted" - and exit non-zero so no automated
        # consumer mistakes a dynamic-failed run for a fully verified one.
        console.print(
            f"[bold red]Dynamic stage FAILED ({dynamic_stage.error or 'see report'}) - "
            f"static analysis and report were still produced; dynamic verification "
            f"is NOT attempted for this run (correlation=not_attempted).[/bold red]"
        )
        raise typer.Exit(code=1)


def _calibration_table(report) -> tuple[list[str], list[list[str]]]:
    """Build the calibration summary as plain data (column headers + string
    cells). Kept separate from the Rich rendering so header/cell parity is a
    unit-testable fact rather than a hand-maintained layout: a future cell
    added without its header (or vice versa) would misalign the table
    silently. Renders both Tier-2 exclusion counts (no-GT and partial-
    decompile) for parity with the generated report's two "Excluded from
    Tier 2..." lines."""
    def _fmt(rate: float | None) -> str:
        return f"{rate:.2f}" if rate is not None else "N/A"

    columns = [
        "Category", "Tier 1 confirmation", "Tier 2 precision", "Tier 2 recall",
        "Tier 2 F1", "n", "Excl no-GT", "Excl partial",
    ]
    rows: list[list[str]] = []
    for category in ("root", "ssl"):
        t1, t2 = report.tier1[category], report.tier2[category]
        rows.append([
            category,
            f"{_fmt(t1.confirmation_rate.rate)} ({t1.confirmed}/{t1.confirmed + t1.not_confirmed})",
            _fmt(t2.precision.rate), _fmt(t2.recall.rate), _fmt(t2.f1), str(t2.n),
            str(report.excluded_no_ground_truth.get(category, 0)),
            str(report.excluded_partial_decompile.get(category, 0)),
        ])
    return columns, rows


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

    # A bare "N/A" Tier 2 reads like a missing computation, but here it can be
    # the honest result of the decompile-completeness exclusion (report.py): a
    # detected verdict from a partial decompile isn't trustworthy either way,
    # so partial-decompile observations are dropped from Tier 2. When that
    # leaves a category with no TP/FP/FN to measure against, say so explicitly.
    for category in ("root", "ssl"):
        excluded = report.excluded_partial_decompile.get(category, 0)
        if report.tier2[category].precision.rate is None and excluded:
            console.print(
                f"[yellow]Note: {category} Tier 2 is N/A - {excluded} ground-truth "
                f"observation(s) were excluded as partial decompiles; a Tier-2 "
                f"verdict needs an {category}:true target that decompiles "
                f"completely, otherwise there is no true-positive to measure "
                f"precision/recall against.[/yellow]"
            )

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
    generate_report(
        run_id=run.run_id,
        apk_hash=run.apk_sha256,
        timestamp=timestamp,
        metadata=metadata,
        classification=cls,
        verification=_verification_from_json(run.verification_json),
        correlation=_correlation_from_json(run.correlation_json),
        stage_results=[_stage_from_json(s) for s in (run.stage_results_json or [])],
        output_dir=REPORTS_ROOT,
        dynamic_skip_reason=run.dynamic_skip_reason,
        manifest=_manifest_from_json(run.manifest_json),
        git_commit=rendering_commit,
        coverage=run.coverage,
        obfuscation_level=run.obfuscation_level,
    )


def _classification_from_json(cj: dict) -> ClassificationResult:
    def _ev(d: dict) -> Evidence:
        return Evidence(
            signature_id=d["signature_id"],
            file=d["file"],
            line_or_offset=d["line_or_offset"],
            matched_text=d["matched_text"],
            verification_state=d.get("verification_state", "deterministic_matched"),
        )

    def _cat(d: dict) -> CategoryVerdict:
        return CategoryVerdict(
            confidence=d["confidence"],
            detected=d["detected"],
            evidence=[_ev(e) for e in d.get("evidence", [])],
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
        raise typer.Exit(code=1)
    console.print(
        f"[green]Audit log OK[/green] - {result['total']} record(s), "
        f"{result['chained']} chained, {result['legacy']} legacy"
    )


if __name__ == "__main__":
    app()

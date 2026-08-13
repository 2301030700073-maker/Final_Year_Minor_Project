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
    VerificationResult,
)
from dynamic import correlation as correlation_module
from dynamic import device
from dynamic import frida_runner
from dynamic.success_checks.androgoat import AndroGoatSuccessCheck
from dynamic.success_checks.uncrackable1 import UnCrackable1SuccessCheck
from dynamic.success_checks.uncrackable2 import UnCrackable2SuccessCheck
from dynamic.success_checks.uncrackable3 import UnCrackable3SuccessCheck
from ingest.metadata import compute_hashes, ingest
from report.attribution import attribute_root_evidence, gate_all_third_party
from report.generator import generate_calibration_report, generate_report
from static.coverage import coverage_bound_line, per_surface_coverage
from static.decision_engine import DEFAULT_THRESHOLD, classify
from static.decompile import decompile
from static.manifest import ManifestInfo, parse_manifest
from static.native import (
    analyze_so,
    compute_degradation,
    extract_native_libs,
    load_native_signatures,
    match_native,
)
from static.obfuscation import detect_obfuscation_level
from static.signatures import load_signatures, scan
from storage.results import existing_metadata, load_runs_for_calibration, save_metadata, save_run

app = typer.Typer()
console = Console()

OUTPUTS_ROOT = Path("outputs")
ANALYSIS_ROOT = OUTPUTS_ROOT / "analysis"
REPORTS_ROOT = OUTPUTS_ROOT / "reports"
CALIBRATION_REPORTS_ROOT = OUTPUTS_ROOT / "reports" / "calibration"
AUDIT_LOG_PATH = OUTPUTS_ROOT / "audit_log.jsonl"

SUCCESS_CHECKS = {
    "uncrackable1": UnCrackable1SuccessCheck(),
    "uncrackable2": UnCrackable2SuccessCheck(),
    "uncrackable3": UnCrackable3SuccessCheck(),
    "AndroGoat": AndroGoatSuccessCheck(),
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


def _run_native_scan(apk_path, analysis_root, apk_hash):
    """Extract lib/<abi>/*.so, analyze each with readelf/nm/strings, match native
    signatures, and return a NativeScanResult (including per-ABI coverage).
    Returns None when the APK has no native libs (a legitimate 'nothing to scan',
    which the coverage contract records as native=unscannable, not a failure)."""
    from static.native import NativeScanResult

    native_dir = Path(analysis_root) / apk_hash / "native"
    so_files = extract_native_libs(apk_path, native_dir)
    if not so_files:
        return NativeScanResult(libraries=[], abi_coverage={})
    libraries = []
    errors: list[str] = []
    for so in so_files:
        lib = analyze_so(so)
        libraries.append(lib)
        if lib.scan_error:
            errors.append(lib.scan_error)
    signatures = load_native_signatures(Path("config/signatures/native_detection.yaml"))
    result = match_native(libraries, signatures)
    result.abi_coverage = compute_degradation(libraries)
    result.errors = errors
    return result


def _merge_native_evidence(static_evidence, native_evidence) -> None:
    """Native evidence feeds the same confidence model as Java (ADR-0001): merge
    native root/ssl confidence + evidence into StaticEvidence so classify() and
    the report treat both identically. Confidence is capped at 1.0 per category,
    same as the Java matcher's cap."""
    static_evidence.root_confidence = min(1.0, static_evidence.root_confidence + native_evidence.root_confidence)
    static_evidence.ssl_confidence = min(1.0, static_evidence.ssl_confidence + native_evidence.ssl_confidence)
    static_evidence.root_evidence.extend(native_evidence.root_evidence)
    static_evidence.ssl_evidence.extend(native_evidence.ssl_evidence)


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
    target: str = typer.Option(
        ..., "--target",
        help=(
            "Which target app this run is analyzing - selects the Frida bypass script and "
            "success-check module. Required, no default: a real app silently analyzed under "
            "uncrackable1's assumptions would load hooks for classes that don't exist in it, "
            "producing a misleading correlation mismatch instead of an honest 'not attempted' "
            "(a real bug this fixes). An unrecognized target (anything other than uncrackable1/2/3) "
            "is fine and expected for real apps - the dynamic stage degrades gracefully to "
            "'skipped, no bypass script available' rather than failing."
        ),
    ),
):
    stage_results: list[StageResult] = []
    # Full 128-bit uuid, not a [:8] truncation: RunRecord.run_id is the PK and
    # save_run upserts via session.merge, so a 32-bit collision would silently
    # overwrite a prior run's record instead of erroring - unacceptable in a
    # dual-use tool that values audit integrity (FR-7.1/ADR-0005).
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

    # --- ingest (identification, not gated behind auth - see module docstring) ---
    # FR-1.3: re-running against an already-ingested APK references the existing
    # record rather than re-ingesting. Hash first (cheap, in-memory) to resolve
    # the record; ingest() then reuses its aapt2/apksigner metadata and skips the
    # toolchain spawns instead of re-running them on every run. On a hash mismatch
    # (file changed) ingest falls through to a full tool-backed re-ingest.
    # Hash once, use twice: resolve the FR-1.3 reuse record by the hash, then
    # pass the precomputed HashSet into ingest so the file isn't streamed a
    # second time for its evidence (a full SHA-256/SHA-1/MD5 read per run).
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
    scan_stage, static_evidence = _wrap_stage(
        "static_scan", scan, static_roots, root_signatures + ssl_signatures
    )
    stage_results.append(scan_stage)
    _print_stage(scan_stage)
    if scan_stage.status == "failed":
        _halt(stage_results)

    # RESID-5C: pass the apktool output root so parse_manifest can resolve the
    # declared NSC reference against res/xml/ and say whether the file exists.
    manifest_stage, manifest_info = _wrap_stage("manifest_parse", parse_manifest, manifest_path, apktool_output)
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
    native_stage, native_evidence = _wrap_stage("native_scan", _run_native_scan, apk, ANALYSIS_ROOT, apk_hash)
    stage_results.append(native_stage)
    _print_stage(native_stage)
    if native_stage.status == "failed":
        _halt(stage_results)
    if native_evidence is not None:
        _merge_native_evidence(static_evidence, native_evidence)

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
    )

    # --- decision engine (per-category thresholds, 4-3) ---
    root_threshold, ssl_threshold = _load_thresholds()
    classify_stage, classification = _wrap_stage(
        "decision_engine", classify, static_evidence, root_threshold, ssl_threshold
    )
    stage_results.append(classify_stage)
    _print_stage(classify_stage)
    if classify_stage.status == "failed":
        _halt(stage_results)

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
    if skip_dynamic:
        dynamic_stage = StageResult(stage="dynamic", status="skipped", evidence={"reason": "--skip-dynamic passed"})
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
        if not device.verify_installed(serial, package_name):
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
            _halt(stage_results)
        dynamic_stage = frida_runner.run_dynamic_stage(serial, package_name, classification.action, target=target)
        stage_results.append(dynamic_stage)
        _print_stage(dynamic_stage)
        if dynamic_stage.status == "failed":
            _halt(stage_results)
        if dynamic_stage.status == "success":
            device.clear_logcat(serial)
            logcat_output = device.capture_logcat(serial)
            frida_log = "\n".join(str(m) for m in dynamic_stage.evidence.get("frida_messages", []))
            # F: SCRIPTS_BY_TARGET_ACTION and SUCCESS_CHECKS must stay in sync.
            # run_dynamic_stage degrades gracefully for unknown targets (returns a
            # skipped StageResult), so reaching here with success means a script ran
            # but no success check is registered - fail loudly as a StageResult
            # (NFR-1), not a raw KeyError traceback.
            success_check = SUCCESS_CHECKS.get(target)
            if success_check is None:
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
            verification = success_check.check(logcat_output, frida_log)
            correlation_result = correlation_module.correlate(classification, verification)

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
    )
    report_path = _finalize_run(
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


def _regenerate_report(run: RunRecord, apk, rendering_commit: str) -> None:
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

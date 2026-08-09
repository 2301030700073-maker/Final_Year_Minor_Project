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
    record_ingest_failure,
    record_run_completion,
    verify_audit_log,
)
from calibration.ground_truth import DEFAULT_PATH as DEFAULT_GROUND_TRUTH_PATH
from calibration.ground_truth import load_ground_truth
from calibration.report import compute_calibration_report
from common import Action, Evidence, StageResult, VerificationResult
from dynamic import correlation as correlation_module
from dynamic import device
from dynamic import frida_runner
from dynamic.success_checks.androgoat import AndroGoatSuccessCheck
from dynamic.success_checks.uncrackable1 import UnCrackable1SuccessCheck
from dynamic.success_checks.uncrackable2 import UnCrackable2SuccessCheck
from dynamic.success_checks.uncrackable3 import UnCrackable3SuccessCheck
from ingest.metadata import ingest
from report.generator import generate_calibration_report, generate_report
from static.decision_engine import DEFAULT_THRESHOLD, classify
from static.decompile import decompile
from static.manifest import ManifestInfo, parse_manifest
from static.signatures import load_signatures, scan
from storage.results import load_runs_for_calibration, save_metadata, save_run

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
        dirty = subprocess.run(["git", "diff", "HEAD", "--quiet"], capture_output=True).returncode != 0
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
        ).returncode != 0
        return f"{commit} (uncommitted changes present)" if dirty else commit
    except Exception:
        return "unknown"


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
    run_id = uuid.uuid4().hex[:8]
    git_commit = _git_commit_hash()
    operator = _operator_identity()

    # --- ingest (identification, not gated behind auth - see module docstring) ---
    ingest_result = ingest(apk)
    stage_results.append(ingest_result)
    _print_stage(ingest_result)
    if ingest_result.status == "failed":
        # ADR-0005: a failed ingest is still an analysis attempt and must be
        # traceable. record_authorization runs after ingest (so it can carry the
        # real hash), so a failed ingest would otherwise leave zero audit trail -
        # write a dedicated ingest_failed event with the hash if it was computed.
        record_ingest_failure(
            audit_log_path=AUDIT_LOG_PATH,
            apk_hash=(ingest_result.evidence.get("hashes") or {}).get("sha256"),
            justification=justification,
            operator=operator,
            git_commit=git_commit,
            error=ingest_result.error or "ingest failed",
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
    scan_stage, static_evidence = _wrap_stage(
        "static_scan", scan, [jadx_output, apktool_output], root_signatures + ssl_signatures
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

    # --- dynamic analysis ---
    verification: Optional[VerificationResult] = None
    correlation_result = None
    if skip_dynamic:
        dynamic_stage = StageResult(stage="dynamic", status="skipped", evidence={"reason": "--skip-dynamic passed"})
        stage_results.append(dynamic_stage)
        _print_stage(dynamic_stage)
    else:
        serial = device.discover_device(device_serial)
        package_name = ingest_result.evidence["package"]["package_name"]
        device.install_apk(serial, apk)
        dynamic_stage = frida_runner.run_dynamic_stage(serial, package_name, classification.action, target=target)
        stage_results.append(dynamic_stage)
        _print_stage(dynamic_stage)
        if dynamic_stage.status == "failed":
            _halt(stage_results)
        if dynamic_stage.status == "success":
            device.clear_logcat(serial)
            logcat_output = device.capture_logcat(serial)
            frida_log = "\n".join(str(m) for m in dynamic_stage.evidence.get("frida_messages", []))
            success_check = SUCCESS_CHECKS[target]
            verification = success_check.check(logcat_output, frida_log)
            correlation_result = correlation_module.correlate(classification, verification)

    # dynamic_stage.evidence["reason"] already distinguishes "operator passed
    # --skip-dynamic" from "NEITHER classification - no bypass technique to
    # apply" (see frida_runner.run_dynamic_stage) - surfaced in the report
    # rather than collapsed into one hardcoded string, so a negative-control
    # run doesn't misleadingly look like someone chose to skip verification.
    dynamic_skip_reason = dynamic_stage.evidence.get("reason", "skipped") if dynamic_stage.status == "skipped" else None

    # --- report ---
    report_path = generate_report(
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
    )
    save_run(ANALYSIS_ROOT, apk_hash, run_id, {
        "classification": classification,
        "verification": verification,
        "correlation": correlation_result,
        "stage_results": stage_results,
        "git_commit": git_commit,
        "target": target,
    })

    # --- audit: run-outcome record (LIM-A) ---
    # Close the traceability loop start->end: ADR-0005's "every attempt
    # traceable" is incomplete if the log records who authorized the run but
    # never whether it completed or what it found. Record the decision action,
    # per-stage statuses, and the dynamic-verification result before reporting.
    record_run_completion(
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
    )

    console.print(f"\n[bold green]Report: {report_path}[/bold green]")


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
    report = compute_calibration_report(
        runs, gt_entries,
        generated_at=datetime.now(timezone.utc).isoformat(),
        ground_truth_commit=_git_last_commit_touching(ground_truth),
    )

    def _fmt(rate: float | None) -> str:
        return f"{rate:.2f}" if rate is not None else "N/A"

    table = Table(title="Calibration Summary")
    for column in ("Category", "Tier 1 confirmation", "Tier 2 precision", "Tier 2 recall", "Tier 2 F1", "n"):
        table.add_column(column)
    for category in ("root", "ssl"):
        t1, t2 = report.tier1[category], report.tier2[category]
        table.add_row(
            category,
            f"{_fmt(t1.confirmation_rate.rate)} ({t1.confirmed}/{t1.confirmed + t1.not_confirmed})",
            _fmt(t2.precision.rate), _fmt(t2.recall.rate), _fmt(t2.f1), str(t2.n),
        )
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

"""CLI entrypoint wiring the full Phase 1 pipeline together.

Plain sequential pipeline, no orchestration framework (ADR-0002). Every
stage's status is checked before moving on; a failed stage halts the run
loudly with the full StageResult (NFR-1). One adjustment from the plan's
literal ordering: ingest runs before the audit record rather than after,
so the audit log can carry the real APK hash instead of a raw file path -
ingest is identification, not security analysis, so it doesn't need to be
gated behind the authorization check the way decompilation/scanning/
classification/dynamic-bypass do (ADR-0005/FR-8.2).
"""

from __future__ import annotations

import subprocess
import time
import uuid
from datetime import datetime, timezone
from pathlib import Path
from typing import Optional

import typer
from rich.console import Console

from audit.attestation import record_authorization
from common import Action, StageResult, VerificationResult
from dynamic import correlation as correlation_module
from dynamic import device
from dynamic import frida_runner
from dynamic.success_checks.uncrackable1 import UnCrackable1SuccessCheck
from dynamic.success_checks.uncrackable2 import UnCrackable2SuccessCheck
from dynamic.success_checks.uncrackable3 import UnCrackable3SuccessCheck
from ingest.metadata import ingest
from report.generator import generate_report
from static.decision_engine import classify
from static.decompile import decompile
from static.manifest import parse_manifest
from static.signatures import load_signatures, scan
from storage.results import save_metadata, save_run

app = typer.Typer()
console = Console()

OUTPUTS_ROOT = Path("outputs")
ANALYSIS_ROOT = OUTPUTS_ROOT / "analysis"
REPORTS_ROOT = OUTPUTS_ROOT / "reports"
AUDIT_LOG_PATH = OUTPUTS_ROOT / "audit_log.jsonl"

SUCCESS_CHECKS = {
    "uncrackable1": UnCrackable1SuccessCheck(),
    "uncrackable2": UnCrackable2SuccessCheck(),
    "uncrackable3": UnCrackable3SuccessCheck(),
}


def _git_commit_hash() -> str:
    try:
        result = subprocess.run(["git", "rev-parse", "HEAD"], capture_output=True, text=True, check=True)
        return result.stdout.strip()
    except Exception:
        return "unknown"


def _operator_identity() -> str:
    try:
        result = subprocess.run(["git", "config", "user.name"], capture_output=True, text=True, check=True)
        return result.stdout.strip() or "unknown"
    except Exception:
        return "unknown"


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


@app.command()
def run(
    apk: Path = typer.Option(..., "--apk", exists=True, help="Path to the APK to analyze"),
    justification: str = typer.Option(
        ..., "--justification",
        help="OWN_APP | CTF | AUTHORIZED_ENGAGEMENT:<id> | ACADEMIC_TRAINING_TARGET",
    ),
    skip_dynamic: bool = typer.Option(False, "--skip-dynamic", help="Skip the dynamic analysis stage"),
    device_serial: Optional[str] = typer.Option(None, "--device", help="Specific device/emulator serial"),
    target: str = typer.Option(
        "uncrackable1", "--target",
        help="Which target app this run is analyzing - selects both the Frida bypass script and the success-check module",
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

    # --- static signature scan + manifest ---
    root_signatures = load_signatures(Path("config/signatures/root_detection.yaml"))
    ssl_signatures = load_signatures(Path("config/signatures/ssl_pinning.yaml"))
    scan_stage, static_evidence = _wrap_stage(
        "static_scan", scan, [jadx_output, apktool_output], root_signatures + ssl_signatures
    )
    stage_results.append(scan_stage)
    _print_stage(scan_stage)
    if scan_stage.status == "failed":
        _halt(stage_results)

    manifest_stage, manifest_info = _wrap_stage("manifest_parse", parse_manifest, manifest_path)
    stage_results.append(manifest_stage)
    _print_stage(manifest_stage)
    # manifest parsing failure is non-fatal to classification (signatures already scanned
    # the raw manifest text as part of static_scan's apktool_output pass) - log it but continue.

    # --- decision engine ---
    classify_stage, classification = _wrap_stage("decision_engine", classify, static_evidence)
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

    # --- report ---
    report_path = generate_report(
        run_id=run_id,
        apk_hash=apk_hash,
        timestamp=datetime.now(timezone.utc).isoformat(),
        metadata=ingest_result.evidence,
        classification=classification,
        verification=verification,
        correlation=correlation_result,
        stage_results=stage_results,
        output_dir=REPORTS_ROOT,
    )
    save_run(ANALYSIS_ROOT, apk_hash, run_id, {
        "classification": classification,
        "verification": verification,
        "correlation": correlation_result,
        "stage_results": stage_results,
    })

    console.print(f"\n[bold green]Report: {report_path}[/bold green]")


if __name__ == "__main__":
    app()

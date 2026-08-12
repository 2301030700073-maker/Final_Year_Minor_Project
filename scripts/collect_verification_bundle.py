#!/usr/bin/env python3
"""Collect a single, complete verification bundle for the collaborator to push
back - environment info, tool versions, unit test results, and (if an APK is
given) a full real pipeline run.

The point: a status update should mean "here's the bundle," not "trust me,
it's green." Nothing in here is fabricated or smoothed over - a missing tool
or a failing command shows up in the bundle exactly as it happened, never
silently skipped (same rule as the pipeline itself: NFR-1, NFR-7).

Usage:
    uv run python scripts/collect_verification_bundle.py
    uv run python scripts/collect_verification_bundle.py --apk APK_Test/UnCrackable-Level1.apk --justification ACADEMIC_TRAINING_TARGET
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import sqlite3
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
BUNDLE_ROOT = REPO_ROOT / "docs" / "plans" / "handoff" / "bundles"


def _sha256_of(path: Path) -> str:
    digest = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _extract_run_id(cli_stdout: str) -> str | None:
    """Pull the fresh run's id from the pipeline's captured stdout.

    The `run` command prints `Report: .../outputs/reports/<apk_hash>/<run_id>.md`
    on success; the report filename IS the run_id. Returns None when the run
    produced no report (e.g. ingest or a pre-report stage failed) - the caller
    then ships no reports rather than stale ones from prior runs."""
    # The run_id is unambiguous hex terminating at ".md"; trailing rich markup
    # (e.g. "[/bold green]") may follow on the same line, so don't anchor at
    # end-of-line.
    m = re.search(r"Report: .*?/reports/[^/]+/([0-9a-f]+)\.md", cli_stdout)
    return m.group(1) if m else None


def _run(cmd: list[str], timeout: int = 60) -> dict:
    """Run a command, always returning a dict - never raises, so one missing
    tool or one failing check doesn't abort the whole collection run."""
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout, cwd=REPO_ROOT)
        return {
            "command": " ".join(cmd),
            "found": True,
            "exit_code": result.returncode,
            "stdout": result.stdout,
            "stderr": result.stderr,
        }
    except FileNotFoundError:
        return {"command": " ".join(cmd), "found": False, "exit_code": None, "stdout": "", "stderr": ""}
    except subprocess.TimeoutExpired:
        return {"command": " ".join(cmd), "found": True, "exit_code": None, "stdout": "", "stderr": "TIMED OUT"}


def collect_environment() -> dict:
    return {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "git_commit": _run(["git", "rev-parse", "HEAD"]),
        "git_status_porcelain": _run(["git", "status", "--porcelain"]),
        "python_version": _run([sys.executable, "--version"]),
        "uv_version": _run(["uv", "--version"]),
        "tool_versions": {
            "aapt2": _run(["aapt2", "version"]),
            "apksigner": _run(["apksigner", "--version"]),
            "jadx": _run(["jadx", "--version"]),
            "apktool": _run(["apktool", "--version"]),
            "adb": _run(["adb", "version"]),
            "frida": _run(["frida", "--version"]),
        },
        "adb_devices": _run(["adb", "devices"]),
        "frida_ps_dash_U": _run(["timeout", "3", "frida-ps", "-U"], timeout=5),
    }


def run_unit_tests() -> dict:
    return _run(["uv", "run", "pytest", "tests/unit", "-v"], timeout=300)


def run_real_pipeline(apk: str, justification: str, skip_dynamic: bool, target: str) -> dict:
    cmd = [
        "uv", "run", "python", "-m", "cli", "run",
        "--apk", apk, "--justification", justification, "--target", target,
    ]
    if skip_dynamic:
        cmd.append("--skip-dynamic")
    env_cmd = ["env", f"PYTHONPATH=src"] + cmd  # matches the run command documented in README.md
    result = _run(env_cmd, timeout=600)
    if not result["found"]:
        # 'env' isn't universal (e.g. some shells) - fall back to a direct call with PYTHONPATH unset,
        # which will fail loudly and visibly in the captured output rather than silently.
        result = _run(cmd, timeout=600)
    return result


def run_calibration_report() -> dict:
    cmd = ["uv", "run", "python", "-m", "cli", "calibration-report"]
    env_cmd = ["env", "PYTHONPATH=src"] + cmd
    result = _run(env_cmd, timeout=60)
    if not result["found"]:
        result = _run(cmd, timeout=60)
    return result


def export_calibration_snapshot(bundle_dir: Path) -> None:
    """Durability snapshot of the calibration-relevant `runs` table rows -
    outputs/ and every *.db file are both gitignored, so without this the
    accumulating calibration dataset (this project's least-regenerable
    artifact - unlike everything else under outputs/, it can't just be
    regenerated by re-running the pipeline against the same APK) has no
    git-committed backup at all. Plain JSON, not the raw binary .db file."""
    db_path = REPO_ROOT / "outputs" / "analysis" / "results.db"
    if not db_path.exists():
        print("  (no results.db yet - skipping calibration snapshot)")
        return

    json_columns = {"classification_json", "verification_json", "correlation_json", "stage_results_json"}
    conn = sqlite3.connect(db_path)
    conn.row_factory = sqlite3.Row
    try:
        rows = []
        for row in conn.execute("SELECT * FROM runs"):
            row_dict = dict(row)
            for col in json_columns:
                if row_dict.get(col):
                    row_dict[col] = json.loads(row_dict[col])
            rows.append(row_dict)
    finally:
        conn.close()

    (bundle_dir / "calibration_runs_snapshot.json").write_text(json.dumps(rows, indent=2), encoding="utf-8")


def write_summary(bundle_dir: Path, environment: dict, test_result: dict, pipeline_result: dict | None) -> None:
    lines = ["# Verification Bundle Summary", "", f"Generated: {environment['timestamp_utc']}", ""]
    lines.append(f"Git commit tested: `{environment['git_commit']['stdout'].strip()}`")
    dirty = bool(environment["git_status_porcelain"]["stdout"].strip())
    lines.append(f"Working tree clean: {'no - uncommitted changes present' if dirty else 'yes'}")
    lines.append("")
    lines.append("## Tool versions")
    for name, info in environment["tool_versions"].items():
        lines.append(f"- {name}: {'found' if info['found'] else '**NOT FOUND**'}")
    lines.append("")
    lines.append("## Device / Frida connectivity")
    lines.append(f"- `adb devices`: exit {environment['adb_devices']['exit_code']}")
    lines.append(f"- `frida-ps -U`: exit {environment['frida_ps_dash_U']['exit_code']}")
    lines.append("")
    lines.append("## Unit tests")
    lines.append(
        f"- Exit code: {test_result['exit_code']} "
        f"({'all passed' if test_result['exit_code'] == 0 else 'FAILURES - see pytest_output.txt'})"
    )
    lines.append("")
    lines.append("## Calibration snapshot (FR-9.2)")
    lines.append("- Report: `calibration_report_output.txt` (console summary) - full markdown also written locally under outputs/reports/calibration/")
    lines.append("- Durable row snapshot for backup: `calibration_runs_snapshot.json`")
    lines.append("")
    lines.append("## Real pipeline run")
    if pipeline_result is None:
        lines.append("- Not run (no --apk given to this script)")
    else:
        lines.append(
            f"- Exit code: {pipeline_result['exit_code']} "
            f"({'succeeded' if pipeline_result['exit_code'] == 0 else 'FAILED - see cli_output.txt'})"
        )
        lines.append("- Full console output: `cli_output.txt`")
        lines.append("- Copied reports (if any): `reports/<apk_hash>/`")
        lines.append("- Full decompiled evidence + metadata + run results (if the run got that far): `analysis/<apk_hash>/`")
    (bundle_dir / "SUMMARY.md").write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", help="Path to a real APK - if given, runs the actual pipeline too")
    parser.add_argument("--justification", default="ACADEMIC_TRAINING_TARGET")
    parser.add_argument("--skip-dynamic", action="store_true")
    parser.add_argument("--target", default="uncrackable1")
    args = parser.parse_args()

    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    bundle_dir = BUNDLE_ROOT / timestamp
    bundle_dir.mkdir(parents=True, exist_ok=True)

    print("Collecting environment info...")
    environment = collect_environment()
    (bundle_dir / "environment.json").write_text(json.dumps(environment, indent=2), encoding="utf-8")

    print("Running unit tests (uv run pytest tests/unit)...")
    test_result = run_unit_tests()
    (bundle_dir / "pytest_output.txt").write_text(test_result["stdout"] + "\n" + test_result["stderr"], encoding="utf-8")

    pipeline_result = None
    if args.apk:
        print(f"Running the real pipeline against {args.apk} ...")
        pipeline_result = run_real_pipeline(args.apk, args.justification, args.skip_dynamic, args.target)
        (bundle_dir / "cli_output.txt").write_text(
            pipeline_result["stdout"] + "\n" + pipeline_result["stderr"], encoding="utf-8"
        )
        # Scoped to this specific APK's hash - outputs/reports/ and
        # outputs/analysis/ both accumulate across every APK and every run
        # ever done locally; a bundle should only ever contain evidence for
        # what this invocation actually analyzed, not everything lying
        # around in the working directory.
        apk_hash = _sha256_of(Path(args.apk))

        # Copy only THIS run's report, not every report ever written for this
        # apk_hash - outputs/reports/ accumulates across runs, and shipping 25
        # historical reports (one per prior run) with no marker invites a
        # reviewer to mistake a stale one for this invocation's result (Finding
        # H). The fresh report's filename is its run_id. If the run produced no
        # report (a pre-report stage failed), ship none - an absent report is
        # honest; a stale one is not.
        reports_dir = REPO_ROOT / "outputs" / "reports" / apk_hash
        fresh_run_id = _extract_run_id(pipeline_result["stdout"] or "")
        if fresh_run_id:
            fresh_report = reports_dir / f"{fresh_run_id}.md"
            if fresh_report.exists():
                (bundle_dir / "reports" / apk_hash).mkdir(parents=True, exist_ok=True)
                shutil.copy2(fresh_report, bundle_dir / "reports" / apk_hash / f"{fresh_run_id}.md")
            else:
                print(f"  (note: report {fresh_report} expected from this run but missing - not shipping any reports)")
        else:
            print("  (note: no report path found in this run's output - not shipping stale prior reports)")

        # Pull in the full decompiled evidence (jadx sources, apktool output,
        # metadata.json, run_*.json) so a mismatch between what a signature
        # expects and what the real app contains can be diagnosed directly
        # from the pushed bundle - no separate "please paste the code" round
        # trip needed.
        analysis_dir = REPO_ROOT / "outputs" / "analysis" / apk_hash
        if analysis_dir.exists():
            shutil.copytree(analysis_dir, bundle_dir / "analysis" / apk_hash, dirs_exist_ok=True)
        else:
            print(f"  (note: expected {analysis_dir} from this run but it doesn't exist - ingest may have failed before producing it)")
    else:
        print("No --apk given - skipping the real pipeline run (environment + tests only).")

    # Runs after the pipeline block above (not before it) so this
    # invocation's own fresh run is actually reflected in the numbers -
    # running it earlier meant every bundle's snapshot only ever showed
    # prior runs, never its own.
    print("Computing calibration report...")
    calibration_result = run_calibration_report()
    (bundle_dir / "calibration_report_output.txt").write_text(
        calibration_result["stdout"] + "\n" + calibration_result["stderr"], encoding="utf-8"
    )
    export_calibration_snapshot(bundle_dir)

    write_summary(bundle_dir, environment, test_result, pipeline_result)

    print(f"\nBundle written to: {bundle_dir}")
    print("git add, commit, and push this directory (and docs/plans/research/ findings, if written).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

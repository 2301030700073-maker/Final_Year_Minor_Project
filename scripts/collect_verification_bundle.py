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

# The directories that hold the code under test. The pipeline answers "is the
# code committed?" with a path-limited check for exactly this reason (see cli.py's
# dirty stamp): a new module in src/, a signature YAML in config/ or an edit under
# scripts/ runs while `git diff HEAD` reports a clean tree, so the untracked half
# is checked - but ONLY there. This bundle ships the report whose provenance stamp
# that is, so the two must judge the same tree the same way; a blunt
# `git status --porcelain` counted every artifact this repo always carries
# (outputs/, bundles, run_logs/, editor dirs) and printed "uncommitted changes
# present" for a fully committed tree - contradicting the report in the same
# bundle. The raw porcelain output, junk and all, is still shipped in
# environment.json: this narrows the CLAIM, it hides nothing.
CODE_PATHSPEC = ("src", "config", "scripts")


def working_tree_dirty(repo_root: Path = REPO_ROOT) -> bool | None:
    """Whether the code under test differs from HEAD. None when git cannot say.

    Returns None rather than False for a directory that is not a repo (or a
    missing git binary): "I could not measure this" is not "the tree is clean",
    and the summary renders it as unknown instead of claiming either."""
    try:
        tracked = subprocess.run(
            ["git", "diff", "HEAD", "--quiet"], cwd=repo_root, capture_output=True
        )
    except (FileNotFoundError, OSError):
        return None
    if tracked.returncode not in (0, 1):  # 128 = not a repo / no HEAD yet
        return None
    if tracked.returncode == 1:
        return True
    untracked = subprocess.run(
        ["git", "status", "--porcelain", "--untracked-files=all", "--", *CODE_PATHSPEC],
        cwd=repo_root, capture_output=True, text=True,
    )
    if untracked.returncode != 0:
        return None
    return any(line.startswith("??") for line in (untracked.stdout or "").splitlines())


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
    # Real-output hazards, all verified live:
    # 1. Rich wraps the long path across lines, and the wrap lands BETWEEN the
    #    64-char apk_hash and the "/<run_id>.md" - real output is
    #    "[bold green]Report:\noutputs/reports/<hash>\n/<run_id>.md[/bold green]".
    #    So both "." and the hash segment must cross newlines: re.DOTALL makes
    #    "." (and ".*?") span lines, and the hash segment must be ".*?" not
    #    "[^/\n]+" - "[^/\n]+" stops at the newline before the "/run_id" and then
    #    finds no "/" right after (Finding I; the friend's "[^/\n]+" suggestion
    #    fails exactly here).
    # 2. Trailing rich markup (e.g. "[/bold green]") may follow ".md" on the
    #    same line, so don't anchor at end-of-line.
    # The run_id is unambiguous hex terminating at ".md"; the ".*?/reports/.*?/"
    # anchor skips the 64-char apk_hash (and any line wrap around it) so the
    # capture is the 32-char run_id, not a prefix of the hash.
    m = re.search(r"Report:.*?/reports/.*?/([0-9a-f]+)\.md", cli_stdout, re.DOTALL)
    return m.group(1) if m else None


def _find_fresh_report(run_id: str, reports_root: Path) -> Path | None:
    """Locate this run's report under outputs/reports/<apk_hash>/<run_id>.md and
    return the path the pipeline ACTUALLY wrote - so apk_hash is read from that
    path's parent, never recomputed from the input file.

    Why not recompute: the pipeline normalizes the input before hashing (an
    .aab/.apks is converted to an apk and it is the CONVERTED apk that gets
    hashed - cli.py runs normalize_input() then compute_hashes()), and it keys
    the output dir to that hash. So the raw input file's sha256 does NOT equal
    the apk_hash for any normalized input; locating the report by re-hashing
    args.apk would point at a nonexistent dir and ship no evidence on a fully
    successful run. The run_id is unique per run, so `*/<run_id>.md` matches
    exactly this invocation's report regardless of which hash dir it lives in."""
    matches = sorted(reports_root.glob(f"*/{run_id}.md"))
    return matches[0] if matches else None


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
        # The path-limited judgement (see CODE_PATHSPEC) that the SUMMARY states,
        # kept beside the raw porcelain above so the narrow claim never replaces
        # the full picture - the reader can always see the artifacts it excludes.
        "working_tree_dirty_code": working_tree_dirty(),
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


def outcome_label(result: dict, *, ok: str, failed: str, artifact: str) -> str:
    """The one-line verdict for a collected command - three states, not two.

    `_run` returns exit_code None for two different events: the binary was never
    found, and the command was killed at its timeout. Neither is a failure - both
    are "no outcome was measured" - and folding them into the failure arm prints a
    FAILURES verdict the collector never observed. A reader then cannot tell an
    environment that cannot run the tests from a tree that fails them, and those
    call for opposite responses (install the toolchain vs. bisect the change). The
    exit code itself is still printed by the caller, unaltered, so the raw fact is
    never replaced by this sentence.

    Same class as the pipeline's aggregate-returncode rule: a 0/1 fold erases the
    timeout sentinel, so the sentinel gets its own arm.
    """
    if not result["found"]:
        return f"NOT RUN - `{result['command'].split()[0]}` was not found, so no outcome was measured"
    if result["exit_code"] is None:
        return f"NOT RUN - the command hit its time limit before reporting; no outcome was measured (see {artifact})"
    if result["exit_code"] == 0:
        return ok
    return f"{failed} - see {artifact}"


def write_summary(bundle_dir: Path, environment: dict, test_result: dict, pipeline_result: dict | None) -> None:
    lines = ["# Verification Bundle Summary", "", f"Generated: {environment['timestamp_utc']}", ""]
    head = environment["git_commit"]["stdout"].strip()
    lines.append(
        f"Git commit tested: `{head}`" if head
        else "- Git commit tested: **unavailable** (git not found, or not a repository) - "
             "the run below is therefore not bound to a commit"
    )
    dirty = environment.get("working_tree_dirty_code")
    state = {
        False: "yes",
        True: "no - uncommitted changes under src/, config/ or scripts/",
        None: "unknown - git could not answer (see environment.json)",
    }[dirty]
    lines.append(f"Working tree clean (code under src/, config/, scripts/): {state}")
    lines.append(
        "- Untracked artifacts elsewhere in the tree are listed in environment.json "
        "and are not counted here - they are not the code under test."
    )
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
        f"({outcome_label(test_result, ok='all passed', failed='FAILURES', artifact='pytest_output.txt')})"
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
            f"({outcome_label(pipeline_result, ok='succeeded', failed='FAILED', artifact='cli_output.txt')})"
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
        # Scoped to this specific run's apk_hash - outputs/reports/ and
        # outputs/analysis/ both accumulate across every APK and every run
        # ever done locally; a bundle should only ever contain evidence for
        # what this invocation actually analyzed, not everything lying
        # around in the working directory.
        #
        # The apk_hash that keys those dirs is the hash of the NORMALIZED apk,
        # not the raw input file: the pipeline runs normalize_input() (which
        # converts an .aab/.apks to an apk) and THEN compute_hashes() on the
        # result (cli.py). So for a normalized input, re-hashing args.apk here
        # yields a different hash and points at dirs that don't exist - silently
        # shipping no report and no analysis on a fully successful run, the exact
        # false-absent-evidence outcome this collector's contract forbids. Take
        # the authoritative hash from the report the pipeline actually wrote,
        # located by this run's unique run_id.
        #
        # Copy only THIS run's report, not every report ever written for the
        # apk_hash (Finding H): shipping historical reports with no marker
        # invites a reviewer to mistake a stale one for this invocation's
        # result. If the run produced no report (a pre-report stage failed),
        # ship none - an absent report is honest; a stale one is not.
        reports_root = REPO_ROOT / "outputs" / "reports"
        fresh_run_id = _extract_run_id(pipeline_result["stdout"] or "")
        apk_hash: str | None = None
        if fresh_run_id:
            fresh_report = _find_fresh_report(fresh_run_id, reports_root)
            if fresh_report is not None:
                apk_hash = fresh_report.parent.name  # authoritative: the dir the pipeline wrote
                dest_dir = bundle_dir / "reports" / apk_hash
                dest_dir.mkdir(parents=True, exist_ok=True)
                shutil.copy2(fresh_report, dest_dir / f"{fresh_run_id}.md")
            else:
                print(f"  (note: report for run {fresh_run_id} expected from this run but not found under {reports_root} - not shipping any reports)")
        else:
            print("  (note: no report path found in this run's output - not shipping stale prior reports)")

        # Pull in the full decompiled evidence (jadx sources, apktool output,
        # metadata.json, run_*.json) so a mismatch between what a signature
        # expects and what the real app contains can be diagnosed directly
        # from the pushed bundle - no separate "please paste the code" round
        # trip needed. Prefer the authoritative apk_hash read from the report
        # above; fall back to hashing the input only when no report was produced
        # (correct for a plain .apk, which normalize passes through unchanged;
        # best-effort for a normalized input whose run failed before reporting).
        if apk_hash is None:
            apk_hash = _sha256_of(Path(args.apk))
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

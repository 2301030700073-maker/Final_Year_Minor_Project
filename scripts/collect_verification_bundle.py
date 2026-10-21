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
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
BUNDLE_ROOT = REPO_ROOT / "docs" / "plans" / "handoff" / "bundles"

# The directories that hold the code under test. The pipeline answers "is the
# code committed?" with a path-limited check for exactly this reason (see cli.py's
# dirty stamp): a new module in src/, a signature YAML in config/ or an edit under
# scripts/ runs while `git diff HEAD` reports a clean tree, so the untracked half
# is checked - but ONLY there. The tracked half is not path-limited at all: a file
# differing from HEAD counts wherever it sits (see working_tree_dirty below).
# This bundle ships the report whose provenance stamp
# that is, so the two must judge the same tree the same way; a blunt
# `git status --porcelain` counted every artifact this repo always carries
# (outputs/, bundles, run_logs/, editor dirs) and printed "uncommitted changes
# present" for a fully committed tree - contradicting the report in the same
# bundle. The raw porcelain output, junk and all, is still shipped in
# environment.json: this narrows the CLAIM, it hides nothing.
CODE_PATHSPEC = ("src", "config", "scripts")


@dataclass(frozen=True)
class ShippedEvidence:
    """What this bundle actually carries, as bundle-relative paths (or None).

    Every field is set by the code that did the copying, at the moment it copied,
    so no SUMMARY line can describe a directory the bundle does not hold
    (ADR-0037). Frozen because it describes a finished bundle, not a plan for one.
    The next artefact the bundle learns to carry adds a field here."""
    calibration_markdown: str | None = None
    report: str | None = None
    analysis: str | None = None
    # The durable runs snapshot. It was the one shipped artefact whose SUMMARY
    # line was unconditional: when no results.db existed the collector skipped the
    # file and the summary still said it was there - the same "SUMMARY describes a
    # directory the bundle does not hold" defect ADR-0037 fixed for the others.
    calibration_snapshot: str | None = None
    # The collector's own record of the branches it took (ADR-0039). Rendered as a
    # section of the summary, so the absent-evidence arms can point at something the
    # reader is already holding - instead of at cli_output.txt, which holds the
    # pipeline's console and says nothing about the collector's decision.
    notes: tuple[str, ...] = ()


def working_tree_dirty(repo_root: Path = REPO_ROOT) -> bool | None:
    """Whether the tree this bundle measures differs from HEAD. None when git cannot say.

    Two branches, deliberately different in scope: a tracked file differing from
    HEAD counts wherever it sits (`git diff HEAD --quiet`, no pathspec - a modified
    test file or design document changes what this bundle's results mean), while an
    untracked file counts only under CODE_PATHSPEC, because the artifacts this repo
    always carries (outputs/, bundles, run_logs/) are not the code under test. The
    summary states both scopes rather than calling the whole thing "code".

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
    except OSError as exc:
        # The contract above says "never raises". A binary that exists but cannot
        # be executed (PermissionError, e.g. a non-executable file on Windows), and
        # OSError generally, are neither "not found" nor a timeout - record the
        # outcome instead of aborting a collection run that has already done most
        # of its work. FileNotFoundError is a subclass of OSError, so it is caught
        # by the arm above first.
        return {"command": " ".join(cmd), "found": True, "exit_code": None,
                "stdout": "", "stderr": f"could not execute: {type(exc).__name__}: {exc}"}


def _pipeline_adb() -> str | None:
    """The adb the dynamic stage will actually use (device.py's `_adb_wrapper_path`).

    ``~/.local/bin/adb`` is a wrapper around the Windows ``adb.exe``; the pipeline
    resolves it in this order, so this probe does too. The order is duplicated
    deliberately rather than imported: ``src/dynamic/device.py`` imports ``frida``
    at module level, and environment collection must keep *reporting* a missing
    toolchain instead of crashing on one (ADR-0041)."""
    candidate = Path.home() / ".local/bin/adb"
    if candidate.is_file():
        return str(candidate)
    return shutil.which("adb")


def _attached_devices(stdout: str) -> list[str]:
    """Serials `adb devices` reported as attached - the header line has no
    second field of "device", so it filters itself out."""
    serials = []
    for line in (stdout or "").splitlines():
        parts = line.split()
        if len(parts) >= 2 and parts[1] == "device":
            serials.append(parts[0])
    return serials


def collect_environment() -> dict:
    pipeline_adb = _pipeline_adb()

    return {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "git_commit": _run(["git", "rev-parse", "HEAD"]),
        "git_status_porcelain": _run(["git", "status", "--porcelain"]),
        # The judgement the SUMMARY states (see working_tree_dirty): tracked
        # changes anywhere in the tree, untracked only under CODE_PATHSPEC. Kept
        # beside the raw porcelain above so the narrower claim never replaces the
        # full picture - the reader can always see the artifacts it excludes.
        "working_tree_dirty": working_tree_dirty(),
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
        # ADR-0041: probe the FIRST HOP of the dynamic route - the adb the pipeline
        # itself resolves - not a frida CLI transport. The adb forward and the
        # Windows-side relay the dynamic stage connects through are created by that
        # stage (_start_relay), so they do not exist here. Measured before this
        # change: `frida-ps -U` timed out (exit 124) in 4 of 4 bundles whose report
        # recorded a successful handshake, and `frida-ps -D emulator-5554` answers
        # "Device 'emulator-5554' not found" in this namespace. The window is at
        # least the pipeline's own connect timeout (device.py: timeout=10), because
        # a shorter one cannot tell "no device" from "slower than the probe".
        "pipeline_adb_devices": _run([pipeline_adb, "devices"], timeout=30)
        if pipeline_adb
        else {
            "command": "~/.local/bin/adb devices (no adb on this machine)",
            "found": False,
            "exit_code": None,
            "stdout": "",
            "stderr": "",
        },
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


def ship_calibration_markdown(bundle_dir: Path, stdout: str) -> str | None:
    """Copy the calibration markdown THIS invocation wrote into the bundle.

    The path is parsed from the command's own console line - the calibration
    analogue of _extract_run_id - and never guessed as "the newest file in the
    directory": that heuristic ships a prior run's markdown under this run's
    timestamp whenever this invocation fails to produce one, which is the
    Finding H trap one artefact over. An absent markdown is honest; a stale one
    is not.

    It matters because the curve - its sample definition, its threshold-edge
    markers, its exclusion accounting - exists ONLY in this markdown (ADR-0033
    #5, ADR-0034 #4). Without it, the bundle's calibration evidence is a console
    summary of a section the reviewer cannot open (ADR-0036). Returns the
    bundle-relative path shipped, or None when nothing was shipped."""
    match = re.search(r"^\s*Calibration report:\s*(\S+)\s*$", stdout, re.M)
    if match is None:
        print("  (note: no calibration report path in the command's output - not shipping any markdown)")
        return None
    source = Path(match.group(1))
    if not source.is_absolute():
        source = REPO_ROOT / source  # the command prints outputs/reports/... relative
    if not source.is_file():
        print(f"  (note: the command reported {source} but no such file exists - not shipping any markdown)")
        return None
    dest = bundle_dir / "calibration" / source.name
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, dest)
    return f"calibration/{source.name}"


def export_calibration_snapshot(bundle_dir: Path) -> str | None:
    """Durability snapshot of the calibration-relevant `runs` table rows -
    outputs/ and every *.db file are both gitignored, so without this the
    accumulating calibration dataset (this project's least-regenerable
    artifact - unlike everything else under outputs/, it can't just be
    regenerated by re-running the pipeline against the same APK) has no
    git-committed backup at all. Plain JSON, not the raw binary .db file."""
    db_path = REPO_ROOT / "outputs" / "analysis" / "results.db"
    if not db_path.exists():
        print("  (no results.db yet - skipping calibration snapshot)")
        return None

    json_columns = {"classification_json", "verification_json", "correlation_json", "stage_results_json"}
    try:
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
    except (sqlite3.Error, json.JSONDecodeError) as exc:
        # A locked/corrupt DB, or a stored JSON cell that does not parse, must not
        # abort a bundle that has already collected everything else. The SUMMARY
        # renders the absent snapshot as absent (calibration_snapshot=None).
        print(f"  (note: could not snapshot {db_path.name}: {type(exc).__name__}: {exc} - not writing one)")
        return None

    (bundle_dir / "calibration_runs_snapshot.json").write_text(json.dumps(rows, indent=2), encoding="utf-8")
    return "calibration_runs_snapshot.json"


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


def write_summary(
    bundle_dir: Path,
    environment: dict,
    test_result: dict,
    pipeline_result: dict | None,
    shipped: ShippedEvidence,
) -> None:
    lines = ["# Verification Bundle Summary", "", f"Generated: {environment['timestamp_utc']}", ""]
    head = environment["git_commit"]["stdout"].strip()
    lines.append(
        f"Git commit tested: `{head}`" if head
        else "- Git commit tested: **unavailable** (git not found, or not a repository) - "
             "the run below is therefore not bound to a commit"
    )
    dirty = environment.get("working_tree_dirty")
    state = {
        False: "yes",
        True: "no - a tracked file differs from HEAD, or an untracked file sits "
              "under src/, config/ or scripts/",
        None: "unknown - git could not answer (see environment.json)",
    }[dirty]
    # The scope is stated on the line rather than left to the reader's inference,
    # and it is the PREDICATE's scope, not the pathspec's name (ADR-0035): the
    # tracked half counts anywhere, so a clean verdict must not read as "the whole
    # tree is clean" (the untracked artifacts this repo always carries are not
    # counted). Both halves are named for that reason.
    lines.append(
        "Working tree clean (tracked changes counted anywhere in the tree; "
        f"untracked only under src/, config/, scripts/): {state}"
    )
    lines.append(
        "- Untracked artifacts elsewhere in the tree are listed in environment.json "
        "and are not counted here - they are not the code under test. Tracked "
        "changes are counted wherever they sit: a modified test file, or a changed "
        "design document, alters what the results below mean."
    )
    lines.append("")
    lines.append("## Tool versions")
    for name, info in environment["tool_versions"].items():
        lines.append(f"- {name}: {'found' if info['found'] else '**NOT FOUND**'}")
    lines.append("")
    lines.append("## Device connectivity (the route the dynamic stage uses)")
    lines.append(f"- `adb devices` (resolved from PATH): exit {environment['adb_devices']['exit_code']}")
    probe = environment["pipeline_adb_devices"]
    seen = _attached_devices(probe.get("stdout", ""))
    lines.append(
        f"- The pipeline's own adb (`~/.local/bin/adb`, the path the dynamic stage "
        f"resolves - `device.py` `_adb_wrapper_path`): exit {probe['exit_code']} - "
        + (", ".join(f"`{s}`" for s in seen) if seen else "no device attached")
    )
    lines.append(
        "- Frida connectivity is deliberately **not** probed here: the adb forward and the "
        "Windows-side relay the dynamic stage connects through are created by that stage "
        "(`_start_relay`), so nothing before a run can observe them. The run observes it - "
        "the protocol handshake recorded in this run's report under `Instrumentation:`, "
        "which is the effect that proves the connection (ADR-0020)."
    )
    lines.append("")
    lines.append("## Unit tests")
    lines.append(
        f"- Exit code: {test_result['exit_code']} "
        f"({outcome_label(test_result, ok='all passed', failed='FAILURES', artifact='pytest_output.txt')})"
    )
    lines.append("")
    lines.append("## Calibration snapshot (FR-9.2)")
    # ADR-0036: state what actually travelled. The old wording - "full markdown
    # also written locally" - described a file under a gitignored outputs/, i.e.
    # one the reader of a pushed bundle can never open, and the curve lives only
    # there. When nothing shipped, say that rather than pointing at it.
    if shipped.calibration_markdown is None:
        lines.append(
            "- Report: `calibration_report_output.txt` (console summary); **no markdown "
            "shipped in this bundle** - the collector printed the reason it shipped none. "
            "The curve, its sample definition and its threshold markers are markdown-only "
            "(ADR-0033/0034), so they are absent from this bundle."
        )
    else:
        lines.append(
            f"- Report: `calibration_report_output.txt` (console summary); full markdown "
            f"**shipped as `{shipped.calibration_markdown}`** - the curve, its sample definition and "
            f"its threshold markers are in that file and nowhere else."
        )
    if shipped.calibration_snapshot:
        lines.append(f"- Durable row snapshot for backup: `{shipped.calibration_snapshot}`")
    else:
        # ADR-0037's rule, applied to the one artefact that still had an
        # unconditional line: an absent file must not be described as shipped.
        lines.append(
            "- Durable row snapshot for backup: **not written in this bundle** - no "
            "readable `results.db` was available when the collector ran, so there was "
            "nothing to snapshot. The collector printed the reason it wrote none."
        )
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
        # ADR-0037: name what this bundle holds, never a pattern. The copies
        # above are conditional (no run id / no fresh report / no analysis dir),
        # so these lines render the three states as three - a shipped path, or a
        # plain statement that nothing was copied.
        #
        # ADR-0039: an absent arm points at `shipped.notes`, which this same
        # document carries below. It used to point at cli_output.txt - but that
        # file is the PIPELINE's console, and when the collector is the reason
        # nothing was copied it records a successful run and no reason at all.
        if shipped.report:
            lines.append(f"- This run's report: `{shipped.report}`")
        elif shipped.notes:
            lines.append(
                "- This run's report: **none shipped** - the collector's reason for copying "
                "nothing is in *Collector notes* below. A run that produced no report ships "
                "no history, deliberately: a stale report would read as this run's."
            )
        else:
            lines.append(
                "- This run's report: **none shipped**, and the collector recorded no reason "
                "- that is a defect in the collector, not a fact about the run. Every branch "
                "that copies nothing is meant to note why; the console that ran this printed "
                "it, and `cli_output.txt` here holds the pipeline's own output."
            )
        if shipped.analysis:
            lines.append(
                f"- Decompiled evidence + metadata + run results: `{shipped.analysis}` - copied "
                "into this bundle directory, and deliberately **not committed**: `.gitignore` "
                "excludes every bundle's `analysis/` subtree (policy A1 - regenerable decompiler "
                "output, duplicated once per bundle of the same APK). A pushed bundle therefore "
                "carries `reports/`, this SUMMARY, `environment.json`, `pytest_output.txt`, "
                "`cli_output.txt` and `calibration/*.md`; a reviewer who needs a file from here "
                "should ask for it (`git add -f <path>`) rather than look for it."
            )
        elif shipped.notes:
            lines.append(
                "- Decompiled evidence + metadata + run results: **none copied into this "
                "bundle** - the collector's reason is in *Collector notes* below; `cli_output.txt` "
                "here holds the pipeline's own console output for this run."
            )
        else:
            lines.append(
                "- Decompiled evidence + metadata + run results: **none copied into this bundle**, "
                "and the collector recorded no reason - that is a defect in the collector, not a "
                "fact about the run."
            )
    if shipped.notes:
        lines.append("")
        lines.append("## Collector notes")
        lines.append("")
        lines.extend(f"- {n}" for n in shipped.notes)
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
    report_shipped: str | None = None
    analysis_shipped: str | None = None
    # ADR-0039: every branch that copies nothing records why. Printed here, and
    # carried by the summary - the console is not in the bundle, so a reason only
    # the console sees is a reason the reviewer does not have.
    collector_notes: list[str] = []

    def note(msg: str) -> None:
        collector_notes.append(msg)
        print(f"  (note: {msg})")

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
                hash_basis = "the hash this run's report was written under"
                dest_dir = bundle_dir / "reports" / apk_hash
                dest_dir.mkdir(parents=True, exist_ok=True)
                shutil.copy2(fresh_report, dest_dir / f"{fresh_run_id}.md")
                report_shipped = f"reports/{apk_hash}/{fresh_run_id}.md"
            else:
                note(f"report for run {fresh_run_id} was expected from this run but is not under "
                     f"{reports_root.relative_to(REPO_ROOT)} - not copying any report")
        else:
            note("no report path was found in this run's output - not copying any prior report, "
                 "which would read as this run's")

        # Pull in the full decompiled evidence (jadx sources, apktool output,
        # metadata.json, run_*.json) BESIDE the report, for the run's local
        # record: a mismatch between what a signature expects and what the real
        # app contains can then be read from one directory. This tree does NOT
        # travel - .gitignore excludes every bundle's analysis/ subtree (policy
        # A1: regenerable output, duplicated once per bundle of the same APK), so
        # a pushed bundle carries the report without it, and a reviewer who needs
        # a file from here asks for it to be force-added. Prefer the
        # authoritative apk_hash read from the report
        # above; fall back to hashing the input only when no report was produced
        # (correct for a plain .apk, which normalize passes through unchanged;
        # best-effort for a normalized input whose run failed before reporting).
        if apk_hash is None:
            apk_hash = _sha256_of(Path(args.apk))
            hash_basis = f"sha256 of {args.apk} - no report was found to key it"
        analysis_dir = REPO_ROOT / "outputs" / "analysis" / apk_hash
        if analysis_dir.exists():
            shutil.copytree(analysis_dir, bundle_dir / "analysis" / apk_hash, dirs_exist_ok=True)
            analysis_shipped = f"analysis/{apk_hash}"
        else:
            # The cause is NOT asserted: for a normalized input the raw hash above is the
            # wrong key, so this path can be missing on a run that succeeded end to end.
            note(f"expected outputs/analysis/{apk_hash} from this run but it does not exist ({hash_basis}) "
                 "- not copying any decompiled evidence")
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
    # ADR-0036: the text above is the console's SUMMARY of a report whose
    # substance - the curve, its sample, its threshold markers - is markdown-only,
    # so this invocation's own markdown travels with the bundle too.
    calibration_markdown = ship_calibration_markdown(bundle_dir, calibration_result["stdout"] or "")
    calibration_snapshot = export_calibration_snapshot(bundle_dir)

    write_summary(
        bundle_dir, environment, test_result, pipeline_result,
        ShippedEvidence(
                calibration_markdown=calibration_markdown, report=report_shipped,
                analysis=analysis_shipped, calibration_snapshot=calibration_snapshot,
                notes=tuple(collector_notes),
            ),
    )

    print(f"\nBundle written to: {bundle_dir}")
    print("git add, commit, and push this directory (and docs/plans/research/ findings, if written).")
    failed = _failed_collected_stages(test_result, pipeline_result, calibration_result)
    if failed:
        print(f"\nFAILED: {', '.join(failed)} - see SUMMARY.md in {bundle_dir}")
        return 1
    return 0


def _failed_collected_stages(test_result, pipeline_result, calibration_result) -> list[str]:
    """The collected stages that did not succeed, named for the caller's exit code.

    SESSION11L4: main() used to `return 0` unconditionally while the pipeline's
    own exit code was only PRINTED into SUMMARY.md, so run.sh's final "All checks
    passed" was unconditional - measured 2026-10-20 on a spotify run whose
    dynamic stage FAILED (adb timeout): the bundle recorded "Exit code: 1
    (FAILED)" while the process told the shell everything passed. The bundle is
    still written either way (a failed run's evidence is what a reader needs);
    only the verdict is honest now. A None exit_code (tool not found, or the
    check timed out) counts as a failure: the check did not run to a result."""
    failed: list[str] = []
    if test_result["exit_code"] not in (0,):
        failed.append("unit tests")
    if pipeline_result is not None and pipeline_result["exit_code"] not in (0,):
        failed.append("pipeline run")
    if calibration_result["exit_code"] not in (0,):
        failed.append("calibration report")
    return failed


if __name__ == "__main__":
    raise SystemExit(main())

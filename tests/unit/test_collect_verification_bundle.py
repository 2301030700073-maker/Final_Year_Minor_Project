import json
import ast
import re
import subprocess
import sys
import time
from pathlib import Path

import collect_verification_bundle as bundle


def test_run_enforces_the_given_timeout_rather_than_hanging():
    start = time.monotonic()
    result = bundle._run([sys.executable, "-c", "import time; time.sleep(30)"], timeout=1)
    assert time.monotonic() - start < 5  # generous margin, still far below the 30s sleep
    assert result["exit_code"] is None
    assert result["stderr"] == "TIMED OUT"


def test_frida_ps_check_uses_a_short_explicit_timeout_not_the_default(monkeypatch):
    calls = []

    def fake_run(cmd, timeout=60):
        calls.append((cmd, timeout))
        return {"command": " ".join(cmd), "found": True, "exit_code": 0, "stdout": "", "stderr": ""}

    monkeypatch.setattr(bundle, "_run", fake_run)
    bundle.collect_environment()

    frida_ps_calls = [(cmd, t) for cmd, t in calls if "frida-ps" in cmd]
    assert frida_ps_calls, "expected a frida-ps -U check in collect_environment()"
    for _, t in frida_ps_calls:
        assert t <= 5, f"frida-ps -U must use an explicit short timeout, got {t}"


def test_export_calibration_snapshot_reads_real_db_and_parses_json_columns(tmp_path, monkeypatch):
    monkeypatch.setattr(bundle, "REPO_ROOT", tmp_path)
    analysis_dir = tmp_path / "outputs" / "analysis"
    analysis_dir.mkdir(parents=True)

    from sqlalchemy.orm import Session
    from storage.db import ApkRecord, RunRecord, get_engine
    with Session(get_engine(analysis_dir)) as session:
        # FK enforcement (PRAGMA foreign_keys=ON) is on, so the parent apks row
        # must exist before the run - matching the real save_metadata-before-
        # save_run flow.
        session.add(ApkRecord(sha256="abc123", first_ingested_at="2026-01-01T00:00:00", raw_metadata={}))
        session.add(RunRecord(
            run_id="run1", apk_sha256="abc123", timestamp="2026-01-01T00:00:00",
            action="ROOT_ONLY", root_confidence=0.8, root_detected=True,
            classification_json={"action": "ROOT_ONLY"}, stage_results_json=[],
        ))
        session.commit()

    bundle_dir = tmp_path / "bundle"
    bundle_dir.mkdir()

    bundle.export_calibration_snapshot(bundle_dir)

    snapshot = json.loads((bundle_dir / "calibration_runs_snapshot.json").read_text(encoding="utf-8"))
    assert len(snapshot) == 1
    assert snapshot[0]["run_id"] == "run1"
    # Parsed back into a real object, not left as a JSON-encoded string -
    # this is meant as a human/diff-readable durability snapshot.
    assert snapshot[0]["classification_json"] == {"action": "ROOT_ONLY"}


def test_export_calibration_snapshot_handles_missing_db_gracefully(tmp_path, monkeypatch):
    monkeypatch.setattr(bundle, "REPO_ROOT", tmp_path)
    bundle_dir = tmp_path / "bundle"
    bundle_dir.mkdir()

    bundle.export_calibration_snapshot(bundle_dir)  # must not raise when no run has ever been persisted

    assert not (bundle_dir / "calibration_runs_snapshot.json").exists()


def test_extract_run_id_parses_fresh_report_from_pipeline_output():
    # Finding H: the bundle must ship only THIS run's report, not every
    # historical one for the apk hash. The fresh report's filename is its
    # run_id, parsed from the pipeline's "Report:" line.
    #
    # Finding I: the fixture must be the REAL rich-wrapped output, not a
    # synthetic single-line path. Rich console.print wraps the long report path
    # across lines ("[bold green]Report:\noutputs/reports/<hash>\n/<run_id>.md
    # [/bold green]") when capturing via subprocess (no terminal, default 80-col
    # wrap). A same-line fixture passed while real output - where "." can't cross
    # the newline - returned None and shipped zero reports.
    from collect_verification_bundle import _extract_run_id
    apk_hash = "014a5bb124a344909045ec27ec3577d0" * 2  # 64-char sha256, wrapped onto its own line
    run_id = "014a5bb124a344909045ec27ec3577d0"  # 32-char run id on the next line
    stdout = (
        "\n[bold green]Report:\n"
        f"outputs/reports/{apk_hash}\n"
        f"/{run_id}.md[/bold green]\n"
    )
    assert _extract_run_id(stdout) == run_id


def test_extract_run_id_returns_none_when_no_report_was_produced():
    # A run that failed before the report stage must parse to None so the
    # bundle ships no reports rather than stale ones from prior runs.
    from collect_verification_bundle import _extract_run_id
    assert _extract_run_id("") is None
    assert _extract_run_id("ingest failed before report generation\n") is None


def test_find_fresh_report_reads_apk_hash_from_the_written_path_not_the_input(tmp_path):
    # The bug this guards: the pipeline NORMALIZES the input before hashing (an
    # .aab/.apks is converted to an apk and it is the CONVERTED apk that gets
    # hashed - cli.py runs normalize_input() then compute_hashes()), and keys
    # outputs/reports/<hash>/ to THAT hash. The sha256 of the raw input file is
    # therefore NOT the apk_hash for a normalized input, so locating the report
    # by re-hashing args.apk points at a nonexistent dir and ships no evidence
    # on a fully successful run. The collector must instead read apk_hash from
    # the report the pipeline actually wrote, found by this run's unique run_id.
    from collect_verification_bundle import _find_fresh_report

    reports_root = tmp_path / "outputs" / "reports"
    pipeline_hash = "d" * 64  # the CONVERTED apk's hash - what the pipeline keyed the dir to
    run_id = "a" * 32
    written = reports_root / pipeline_hash / f"{run_id}.md"
    written.parent.mkdir(parents=True)
    written.write_text("# report\n", encoding="utf-8")

    found = _find_fresh_report(run_id, reports_root)
    assert found == written
    # apk_hash is READ from the path, so it equals the dir the pipeline wrote -
    # independent of any hash of the raw input file (the whole point of the fix).
    assert found.parent.name == pipeline_hash


def test_find_fresh_report_matches_only_this_runs_id_not_a_stale_report(tmp_path):
    # A prior run's report for the same apk sits in the same hash dir. The glob
    # is by this run's unique run_id, so a stale different-run_id report is never
    # returned - the filesystem-layer counterpart of _extract_run_id's "ship no
    # stale reports" contract.
    from collect_verification_bundle import _find_fresh_report

    reports_root = tmp_path / "outputs" / "reports"
    hash_dir = reports_root / ("d" * 64)
    hash_dir.mkdir(parents=True)
    (hash_dir / f"{'b' * 32}.md").write_text("stale prior run", encoding="utf-8")

    assert _find_fresh_report("a" * 32, reports_root) is None


def test_find_fresh_report_returns_none_when_reports_root_is_absent(tmp_path):
    # No runs ever recorded (reports_root missing): glob yields nothing, the
    # helper returns None, and the caller ships no report - never raises.
    from collect_verification_bundle import _find_fresh_report

    assert _find_fresh_report("a" * 32, tmp_path / "outputs" / "reports") is None


# --- the working-tree claim -------------------------------------------------
#
# The SUMMARY tells the collaborator whether the tested commit matches the tree
# the tests ran against. It answered with a blunt `git status --porcelain`, which
# counts every untracked artifact (outputs/, run_logs/, editor dirs) this repo
# always carries - so it printed "no - uncommitted changes present" for a fully
# committed tree, contradicting the provenance stamp the report in the SAME
# bundle carries, which is path-limited on purpose (cli.py's dirty stamp) for
# exactly this reason. These pin the rule; the parity test pins the pathspec.

def _git(cwd, *args):
    subprocess.run(["git", *args], cwd=cwd, check=True, capture_output=True)


def _committed_repo(tmp_path):
    _git(tmp_path, "init", "-q")
    _git(tmp_path, "config", "user.email", "bundle@test")
    _git(tmp_path, "config", "user.name", "bundle test")
    (tmp_path / "src").mkdir()
    (tmp_path / "src" / "module.py").write_text("x = 1\n", encoding="utf-8")
    _git(tmp_path, "add", "-A")
    _git(tmp_path, "commit", "-qm", "init")
    return tmp_path


def test_untracked_artifacts_outside_the_code_dirs_are_not_a_dirty_tree(tmp_path):
    repo = _committed_repo(tmp_path)
    (repo / "outputs" / "reports").mkdir(parents=True)
    (repo / "outputs" / "reports" / "r.md").write_text("r", encoding="utf-8")
    (repo / "run_logs").mkdir()
    (repo / "run_logs" / "run.log").write_text("l", encoding="utf-8")
    assert bundle.working_tree_dirty(repo) is False, (
        "artifacts this repo always carries must not read as uncommitted code"
    )


def test_an_untracked_file_under_a_code_dir_is_dirty(tmp_path):
    repo = _committed_repo(tmp_path)
    (repo / "src" / "new_module.py").write_text("y = 2\n", encoding="utf-8")
    assert bundle.working_tree_dirty(repo) is True


def test_an_edit_to_a_tracked_file_is_dirty(tmp_path):
    repo = _committed_repo(tmp_path)
    (repo / "src" / "module.py").write_text("x = 999\n", encoding="utf-8")
    assert bundle.working_tree_dirty(repo) is True


def test_a_tracked_change_outside_the_code_dirs_is_dirty_and_the_line_says_so(tmp_path):
    """The tracked half is repo-wide (ADR-0035); the line must not name a scope it lacks.

    The sibling test above edits a file INSIDE CODE_PATHSPEC, so it is satisfied by
    either reading. This one edits only tests/, which is tracked but outside the
    pathspec: the verdict must still be dirty (a modified test file changes what
    "all tests passed" means), and the rendered line must not tell the reader the
    change is under src/, config/ or scripts/ - the falsified claim."""
    repo = _committed_repo(tmp_path)
    (repo / "tests").mkdir(exist_ok=True)
    (repo / "tests" / "b.py").write_text("x = 1\n", encoding="utf-8")
    _git(repo, "add", "tests/b.py")
    _git(repo, "commit", "-qm", "a tracked test file")
    (repo / "tests" / "b.py").write_text("x = 2\n", encoding="utf-8")
    assert bundle.working_tree_dirty(repo) is True

    env = _summary_env()
    env["working_tree_dirty"] = True
    bundle.write_summary(tmp_path, env, _run_shape(0), None, bundle.ShippedEvidence())
    line = [
        ln for ln in (tmp_path / "SUMMARY.md").read_text(encoding="utf-8").splitlines()
        if ln.startswith("Working tree")
    ][0]
    assert "uncommitted changes under src/, config/ or scripts/" not in line, (
        f"the change is under tests/; the line claims a location: {line}"
    )
    assert not line.startswith("Working tree clean (code under"), (
        f"the label asserts a scope the tracked check does not have: {line}"
    )
    assert "anywhere" in line, f"the tracked half must be stated as repo-wide: {line}"


def test_the_summary_reads_the_key_the_environment_writes():
    """A renamed provenance key must move in both places or the summary reads None.

    `write_summary` uses `environment.get(...)`, so a producer/consumer drift does
    not raise - it silently renders "unknown". Pin the two literals together."""
    src = (Path(__file__).resolve().parents[2] / "scripts"
           / "collect_verification_bundle.py").read_text(encoding="utf-8")
    written = re.search(r'"working_tree_dirty[a-z_]*":\s*working_tree_dirty\(\)', src)
    assert written, "collect_environment no longer writes the tree-state key"
    read = re.search(r'environment\.get\("(working_tree_dirty[a-z_]*)"\)', src)
    assert read, "write_summary no longer reads the tree-state key"
    assert written.group(0).split('"')[1] == read.group(1)


def test_a_directory_that_is_not_a_repo_reads_as_unknown_not_clean(tmp_path):
    assert bundle.working_tree_dirty(tmp_path) is None, (
        "git failing to answer is not evidence that the tree is clean"
    )


def test_the_pathspec_matches_the_pipelines_own_dirty_stamp():
    """The bundle must not disagree with the report it ships about the same tree."""
    cli = (Path(__file__).resolve().parents[2] / "src" / "cli.py").read_text(encoding="utf-8")
    m = re.search(r'"--porcelain"[^)]*?"--",\s*((?:"[a-z_]+",?\s*)+)', cli, re.S)
    assert m, "the pipeline's path-limited dirty check moved - update this guard"
    assert tuple(re.findall(r'"([a-z_]+)"', m.group(1))) == bundle.CODE_PATHSPEC


def test_the_summary_states_the_code_dirty_state_and_never_guesses_it(tmp_path):
    """"clean" is a measurement; git being unavailable is a third state, not "yes"."""
    lines = {}
    for value, expected in ((False, "yes"), (True, "no"), (None, "unknown")):
        env = {
            "timestamp_utc": "2026-01-01T00:00:00+00:00",
            "git_commit": {"found": True, "stdout": "abc123\n", "exit_code": 0},
            "git_status_porcelain": {"found": True, "stdout": "?? junk\n", "exit_code": 0},
            "working_tree_dirty": value,
            "tool_versions": {},
            "adb_devices": {"exit_code": 0},
            "frida_ps_dash_U": {"exit_code": 0},
        }
        bundle.write_summary(tmp_path, env, _run_shape(0), None, bundle.ShippedEvidence())
        text = (tmp_path / "SUMMARY.md").read_text(encoding="utf-8")
        line = [ln for ln in text.splitlines() if ln.startswith("Working tree")][0]
        assert expected in line, (value, line)
        lines[value] = line
    assert "src" in lines[False], "the claim must name what it measured"


# --- the shipped calibration markdown (ADR-0036) ----------------------------
#
# The bundle's only calibration evidence was the console summary, while the curve -
# its sample, its threshold markers, its exclusions - exists only in the markdown,
# under a gitignored outputs/ that has never once been committed. These pin the
# parse, the copy, and what the SUMMARY says about what actually travelled.

def _calibration_line(bundle_dir: Path) -> str:
    text = (bundle_dir / "SUMMARY.md").read_text(encoding="utf-8")
    return [
        ln for ln in text.splitlines()
        if ln.startswith("- Report: `calibration_report_output")
    ][0]


def test_the_shipped_markdown_is_the_named_one_not_the_newest(tmp_path):
    """A "newest in the directory" implementation would ship a PRIOR run's file."""
    src = tmp_path / "reports"
    src.mkdir()
    named = src / "20260101T000000Z.md"
    named.write_text("this invocation", encoding="utf-8")
    newer = src / "20260102T000000Z.md"
    newer.write_text("a prior run", encoding="utf-8")  # written later, so newer mtime
    bdir = tmp_path / "bundle"
    shipped = bundle.ship_calibration_markdown(bdir, f"Calibration report: {named}\n")
    assert shipped == "calibration/20260101T000000Z.md"
    assert (bdir / shipped).read_text(encoding="utf-8") == "this invocation"
    assert not (bdir / "calibration" / newer.name).exists(), (
        "the file that was NOT named must not travel - that is the Finding H trap"
    )


def test_a_relative_reported_path_is_resolved_against_the_repo_root(tmp_path, monkeypatch):
    """The command prints `outputs/reports/calibration/...` - relative, never absolute."""
    (tmp_path / "outputs" / "reports" / "calibration").mkdir(parents=True)
    md = tmp_path / "outputs" / "reports" / "calibration" / "20260101T000000Z.md"
    md.write_text("rel", encoding="utf-8")
    monkeypatch.setattr(bundle, "REPO_ROOT", tmp_path)
    shipped = bundle.ship_calibration_markdown(
        tmp_path / "bundle", "Calibration report: outputs/reports/calibration/20260101T000000Z.md\n"
    )
    assert shipped == "calibration/20260101T000000Z.md"


def test_a_missing_path_line_or_file_ships_nothing_and_says_so(tmp_path, capsys):
    bdir = tmp_path / "bundle"
    assert bundle.ship_calibration_markdown(bdir, "no report line here\n") is None
    assert bundle.ship_calibration_markdown(bdir, "Calibration report: /nope/gone.md\n") is None
    assert not (bdir / "calibration").exists(), "an absent markdown ships nothing, not a placeholder"
    assert capsys.readouterr().out.count("not shipping any markdown") == 2, (
        "both failure modes must be visible where the operator is looking"
    )


def test_the_summary_states_which_calibration_markdown_travelled(tmp_path):
    env = _summary_env()
    bundle.write_summary(tmp_path, env, _run_shape(0), None, bundle.ShippedEvidence(calibration_markdown="calibration/20260101T000000Z.md"))
    line = _calibration_line(tmp_path)
    assert "calibration/20260101T000000Z.md" in line, line
    assert "written locally" not in line

    bundle.write_summary(tmp_path, env, _run_shape(0), None, bundle.ShippedEvidence())
    line = _calibration_line(tmp_path)
    assert "no markdown shipped" in line, line
    assert "written locally" not in line, (
        "the local-only phrasing pointed at a gitignored file the reader cannot open"
    )


def test_main_ships_the_markdown_and_passes_it_to_the_summary():
    """A helper nothing calls is the unit-tested-parser trap in reverse."""
    src = (Path(__file__).resolve().parents[2] / "scripts"
           / "collect_verification_bundle.py").read_text(encoding="utf-8")
    main = [n for n in ast.parse(src).body
            if isinstance(n, ast.FunctionDef) and n.name == "main"][0]
    calls = [n for n in ast.walk(main) if isinstance(n, ast.Call)]
    called = {c.func.id for c in calls if isinstance(c.func, ast.Name)}
    assert "ship_calibration_markdown" in called
    summary = [c for c in calls if isinstance(c.func, ast.Name) and c.func.id == "write_summary"][0]
    assert len(summary.args) == 5, "the shipped markdown must reach the summary it describes"


def test_the_summary_names_the_evidence_the_bundle_holds(tmp_path):
    """A shipped path is named; the placeholder pattern never reaches a summary."""
    bundle.write_summary(
        tmp_path, _summary_env(), _run_shape(0), _run_shape(0),
        bundle.ShippedEvidence(report="reports/abc123/0f1e.md", analysis="analysis/abc123"),
    )
    text = (tmp_path / "SUMMARY.md").read_text(encoding="utf-8")
    assert "`reports/abc123/0f1e.md`" in text, text
    assert "`analysis/abc123`" in text
    assert "<apk_hash>" not in text, "a template string is not a path"


def test_the_analysis_line_says_the_tree_does_not_travel(tmp_path):
    """A1 excludes every bundle's analysis/ subtree; the line must not imply otherwise.

    ADR-0037 named the path and stopped there, which reads as evidence the
    reviewer can open. The deciding rule is .gitignore's, not the collector's."""
    bundle.write_summary(
        tmp_path, _summary_env(), _run_shape(0), _run_shape(0),
        bundle.ShippedEvidence(analysis="analysis/abc123"),
    )
    line = [
        ln for ln in (tmp_path / "SUMMARY.md").read_text(encoding="utf-8").splitlines()
        if ln.startswith("- Decompiled evidence")
    ][0]
    assert "`analysis/abc123`" in line
    assert "not committed" in line and "A1" in line, line
    assert "git add -f" in line, "a reviewer needs the remedy, not just the exclusion"
    assert "`cli_output.txt`" in line, "the committed set must be named"


def test_the_summary_says_none_shipped_and_points_at_the_console(tmp_path):
    """The copies are conditional; so are the lines that describe them (ADR-0037).

    Every pipeline bundle so far shipped its report, so this state has never been
    rendered in the wild - it is the state the run that most needs reading lands
    in, which is why it is pinned here rather than left to the first failure."""
    bundle.write_summary(
        tmp_path, _summary_env(), _run_shape(0), _run_shape(0), bundle.ShippedEvidence(),
    )
    text = (tmp_path / "SUMMARY.md").read_text(encoding="utf-8")
    assert "<apk_hash>" not in text
    report_lines = [ln for ln in text.splitlines() if ln.startswith("- This run's report")]
    analysis_lines = [ln for ln in text.splitlines() if ln.startswith("- Decompiled evidence")]
    assert len(report_lines) == 1 and len(analysis_lines) == 1, (report_lines, analysis_lines)
    # Two different words, because the two things differ: a report does travel with
    # a pushed bundle, a decompiled tree does not (ADR-0038).
    assert "none shipped" in report_lines[0], report_lines[0]
    assert "none copied into this bundle" in analysis_lines[0], analysis_lines[0]
    # No notes were passed, so each arm names that as a collector defect rather than
    # pointing at an explanation that is not there (ADR-0039).
    for ln in report_lines + analysis_lines:
        assert "no reason" in ln and "defect in the collector" in ln, ln


def test_the_absent_arms_point_at_notes_the_same_document_carries(tmp_path):
    """ADR-0039: the pointer's target is in the artefact being read.

    cli_output.txt is the *pipeline's* console. When the collector is the reason
    nothing was copied, that file records a successful run and no reason at all,
    so the arm must not send the reviewer there for one."""
    bundle.write_summary(
        tmp_path, _summary_env(), _run_shape(0), _run_shape(0),
        bundle.ShippedEvidence(notes=(
            "report for run deadbeef was expected from this run but is not under "
            "outputs/reports - not copying any report",
            "expected outputs/analysis/abc123 from this run but it does not exist "
            "(sha256 of x.apk - no report was found to key it) - not copying any decompiled evidence",
        )),
    )
    text = (tmp_path / "SUMMARY.md").read_text(encoding="utf-8")
    assert "## Collector notes" in text, text
    assert "not copying any report" in text
    assert "no report was found to key it" in text, "the hash basis is the point of this note"
    for start in ("- This run's report", "- Decompiled evidence"):
        ln = [l for l in text.splitlines() if l.startswith(start)][0]
        assert "*Collector notes* below" in ln, ln
    assert text.index("## Collector notes") > text.index("- Decompiled evidence"), "below means below"


def test_a_bundle_with_no_notes_renders_no_notes_section(tmp_path):
    """An empty header would assert a record that does not exist."""
    bundle.write_summary(
        tmp_path, _summary_env(), _run_shape(0), _run_shape(0),
        bundle.ShippedEvidence(report="reports/h/r.md"),
    )
    assert "## Collector notes" not in (tmp_path / "SUMMARY.md").read_text(encoding="utf-8")


# --- the outcome fold -------------------------------------------------------
#
# `_run` returns exit_code None for two different events: the binary was never
# found, and the command was killed at its timeout. Neither is a verdict. The
# SUMMARY folded both into the failure arm, so a missing toolchain and a real test
# failure printed the same word - the one distinction the collaborator needs most,
# since the fixes are opposite. These go through write_summary rather than calling
# the helper, so the wiring is what is asserted.

def _summary_env():
    return {
        "timestamp_utc": "2026-01-01T00:00:00+00:00",
        "git_commit": {"found": True, "stdout": "abc123\n", "exit_code": 0},
        "git_status_porcelain": {"found": True, "stdout": "", "exit_code": 0},
        "working_tree_dirty": False,
        "tool_versions": {},
        "adb_devices": {"exit_code": 0},
        "frida_ps_dash_U": {"exit_code": 0},
    }


def _run_shape(exit_code, found=True):
    """The dict `_run` returns - the only shape write_summary is ever handed."""
    return {"command": "uv run pytest tests/unit -v", "found": found, "exit_code": exit_code,
            "stdout": "", "stderr": ""}


def _line(tmp_path, text, prefix, occurrence=0, **kwargs):
    """The Nth SUMMARY line with this prefix. Both outcome lines start "- Exit
    code:", and picking the first silently asserted the unit-test line while
    claiming to check the pipeline one."""
    bundle.write_summary(tmp_path, _summary_env(), shipped=bundle.ShippedEvidence(), **kwargs)
    body = (tmp_path / "SUMMARY.md").read_text(encoding="utf-8")
    match = [ln for ln in body.splitlines() if ln.startswith(prefix)]
    assert len(match) > occurrence, (prefix, occurrence, body)
    return match[occurrence]


def test_a_command_that_never_reported_is_not_reported_as_a_failure(tmp_path):
    """No outcome measured is a third state, not the failure arm."""
    for result, fragment in (
        ({"command": "uv run pytest tests/unit -v", "found": False, "exit_code": None},
         "NOT RUN"),
        ({"command": "uv run pytest tests/unit -v", "found": True, "exit_code": None},
         "time limit"),
    ):
        line = _line(tmp_path, "unit", "- Exit code:", test_result=result, pipeline_result=None)
        assert fragment in line, (result, line)
        assert "FAILURES" not in line, (result, line)
        assert "all passed" not in line, (result, line)


def test_a_command_that_reported_still_gets_its_pass_or_fail_verdict(tmp_path):
    line = _line(tmp_path, "u", "- Exit code:",
                 test_result={"command": "uv run pytest", "found": True, "exit_code": 0}, pipeline_result=None)
    assert "all passed" in line, line
    line = _line(tmp_path, "u", "- Exit code:",
                 test_result={"command": "uv run pytest", "found": True, "exit_code": 1}, pipeline_result=None)
    assert "FAILURES - see pytest_output.txt" in line, line


def test_the_pipeline_line_keeps_the_same_distinction(tmp_path):
    """The same fold sat on the pipeline line; a reader needs the same three states."""
    base = {"command": "env PYTHONPATH=src uv run python -m cli run", "stdout": "", "stderr": ""}
    cases = (
        (dict(base, found=False, exit_code=None), ("NOT RUN", "- Exit code: None"), ("FAILED", "succeeded")),
        (dict(base, found=True, exit_code=None), ("NOT RUN", "cli_output.txt"), ("FAILED", "succeeded")),
        (dict(base, found=True, exit_code=0), ("succeeded",), ("NOT RUN", "FAILED")),
        (dict(base, found=True, exit_code=1), ("FAILED - see cli_output.txt",), ("NOT RUN", "succeeded")),
    )
    for result, required, forbidden in cases:
        line = _line(tmp_path, "p", "- Exit code:", occurrence=1,
                     test_result=_run_shape(0), pipeline_result=result)
        for fragment in required:
            assert fragment in line, (result, fragment, line)
        for fragment in forbidden:
            assert fragment not in line, (result, fragment, line)

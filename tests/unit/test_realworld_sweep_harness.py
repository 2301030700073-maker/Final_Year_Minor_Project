"""The real-world sweep harness's own input handling.

The journal rows these tests read are the durable record of a sweep: the harness
writes each target's row before it launches the run, so a sweep that dies leaves
an account of how far it got. These tests cover the other end of that rule - a
sweep that cannot start because its input is missing or empty must say so and
exit non-zero.

Left to bash defaults it does the opposite. `mapfile -t TARGETS < missing` prints
to stderr, leaves the array empty, every loop below skips it, and the harness's
own verdict reads "0 target(s) not ok" with exit 0 - a clean sweep that analysed
nothing, which is the one sentence an operator must never be able to misread. A
file of blank lines is worse still: the read succeeds, so bash says nothing at
all and the empty verdict is the only output there is.
"""
import os
import socket
import subprocess
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
SCRIPT = REPO / "scripts" / "run_unexecuted_realworld_sweep.sh"


def _env(tmp_path, **overrides):
    env = dict(os.environ)
    env.update({"SWEEP_LOG_DIR": str(tmp_path / "logs"), "SWEEP_RUN_TIMEOUT": "30"})
    env.update({k: str(v) for k, v in overrides.items()})
    return env


def _run(tmp_path, **overrides):
    return subprocess.run(
        ["bash", str(SCRIPT)], env=_env(tmp_path, **overrides),
        capture_output=True, text=True, timeout=120,
    )


def _journal(tmp_path):
    return (tmp_path / "logs" / "journal.tsv").read_text(encoding="utf-8")


def _rows(tmp_path):
    lines = _journal(tmp_path).splitlines()
    # Drop the header by position, not by its text: an outcome row's first field is
    # the target's name, so a target whose APK basename is `target` writes a row
    # starting with the same bytes the header does - and matching on that text
    # dropped that target's outcome from every reader in this file.
    return [ln for ln in lines[1:] if ln]


def _outcomes(tmp_path):
    """One row per target that reached an end. Each target also gets a `started`
    row written before it launches (the write-ahead half), and the harness closes
    the journal with a `--` marker row; neither is an outcome."""
    rows = [r for r in _rows(tmp_path) if not r.startswith("--\t")]
    return [r for r in rows if r.split("\t")[1] != "started"]


def _fake_runner(tmp_path):
    """A runner that claims success and writes the line the harness looks for, so
    the journal/exit-status logic can be exercised without a device or a real
    analysis run. The APK path still has to exist - the harness checks that
    itself, and a missing file is its own state - so these use a real one."""
    runner = tmp_path / "fake_runner.sh"
    runner.write_text("#!/bin/bash\necho 'Report: fake'\nexit 0\n", encoding="utf-8")
    runner.chmod(0o755)
    return runner


REAL_APK = "APK_Test/downloads/AndroGoat.apk"


def test_a_missing_targets_file_is_a_loud_failure(tmp_path):
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=tmp_path / "not-there.txt")
    assert proc.returncode != 0, "an unreadable target list must not exit clean"
    assert "not readable" in proc.stderr
    # recorded in the journal, not only on the console: a caller may hold the
    # journal and not the stdout
    assert "targets_unreadable" in _journal(tmp_path)


def test_an_empty_targets_file_is_a_loud_failure(tmp_path):
    empty = tmp_path / "empty.txt"
    empty.write_text("", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=empty)
    assert proc.returncode != 0
    assert "empty" in proc.stderr
    assert "targets_empty" in _journal(tmp_path)


def test_a_blank_only_targets_file_is_a_loud_failure(tmp_path):
    # the guard has to be on the loaded list, not on the read: this read succeeds
    blanks = tmp_path / "blanks.txt"
    blanks.write_text("\n   \n\n", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=blanks)
    assert proc.returncode != 0
    assert "targets_empty" in _journal(tmp_path)


def test_a_blank_line_among_real_targets_is_not_a_target(tmp_path):
    # it would otherwise launch `run --apk ""` and journal a failure naming nothing
    runner = _fake_runner(tmp_path)
    targets = tmp_path / "targets.txt"
    targets.write_text(f"{REAL_APK}\n\n", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}")
    assert proc.returncode == 0, proc.stderr
    assert len(_outcomes(tmp_path)) == 1
    assert "1 target(s) run" in proc.stdout


def test_the_verdict_names_how_many_targets_ran(tmp_path):
    """`0 target(s) not ok` over a list that never loaded is the same sentence as
    a clean sweep. The verdict names how many targets ran, so the two cannot be
    confused by a reader who only sees this line."""
    runner = _fake_runner(tmp_path)
    targets = tmp_path / "targets.txt"
    targets.write_text(f"{REAL_APK}\n", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}")
    assert proc.returncode == 0, proc.stderr
    assert "1 target(s) run, 0 not ok" in proc.stdout
    assert _outcomes(tmp_path)[0].split("\t")[1] == "ok"


def test_a_missing_apk_is_not_ok(tmp_path):
    # the harness's own check, pinned here because the tests above depend on it:
    # a path that is not a file cannot be a target that ran
    runner = _fake_runner(tmp_path)
    targets = tmp_path / "targets.txt"
    targets.write_text("APK_Test/downloads/not-a-real-apk.apk\n", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}")
    assert proc.returncode != 0
    assert _outcomes(tmp_path)[0].split("\t")[1] == "missing"


def test_the_built_in_list_still_runs_when_no_file_is_given(tmp_path):
    # the guards must not reject the default path
    runner = _fake_runner(tmp_path)
    proc = _run(tmp_path, SWEEP_RUNNER=f"bash {runner}")
    assert proc.returncode == 0, proc.stderr
    assert "4 target(s) run" in proc.stdout
    assert len(_outcomes(tmp_path)) == 4


def test_the_journal_names_the_sweep_that_wrote_it(tmp_path):
    """A `started` target row with no outcome is the record of a target that did
    not record an end - and it is also exactly what a sweep still in flight looks
    like. The journal alone could not tell a dead sweep from a live one, the same
    defect ADR-0021 fixed in the per-run sidecar. It now carries its own identity,
    written before the first target row."""
    runner = _fake_runner(tmp_path)
    targets = tmp_path / "targets.txt"
    targets.write_text(f"{REAL_APK}\n", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}")
    assert proc.returncode == 0, proc.stderr
    rows = _journal(tmp_path).splitlines()
    ident = [r for r in rows if r.startswith("--\tsweep_started\t")]
    assert len(ident) == 1, rows
    fields = ident[0].split("\t")
    assert fields[2] == socket.gethostname()
    assert fields[3].isdigit() and int(fields[3]) > 0
    # the kernel's start time for that pid: what keeps a recycled pid from
    # answering for the sweep that wrote this row
    assert fields[4].isdigit(), fields
    first_target = min(i for i, r in enumerate(rows) if "\tstarted\t" in r)
    assert rows.index(ident[0]) < first_target


# --- a target the harness itself killed names where it stopped -----------------


def _timed_out(tmp_path, *, with_sidecar):
    """Drive one target into the timeout state. The harness's own kill is the one
    outcome whose cause the row cannot carry, so the fixture has to be a real
    overrun: a runner that outlives SWEEP_RUN_TIMEOUT."""
    import hashlib
    import json

    apk = tmp_path / "target.apk"
    apk.write_bytes(b"not a real apk - the harness only stats it and hashes it")
    analysis = tmp_path / "analysis"
    if with_sidecar:
        sidecar = analysis / hashlib.sha256(apk.read_bytes()).hexdigest()
        sidecar.mkdir(parents=True)
        (sidecar / "run_status.json").write_text(json.dumps({
            "state": "started",
            "in_flight_stage": "decompile",
            "last_stage": "audit",
            "last_stage_status": "success",
        }), encoding="utf-8")
    targets = tmp_path / "targets.txt"
    targets.write_text(str(apk) + "\n", encoding="utf-8")
    runner = tmp_path / "slow_runner.sh"
    runner.write_text("#!/bin/bash\nsleep 5\nexit 0\n", encoding="utf-8")
    runner.chmod(0o755)
    return _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}",
                SWEEP_RUN_TIMEOUT="1", SWEEP_ANALYSIS_ROOT=str(analysis))


def test_a_target_the_harness_killed_names_the_stage_it_was_inside(tmp_path):
    """The outcome row for a run the HARNESS killed carries the state and the
    elapsed time and nothing else, so a target that burned two hours of its
    budget died leaving no place on record - the same gap ADR-0021 closed for a
    run that killed itself, left in the harness that drives the corpus. The stage
    is in the run's own sidecar, keyed by the APK's sha256, which is what ingest
    keys the analysis directory by."""
    proc = _timed_out(tmp_path, with_sidecar=True)
    assert proc.returncode != 0, "a sweep that killed a target is not a clean sweep"

    rows = [r for r in _rows(tmp_path) if r.startswith("--\tkilled_in\t")]
    assert len(rows) == 1, _journal(tmp_path)
    fields = rows[0].split("\t")
    assert fields[1] == "killed_in"
    assert fields[2] == "target"
    assert fields[3] == "timeout"
    # the run was mid-stage, not at the stage it had last completed
    assert "was in decompile" in fields[4]
    assert "last completed: audit (success)" in fields[4]
    # ...and it follows the outcome row it explains, the way every other journal
    # row pairs with the one above it
    kind = [r.split("\t")[1] for r in _rows(tmp_path)]
    assert kind.index("timeout") < kind.index("killed_in")


def test_a_killed_target_with_no_sidecar_says_so_rather_than_naming_no_stage(tmp_path):
    """An empty field would read as "no stage", which is a different and stronger
    claim than "this was not recorded" - the same absent-versus-unreadable
    distinction the sidecar's own reader keeps."""
    proc = _timed_out(tmp_path, with_sidecar=False)
    assert proc.returncode != 0
    rows = [r for r in _rows(tmp_path) if r.startswith("--\tkilled_in\t")]
    assert len(rows) == 1
    assert rows[0].split("\t")[4] == "no sidecar"

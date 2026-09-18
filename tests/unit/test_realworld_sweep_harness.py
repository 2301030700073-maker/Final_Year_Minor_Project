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
    return [ln for ln in lines if ln and not ln.startswith("target\t")]


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

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


# --- a sweep the MACHINE took down records where its target stopped ------------


def _interrupted(tmp_path, *, with_sidecar):
    """Drive one target into the interrupt state with a real TERM to the harness
    while that target is in flight - the state every sweep killed by the host (two
    measured: 2026-09-18 and 2026-09-19) died in. The runner is `exec sleep`, so
    the TERM the trap sends lands on the sleep itself rather than being deferred
    behind a foreground child the way a `sleep` in a script would defer it."""
    import hashlib
    import json
    import signal
    import time

    apk = tmp_path / "target.apk"
    apk.write_bytes(b"the harness only stats and hashes this")
    analysis = tmp_path / "analysis"
    if with_sidecar:
        sidecar = analysis / hashlib.sha256(apk.read_bytes()).hexdigest()
        sidecar.mkdir(parents=True)
        (sidecar / "run_status.json").write_text(json.dumps({
            "state": "started",
            "in_flight_stage": "dynamic",
            "last_stage": "static_scan",
            "last_stage_status": "success",
        }), encoding="utf-8")
    targets = tmp_path / "targets.txt"
    targets.write_text(str(apk) + "\n", encoding="utf-8")
    runner = tmp_path / "slow_runner.sh"
    runner.write_text("#!/bin/bash\nexec sleep 30\n", encoding="utf-8")
    runner.chmod(0o755)

    proc = subprocess.Popen(
        ["bash", str(SCRIPT)],
        env=_env(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}",
                 SWEEP_RUN_TIMEOUT="60", SWEEP_ANALYSIS_ROOT=str(analysis)),
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True,
    )
    journal = tmp_path / "logs" / "journal.tsv"
    # TERM only after the write-ahead row is on disk: that row is what says a target
    # is in flight, and interrupting before it would test an idle sweep instead.
    deadline = time.time() + 30
    while time.time() < deadline:
        if journal.exists() and "\tstarted\t" in journal.read_text(encoding="utf-8"):
            break
        time.sleep(0.1)
    else:
        proc.kill()
        proc.wait(timeout=10)
        raise AssertionError("the harness never started its target")
    proc.send_signal(signal.SIGTERM)
    proc.wait(timeout=30)
    return proc


def test_an_interrupted_sweep_names_the_stage_its_target_was_inside(tmp_path):
    """An interrupt kills its target just as a timeout does, and the outcome row it
    never reaches is the one that would have named the stage the target was inside.
    Both measured interrupts left only `sweep_interrupted <target>`: the target was
    named and its progress - up to two hours of it - was recorded nowhere, while the
    run's own sidecar had it all along (ADR-0021)."""
    proc = _interrupted(tmp_path, with_sidecar=True)
    assert proc.returncode == 130, "an interrupted sweep is not a clean sweep"

    rows = [r for r in _rows(tmp_path) if r.startswith("--\tkilled_in\t")]
    assert len(rows) == 1, _journal(tmp_path)
    fields = rows[0].split("\t")
    assert fields[2] == "target"
    # a distinct state from the harness's own timeout: the cause is the host, and
    # reading the two as one would blame the target's budget for the machine's death
    assert fields[3] == "interrupted"
    assert "was in dynamic" in fields[4]
    assert "last completed: static_scan (success)" in fields[4]
    assert fields[5].isdigit(), fields

    # the marker row is kept - readers keyed on it must not lose the sweep's ending
    kind = [r.split("\t")[1] for r in _rows(tmp_path)]
    assert "sweep_interrupted" in kind
    assert kind.index("killed_in") < kind.index("sweep_interrupted")


def test_an_interrupted_target_with_no_sidecar_says_so_rather_than_naming_no_stage(tmp_path):
    """The same absent-versus-unreadable distinction the timeout path keeps: an
    empty field would read as "no stage", a stronger claim than "not recorded"."""
    proc = _interrupted(tmp_path, with_sidecar=False)
    assert proc.returncode == 130
    rows = [r for r in _rows(tmp_path) if r.startswith("--\tkilled_in\t")]
    assert len(rows) == 1, _journal(tmp_path)
    assert rows[0].split("\t")[4] == "no sidecar"


def test_the_in_flight_marker_is_set_only_once_its_start_time_is_measured():
    """The interrupt path stamps its row with `now - start`, so a target marked in
    flight before its OWN start time was measured is dated from the previous
    target's: a fresh target recorded as having run for the whole of the one before
    it. The gap that allows is a few syscalls wide, so no signal can be aimed into
    it and no runtime test can close it - the loop body's ordering is what rules it
    out, which is what is asserted here (the same way the launcher-order test
    inspects its implementation rather than racing a real race)."""
    body = SCRIPT.read_text(encoding="utf-8").split("for apk in ", 1)[1]
    assert body.index("start=$(date +%s)") < body.index('current_apk="$apk"'), (
        "the in-flight marker must be set after this target's start time is on "
        "record - set before it, an interrupt names a target that has not started "
        "and dates it from the previous target's start"
    )
    # ...and both are set before the launch, so no target can run unmarked.
    assert body.index('current_apk="$apk"') < body.index("SWEEP_RUNNER:-"), (
        "the marker must be set before the launch, or a running target is not "
        "named as in flight and an interrupt leaves it unrecorded"
    )


# --- how much of a target's window the machine spent not running --------------


def _one_target(tmp_path, runner_body, **overrides):
    apk = tmp_path / "target.apk"
    apk.write_bytes(b"the harness only stats and hashes this")
    targets = tmp_path / "targets.txt"
    targets.write_text(str(apk) + "\n", encoding="utf-8")
    runner = tmp_path / "runner.sh"
    runner.write_text(runner_body, encoding="utf-8")
    runner.chmod(0o755)
    return _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}", **overrides)


def _frozen_rows(tmp_path):
    return [r for r in _rows(tmp_path) if r.startswith("--\tfrozen\t")]


def test_a_target_whose_window_includes_a_suspended_host_says_so(tmp_path):
    """Every clock that BOUNDS this sweep is a tick count, which stops while the
    host is suspended, while the elapsed column is wall clock, which does not. On
    2026-09-18 a closed laptop lid left those two disagreeing by 2,126 s and put a
    journal row on disk that no reader could reconcile: a target's elapsed against
    its own budget, with the fact that explains the gap recorded nowhere. The
    divergence is measurable at the target's own boundaries. A suspend cannot be
    induced in a test, so the seam stands in for one: a uptime file that never
    advances is a machine that was not running for the whole window.

    The freeze is asserted against the elapsed column the row itself explains, and
    never against the fixture's own `sleep`. That sleep is not a clock: the elapsed
    column is two `date +%s` reads truncated to whole seconds, and this guest's
    realtime clock is steered by the Windows host, so the two reads can close by
    less than the runner ran - a two-second runner recorded 1 s of freeze on 1 run
    in 11 here. A bound tied to the sleep tests the clock, and this file's own
    no-suspend test already records why a tight bound around that measurement is a
    flake rather than a test. What must hold is that the row carries a real freeze
    - not a zero, which is what a probe that never ran looks like - and that the
    freeze is the whole of the elapsed time it explains."""
    uptime = tmp_path / "uptime"
    uptime.write_text("12345.67 98765.00\n", encoding="utf-8")
    proc = _one_target(tmp_path, "#!/bin/bash\nsleep 2\necho 'Report: fake'\nexit 0\n",
                       SWEEP_UPTIME_FILE=uptime)
    assert proc.returncode == 0, proc.stderr
    assert _outcomes(tmp_path)[0].split("\t")[1] == "ok"

    rows = _frozen_rows(tmp_path)
    assert len(rows) == 1, _journal(tmp_path)
    fields = rows[0].split("\t")
    assert fields[2] == "target"
    assert int(fields[5]) == 0, "the machine was up for none of the window"
    assert int(fields[3]) >= 1, "the row must carry a real freeze, not a zero"
    assert int(fields[3]) == int(fields[4]), "the freeze is the whole of the elapsed"
    # ...and it follows the row whose elapsed column it explains
    kind = [r.split("\t")[1] for r in _rows(tmp_path)]
    assert kind.index("ok") < kind.index("frozen")


def test_a_target_with_no_suspend_records_a_number_rather_than_staying_silent(tmp_path):
    """The row is written even when nothing froze, so its ABSENCE can only mean the
    probe did not run. A row written only on divergence would make "no suspend
    happened" and "this harness never measured" the same silence.

    What the row must not show without a suspend is minutes of it. The two readings
    are separate subprocesses, each truncated to whole seconds, so a loaded machine
    puts seconds between them: the first all-options sweep recorded `frozen 0`
    against `423 427` for its telegram target - a 4 s divergence with no suspend
    anywhere in the run. An exact zero is not a property this measurement has, and
    a tight bound around it is a flake rather than a test."""
    proc = _one_target(tmp_path, "#!/bin/bash\necho 'Report: fake'\nexit 0\n")
    assert proc.returncode == 0, proc.stderr
    rows = _frozen_rows(tmp_path)
    assert len(rows) == 1, _journal(tmp_path)
    # Seconds of measurement jitter, not minutes: a host that was actually absent
    # for part of the window records that absence, which is orders of magnitude
    # larger than anything two truncated clocks can disagree by.
    assert 0 <= int(rows[0].split("\t")[3]) <= 10


def test_a_wall_clock_that_steps_backwards_is_floored_rather_than_recorded(tmp_path):
    """A clock stepping backwards moves the subtraction negative - a different fact,
    and not one this row carries. The runner advances the uptime file well past the
    target's own wall-clock elapsed to drive it, so the floor is exercised
    deterministically rather than by racing two clocks."""
    uptime = tmp_path / "uptime"
    uptime.write_text("12345.67 98765.00\n", encoding="utf-8")
    proc = _one_target(
        tmp_path,
        '#!/bin/bash\necho "12945.00 99365.00" > "$SWEEP_UPTIME_FILE"\n'
        "echo 'Report: fake'\nexit 0\n",
        SWEEP_UPTIME_FILE=uptime,
    )
    assert proc.returncode == 0, proc.stderr
    rows = _frozen_rows(tmp_path)
    assert len(rows) == 1, _journal(tmp_path)
    assert rows[0].split("\t")[3] == "0", "a negative freeze is never written"
    assert int(rows[0].split("\t")[5]) == 600, "the raw observation is still recorded"


def test_no_frozen_row_when_the_probe_could_not_run(tmp_path):
    """The other half of that mapping: an unreadable /proc/uptime writes no row, so
    a reader who finds none knows the measurement is missing rather than zero."""
    proc = _one_target(tmp_path, "#!/bin/bash\necho 'Report: fake'\nexit 0\n",
                       SWEEP_UPTIME_FILE=tmp_path / "not-there")
    assert proc.returncode == 0, proc.stderr
    assert _outcomes(tmp_path)[0].split("\t")[1] == "ok"
    assert _frozen_rows(tmp_path) == []


# --- the bound the elapsed column is measured against -------------------------


def test_the_journal_records_the_budget_its_elapsed_column_is_measured_against(tmp_path):
    """Every outcome row carries an elapsed_s and nothing on disk carried the
    bound that elapsed was held to, so the only budget a reader could compare it
    against is the default in the script's header. A sweep launched with a larger
    SWEEP_RUN_TIMEOUT - because a target legitimately needs longer than the
    default - then records a number that reads as a breach of a bound it was
    never held to. The row is written before the target list is read, so a sweep
    that fails on its own input still says what it would have enforced."""
    runner = _fake_runner(tmp_path)
    targets = tmp_path / "targets.txt"
    targets.write_text(f"{REAL_APK}\n", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}",
                SWEEP_RUN_TIMEOUT="4321")
    assert proc.returncode == 0, proc.stderr

    rows = [r for r in _rows(tmp_path) if r.startswith("--\tbudget\t")]
    assert len(rows) == 1, _journal(tmp_path)
    assert rows[0].split("\t")[2] == "4321", "the budget this sweep enforced"

    lines = _journal(tmp_path).splitlines()
    first_target = min(i for i, r in enumerate(lines) if "\tstarted\t" in r)
    assert lines.index(rows[0]) < first_target


def test_the_budget_row_is_kept_out_of_the_outcome_readers(tmp_path):
    """It is a `--` marker row like the rest, so a reader that counts outcomes
    does not count it as a target that ran."""
    runner = _fake_runner(tmp_path)
    targets = tmp_path / "targets.txt"
    targets.write_text(f"{REAL_APK}\n", encoding="utf-8")
    proc = _run(tmp_path, SWEEP_TARGETS_FILE=targets, SWEEP_RUNNER=f"bash {runner}")
    assert proc.returncode == 0, proc.stderr
    assert len(_outcomes(tmp_path)) == 1
    assert "1 target(s) run, 0 not ok" in proc.stdout

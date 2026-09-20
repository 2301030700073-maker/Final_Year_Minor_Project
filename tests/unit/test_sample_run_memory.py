"""The run-memory sampler's two load-bearing properties.

The sampler exists because the Netflix run of 2026-09-17 died inside the native
stage leaving nothing on disk about how much memory the run held. Both properties
it must have are aggregate, and both are silently wrong in the obvious
implementation: reading the run process alone understates the figure by whatever
a worker pool is holding, and matching the CLI loosely makes the sampler watch
itself or a non-analysis command.
"""
import importlib.util
import os
from pathlib import Path

import pytest

REPO = Path(__file__).resolve().parents[2]

_spec = importlib.util.spec_from_file_location(
    "sample_run_memory", REPO / "scripts" / "sample_run_memory.py"
)
mod = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(mod)


def test_the_sample_covers_the_process_tree_not_just_the_run():
    # pid -> (ppid, rss_kb, cpu_ticks, state)
    table = {
        1: (0, 100, 10, "R"),      # the run process
        2: (1, 5000, 90, "R"),     # a native-stage worker: 50x the parent's RSS
        3: (2, 1000, 5, "S"),      # and its own child
        9: (0, 99999, 0, "S"),     # unrelated: must not be counted, however big
    }
    parent_rss, rss_tree, cpu_tree, n_procs, state = mod.summarize(table, 1)
    assert parent_rss == 100
    assert rss_tree == 6100  # 100 + 5000 + 1000 - the parent alone would read 100
    assert n_procs == 3
    assert state == "R"
    assert cpu_tree > 0


def test_tree_descent_survives_an_unreadable_parent():
    # the run's own pid is always present, but a descendant whose parent has
    # already exited must still be summarised rather than dropping the sample
    assert mod._tree({5: (12345, 10, 1, "S")}, 5) == [5]
    assert mod._tree({}, 5) == []


def test_a_run_is_matched_by_its_own_argv_shape():
    assert mod.is_run_argv([".venv/bin/python3", "src/cli.py", "run", "--apk", "x"])
    # not the sampler itself: it would otherwise report its own process as the run
    assert not mod.is_run_argv([".venv/bin/python3", "scripts/sample_run_memory.py", "out.tsv"])
    # not a non-analysis subcommand
    assert not mod.is_run_argv([".venv/bin/python3", "src/cli.py", "regen", "--run-id", "x"])
    assert not mod.is_run_argv([".venv/bin/python3", "src/cli.py"])


def test_the_documented_m_cli_spelling_is_matched_too():
    """Every documented invocation is `python -m cli run` (README, the handoffs,
    the verification bundle), whose argv carries no `cli.py` path segment. Matching
    only the file-spelling meant the sampler logged `no-run` for the entire run it
    was started to sample - an empty curve reported as a still machine."""
    from sample_run_memory import is_run_argv

    assert is_run_argv(["/usr/bin/python3", "-m", "cli", "run", "--apk", "x"])
    # What /proc actually holds: uv execs python, so the wrapper never appears in
    # the cmdline - the exec'd argv is what this has to match.
    assert is_run_argv(["python", "-m", "cli", "run", "--apk", "x"])
    # Still not this sampler, and still not a non-run subcommand.
    assert not is_run_argv(["/usr/bin/python3", "-m", "scripts.sample_run_memory", "out.tsv"])
    assert not is_run_argv(["/usr/bin/python3", "-m", "cli", "regen", "--run-id", "x"])
    assert not is_run_argv(["/usr/bin/python3", "-m", "cli"])


# --- one writer per file, and an exit that ends with the run -------------------
#
# Measured on 2026-09-20 against a real run (com.jerboa): four instances ended up
# writing one file, every timestamp appearing twice, and because the loop was
# `while True` with no exit they kept appending `no-run` rows long after the run
# they were started for had finished - which is how a stale sampler from an
# earlier run comes to be sitting on the next run's file. The header's "one row
# per sample" was no longer true of the artifact, and nothing said so.

def _fake_proc(monkeypatch, table, cmdlines):
    monkeypatch.setattr(mod, "_proc_table", lambda: table)
    monkeypatch.setattr(mod, "_cmdline_of", lambda pid: cmdlines.get(pid, []))


def test_a_second_instance_on_the_same_file_is_found(monkeypatch):
    out = Path("run_logs/mem.tsv")
    table = {os.getpid(): (1, 0, 0, "R"), 4242: (1, 0, 0, "S")}
    _fake_proc(monkeypatch, table, {
        4242: ["/usr/bin/python3", "scripts/sample_run_memory.py", "run_logs/mem.tsv", "10"],
    })
    assert mod.sibling_writers(out) == [4242]


def test_its_own_uv_parent_is_not_a_rival_writer(monkeypatch):
    # `uv run python <this script>` makes the uv wrapper our PARENT carrying the
    # same argv. Reading argv alone would call every documented start a duplicate.
    me, parent = os.getpid(), os.getpid() + 1
    table = {me: (parent, 0, 0, "R"), parent: (1, 0, 0, "S")}
    _fake_proc(monkeypatch, table, {
        me: ["python3", "scripts/sample_run_memory.py", "run_logs/mem.tsv", "10"],
        parent: ["uv", "run", "python", "scripts/sample_run_memory.py", "run_logs/mem.tsv", "10"],
    })
    assert mod.sibling_writers(Path("run_logs/mem.tsv")) == []


def test_a_different_file_or_a_different_script_is_not_a_sibling(monkeypatch):
    table = {os.getpid(): (1, 0, 0, "R"), 7: (1, 0, 0, "S"), 8: (1, 0, 0, "S")}
    _fake_proc(monkeypatch, table, {
        # same script, a different output file
        7: ["python3", "scripts/sample_run_memory.py", "run_logs/other.tsv", "10"],
        # the same output path, a different script
        8: ["python3", "scripts/collect_verification_bundle.py", "run_logs/mem.tsv"],
    })
    assert mod.sibling_writers(Path("run_logs/mem.tsv")) == []


def test_a_refused_start_exits_nonzero_and_does_not_touch_the_file(monkeypatch, tmp_path, capsys):
    out = tmp_path / "mem.tsv"
    monkeypatch.setattr(mod, "sibling_writers", lambda o: [4242])
    monkeypatch.setattr(mod.sys, "argv", ["sample_run_memory.py", str(out)])

    assert mod.main() == 1
    err = capsys.readouterr().err
    assert "refusing" in err and "4242" in err, err
    assert not out.exists(), "a refused start must not create or write the file"


def test_main_stops_after_the_run_it_waited_for_exits(monkeypatch, tmp_path, capsys):
    out = tmp_path / "mem.tsv"
    seq = iter([4242, 4242, None, None, None])
    monkeypatch.setattr(mod, "sibling_writers", lambda o: [])
    monkeypatch.setattr(mod, "find_run", lambda: next(seq))
    monkeypatch.setattr(mod, "_proc_table", lambda: {4242: (1, 100, 10, "R")})
    monkeypatch.setattr(mod.time, "sleep", lambda _s: None)
    monkeypatch.setattr(mod.sys, "argv", ["sample_run_memory.py", str(out), "1"])

    assert mod.main() == 0
    rows = out.read_text(encoding="utf-8").strip().splitlines()
    assert sum(1 for r in rows if "\t4242\t" in r) == 2, rows
    assert sum(1 for r in rows if "no-run" in r) == mod.GRACE_SAMPLES, rows
    assert "stopping" in capsys.readouterr().out


def test_main_keeps_waiting_while_no_run_has_appeared_yet(monkeypatch, tmp_path):
    """The observer is deliberately started BEFORE the run, so declared-idle rows
    at the beginning are expected: stopping on them would end the watch at once."""
    out = tmp_path / "mem.tsv"
    calls = {"n": 0}

    def fake_sleep(_s):
        calls["n"] += 1
        if calls["n"] >= 4:
            raise KeyboardInterrupt  # stands in for the operator killing a watch that never saw a run

    monkeypatch.setattr(mod, "sibling_writers", lambda o: [])
    monkeypatch.setattr(mod, "find_run", lambda: None)
    monkeypatch.setattr(mod.time, "sleep", fake_sleep)
    monkeypatch.setattr(mod.sys, "argv", ["sample_run_memory.py", str(out), "1"])

    with pytest.raises(KeyboardInterrupt):
        mod.main()
    assert calls["n"] == 4, "it must still be sampling, not returned"

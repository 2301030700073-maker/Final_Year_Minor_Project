"""The run-memory sampler's two load-bearing properties.

The sampler exists because the Netflix run of 2026-09-17 died inside the native
stage leaving nothing on disk about how much memory the run held. Both properties
it must have are aggregate, and both are silently wrong in the obvious
implementation: reading the run process alone understates the figure by whatever
a worker pool is holding, and matching the CLI loosely makes the sampler watch
itself or a non-analysis command.
"""
import importlib.util
from pathlib import Path

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

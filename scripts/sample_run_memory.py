#!/usr/bin/env python3
"""Sample the memory and CPU of the analysis run in flight.

The Netflix run of 2026-09-17 died inside the native stage leaving no exception
and no handler trace - consistent with a SIGKILL, and consistent with the
reference box's 12 GB / swap=0 shape, and NOT established as an out-of-memory
kill by any record (ADR-0021). Nothing on disk says how much memory the run held
when it died, which is the gap this closes: it samples the run's process tree
until the run exits, so the next death inside a stage is a memory curve on disk
rather than an inference.

Why the whole tree: the native stage analyzes .so files through a worker pool, so
most of the memory belongs to children the parent's own RSS does not show. A
sample that read only the parent would report a healthy few hundred MB while a
worker was consuming gigabytes.

Output is TSV, one row per sample: utc, pid, rss_kb (the run process alone),
rss_tree_kb (it plus every descendant), cpu_s_tree, n_procs, state. A sample
taken while no run is in flight writes pid "-" and zeroes, so a gap in the run's
coverage is visible as a gap in the file rather than as a missing row.

Lifecycle: it waits for a run to appear, samples it, and stops GRACE_SAMPLES
intervals after that run exits - so an invocation ends with the run it was
started for instead of appending `no-run` rows forever. An instance started and
then abandoned before any run appears keeps waiting, and it still holds the
output file; a second start against that same file is therefore refused loudly,
naming the pids already writing it, rather than silently interleaving a second
row onto every timestamp.

Usage: sample_run_memory.py [out.tsv] [interval_seconds]
"""
from __future__ import annotations

import os
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

TICKS = os.sysconf("SC_CLK_TCK")


def _proc_table() -> dict[int, tuple[int, int, int, str]]:
    """pid -> (ppid, rss_kb, cpu_ticks, state) for every process this user can read."""
    table: dict[int, tuple[int, int, int, str]] = {}
    for entry in Path("/proc").iterdir():
        if not entry.name.isdigit():
            continue
        pid = int(entry.name)
        try:
            stat = (entry / "stat").read_text(encoding="utf-8")
            fields = stat.rsplit(")", 1)[-1].split()
            # fields[0] is field 3 (state); ppid is field 4, utime/stime 14/15,
            # rss (pages) 24.
            table[pid] = (
                int(fields[1]),
                int(fields[21]) * (os.sysconf("SC_PAGE_SIZE") // 1024),
                int(fields[11]) + int(fields[12]),
                fields[0],
            )
        except (OSError, ValueError, IndexError):
            continue
    return table


def _tree(table: dict[int, tuple[int, int, int, str]], root: int) -> list[int]:
    children: dict[int, list[int]] = {}
    for pid, (ppid, _, _, _) in table.items():
        children.setdefault(ppid, []).append(pid)
    seen, stack = [], [root]
    while stack:
        pid = stack.pop()
        if pid not in table:
            continue
        seen.append(pid)
        stack.extend(children.get(pid, []))
    return seen


def is_run_argv(argv: list[str]) -> bool:
    """Whether a /proc cmdline is the analysis CLI's `run` command. Pure, so the
    ways this can go wrong are testable: matching this sampler's own process (it
    would then watch itself), matching a non-`run` subcommand (a `regen` or
    `verify-audit-log` process is not an analysis run to sample), and - the one
    that was wrong in practice - failing to match the spelling everyone actually
    types.

    Every documented invocation is `python -m cli run` (README.md, the phase
    handoffs, the verification bundle), whose argv is
    ['python', '-m', 'cli', 'run', ...]. A `<<argv[1]>>.endswith("cli.py")` test
    matches none of them, so the sampler wrote `no-run` rows for the whole of
    every run started the documented way - an empty memory curve, which is the
    one artifact this script exists to produce, reported as "nothing was running"
    rather than as "the detector did not recognise it". Both spellings are matched
    now."""
    if len(argv) < 3:
        return False
    if argv[1].endswith("cli.py"):
        return argv[2] == "run"
    return argv[1] == "-m" and argv[2] == "cli" and len(argv) > 3 and argv[3] == "run"


def find_run() -> int | None:
    """The pid of the analysis run, or None."""
    for entry in Path("/proc").iterdir():
        if not entry.name.isdigit():
            continue
        try:
            argv = (entry / "cmdline").read_bytes().decode("utf-8", "replace").split("\0")
        except OSError:
            continue
        if is_run_argv(argv):
            return int(entry.name)
    return None


def summarize(table: dict[int, tuple[int, int, int, str]], pid: int) -> tuple[int, int, float, int, str]:
    """(parent rss_kb, tree rss_kb, tree cpu_s, tree n_procs, state) for one run.

    Pure, so the property that matters can be tested without a live run: the
    figures cover the whole tree. Summing only the run process would have read a
    healthy few hundred MB while a native-stage worker held gigabytes - the exact
    misreading this sampler exists to prevent."""
    tree = _tree(table, pid)
    rss_tree = sum(table[p][1] for p in tree if p in table)
    cpu_tree = sum(table[p][2] for p in tree if p in table) / TICKS
    parent = table.get(pid, (0, 0, 0, "?"))
    return parent[1], rss_tree, cpu_tree, len(tree), parent[3]


SCRIPT_NAME = Path(__file__).name  # this file, as /proc shows it in a cmdline
GRACE_SAMPLES = 3


def _cmdline_of(pid: int) -> list[str]:
    try:
        raw = Path(f"/proc/{pid}/cmdline").read_bytes()
    except OSError:
        return []
    return [tok for tok in raw.decode("utf-8", "replace").split("\0") if tok]


def _ancestors(pid: int, table: dict[int, tuple[int, int, int, str]]) -> set[int]:
    """This process and every parent above it. `uv run python <this script>` makes
    the uv wrapper our PARENT carrying the same argv - it is the same invocation,
    not a rival writer, and counting it would refuse every documented start."""
    chain: set[int] = set()
    while pid in table and pid not in chain:
        chain.add(pid)
        pid = table[pid][0]
    return chain


def sibling_writers(out: Path, table=None, cmdline=None) -> list[int]:
    """Other live processes sampling into the SAME file.

    Two writers interleave two rows onto every timestamp, so the header's "one row
    per sample" stops being true and a reader cannot tell a doubled curve from a
    sampling fault - the record is quietly wrong in exactly the case it exists to
    settle (ADR-0021). Detected from argv rather than a lock file so an instance
    started from another terminal is caught too, which is how a leftover from an
    earlier run is found."""
    table = _proc_table() if table is None else table
    cmdline = _cmdline_of if cmdline is None else cmdline
    mine = _ancestors(os.getpid(), table)
    hits = []
    for pid in table:
        if pid in mine:
            continue
        argv = cmdline(pid)
        if any(tok.endswith(SCRIPT_NAME) for tok in argv) and str(out) in argv:
            hits.append(pid)
    return sorted(hits)


def main() -> int:
    out = Path(sys.argv[1] if len(sys.argv) > 1 else "run_logs/run_memory.tsv")
    interval = float(sys.argv[2]) if len(sys.argv) > 2 else 20.0
    siblings = sibling_writers(out)
    if siblings:
        pids = " ".join(str(p) for p in siblings)
        print(
            f"refusing to sample into {out}: {pids} already writing it. Two writers put "
            f"two rows on every timestamp and the file stops meaning what its header says. "
            f"Kill {'it' if len(siblings) == 1 else 'them'} first: kill {pids}",
            file=sys.stderr,
        )
        return 1
    out.parent.mkdir(parents=True, exist_ok=True)
    if not out.exists():
        out.write_text(
            "utc\tpid\trss_kb\trss_tree_kb\tcpu_s_tree\tn_procs\tstate\n", encoding="utf-8"
        )
    seen_run = False
    idle_streak = 0
    while True:
        stamp = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
        pid = find_run()
        if pid is None:
            row = f"{stamp}\t-\t0\t0\t0.0\t0\tno-run"
            if seen_run:
                idle_streak += 1
        else:
            rss, rss_tree, cpu_tree, n_procs, state = summarize(_proc_table(), pid)
            row = f"{stamp}\t{pid}\t{rss}\t{rss_tree}\t{cpu_tree:.1f}\t{n_procs}\t{state}"
            seen_run = True
            idle_streak = 0
        with out.open("a", encoding="utf-8") as fh:
            fh.write(row + "\n")
        if idle_streak >= GRACE_SAMPLES:
            # Measured 2026-09-20: this loop had no exit at all, so every invocation
            # left a writer appending `no-run` rows forever, and four of them ended up
            # interleaved on one run's file. It now ends with the run it was started for.
            print(
                f"the run exited and stayed gone for {GRACE_SAMPLES} samples - stopping; "
                f"{out} covers that run."
            )
            return 0
        time.sleep(interval)


if __name__ == "__main__":
    raise SystemExit(main())

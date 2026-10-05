#!/usr/bin/env python3
"""VERIFY-ALL — prove every phase, tool, file and contract actually works.

One entry point. Run it with the project's own interpreter:

    /home/ubuntu/Testing/Final_Year_Minor_Project/.venv/bin/python \
        "/mnt/c/Users/Divyang/WorkBuddy AI/2026-10-04-15-04-59/audit/verify_all.py"

It reports MEASURED facts, never assumptions: each line is something it ran or
read. Exit code 0 only when every check passed.

WHAT IT CHECKS
  1. Environment   — the project's own check_environment.py gate.
  2. Tools         — every external binary the code invokes resolves AND runs.
  3. Files/paths   — every path the code reads exists, with a real count/size.
  4. Pipeline      — a real run; every stage the code declares must appear.
  5. Outputs       — report file, DB row, audit-log append.
  6. Contracts     — the unit suite, including the ledger guards.

ENVIRONMENT CAVEAT (measured 2026-10-05). The pipeline section runs four full
dynamic analyses back-to-back, and this reference box caps WSL at **3 GB with
swap=0** against 32 GB of host RAM (C:\\Users\\Divyang\\.wslconfig). On that
budget the sweep is marginal: of five full runs, two tripped
`Wsl/Service/0x8007274c` (the instance died, taking the dynamic stage with it)
and the affected targets then reported an absent `dynamic`. Running
`--only pipeline` immediately afterwards passed 4/4, and the same target run
standalone passed with all 13 stages - which is how an ENVIRONMENT trip was told
apart from a pipeline defect. If a target reports MISSING ['dynamic',
'success-check'], read the `why:` clause this script now appends, then re-run
that target alone before treating it as a defect. Raising the WSL memory cap or
adding swap removes the variance.
"""
from __future__ import annotations

import json
import os
import re
import shutil
import sqlite3
import subprocess
import sys
from pathlib import Path

PROJECT = Path("/home/ubuntu/Testing/Final_Year_Minor_Project")
PY = PROJECT / ".venv" / "python"
PYBIN = PROJECT / ".venv" / "bin" / "python"
ANSI = re.compile(r"\x1b\[[0-9;]*m")

RESULTS: list[tuple[str, bool, str]] = []
# Conditions the project has explicitly ruled EXPECTED. They are not passes and
# not silent: they print under their own heading, and each names the document
# that explains it plus what would make it a real failure. Anything that does not
# match the documented condition exactly lands in RESULTS as a failure instead.
KNOWN: list[tuple[str, str]] = []


def record(section: str, ok: bool, detail: str) -> None:
    RESULTS.append((section, ok, detail))
    mark = "OK  " if ok else "FAIL"
    print(f"  [{mark}] {section}: {detail}", flush=True)


def record_known(section: str, detail: str) -> None:
    KNOWN.append((section, detail))
    print(f"  [KNOWN] {section}: {detail}", flush=True)


def run(cmd, cwd=None, timeout=900, env=None):
    e = dict(os.environ)
    e.setdefault("PYTHONPATH", str(PROJECT / "src"))
    if env:
        e.update(env)
    return subprocess.run(cmd, cwd=str(cwd or PROJECT), capture_output=True,
                          text=True, timeout=timeout, env=e)


def head(text: str, n: int = 1) -> str:
    lines = [ln.strip() for ln in ANSI.sub("", text or "").splitlines() if ln.strip()]
    return " | ".join(lines[:n]) if lines else "(no output)"


# ---------------------------------------------------------------- 1. ENV
def check_environment() -> None:
    print("\n[1/7] ENVIRONMENT", flush=True)
    # One retry, REPORTED. The gate covers the WSL<->Windows transports (the frida
    # relay over the vsock link), and those flap under a long sweep on this box -
    # measured 2026-10-05, the relay check failed once mid-sweep and passed on the
    # very next call. Retrying separates a flap from a real absence, and naming it
    # means the retry cannot hide one.
    retried = False
    for attempt in range(2):
        r = run([str(PYBIN), "scripts/check_environment.py"], timeout=600)
        out = ANSI.sub("", r.stdout or "")
        m = re.search(r"(\d+)/(\d+) checks passed", out)
        if not m:
            if attempt == 0:
                retried = True
                continue
            record("environment", False,
                   f"could not parse the gate: {head(r.stderr or r.stdout)}")
            return
        passed, total = int(m.group(1)), int(m.group(2))
        if passed == total or attempt == 1:
            break
        retried = True
    failed = re.search(r"Failed:\s*(.+)", out)
    detail = f"{passed}/{total} checks passed"
    if failed:
        detail += f" (failed: {failed.group(1).strip()})"
    if retried:
        detail += " (retried once)"
    record("environment", passed == total, detail)


# ---------------------------------------------------------------- 2. TOOLS
TOOLS = [
    ("adb", ["--version"]),
    ("jadx", ["--version"]),
    ("apktool", ["--version"]),
    ("apksigner", ["--version"]),
    ("aapt2", ["version"]),
    ("mitmdump", ["--version"]),
    ("readelf", ["--version"]),
    ("strings", ["--version"]),
    ("nm", ["--version"]),
    ("unzip", ["-v"]),
    ("java", ["-version"]),
]


def check_tools() -> None:
    print("\n[2/7] TOOLS THE CODE INVOKES", flush=True)
    for name, args in TOOLS:
        path = shutil.which(name)
        if not path:
            record(f"tool {name}", False, "not on PATH")
            continue
        try:
            r = run([path] + args, timeout=60)
            text = (r.stdout or "") + (r.stderr or "")
            record(f"tool {name}", True, f"{path} -> {head(text)}")
        except Exception as exc:  # noqa: BLE001
            record(f"tool {name}", False, f"{path} raised {type(exc).__name__}: {exc}")

    # frida is deliberately NOT the PATH binary. pyproject pins `frida<17` and
    # run.sh warns that a system 17.x can shadow it, so the version that MATTERS
    # is the venv's - reporting the PATH one would be actively misleading.
    fr = run([str(PYBIN), "-c", "import frida;print(frida.__version__)"], timeout=120)
    venv_frida = ANSI.sub("", fr.stdout or "").strip()
    onpath = shutil.which("frida")
    path_ver = ""
    if onpath:
        try:
            path_ver = head(run([onpath, "--version"], timeout=60).stdout or "", 1)
        except Exception:  # noqa: BLE001
            path_ver = "?"
    ok = bool(venv_frida) and venv_frida.startswith("16.")
    note = f"venv frida {venv_frida} (pyproject pins <17)"
    if path_ver and not path_ver.startswith("16."):
        note += f"; PATH frida is {path_ver} - shadowed, NOT used"
    record("frida (the one the pipeline uses)", ok, note)

    # Ghidra headless is vendored, not on PATH.
    ghidra = PROJECT / "tools" / "ghidra"
    hits = sorted(ghidra.glob("ghidra_*/support/analyzeHeadless")) if ghidra.is_dir() else []
    record("tool ghidra analyzeHeadless", bool(hits),
           str(hits[0]) if hits else "not vendored under tools/ghidra/")
    # the WSL->Windows capture dependency, via the pipeline's own resolver
    probe = run([str(PYBIN), "-c",
                 "import sys;sys.path.insert(0,'src');"
                 "from dynamic import mitmproxy_capture as m;"
                 "from dynamic import pass_through_proxy as p;"
                 "print(m._windows_mitmdump() or 'NONE');"
                 "print(p._windows_python() or 'NONE')"], timeout=120)
    lines = ANSI.sub("", probe.stdout or "").strip().splitlines()
    record("windows mitmdump (capture proxy)", bool(lines and lines[0] != "NONE"),
           lines[0] if lines else "(probe failed)")
    record("windows python (pass-through)", len(lines) > 1 and lines[1] != "NONE",
           lines[1] if len(lines) > 1 else "(probe failed)")


# ---------------------------------------------------------------- 3. FILES
def check_files() -> None:
    print("\n[3/7] FILES AND PATHS THE CODE REFERENCES", flush=True)

    sig = sorted((PROJECT / "config" / "signatures").glob("*.yaml"))
    record("config/signatures/*.yaml", len(sig) >= 4, f"{len(sig)} files")

    gt = PROJECT / "config" / "ground_truth.yaml"
    record("config/ground_truth.yaml", gt.is_file(),
           f"{gt.stat().st_size} bytes" if gt.is_file() else "missing")

    settings = PROJECT / "config" / "settings.yaml"
    record("config/settings.yaml", settings.is_file(),
           f"{settings.stat().st_size} bytes" if settings.is_file() else "missing")

    # Two-way check on the shipped Frida scripts. The first version of this was
    # VACUOUS: it regexed .js names out of mitmproxy_capture.py alone, found none,
    # and reported OK - a check that passes because it found nothing to check is
    # the exact failure mode this script exists to catch.
    # The high-value direction: a project script NAMED by src/ or scripts/ that is
    # not shipped is a load-time crash waiting for its first caller.
    #
    # Two scoping bugs were found here by running it, both worth recording:
    #   * a src-only search reported two shipped scripts as unreferenced - they are
    #     named from scripts/ and tests/, so the search must span every caller;
    #   * including tests/ then reported ELEVEN phantom "missing scripts" (app.js,
    #     pin.js, u.js ...) - those are deliberate fixtures, not assets.
    # The fix is to match the project's own naming convention instead of any
    # `.js`-looking string: only `root_bypass_*` / `ssl_pinning_*` are real assets.
    scripts_dir = PROJECT / "src" / "dynamic" / "scripts"
    shipped = sorted(p.name for p in scripts_dir.glob("*.js")) if scripts_dir.is_dir() else []
    code_text = "\n".join(
        p.read_text(errors="ignore")
        for d in ("src", "scripts")
        for p in (PROJECT / d).rglob("*.py"))
    referenced = sorted(set(re.findall(
        r"[\"']((?:root_bypass|ssl_pinning)_[a-z0-9_]+\.js)[\"']", code_text)))
    missing = [n for n in referenced if n not in shipped]
    record("frida scripts shipped", bool(shipped),
           f"{len(shipped)} under src/dynamic/scripts/")
    record("frida script references resolve", not missing,
           f"{len(referenced)} referenced, MISSING: {missing}" if missing
           else f"{len(referenced)} referenced, all shipped")

    adr_dir = PROJECT / "docs" / "plans" / "adr"
    adrs = sorted(adr_dir.glob("[0-9][0-9][0-9][0-9]-*.md")) if adr_dir.is_dir() else []
    record("ADRs", len(adrs) >= 40, f"{len(adrs)} ADR files in docs/plans/adr/")

    ledger = PROJECT / "docs" / "plans" / "audit" / "full-project-audit-ledger.md"
    record("audit ledger", ledger.is_file(),
           f"{len(ledger.read_text().splitlines())} lines" if ledger.is_file() else "missing")

    apks = sorted((PROJECT / "APK_Test").glob("*.apk"))
    record("APK_Test/*.apk", len(apks) >= 6, f"{len(apks)} APKs")


# ---------------------------------------------------------------- 4. PIPELINE
# Every stage the code emits on a SUCCESSFUL run. Collected from the real
# console output of a real run, not from the docs - the README's example is an
# older, shorter run and would under-check.
STAGES_ALWAYS = [
    "ingest", "audit", "decompile", "signature_load:root", "signature_load:ssl",
    "static_scan", "manifest_parse", "native_scan", "obfuscation", "packers",
    "decision_engine", "dynamic", "success-check",
]
# Emitted only when they FAIL (an exception handler records the failed stage),
# or only when opted in. Absence on a clean run is correct, not a gap.
STAGES_CONDITIONAL = ["normalize", "input-prep", "metadata-persist", "capture-traffic"]

TARGETS = [
    ("RS_CertPinning", "APK_Test/RS_CertPinning.apk", "SSL_ONLY"),
    ("UnCrackable-Level1", "APK_Test/UnCrackable-Level1.apk", "ROOT_ONLY"),
    ("AndroGoat", "APK_Test/AndroGoat.apk", "BOTH"),
    ("InsecureBankv2", "APK_Test/InsecureBankv2.apk", "ROOT_ONLY"),
]


def _run_target(apk: str):
    """One real pipeline run. Returns (completed, output, {stage: status})."""
    r = run([str(PYBIN), "-m", "cli", "run", "--apk", apk,
             "--justification", "ACADEMIC_TRAINING_TARGET"], timeout=900)
    out = ANSI.sub("", (r.stdout or "") + (r.stderr or ""))
    seen = {m.group(2): m.group(1)
            for m in re.finditer(r"^(OK|FAIL|SKIPPED)\s+(\S+)\s+\(", out, re.M)}
    return r, out, seen


def check_pipeline() -> None:
    print("\n[4/7] PIPELINE — a real run per target", flush=True)
    for name, apk, expected in TARGETS:
        if not (PROJECT / apk).is_file():
            record(f"pipeline {name}", False, f"{apk} missing")
            continue

        r, out, seen = _run_target(apk)
        missing = [s for s in STAGES_ALWAYS if s not in seen]

        # ONE retry, and it is REPORTED. Measured 2026-10-05: the WSL<->Windows adb
        # transport flakes under a long sweep (`UtilAcceptVsock:271: accept4 failed
        # 110`), which takes the dynamic stage down with it - while the same target
        # run standalone passes. Retrying once separates a transport trip from a
        # pipeline defect; reporting it means the retry can never hide one.
        retried = False
        if missing:
            retried = True
            r, out, seen = _run_target(apk)
            missing = [s for s in STAGES_ALWAYS if s not in seen]

        failed = [s for s, st in seen.items() if st == "FAIL"]
        decision = re.search(r"^Decision:\s*(\S+)", out, re.M)
        got = decision.group(1) if decision else "?"
        ok = r.returncode == 0 and not missing and not failed
        detail = f"rc={r.returncode} {len(seen)} stages, Decision: {got}"
        if retried:
            detail += " (retried once)"
        if missing:
            detail += f", MISSING {missing}"
            # Surface WHY. Without this the line says a stage is absent and gives
            # no way to tell a stage failure from the ENVIRONMENT dying under it -
            # measured 2026-10-05, four back-to-back dynamic runs in a 3 GB WSL
            # (swap=0) killed the instance, and the only symptom was an absent
            # `dynamic`. The same target run standalone immediately afterwards
            # passed with all 13 stages, which is how the two were told apart.
            why = [ln.strip() for ln in out.splitlines()
                   if "OK " not in ln and "FAIL " not in ln
                   and any(w in ln.lower() for w in
                           ("error", "traceback", "refused", "unavailable",
                            "timed out", "no such", "not found"))][:2]
            if why:
                detail += " | why: " + " / ".join(why)[:240]
        if failed:
            detail += f", FAILED {failed}"
        if expected and got != expected:
            detail += f" (expected {expected})"
            ok = False
        record(f"pipeline {name}", ok, detail)


# ---------------------------------------------------------------- 5. OUTPUTS
def check_outputs() -> None:
    print("\n[5/7] OUTPUTS WRITTEN BY A RUN", flush=True)

    reports = sorted((PROJECT / "outputs" / "reports").rglob("*.md"),
                     key=lambda p: p.stat().st_mtime)
    record("report files", len(reports) > 0, f"{len(reports)} under outputs/reports/")

    db = PROJECT / "outputs" / "analysis" / "results.db"
    if db.is_file():
        try:
            con = sqlite3.connect(f"file:{db}?mode=ro", uri=True)
            apks = con.execute("SELECT COUNT(*) FROM apks").fetchone()[0]
            runs = con.execute("SELECT COUNT(*) FROM runs").fetchone()[0]
            con.close()
            record("results.db", runs > 0, f"{apks} apks, {runs} runs")
        except Exception as exc:  # noqa: BLE001
            record("results.db", False, f"{type(exc).__name__}: {exc}")
    else:
        record("results.db", False, "missing")

    log = PROJECT / "outputs" / "audit_log.jsonl"
    if log.is_file():
        n = len(log.read_text(errors="ignore").splitlines())
        record("audit_log.jsonl", n > 0, f"{n} records, {log.stat().st_size} bytes")
    else:
        record("audit_log.jsonl", False, "missing")

    # the chain integrity the project checks on itself
    #
    # The project has ruled the line-185 fork EXPECTED, in writing, with the reason:
    # the log is an immutable hash-chained trail (ADR-0005), rewriting the link so
    # `verify` turns green would destroy the tamper-evidence the chain exists to
    # provide, and that would be a fabricated fix (principle 3). Its own operational
    # rule is: "a FAILED result whose only error is this documented line-185 fork is
    # expected. Any NEW or different error is not, and must be investigated."
    # This check therefore reproduces that rule exactly - the documented fork is
    # KNOWN, anything else is a failure.
    r = run([str(PYBIN), "-m", "cli", "verify-audit-log"], timeout=300)
    out = ANSI.sub("", (r.stdout or "") + (r.stderr or ""))
    forks = re.findall(r"line (\d+): prev_hash forks", out)
    doc = PROJECT / "docs" / "plans" / "handoff" / "audit-log-known-fork-2026-08-17.md"
    if not forks:
        record("audit-log chain", True, "no fork reported")
    elif set(forks) == {"185"} and doc.is_file():
        record_known(
            "audit-log chain",
            "the documented line-185 concurrent-write fork - EXPECTED per "
            "docs/plans/handoff/audit-log-known-fork-2026-08-17.md. The log is kept "
            "byte-for-byte on purpose: re-writing the link would destroy the "
            "tamper-evidence the chain exists to provide. Any OTHER fork or error "
            "here is a failure.")
    else:
        record("audit-log chain", False,
               f"fork at line {','.join(forks)} - NOT the documented one; investigate.")


# ---------------------------------------------------------------- 6. CONTRACTS
def check_contracts() -> None:
    print("\n[6/7] CONTRACTS — the unit suite and its guards", flush=True)
    r = run([str(PYBIN), "-m", "pytest", "tests/unit", "-q"], timeout=900)
    out = ANSI.sub("", (r.stdout or "") + (r.stderr or ""))

    def count(word: str) -> int:
        m = re.search(rf"(\d+) {word}\b", out)
        return int(m.group(1)) if m else 0

    passed, failed, skipped = count("passed"), count("failed"), count("skipped")
    if not (passed or failed or skipped):
        record("unit suite", False, head(out, 3))
        return
    # The EXIT CODE is the primary signal, and each count is read INDEPENDENTLY.
    # pytest lists failures FIRST ("1 failed, 2324 passed, 1 skipped"), so a regex
    # expecting "N passed, N failed" in that order silently reads 0 failed - this
    # check did exactly that and reported a FAILING suite as green. The separate
    # guard check below caught it, which is the only reason it was noticed.
    record("unit suite", r.returncode == 0 and failed == 0,
           f"{passed} passed / {failed} failed / {skipped} skipped")

    col = run([str(PYBIN), "-m", "pytest", "tests/unit", "--collect-only", "-q"],
              timeout=600)
    cm = re.search(r"(\d+) tests? collected", ANSI.sub("", col.stdout or ""))
    record("collected count", bool(cm), f"{cm.group(1)} collected" if cm else "?")

    for guard in ("tests/unit/test_audit_ledger_currency.py",
                  "tests/unit/test_ledger_suite_count.py"):
        g = run([str(PYBIN), "-m", "pytest", guard, "-q"], timeout=300)
        record(f"guard {Path(guard).name}", g.returncode == 0,
               head(ANSI.sub("", g.stdout or ""), 1))


# ---------------------------------------------------------------- 7. COMMANDS
# Every command the CLI exposes, not just the one the pipeline runs. Measured
# 2026-10-05: four of these six had never been executed by any check.
# `regen-reports` runs with --dry-run (it renders into a throwaway tree); the
# other two writers need --justification (ADR-0005), which is itself a check -
# a command that writes without an attestation would be the defect.
COMMANDS = [
    ("verify-device", ["verify-device"], None),
    ("calibration-report", ["calibration-report"], None),
    ("regen-reports (dry-run)", ["regen-reports", "--dry-run",
                                 "--justification", "ACADEMIC_TRAINING_TARGET"], None),
    ("re-attribute", ["re-attribute",
                      "--justification", "ACADEMIC_TRAINING_TARGET"], None),
]


def check_commands() -> None:
    print("\n[7/7] CLI COMMANDS", flush=True)
    for name, args, _ in COMMANDS:
        r = run([str(PYBIN), "-m", "cli"] + args, timeout=900)
        out = ANSI.sub("", (r.stdout or "") + (r.stderr or ""))
        # The last non-empty line is the command's own summary.
        tail = [ln.strip() for ln in out.splitlines() if ln.strip()]
        record(f"cli {name}", r.returncode == 0,
               f"rc={r.returncode} :: {tail[-1][:150] if tail else '(no output)'}")

    # The DOCUMENTED entry point. The README says `bash run.sh`; everything else
    # here calls `cli` directly, so without this the one command the docs tell you
    # to use is the one thing never checked. --check-only is its safe mode: the
    # full environment gate, stopping before the pipeline, so it adds no DB run
    # and no bundle on every sweep.
    r = run(["bash", "run.sh", "--check-only"], timeout=600)
    out = ANSI.sub("", (r.stdout or "") + (r.stderr or ""))
    tail = [ln.strip() for ln in out.splitlines() if ln.strip()]
    record("bash run.sh --check-only", r.returncode == 0,
           f"rc={r.returncode} :: {tail[-1][:150] if tail else '(no output)'}")

    # A writer must REFUSE to run without the authorization attestation. If this
    # ever passes, an unattested mutation of the audit trail became possible.
    for name in ("regen-reports", "re-attribute"):
        r = run([str(PYBIN), "-m", "cli", name, "--dry-run"
                 if name == "regen-reports" else name], timeout=300)
        out = ANSI.sub("", (r.stdout or "") + (r.stderr or ""))
        record(f"cli {name} refuses without --justification",
               r.returncode != 0 and "justification" in out.lower(),
               f"rc={r.returncode}")


# ---------------------------------------------------------------- MAIN
SECTIONS = [
    ("env", check_environment),
    ("tools", check_tools),
    ("files", check_files),
    ("pipeline", check_pipeline),
    ("outputs", check_outputs),
    ("contracts", check_contracts),
    ("commands", check_commands),
]


def main() -> int:
    # `--only env,tools,files` skips the slow sections (the pipeline is four real
    # runs, ~4 minutes). Default: everything.
    only = None
    if "--only" in sys.argv:
        i = sys.argv.index("--only")
        if i + 1 < len(sys.argv):
            only = {s.strip() for s in sys.argv[i + 1].split(",")}

    print("=" * 68)
    print("  VERIFY-ALL — every phase, tool, file and contract")
    if only:
        print(f"  (sections: {', '.join(sorted(only))})")
    print("=" * 68)
    for name, fn in SECTIONS:
        if only and name not in only:
            continue
        try:
            fn()
        except Exception as exc:  # noqa: BLE001
            record(name, False, f"{type(exc).__name__}: {exc}")

    failed = [(n, d) for n, ok, d in RESULTS if not ok]
    print("\n" + "=" * 68)
    print(f"  SUMMARY: {len(RESULTS) - len(failed)} passed, {len(failed)} failed, "
          f"{len(KNOWN)} known-expected, {len(RESULTS) + len(KNOWN)} checks")
    for n, d in KNOWN:
        print(f"    KNOWN  {n}: {d}")
    for n, d in failed:
        print(f"    FAIL   {n}: {d}")
    print("=" * 68)
    # Exit 0 only when nothing FAILED. A KNOWN-expected item is a documented
    # condition the project has ruled acceptable, not a green pass - it is printed
    # above every time so it can never be mistaken for one.
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())

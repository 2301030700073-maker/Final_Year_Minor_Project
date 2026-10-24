#!/usr/bin/env python3
"""Environment verification & auto-fix for the Android SSL-Pinning Analysis Platform.

Checks all requirements and auto-starts services that need to be running.
Run with --fix to auto-start services, or without to only check.

Usage:
   uv run python scripts/check_environment.py       # check only
   uv run python scripts/check_environment.py --fix  # check + auto-start services
"""

import os
import re
import shutil
import subprocess
import sys
import time
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parents[1]

PASS = "✅"
FAIL = "❌"
FIX = "🔧"

results: list[tuple[str, str]] = []
AUTO_FIX = "--fix" in sys.argv


def check(name, status, detail=""):
    icon = PASS if status else FAIL
    results.append((name, icon if status else FAIL))
    print(f"  {icon}  {name}" + (f"  ({detail})" if detail else ""))


def fix(name, status, detail=""):
    icon = FIX if status else FAIL
    results.append((name, icon if status else FAIL))
    print(f"  {icon}  {name}" + (f"  ({detail})" if detail else ""))


def run(cmd, timeout=15, **kwargs):
    try:
        return subprocess.run(cmd, capture_output=True, text=True, timeout=timeout, **kwargs)
    except FileNotFoundError:
        return None
    except subprocess.TimeoutExpired:
        # A long-running check is a failed check, not a crashed script (principle 3):
        # return None so the caller records a clean failure and the run continues.
        return None


def _java_major_version(result) -> int | None:
    """Parse the JDK feature release from `java -version` output, or None.

    `java -version` writes the version banner to STDERR (a detail the old check
    missed entirely: it only asserted the binary EXISTED, so any java - 8, 11,
    a broken JRE - passed as "JDK 17+"). Handles both banner shapes:
    `openjdk version "17.0.11" 2024-04-16` -> 17 and the legacy
    `java version "1.8.0_392"` -> 8.
    """
    if result is None:
        return None
    text = (result.stderr or "") + "\n" + (result.stdout or "")
    m = re.search(r'version\s+"(\d+)(?:\.(\d+))?', text)
    if not m:
        return None
    major = int(m.group(1))
    if major == 1 and m.group(2):
        # 1.8.0_x is the pre-9 numbering; the feature release is the second field.
        major = int(m.group(2))
    return major


def _windows_mitmdump():
    """Resolve the Windows-host mitmdump.exe the capture stage actually launches.

    On WSL2 the emulator/adb server live on the Windows host and the device
    reaches that host's localhost (README §3), so `--capture-traffic` runs
    `mitmdump.exe` THERE - never in WSL2. Checking `shutil.which("mitmdump")`
    in this namespace therefore reported a false failure on a correctly
    configured box. This asks the pipeline's own resolver
    (`dynamic.mitmproxy_capture._windows_mitmdump`, which is what the stage
    uses), so the gate and the stage can never disagree about where mitmdump is.

    Returns (path_or_None, detail). The probe runs in a child process so a
    broken/hanging powershell.exe lookup degrades to "not found" here instead of
    taking the whole checker down.
    """
    try:
        r = subprocess.run(
            [sys.executable, "-c",
             "from dynamic import mitmproxy_capture as m;"
             "print(m._windows_mitmdump() or 'NONE')"],
            capture_output=True, text=True, timeout=90,
            env={**os.environ, "PYTHONPATH": str(PROJECT_ROOT / "src")},
        )
    except (OSError, subprocess.SubprocessError) as exc:
        return None, f"resolver probe failed ({type(exc).__name__}: {exc})"
    if r.returncode != 0:
        tail = (r.stderr or r.stdout or "").strip().splitlines()
        return None, f"resolver probe failed ({tail[-1][:80] if tail else 'no output'})"
    found = (r.stdout or "").strip()
    if not found or found == "NONE":
        return None, "not found on the Windows host (install mitmproxy there)"
    return found, found


def _find_windows_adb():
    """Locate Windows adb.exe from WSL."""
    users_dir = Path("/mnt/c/Users")
    if not users_dir.is_dir():
        return None
    for d in sorted(users_dir.iterdir()):
        if not d.is_dir() or d.name in ("All Users", "Default", "Default User", "Public"):
            continue
        candidates = [
            d / "AppData/Local/Android/Sdk/platform-tools/adb.exe",
            d / "Downloads/platform-tools-latest-windows/platform-tools/adb.exe",
        ]
        for c in candidates:
            if c.is_file():
                return str(c)
    return None


def _ensure_windows_adb_server(win_adb):
    """Ensure Windows ADB server is listening on 0.0.0.0 (for WSL)."""
    import socket
    win_ip = None
    try:
        r = subprocess.run(["ip", "route", "show", "default"],
                           capture_output=True, text=True, timeout=5)
        parts = r.stdout.split()
        for i, p in enumerate(parts):
            if p == "via" and i + 1 < len(parts):
                win_ip = parts[i + 1]
    except Exception:
        pass

    if not win_ip:
        return False

    # Check if reachable
    s = socket.socket()
    s.settimeout(2)
    try:
        s.connect((win_ip, 5037))
        s.close()
        return True
    except OSError:
        pass

    # Not reachable — restart with -a
    if win_adb:
        print(f"       Starting Windows ADB server with -a...")
        try:
            subprocess.run([win_adb, "kill-server"], capture_output=True, text=True, timeout=10)
        except subprocess.TimeoutExpired:
            pass  # a wedged kill-server must not crash the checker before the summary
        subprocess.Popen([win_adb, "-a", "nodaemon", "server"],
                         stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        time.sleep(3)
        try:
            s = socket.socket()
            s.settimeout(2)
            s.connect((win_ip, 5037))
            s.close()
            return True
        except OSError:
            return False
    return False


# ──────────────────────────────────────────────
print("=" * 60)
print("Environment Verification Script")
if AUTO_FIX:
    print("Mode: check + auto-fix")
else:
    print("Mode: check only  (add --fix to auto-start services)")
print("=" * 60)

# ── 1. System ─────────────────────────────────
print("\n[1/6] System & Python")
check("Python 3.11+", sys.version_info >= (3, 11), f"{sys.version_info.major}.{sys.version_info.minor}")
wsl = "microsoft" in Path("/proc/version").read_text().lower() if Path("/proc/version").exists() else False
check("WSL2", wsl, "yes" if wsl else "no")

# ── 2. Python deps ────────────────────────────
print("\n[2/6] Python dependencies")
r = run(["uv", "sync"])
check("uv sync", r and r.returncode == 0)

# `uv sync` exiting 0 does NOT mean the packages are importable. Measured
# 2026-10-24 on this box: capstone-5.0.9.dist-info was present with all 58 files
# in its RECORD absent from disk, and `uv sync --locked` reported "Checked 73
# packages" and exited 0 - uv treats the dist-info as proof of installation. The
# cost was invisible: tests/unit/test_native_body_sweep.py guards with
# pytest.importorskip("capstone"), so 32 tests silently collected as nothing and
# the ledger's suite count read 2,530 against CI's 2,562. Import each declared
# dependency by its real module name, so a metadata-only install is a named
# failure here instead of a shrunken suite somewhere else.
_IMPORT_NAMES = {
    "pyyaml": "yaml",
    "pyaxmlparser": "pyaxmlparser",
    "sqlalchemy": "sqlalchemy",
    "pyelftools": "elftools",
}
try:
    import tomllib
except ModuleNotFoundError:  # pragma: no cover - Python < 3.11
    tomllib = None

_declared = []
if tomllib is not None:
    with open(Path(__file__).resolve().parents[1] / "pyproject.toml", "rb") as _fh:
        _declared = tomllib.load(_fh).get("project", {}).get("dependencies", [])

_import_ok = True
for _req in _declared:
    _dist = re.split(r"[<>=!~\[; ]", _req.strip(), maxsplit=1)[0].strip()
    if not _dist:
        continue
    _mod = _IMPORT_NAMES.get(_dist.lower(), _dist.replace("-", "_"))
    _probe = run(["uv", "run", "python", "-c", f"import {_mod}"])
    _ok = bool(_probe and _probe.returncode == 0)
    _import_ok = _import_ok and _ok
    if _ok:
        check(f"import {_mod}", True, _dist)
    else:
        check(
            f"import {_mod}", False,
            f"{_dist} - metadata present but files missing? "
            f"try: uv pip install --force-reinstall --no-deps {_dist}",
        )

if not _import_ok:
    # A dependency that cannot be imported is not a warning: the tests that need
    # it importorskip away, so the suite silently shrinks and every count taken
    # from it is wrong. Say so where the remedy is obvious.
    print("\n  ! a declared dependency is not importable - the suite will silently")
    print("    skip the tests that need it, so any count taken from it is wrong.")

# ── 3. Android toolchain ──────────────────────
print("\n[3/6] Android toolchain")

r = run(["java", "-version"])
# Existence was never the requirement: the pipeline needs a JDK 17+ toolchain
# (README §3), and a java 8/11 JRE satisfies "the binary exists" while every
# tool that needs a modern JDK fails later, far from the cause (M12).
_java_major = _java_major_version(r)
check(
    "JDK 17+", _java_major is not None and _java_major >= 17,
    f"found {_java_major}" if _java_major is not None else "java not found or version unparseable",
)

adb_wrapper = shutil.which("adb")
check("adb on PATH", adb_wrapper is not None)

jadx = shutil.which("jadx")
check("jadx", jadx is not None)
if jadx:
    r = run([jadx, "--version"])
    if r: print(f"       version: {r.stdout.strip() or r.stderr.strip()}")

check("apktool", shutil.which("apktool") is not None)

# The pipeline runs under the uv-locked frida client, NOT whatever `frida` is on
# PATH - run.sh checks exactly this and warns that a system 17.x shadows it.
# Measured 2026-10-05 on the reference box: PATH `frida` was 17.16.4 while the
# uv-locked client AND the device's frida-server were both 16.7.19, so a bare
# existence check reported this green while naming the one binary the pipeline
# does not use. Report the version that is USED, and name the shadowed one.
r = run(["uv", "run", "python", "-c", "import frida; print(frida.__version__)"])
frida_ver = (r.stdout.strip() if r and r.returncode == 0 else "")
frida_note = f"{frida_ver} (uv-locked)" if frida_ver else "uv add 'frida<17'"
_path_frida = shutil.which("frida")
if _path_frida:
    _pr = run([_path_frida, "--version"])
    _pv = (_pr.stdout.strip() if _pr and _pr.returncode == 0 else "?")
    if _pv and not _pv.startswith("16."):
        frida_note += f"; PATH frida is {_pv} - shadowed, NOT used"
check("frida client (uv-locked, needs 16.x)", frida_ver.startswith("16."), frida_note)

r = run(["uv", "run", "python", "-c", "import objection; print(objection.__version__)"])
if r and r.returncode == 0:
    check("objection", True, r.stdout.strip())
else:
    check("objection (optional)", False, "pip install objection")

# mitmproxy lives on the WINDOWS host on WSL2 (README §3): the device reaches the
# adb-server host's localhost through adb reverse, and the capture stage launches
# mitmdump.exe there. A WSL2-PATH lookup therefore reported a false failure on a
# correct setup, so on WSL2 the check asks the stage's own resolver (M13). On
# native Linux the proxy does run in this namespace, so PATH is the right probe.
if wsl:
    _win_mitmdump, _win_note = _windows_mitmdump()
    check("mitmproxy (Windows host, capture proxy)", _win_mitmdump is not None, _win_note)
else:
    _mitmdump = shutil.which("mitmdump") or shutil.which("mitmproxy")
    check("mitmproxy", _mitmdump is not None, _mitmdump or "not on PATH")
for tool in ["aapt2", "readelf", "strings"]:
    check(tool, shutil.which(tool) is not None)

# ── 4. ADB & Emulator ────────────────────────
print("\n[4/6] ADB & Emulator")

# Start ADB server if needed (--fix mode)
adb_started = False
r = run([adb_wrapper or "adb", "devices"])
if r is None or r.returncode != 0:
    if AUTO_FIX:
        print("       Starting ADB server...")
        run([adb_wrapper or "adb", "start-server"])
        time.sleep(2)
        r = run([adb_wrapper or "adb", "devices"])
        adb_started = r and r.returncode == 0

# In WSL, also ensure Windows ADB server is on 0.0.0.0
if wsl and AUTO_FIX:
    win_adb = _find_windows_adb()
    adb_ok = _ensure_windows_adb_server(win_adb)
    fix("Windows ADB server (0.0.0.0)", adb_ok)

serial = None
if r and r.returncode == 0:
    lines = [l for l in r.stdout.splitlines()[1:] if l.strip() and "\tdevice" in l]
    if len(lines) > 0:
        serial = lines[0].split("\t")[0]
        check("Device connected", True, f"{serial}")
    else:
        check("Device connected", False)
else:
    check("Device connected", False)

if serial:
    # Root check: prefer `adb shell id` (works when adbd is already root, and
    # returns immediately). Only fall back to `su` when adbd is not root, and
    # treat a hang/timeout as "not root" instead of crashing the whole script.
    r = run([adb_wrapper or "adb", "-s", serial, "shell", "id"])
    rooted = bool(r) and "uid=0" in (r.stdout or "")
    if not rooted:
        try:
            r = run([adb_wrapper or "adb", "-s", serial, "shell", "su -c 'id 2>&1'"])
            rooted = bool(r) and "uid=0" in (r.stdout or "")
        except Exception:
            rooted = False
    # When adbd runs as root, no `su` prefix is needed for commands.
    su_prefix = "" if rooted else "su -c "
    check("Root access (uid 0)", rooted)

    # frida-server — auto-start in --fix mode
    r = run([adb_wrapper or "adb", "-s", serial, "shell", "ps -A | grep frida-server"])
    frida_running = r and "frida-server" in (r.stdout or "")
    if not frida_running:
        if AUTO_FIX:
            print("       Starting frida-server on device...")
            subprocess.Popen(
                [adb_wrapper or "adb", "-s", serial, "shell",
                 f"{su_prefix}nohup /data/local/tmp/frida-server > /dev/null 2>&1 &"],
                stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
            )
            time.sleep(3)
            r = run([adb_wrapper or "adb", "-s", serial, "shell", "ps -A | grep frida-server"])
            frida_running = r and "frida-server" in (r.stdout or "")
            fix("frida-server running", frida_running)
        else:
            check("frida-server running", False, "run with --fix to auto-start")
    else:
        check("frida-server running", True)

# ── 5. Frida WSL bridge ───────────────────────
print("\n[5/6] Frida WSL→Windows bridge")

frida_ok = False
if not wsl:
    r = run(["uv", "run", "python", "-c",
             "import frida; d=frida.get_device('emulator-5554', timeout=5); print(len(d.enumerate_processes()))"])
    frida_ok = r and r.returncode == 0
    check("Frida ADB device", frida_ok, r.stdout.strip() if r else "")
else:
    env = {**os.environ, "PYTHONPATH": "src"}
    try:
        r = subprocess.run(
            ["uv", "run", "python", "-c",
             "from dynamic.device import setup_frida_connection, discover_device; "
             "d,_i=setup_frida_connection(discover_device());"
             "p=d.enumerate_processes(); print(f'{d.id}:{len(p)} processes')"],
            capture_output=True, text=True, timeout=25, env=env,
        )
    except subprocess.TimeoutExpired:
        # A hung relay is a failed check, not a crashed script (principle 3) - keep
        # going so the [6/6] summary still prints. Mirrors run()'s timeout handling.
        r = None
    frida_ok = r and r.returncode == 0
    out = r.stdout.strip() if r else ""
    err = r.stderr.strip() if r else ""
    if frida_ok:
        check("Frida via WSL relay", True, out)
    else:
        if AUTO_FIX:
            # Retry once (relay auto-starts on call)
            print("       Retrying Frida connection...")
            time.sleep(3)
            try:
                r = subprocess.run(
                    ["uv", "run", "python", "-c",
                     "from dynamic.device import setup_frida_connection, discover_device; "
                     "d,_i=setup_frida_connection(discover_device());"
                     "p=d.enumerate_processes(); print(f'{d.id}:{len(p)} processes')"],
                    capture_output=True, text=True, timeout=25, env=env,
                )
            except subprocess.TimeoutExpired:
                r = None
            frida_ok = r and r.returncode == 0
            out = r.stdout.strip() if r else ""
            fix("Frida via WSL relay", frida_ok, out if frida_ok else (r.stderr.strip()[:60] if r else ""))
        else:
            check("Frida via WSL relay", False, err[:60] if err else "failed")

# ── 6. Project components ─────────────────────
print("\n[6/6] Project components")

# The suite is ~1400 tests (~30s on the reference box); the default 15s timeout
# guaranteed a false failure and, being uncaught, crashed the whole script - give
# the one genuinely long check real headroom (run() now also survives a timeout).
r = run(["uv", "run", "pytest", "tests/unit", "-q"], timeout=300)
check("Unit tests", r and r.returncode == 0)

r = run(["uv", "run", "python", "-c",
         "from static.signatures import load_signatures; "
         "r=load_signatures('config/signatures/root_detection.yaml'); "
         "s=load_signatures('config/signatures/ssl_pinning.yaml'); "
         "print(len(r), 'root,', len(s), 'ssl')"],
        env={**os.environ, "PYTHONPATH": "src"})
# Recorded even when the spawn itself failed (r is None): the old `if r:` dropped
# the check from the run entirely, so an unparseable/broken invocation shrank the
# total instead of failing - a check that passes by never happening.
check("Signatures loaded", bool(r) and r.returncode == 0,
      (r.stdout or "").strip() if r else "could not run the loader")

r = run(["uv", "run", "python", "-m", "cli", "--help"],
        env={**os.environ, "PYTHONPATH": "src"})
check("CLI entrypoint", r and r.returncode == 0)

# Smoke-test the real report path with correctly-typed inputs. `classification`
# is a ClassificationResult (not a dict) - passing a dict here was the stale bug
# this check masked while [6/6] was crashing. Renders into a temp dir it cleans up,
# so a passing check leaves nothing in outputs/reports.
r = run(["uv", "run", "python", "-c",
         "import tempfile, shutil\n"
         "from report.generator import generate_report\n"
         "from common import ClassificationResult, CategoryVerdict, Action\n"
         "d = tempfile.mkdtemp()\n"
         "try:\n"
         "    c = ClassificationResult(action=Action.NEITHER,\n"
         "                             root=CategoryVerdict(0.0, False, []),\n"
         "                             ssl=CategoryVerdict(0.0, False, []))\n"
         "    p = generate_report('smoketest','smokehash','2026-09-04T00:00:00Z',{},c,None,None,[],output_dir=d)\n"
         "    assert p.exists() and p.read_text().strip()\n"
         "    print('ok')\n"
         "finally:\n"
         "    shutil.rmtree(d, ignore_errors=True)\n"],
        env={**os.environ, "PYTHONPATH": "src"})
check("Report generator", r and r.returncode == 0 and "ok" in (r.stdout or ""))

# ── Summary ────────────────────────────────────
print("\n" + "=" * 60)
passed = sum(1 for _, s in results if s in (PASS, FIX))
total = len(results)
failed_names = [n for n, s in results if s == FAIL]
print(f"  {passed}/{total} checks passed")
if failed_names:
    print(f"  Failed: {', '.join(failed_names)}")
print(f"  Mode: {'--fix (auto-start enabled)' if AUTO_FIX else 'check only'}")
print("=" * 60)

# M12: a gate that always exits 0 is not a gate. Callers - verify_all.py's
# environment section, run.sh's --check-only, a human's `&&` chain - branch on
# this exit code, and every failed check must reach it. Guarded on __main__ so
# importing this module (a lint/import check, a future test) does not exit the
# interpreter out from under the caller.
if __name__ == "__main__":
    sys.exit(1 if failed_names else 0)

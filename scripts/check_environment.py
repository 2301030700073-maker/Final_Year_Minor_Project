#!/usr/bin/env python3
"""Environment verification & auto-fix for the Android SSL-Pinning Analysis Platform.

Checks all requirements and auto-starts services that need to be running.
Run with --fix to auto-start services, or without to only check.

Usage:
   uv run python scripts/check_environment.py       # check only
   uv run python scripts/check_environment.py --fix  # check + auto-start services
"""

import os
import shutil
import subprocess
import sys
import time
from pathlib import Path

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

# ── 3. Android toolchain ──────────────────────
print("\n[3/6] Android toolchain")

r = run(["java", "-version"])
check("JDK 17+", r is not None)

adb_wrapper = shutil.which("adb")
check("adb on PATH", adb_wrapper is not None)

jadx = shutil.which("jadx")
check("jadx", jadx is not None)
if jadx:
    r = run([jadx, "--version"])
    if r: print(f"       version: {r.stdout.strip() or r.stderr.strip()}")

check("apktool", shutil.which("apktool") is not None)
check("frida CLI", shutil.which("frida") is not None)

r = run(["uv", "run", "python", "-c", "import objection; print(objection.__version__)"])
if r and r.returncode == 0:
    check("objection", True, r.stdout.strip())
else:
    check("objection (optional)", False, "pip install objection")

check("mitmproxy", shutil.which("mitmproxy") is not None)
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
             "d=setup_frida_connection(discover_device()); "
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
                     "d=setup_frida_connection(discover_device()); "
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
if r:
    check("Signatures loaded", r.returncode == 0, r.stdout.strip())

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
print(f"  {passed}/{total} checks passed")
if passed < total:
    failed_names = [n for n, s in results if s == FAIL]
    print(f"  Failed: {', '.join(failed_names)}")
print(f"  Mode: {'--fix (auto-start enabled)' if AUTO_FIX else 'check only'}")
print("=" * 60)

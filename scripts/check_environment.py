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
        subprocess.run([win_adb, "kill-server"], capture_output=True, text=True, timeout=10)
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
    # Root check
    r = run([adb_wrapper or "adb", "-s", serial, "shell", "su -c 'id 2>&1'"])
    rooted = r and "root" in (r.stdout or "")
    check("Root access (Magisk)", rooted)

    # frida-server — auto-start in --fix mode
    r = run([adb_wrapper or "adb", "-s", serial, "shell", "ps -A | grep frida-server"])
    frida_running = r and "frida-server" in (r.stdout or "")
    if not frida_running:
        if AUTO_FIX:
            print("       Starting frida-server on device...")
            subprocess.Popen(
                [adb_wrapper or "adb", "-s", serial, "shell",
                 "su -c 'nohup /data/local/tmp/frida-server > /dev/null 2>&1 &'"],
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
    r = subprocess.run(
        ["uv", "run", "python", "-c",
         "from dynamic.device import setup_frida_connection, discover_device; "
         "d=setup_frida_connection(discover_device()); "
         "p=d.enumerate_processes(); print(f'{d.id}:{len(p)} processes')"],
        capture_output=True, text=True, timeout=25, env=env,
    )
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
            r = subprocess.run(
                ["uv", "run", "python", "-c",
                 "from dynamic.device import setup_frida_connection, discover_device; "
                 "d=setup_frida_connection(discover_device()); "
                 "p=d.enumerate_processes(); print(f'{d.id}:{len(p)} processes')"],
                capture_output=True, text=True, timeout=25, env=env,
            )
            frida_ok = r and r.returncode == 0
            out = r.stdout.strip() if r else ""
            fix("Frida via WSL relay", frida_ok, out if frida_ok else (r.stderr.strip()[:60] if r else ""))
        else:
            check("Frida via WSL relay", False, err[:60] if err else "failed")

# ── 6. Project components ─────────────────────
print("\n[6/6] Project components")

r = run(["uv", "run", "pytest", "tests/unit", "-q"])
check("Unit tests (40/40)", r and r.returncode == 0)

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

r = run(["uv", "run", "python", "-c",
         "from report.generator import generate_report; "
         "p=generate_report('v','h','n',{},{'action':'T','root':{'confidence':0,'detected':0},"
         "'ssl':{'confidence':0,'detected':0},'threshold':0.7},None,None,[],output_dir='outputs/reports'); "
         "print('ok')"],
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

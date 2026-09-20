"""The shell-startup hook must not be able to hang a terminal.

emulator_up.sh's header promises it "can never break your startup" and it is wired to
run at shell open. Every adb call in it was unbounded, so a wedged adb server - a
known WSL2/Windows-interop failure, and the same class as device.py's un-timeouted
calls - hung the first one forever and took every new terminal with it. Bounding them
is what makes the promise true: a timeout is indistinguishable from "no adb here",
which is the script's own skip path.
"""

import os
import subprocess
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SCRIPT = ROOT / "scripts" / "emulator_up.sh"


def _wedged_adb_env(tmp_path, timeout="2"):
    bindir = tmp_path / "bin"
    bindir.mkdir()
    fake = bindir / "adb"
    fake.write_text("#!/bin/bash\necho 'simulating a wedged adb server' >&2\nexec sleep 300\n",
                    encoding="utf-8")
    fake.chmod(0o755)
    return {**os.environ, "PATH": f"{bindir}:{os.environ['PATH']}", "EMULATOR_ADB_TIMEOUT": timeout}


def test_a_wedged_adb_does_not_hang_the_shell_startup(tmp_path):
    start = time.monotonic()
    proc = subprocess.run(["bash", str(SCRIPT)], capture_output=True, text=True,
                          env=_wedged_adb_env(tmp_path), cwd=ROOT, timeout=20)
    elapsed = time.monotonic() - start
    assert elapsed < 15, f"a shell-open hook took {elapsed:.1f}s against a wedged adb"
    assert proc.returncode == 0, proc.stderr
    assert "adb not usable here" in proc.stdout, proc.stdout


def test_no_adb_call_in_the_script_bypasses_the_bounded_wrapper():
    """The behavioural test above only covers the FIRST call - a new direct `"$ADB"`
    invocation later in the script (the boot poll, the proxy read) would reintroduce
    the hang where that test cannot see it."""
    text = SCRIPT.read_text(encoding="utf-8")
    direct = [ln.strip() for ln in text.splitlines()
              if ('"$ADB" -s' in ln or '"$ADB" version' in ln)]
    assert direct == [], direct

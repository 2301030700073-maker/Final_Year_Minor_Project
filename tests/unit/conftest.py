"""Toolchain-freeness guard for the unit suite (ADR-0007).

The `tests/unit` suite is the project's pytest record and MUST run anywhere with
no Android toolchain present - CI (`.github/workflows/unit-tests.yml`) runs it on
a bare `ubuntu-latest` runner with none of jadx/apktool/adb/frida/mitmproxy/CFR/
dex2jar/readelf/... installed. A unit test that shells out to a real one of those
is a latent CI failure: it passes on the reference WSL2 box (where the tools
exist) and goes red on the runner. That exact class of bug shipped once already
(the decompile/device tests) precisely because a developer cannot see it locally.

Two autouse fixtures, one for each half of "the ambient environment must not be
reachable from a unit test": `_no_ambient_android_toolchain` hides the toolchain
from PATH *lookup*, and `_no_ambient_toolchain_execution` refuses to *spawn* one
(a module that builds an absolute path never consults PATH). `_no_live_host_or_device`
stubs the one probe that reaches the Windows host and, through it, the device.

Each is deliberately narrow, and each leaves the same two doors open: a test
that provides its OWN fake binary under the pytest temp tree (CI finds it exactly
as this box does, so it is not an ambient dependency), and a test that patches
the boundary itself - `shutil.which`, `subprocess.run`/`Popen`, `_find_jadx`,
`_adb_wrapper_path` - whose monkeypatch runs after these fixtures and wins.
"""
from __future__ import annotations

import os
import shutil
import subprocess
import tempfile

import pytest


def _test_temp_roots() -> tuple[str, ...]:
    """Directories that only exist inside a test run: a binary resolved under one
    of these was fabricated by the test, not installed, so it is reproducible on
    the bare runner too."""
    return tuple(
        os.path.realpath(p)
        for p in {tempfile.gettempdir(), "/tmp", os.environ.get("TMPDIR", "")}
        if p
    )


def _is_test_provided(cmd) -> bool:
    """True when the command's executable is a test's OWN fabricated binary - it
    names a path under the temp tree, so both this box and the runner execute the
    same fake. A bare name (`"adb"`) is NOT test-provided: it resolves through
    PATH, which is the ambient install this guard exists to keep out of reach."""
    exe = cmd if isinstance(cmd, (str, bytes)) else (cmd[0] if cmd else "")
    if not isinstance(exe, (str, bytes)):
        return False
    exe = exe.decode() if isinstance(exe, bytes) else exe
    if "/" not in exe and "\\" not in exe:
        return False
    resolved = os.path.realpath(os.path.expanduser(exe))
    return any(resolved.startswith(root) for root in _test_temp_roots())


def _toolchain_exe(cmd) -> str | None:
    """The toolchain binary a command would EXECUTE, or None if it executes
    something else. Only argv[0] is inspected: a toolchain name in an argument
    (a `bash -c 'jadx ...'` string, say) is not this guard's business - matching
    on that would make the check depend on how a test happens to quote things."""
    exe = cmd if isinstance(cmd, (str, bytes)) else (cmd[0] if cmd else "")
    if not isinstance(exe, (str, bytes)):
        return None
    name = os.path.basename(exe.decode() if isinstance(exe, bytes) else exe)
    return name if name in _ANDROID_TOOLCHAIN or name in _WINDOWS_HOST_EXE else None


# The external binaries the deterministic core shells out to (harvested from the
# `require_tool(...)` / `shutil.which(...)` call sites in src/). None of these are
# present on the CI runner; a unit test must never depend on one being found.
_ANDROID_TOOLCHAIN = frozenset({
    "jadx",
    "apktool",
    "adb",
    "frida",
    "frida-server",
    "mitmdump",
    "d2j-dex2jar.sh",
    "readelf",
    "nm",
    "strings",
    "unzip",
    "aapt2",
    "upx",
    "ghidra",
    "ghidraRun",
    "analyzeHeadless",
})

# The Windows-host binaries the WSL2 path shells out to. Not "Android toolchain"
# as such, but on the reference box they are the route to the live device - the
# adb reverse that carries the emulator's only internet path lives behind them -
# so a unit test must not spawn one either.
_WINDOWS_HOST_EXE = frozenset({"powershell.exe", "where.exe", "cmd.exe"})


@pytest.fixture(autouse=True)
def _no_live_host_or_device(monkeypatch):
    """Keep a unit test off the Windows host and off the attached device.

    `device.setup_frida_connection` re-asserts the WSL2 internet baseline right
    after it provisions Frida, gated on the pass-through proxy being up. That
    gate is a REAL `powershell.exe Get-NetTCPConnection` probe, and on the
    reference box the pass-through usually IS up (it is the device's normal
    internet path, left running between runs). So a unit test that reaches
    `setup_frida_connection` - `frida_runner.run_dynamic_stage` calls it
    directly, and the runner's own tests do not stub it - takes the gate and
    then runs the real `ensure_internet`: root adbd, re-place the tcp:8080
    reverse, rewrite the device's proxy setting. That is a live device being
    driven by a unit test, and it is invisible in exactly the way this file
    exists to prevent - it is inert on the CI runner (`_in_wsl` is False on a
    bare ubuntu box, and there is no powershell.exe to probe with) while being
    live on the reference WSL2 box, so the suite's result depends on whether a
    sweep happens to be running.

    Stubbed for the whole unit suite; a test that needs the gate OPEN sets it
    back itself (its monkeypatch runs after this fixture and wins), which is
    what test_device.py's re-assert tests do - and they stub `ensure_internet`
    alongside, so they never reach the device either."""
    monkeypatch.setattr("dynamic.pass_through_proxy.is_listening",
                        lambda *a, **k: False)


@pytest.fixture(autouse=True)
def _no_ambient_toolchain_execution(monkeypatch):
    """Make the ambient toolchain un-EXECUTABLE, not merely un-findable.

    The `which` guard above closes the "found a tool I shouldn't have" hole, but
    it only covers lookups: a module that builds an absolute path (the adb
    wrapper, the Ghidra headless launcher, a PowerShell probe) walks straight
    past it and really spawns the binary. On the reference box that means a unit
    test driving the live device or the Windows host - which is exactly what
    happened twice, silently: `setup_frida_connection`'s internet re-assert is
    gated on a real `powershell.exe` probe, so the runner's own tests ran a real
    `ensure_internet` (root adbd, re-place the reverse, rewrite the proxy) when a
    sweep happened to have the pass-through up. Inert on the runner, live here,
    and green either way - the shape this file exists to prevent.

    So: a spawn of a known toolchain or Windows-host binary fails LOUDLY, with
    the same two exemptions as the lookup guard - a test that provides its own
    fake under the pytest temp tree (it is CI-reproducible, so it may run), and
    a test that patches `subprocess.run`/`Popen` itself (its monkeypatch runs
    after this fixture and wins). Nothing else is touched: `sys.executable`,
    `bash`, `sleep` and every non-toolchain command run for real."""
    real_run, real_popen = subprocess.run, subprocess.Popen

    def guarded_run(cmd, *a, **k):
        if (name := _toolchain_exe(cmd)) and not _is_test_provided(cmd):
            raise AssertionError(
                f"a unit test tried to EXECUTE the ambient {name!r} - see "
                f"_no_ambient_toolchain_execution in tests/unit/conftest.py")
        return real_run(cmd, *a, **k)

    def guarded_popen(cmd, *a, **k):
        if (name := _toolchain_exe(cmd)) and not _is_test_provided(cmd):
            raise AssertionError(
                f"a unit test tried to EXECUTE the ambient {name!r} - see "
                f"_no_ambient_toolchain_execution in tests/unit/conftest.py")
        return real_popen(cmd, *a, **k)

    monkeypatch.setattr(subprocess, "run", guarded_run)
    monkeypatch.setattr(subprocess, "Popen", guarded_popen)


@pytest.fixture(autouse=True)
def _no_ambient_android_toolchain(monkeypatch):
    """Make the *ambient* Android toolchain read as absent (mirrors the runner).

    Wraps `shutil.which` so a lookup of a known toolchain binary that resolves to
    a real system install (the reference WSL2 box's /usr/local/bin/jadx, etc.)
    returns None - as it would on the bare CI runner. Two cases are deliberately
    left alone, because both are CI-safe and must keep working:

      * A test that provides its OWN fake binary under the pytest temp tree and
        puts it on PATH (test_lm1_lazy fabricates fake jadx/apktool shell scripts
        and really executes the decompile). CI finds that fake exactly the same
        way, so it is not a toolchain dependency - allow it through.
      * A test that mocks the discovery boundary itself (`_find_jadx`,
        `_find_cfr_jar`, `_adb_wrapper_path`, or `shutil.which` directly); its
        monkeypatch runs after this fixture and wins.

    So this hides only the "found the real system tool I shouldn't have" hole -
    the one that passes locally and fails on CI - and nothing else. It touches
    PATH lookup only; it does not stub subprocess."""
    real_which = shutil.which
    # Roots that only exist in a test run - a binary resolved under one of these
    # was fabricated by the test, not installed, so it is CI-reproducible.
    temp_roots = _test_temp_roots()

    def guarded_which(cmd, *args, **kwargs):
        name = os.path.basename(cmd) if isinstance(cmd, str) else cmd
        resolved = real_which(cmd, *args, **kwargs)
        if name in _ANDROID_TOOLCHAIN and resolved is not None:
            real_resolved = os.path.realpath(resolved)
            test_provided = any(real_resolved.startswith(root) for root in temp_roots)
            if not test_provided:
                # An ambient system install - hide it, as on the CI runner.
                return None
        return resolved

    monkeypatch.setattr(shutil, "which", guarded_which)

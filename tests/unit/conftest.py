"""Toolchain-freeness guard for the unit suite (ADR-0007).

The `tests/unit` suite is the project's pytest record and MUST run anywhere with
no Android toolchain present - CI (`.github/workflows/unit-tests.yml`) runs it on
a bare `ubuntu-latest` runner with none of jadx/apktool/adb/frida/mitmproxy/CFR/
dex2jar/readelf/... installed. A unit test that shells out to a real one of those
is a latent CI failure: it passes on the reference WSL2 box (where the tools
exist) and goes red on the runner. That exact class of bug shipped once already
(the decompile/device tests) precisely because a developer cannot see it locally.

This autouse fixture closes that gap by making the developer's machine behave
like the runner: it neutralizes `shutil.which` for the known Android toolchain
binaries so they read as absent everywhere. The effect:

  * A test that correctly mocks the binary-discovery boundary (its own
    `monkeypatch.setattr(...)` runs AFTER this fixture and overrides it, or it
    patches `_find_jadx`/`_find_cfr_jar`/`_adb_wrapper_path` above the `which`
    layer) keeps passing.
  * A test that silently relies on a real binary being on PATH now fails LOCALLY
    with the same loud error `require_tool` raises on CI - so it is caught before
    the push, not after.

It deliberately only touches PATH *lookup*. It does not stub subprocess, so a
test that constructs an absolute path or mocks `subprocess.run` directly is
unaffected - this guards the "found a tool I shouldn't have" hole, nothing else.
"""
from __future__ import annotations

import shutil

import pytest

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
    import os
    import tempfile

    real_which = shutil.which
    # Roots that only exist in a test run - a binary resolved under one of these
    # was fabricated by the test, not installed, so it is CI-reproducible.
    temp_roots = tuple(
        os.path.realpath(p) for p in {tempfile.gettempdir(), "/tmp", os.environ.get("TMPDIR", "")} if p
    )

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

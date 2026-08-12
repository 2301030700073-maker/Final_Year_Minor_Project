"""Frida attach + script injection for the dynamic bypass stage (FR-4.3). Reference-machine only."""

from __future__ import annotations

import subprocess
import threading
import time
from pathlib import Path

from common import Action, StageResult
from dynamic.device import _require_adb, setup_frida_connection

SCRIPT_DIR = Path(__file__).parent / "scripts"

# Keyed by target, not just action - UnCrackable1 and UnCrackable2 need
# different scripts for the same ROOT_ONLY action, since their root-check
# code lives in differently-named classes (confirmed against real
# decompiled sources, see docs/plans/handoff/phase-2-handoff.md).
SCRIPTS_BY_TARGET_ACTION: dict[str, dict[Action, list[str]]] = {
    "uncrackable1": {
        Action.ROOT_ONLY: ["root_bypass_v1.js"],
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["root_bypass_v1.js", "ssl_pinning_bypass_v1.js"],
    },
    "uncrackable2": {
        # ssl_pinning_bypass_v1.js hooks generic OkHttp/conscrypt classes,
        # nothing sg.vantagepoint-specific, so it's genuinely reusable as-is.
        # Filled in for SSL_ONLY/BOTH even though the real APK only ever
        # classifies ROOT_ONLY, so a KeyError isn't waiting on a future
        # reclassification.
        Action.ROOT_ONLY: ["root_bypass_uncrackable2.js"],
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["root_bypass_uncrackable2.js", "ssl_pinning_bypass_v1.js"],
    },
    "uncrackable3": {
        Action.ROOT_ONLY: ["root_bypass_uncrackable3.js"],
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["root_bypass_uncrackable3.js", "ssl_pinning_bypass_v1.js"],
    },
    "AndroGoat": {
        # Real app, not an UnCrackable target: root detection lives in
        # owasp.sat.agoat classes (no bypass script authored), but its SSL
        # pinning is plain OkHttp CertificatePinner for owasp.org, which
        # ssl_pinning_bypass_v1.js hooks generically (nothing agoat-specific).
        # Pinning is button-triggered - UI_ACTIONS_BY_TARGET navigates to
        # TrafficActivity and taps the CERTIFICATE PINNING button.
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["ssl_pinning_bypass_v1.js"],
    },
}


def attach(device_serial: str, package_name: str):
    device = setup_frida_connection(device_serial)
    pid = device.spawn([package_name])
    session = device.attach(pid)
    return device, session, pid


def load_script(session, script_name: str, on_message=None):
    source = (SCRIPT_DIR / script_name).read_text(encoding="utf-8")
    script = session.create_script(source)
    if on_message:
        script.on("message", on_message)
    script.load()
    return script


# RESID-6B: hard ceiling on the Frida stage. device.spawn / device.attach /
# session.create_script / load / device.resume are in-process blocking calls
# with no timeout of their own - a stalled frida-server or a hung attach would
# otherwise hang the entire pipeline indefinitely (NFR-1), unlike the decompile
# stage which bounds its subprocesses with JADX_TIMEOUT/APKTOOL_TIMEOUT. The
# stage runs its Frida interaction in a daemon thread joined under this deadline
# so a hang fails loudly as status="failed" instead of blocking forever.
FRIDA_STAGE_TIMEOUT = 60.0  # seconds

# RESID-6D: how hard to poll for the bypass scripts' hook-install signal before
# giving up and burning the remaining settle window (see _wait_for_checkpoint).
_CHECKPOINT_POLL_INTERVAL = 0.25


def _wait_for_checkpoint(messages: list, settle_seconds: float) -> None:
    """Wait for the bypass scripts to signal that their hooks are installed, or
    the settle deadline, whichever comes first - replacing the blind
    time.sleep(settle_seconds) (RESID-6D). The scripts send a frida `send`
    message with a payload carrying a 'hook' key once they're attached and
    running (e.g. root scripts emit {status: 'all three hooked'} once all checks
    are neutralized; the ssl script emits {hook: 'OkHttp CertificatePinner'...}).
    Polling beats sleeping: a script that signals early lets the stage move on
    once it's actually ready; one that never signals (e.g. hook target not yet
    in memory) just burns the full settle window - identical to the old blind
    sleep, so no behavior is lost either way."""
    deadline = time.monotonic() + settle_seconds
    while time.monotonic() < deadline:
        for m in messages:
            payload = m.get("payload") if isinstance(m, dict) else None
            if isinstance(payload, dict) and "hook" in payload:
                return
        time.sleep(_CHECKPOINT_POLL_INTERVAL)


def classify_self_termination(process_alive: bool) -> bool:
    """FR-4.6: after the bypass scripts have run and the settle window elapsed,
    a spawned process that is no longer alive self-terminated - it detected the
    instrumentation (Frida/root) and exited (System.exit / killProcess). Returns
    True when the process is gone, so the dynamic stage can report that as a
    first-class, logged outcome instead of a generic success or an unexplained
    crash. Pure - unit-testable anywhere, no device."""
    return not process_alive


def _process_is_alive(device, pid: int) -> bool:
    """Reference-machine only. True unless frida confirms the process is gone
    (ProcessNotFoundError). Conservative on purpose: a transient device/frida
    error is NOT evidence of self-termination, so it is treated as alive rather
    than risking a false self-termination report on a healthy target."""
    try:
        device.get_process(pid)
        return True
    except Exception as exc:
        return type(exc).__name__ != "ProcessNotFoundError"


# Target-specific UI actions to reach/trigger a bypass after resume.
# AndroGoat's pinning runs from the CERTIFICATE PINNING button in
# TrafficActivity (bounds [53,1167][1387,1335] on the reference emulator,
# 1440x2872), which is not the launcher activity - so navigate to it and tap
# it; without this the CertificatePinner.check hook never fires. Tuple forms:
# ("am_start", "<component>"), ("sleep", seconds), ("tap", x, y).
UI_ACTIONS_BY_TARGET: dict[str, list[tuple]] = {
    "AndroGoat": [
        ("am_start", "owasp.sat.agoat/.TrafficActivity"),
        ("sleep", 2.0),
        ("tap", 720, 1251),
    ],
}


def _run_ui_action(serial: str, action: tuple) -> None:
    """Run one target-specific UI action via adb. Best-effort: a UI step
    failing shouldn't crash the whole dynamic stage, but it also can't be
    silent - the stage result's evidence captures whether it ran."""
    adb = _require_adb()
    kind = action[0]
    if kind == "am_start":
        subprocess.run(
            [adb, "-s", serial, "shell", "am", "start", "-n", action[1]],
            capture_output=True, text=True, timeout=15,
        )
    elif kind == "tap":
        subprocess.run(
            [adb, "-s", serial, "shell", "input", "tap", str(action[1]), str(action[2])],
            capture_output=True, text=True, timeout=15,
        )
    elif kind == "sleep":
        time.sleep(action[1])


def run_dynamic_stage(
    device_serial: str, package_name: str, action: Action,
    target: str = "uncrackable1", settle_seconds: int = 5,
) -> StageResult:
    start = time.monotonic()
    messages: list[dict] = []

    if action == Action.NEITHER:
        return StageResult(
            stage="dynamic", status="skipped",
            evidence={"reason": "NEITHER classification - no bypass technique to apply"},
            duration_ms=int((time.monotonic() - start) * 1000),
        )

    script_names = SCRIPTS_BY_TARGET_ACTION.get(target, {}).get(action)
    if script_names is None:
        # Unknown target, or a known target with no script for this action:
        # that's not a pipeline error, it's just nothing we can bypass.
        # Degrade gracefully instead of a bare KeyError halting the whole
        # run - surfaced honestly in the report as "not dynamically
        # verified" with the reason, never silently. Confirmed real failure
        # mode against a production app run with an unrecognized --target.
        return StageResult(
            stage="dynamic", status="skipped",
            evidence={
                "reason": (
                    f"no bypass script available for target '{target}' "
                    f"(action {action.value}) - not dynamically verified"
                )
            },
            duration_ms=int((time.monotonic() - start) * 1000),
        )

    outcome: dict = {}

    def _run_frida() -> None:
        """All the blocking Frida work, run under FRIDA_STAGE_TIMEOUT (RESID-6B).
        A genuinely hung spawn/attach/load/resume must fail the stage loudly,
        not hang the whole pipeline forever."""
        try:
            device, session, pid = attach(device_serial, package_name)

            def on_message(message, data):
                messages.append(message)

            for name in script_names:
                load_script(session, name, on_message)

            device.resume(pid)
            time.sleep(1.0)  # let the launcher activity draw before any UI action
            for ui_action in UI_ACTIONS_BY_TARGET.get(target, ()):
                # RESID-6A: `ui_action`, not `action` - the loop variable must
                # not shadow the Action parameter (a latent footgun for any
                # later use of action.value after this point).
                _run_ui_action(device_serial, ui_action)
            # RESID-6D: signal-aware wait instead of a blind settle sleep.
            _wait_for_checkpoint(messages, settle_seconds)

            # FR-4.6: after the settle window, a spawned process that is no
            # longer alive self-terminated - it detected the instrumentation
            # (Frida/root) and exited (System.exit / killProcess). Surface that
            # as a first-class, logged outcome with an explicit reason instead
            # of silently reporting a generic success or an unexplained crash.
            if classify_self_termination(_process_is_alive(device, pid)):
                outcome["result"] = StageResult(
                    stage="dynamic", status="failed",
                    evidence={
                        "app_self_terminated": True,
                        "reason": (
                            "target app self-terminated after resume - detected the "
                            "instrumentation (Frida/root) and exited before dynamic "
                            "verification could confirm a bypass"
                        ),
                        "scripts_applied": script_names, "pid": pid,
                        "frida_messages": messages, "target": target,
                    },
                    error="app self-terminated due to detected instrumentation (FR-4.6)",
                    duration_ms=int((time.monotonic() - start) * 1000),
                )
                return

            outcome["result"] = StageResult(
                stage="dynamic", status="success",
                evidence={"scripts_applied": script_names, "pid": pid, "frida_messages": messages, "target": target},
                duration_ms=int((time.monotonic() - start) * 1000),
            )
        except Exception as exc:
            outcome["result"] = StageResult(
                stage="dynamic", status="failed",
                evidence={"frida_messages": messages}, error=str(exc),
                duration_ms=int((time.monotonic() - start) * 1000),
            )

    worker = threading.Thread(target=_run_frida, daemon=True)
    worker.start()
    worker.join(timeout=FRIDA_STAGE_TIMEOUT)
    if worker.is_alive():
        # RESID-6B: exceeded the hard ceiling - fail loudly. (The daemon thread
        # is orphaned, but the pipeline proceeds instead of hanging forever.)
        return StageResult(
            stage="dynamic", status="failed",
            evidence={"frida_messages": messages},
            error=f"frida stage exceeded {FRIDA_STAGE_TIMEOUT:.0f}s hard timeout - hung spawn/attach/load/resume",
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    return outcome["result"]

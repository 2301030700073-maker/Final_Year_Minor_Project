"""Frida attach + script injection for the dynamic bypass stage (FR-4.3). Reference-machine only."""

from __future__ import annotations

import subprocess
import threading
import time
from pathlib import Path

from common import Action, StageResult, elapsed_ms
from dynamic.device import _require_adb, setup_frida_connection
from dynamic.synthesizer import ROOT_RECIPES

SCRIPT_DIR = Path(__file__).parent / "scripts"

# Vendored third-party universal bypass: ssecurityy's
# "universal-robust-advanced-root--ssl-pinning-bypass", retrieved via
# `frida --codeshare`. Kept at repo-root scripts/ (not SCRIPT_DIR, which holds
# this project's own hand-authored scripts) to preserve provenance and mark it
# third-party. Not this project's code - used as-is (see scripts/VENDORED.md for
# provenance and the integrity caveat).
#
# It is NOT loaded during a run, only preserved here (and asserted to exist by
# tests) as the audited record of the external supplement it once was. Live
# verification on a real target (AndroGoat via a trusted mitmproxy CA) showed a
# second script load suppresses the synthesized bypass's observers on BOTH root
# and SSL regardless of whether their slot methods are disjoint: Frida's
# `implementation =` REPLACES the one slot, so the vendor's re-applied
# java.io.File.exists (root) and its SSL socket/trust-manager patches (SSL)
# revert or shadow the synth's patches - root_bypassed=True synth-only vs 0
# probeHits synth+vendor; ssl_bypassed=True synth-only vs 0 observer messages
# synth+vendor. The synthesized bypass, made comprehensive (native libc path-
# hiding + exec-su for root; native BoringSSL hook + OkHttp pinner neutralizer +
# conscrypt trust-manager observer for SSL), is the complete observed mechanism,
# so the vendor is dropped whenever a synthesized bypass is present.
VENDORED_UNIVERSAL = "universal-robust-advanced-root--ssl-pinning-bypass"
VENDORED_UNIVERSAL_PATH = Path(__file__).resolve().parents[2] / "scripts" / f"{VENDORED_UNIVERSAL}.js"

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
    """Spawn and attach to the target. Returns the device, session, pid and the
    instrumentation record (ADR-0020) that produced them - the Frida client and
    the device's frida-server - so the stage's own evidence can name the tool its
    verdict rests on instead of asserting one from an unnamed instrument."""
    device, instrument = setup_frida_connection(device_serial)
    from trace import trace as _trace
    _trace("dynamic", "frida.connect", "ok", serial=device_serial)
    pid = device.spawn([package_name])
    _trace("dynamic", "spawn", "ok", pid=pid, pkg=package_name)
    session = device.attach(pid)
    _trace("dynamic", "attach", "ok", pid=pid)
    return device, session, pid, instrument


def load_script(session, script_name: str, on_message=None):
    from trace import trace as _trace
    source = (SCRIPT_DIR / script_name).read_text(encoding="utf-8")
    script = session.create_script(source)
    _trace("dynamic", "script.create", "start", name=script_name, chars=len(source))
    if on_message:
        script.on("message", on_message)
    script.load()
    _trace("dynamic", "script.load", "ok", name=script_name, chars=len(source))
    return script


def load_script_source(session, source: str, on_message=None):
    """Load a Frida script from an in-memory source string (L-M2: the
    deterministic synthesizer produces its bypass in memory, not as a committed
    .js file). Same create/load lifecycle as load_script."""
    from trace import trace as _trace
    _trace("dynamic", "script.create", "start", chars=len(source))
    script = session.create_script(source)
    if on_message:
        script.on("message", on_message)
    script.load()
    _trace("dynamic", "script.load", "ok", chars=len(source))
    return script


# RESID-6B: hard ceiling on the Frida stage. device.spawn / device.attach /
# session.create_script / load / device.resume are in-process blocking calls
# with no timeout of their own - a stalled frida-server or a hung attach would
# otherwise hang the entire pipeline indefinitely (NFR-1), unlike the decompile
# stage which bounds its subprocesses with JADX_TIMEOUT/APKTOOL_TIMEOUT. The
# stage runs its Frida interaction in a daemon thread joined under this deadline
# so a hang fails loudly as status="failed" instead of blocking forever.
#
# The value is DERIVED from the settle window this deadline has to contain, not
# chosen independently of it. An unknown real app (the synthesized-bypass path)
# spends _UNKNOWN_TARGET_SETTLE_SECONDS (25 s) waiting for the app to boot and
# reach its own check, ON TOP of spawn/attach/script-load and the two-spawn path.
# Measured 2026-10-06:
#   hand-authored targets (known, 5 s settle)   18.1 s of the ceiling
#   a real app, forced (unknown, 25 s settle)   39-44 s
#   a large commercial app (propertyguru)       119.4 s - 99.5% of a 120 s ceiling
# 60 s left ~16 s of headroom for the very path the 25 s settle exists to serve,
# and propertyguru EXCEEDED it. 120 s still left it at 99.5%, i.e. still marginal.
# 180 s is 25 s settle + ~94 s of measured spawn/load + real margin.
#
# CAVEAT on those numbers: they were taken on a HEADLESS emulator
# (-no-window -gpu swiftshader_indirect), which renders in software and inflates
# spawn/load. On a GPU-backed emulator the same stages should be faster, so this
# ceiling is generous there and load-bearing here. A genuinely stalled server still
# fails - just later, and the message now names the phase it was in.
FRIDA_STAGE_TIMEOUT = 180.0  # seconds

# RESID-6D: how hard to poll for the bypass scripts' hook-install signal before
# giving up and burning the remaining settle window (see _wait_for_checkpoint).
_CHECKPOINT_POLL_INTERVAL = 0.25

# RESID-6E: after loading the synthesized bypass, settle briefly before loading
# the heavy vendored universal. Loading the 114 KB vendor immediately after the
# synth suppresses delivery of the synth's `send({hook:...})` checkpoint (live
# frida_messages came back empty on a real target). This gives the synth's
# 200 ms checkpoint timer a chance to fire first so it is captured. Delivery
# timing, not a blind sleep.
_SYNTH_CHECKPOINT_SETTLE = 0.5

# Unknown real apps (no hand-authored script -> synthesized bypass) have no UI
# tap that drives their root/SSL check the way AndroGoat/OWASP do: the app must
# boot itself and reach a network call before SSL can be confirmed. The default
# 5 s settle is too short for a heavy React Native app to leave its splash
# screen and complete a TLS handshake, so an unknown-app run ends up
# SSL=inconclusive with no handshake observed. Give real apps a bounded longer
# window so the app has a real chance to reach its own check; known targets
# (UI-triggered, fire in seconds) keep the short default. This is a delivery
# window, never a proof - a genuinely stuck app still reports inconclusive.
_UNKNOWN_TARGET_SETTLE_SECONDS = 25.0


def _wait_for_checkpoint(
    messages: list,
    settle_seconds: float,
    require_evidence: bool = False,
    require_both_dimensions: bool = False,
) -> None:
    """Wait for the bypass scripts to signal that their hooks are installed - or,
    when the flow is UI-triggered, for the app's own bypass EVIDENCE - or the
    settle deadline, whichever comes first (replacing the blind
    time.sleep(settle_seconds), RESID-6D).

    The scripts send a frida `send` message with a payload carrying a 'hook' key
    once they're attached and running (e.g. root scripts emit
    {status: 'all three hooked'} once all checks are neutralized; the ssl script
    emits {hook: 'OkHttp CertificatePinner'...}). That readiness checkpoint fires
    at resume - BEFORE any UI-triggered check runs. For button-tapped flows
    (AndroGoat root/pinning), the messages the success check actually needs -
    probeHit and bypassEffect (ssl-pin-check / ssl-handshake) - arrive only after
    the UI interaction and (for SSL) the intercepted handshake completes, so when
    require_evidence is set we wait for that evidence instead of returning on the
    readiness checkpoint alone. Polling beats sleeping: an early signal lets the
    stage move on; a target whose check never fires just burns the settle window,
    identical to the old blind sleep.

    require_both_dimensions holds the wait until BOTH the root probeHit and the
    SSL bypassEffect have reported - for a synthesized BOTH run the fast root
    probeHit must not cut the SSL window short, or SSL is abandoned before the
    app's own TLS handshake fires (which would defeat the longer settle window).
    Ignored unless require_evidence is set; the two-spawn path (one dimension
    per spawn) never sets it, so each spawn waits only for its own evidence."""
    from trace import trace as _trace
    _trace("dynamic", "checkpoint", "start", require_evidence=require_evidence,
           require_both=require_both_dimensions, settle=settle_seconds)
    deadline = time.monotonic() + settle_seconds
    seen_root, seen_ssl = False, False
    _found = False
    while time.monotonic() < deadline:
        # Snapshot: `on_message` appends to `messages` from Frida's reactor
        # thread while this worker thread iterates, so a bare `for m in messages`
        # can raise `RuntimeError: list modified during iteration` under message
        # load. Copying per poll is safe (messages only grows; the next poll
        # re-scans and sees anything new) and costs nothing at these sizes.
        for m in list(messages):
            payload = m.get("payload") if isinstance(m, dict) else None
            if not isinstance(payload, dict):
                continue
            if "hook" in payload and not require_evidence:
                _found = True
                _trace("dynamic", "checkpoint", "ok", reason="hook-ready")
                return
            if require_evidence:
                if "probeHit" in payload:
                    seen_root = True
                if "bypassEffect" in payload:
                    seen_ssl = True
                if require_both_dimensions:
                    if seen_root and seen_ssl:
                        _found = True
                        _trace("dynamic", "checkpoint", "ok", reason="root+ssl-evidence")
                        return
                elif "probeHit" in payload or "bypassEffect" in payload:
                    _found = True
                    _trace("dynamic", "checkpoint", "ok", reason="evidence")
                    return
        time.sleep(_CHECKPOINT_POLL_INTERVAL)
    _trace("dynamic", "checkpoint", "timeout", found=_found, settle=settle_seconds)


def _self_terminated_result(
    pid: int, messages: list, scripts_applied: list, target: str, start: float,
    *, instrument: dict | None = None,
) -> StageResult:
    """The FR-4.6 outcome: a spawned process that exited after the settle window
    self-terminated because it detected the instrumentation (Frida/root). Shared
    by the two-spawn and single-spawn paths so the reason stays word-for-word
    identical and the outcome is a first-class logged failure, never a silent
    success or an unexplained crash."""
    return StageResult(
        stage="dynamic", status="failed",
        evidence={
            "app_self_terminated": True,
            "reason": (
                "target app self-terminated after resume - detected the "
                "instrumentation (Frida/root) and exited before dynamic "
                "verification could confirm a bypass"
            ),
            "scripts_applied": scripts_applied, "pid": pid,
            "frida_messages": messages, "target": target,
            "instrument": instrument,
        },
        error="app self-terminated due to detected instrumentation (FR-4.6)",
        duration_ms=elapsed_ms(start),
    )


def _bypass_success_result(
    pid: int, messages: list, scripts_applied: list, target: str, start: float,
    *, ui_liveness: dict | None = None, instrument: dict | None = None,
) -> StageResult:
    """The FR-4.6 SUCCESS outcome, shared by the single- and two-spawn paths so
    the liveness contract cannot drift - the mirror of _self_terminated_result.

    Reaching a success result means self-termination was already checked and did
    NOT fire (otherwise classify_self_termination fired and the failed path
    returned first) - the spawned process survived the settle window - so
    app_still_running is recorded True here unconditionally. A bypass claim on a
    process that killed itself would be meaningless, so the success evidence
    states the app was still running after the bypass scripts, surfaced in the
    report's Dynamic Verification as an explicit, auditable liveness signal.
    ui_liveness is the single-spawn path's real-time UI evidence (dumpsys/logcat/
    uiautomator); the two-spawn path does not gather it, so it stays None ("not
    captured") - honest, never a guessed pass. Before this shared builder the
    two-spawn success path omitted app_still_running entirely, so AndroGoat's
    report read "not captured" for a survival it had actually observed."""
    return StageResult(
        stage="dynamic", status="success",
        evidence={
            "scripts_applied": scripts_applied, "pid": pid,
            "frida_messages": messages, "target": target,
            "app_still_running": True,
            "ui_liveness": ui_liveness,
            "instrument": instrument,
        },
        duration_ms=elapsed_ms(start),
    )


def classify_self_termination(process_alive: bool | None) -> bool:
    """FR-4.6: after the bypass scripts have run and the settle window elapsed,
    a spawned process that is no longer alive self-terminated - it detected the
    instrumentation (Frida/root) and exited (System.exit / killProcess). Returns
    True ONLY when the process is POSITIVELY gone, so the dynamic stage can report
    that as a first-class, logged outcome instead of a generic success or an
    unexplained crash. A None (liveness not determined - e.g. a transient
    enumerate error) is NOT self-termination: it is "unknown", and must not be
    conflated with "gone" (`not None` would wrongly flag it). Pure - unit-testable
    anywhere, no device."""
    if process_alive is None:
        return False
    return not process_alive


def _process_is_alive(device, pid: int) -> bool:
    """Reference-machine only. True unless frida POSITIVELY confirms the process is
    gone. Conservative on purpose: a transient device/frida error is NOT evidence
    of self-termination, so it is treated as alive rather than risking a false
    self-termination report on a healthy target.

    SESSION11K: this used `device.get_process(pid)`, but frida's get_process takes a
    process NAME and raises `AttributeError: 'int' object has no attribute 'lower'`
    for an int pid on the reference build - so it ALWAYS raised, this returned True
    every time, and self-termination / crash detection NEVER fired: a dead app was
    reported "still running: True" (proven live: spawn pid 7158, kill,
    get_process -> AttributeError, `adb pidof` empty, enumerate_processes -> pid
    absent). The liveness check now enumerates processes and looks for the pid -
    the reliable truth. A transient enumerate error is NEITHER evidence of life
    NOR of death, so it returns None ("liveness not captured this run") - the
    report already renders None honestly instead of guessing alive/dead."""
    try:
        processes = device.enumerate_processes()
    except Exception:
        return None  # transient frida/device error: do NOT claim alive or dead
    return any(getattr(p, "pid", None) == pid for p in processes)


# Target-specific UI actions to reach/trigger a bypass after resume. Tuple
# forms: ("am_start", "<component>"), ("sleep", seconds), ("tap", x, y).
# _ui_actions_for() is ACTION-AWARE: AndroGoat's SSL pinning runs from the
# CERTIFICATE PINNING button in TrafficActivity (bounds [53,1167][1387,1335] on
# the reference emulator, 1440x2872) and its root check runs from the CHECK ROOT
# button in RootDetectionActivity (bounds [53,909][1387,1077]) - both are
# BUTTON-TRIGGERED, so a run must navigate to the right activity and tap the
# button that corresponds to the action being verified, or the check never runs
# and the dynamic stage honestly reports inconclusive. Verified live on AndroGoat:
# synth root envelope taps CHECK ROOT -> root_bypassed=True (the app's own
# isRooted() File.exists on su paths is answered-hidden); synth SSL taps the
# pinning button -> ssl_bypassed=True. UI_ACTIONS_BY_TARGET holds the fallback
# (non-action-specific) flows.
UI_ACTIONS_BY_TARGET: dict[str, list[tuple]] = {
    "AndroGoat": [
        ("am_start", "owasp.sat.agoat/.TrafficActivity"),
        ("sleep", 2.0),
        ("tap", 720, 1251),
    ],
}


def _ui_actions_for(target: str, action) -> list[tuple]:
    """Return the UI actions that exercise the checks relevant to `action`.
    For AndroGoat, root detection and SSL pinning are each button-triggered in
    their own activity, so the flow is selected by the action being verified:
    a ROOT_ONLY run taps CHECK ROOT, an SSL_ONLY run taps the pinning button.
    A BOTH run does NOT use a combined sequence here - the two checks are
    mutually exclusive in a single navigation (live-verified: whichever runs
    second never fires in the same process), so the dynamic stage splits BOTH
    into two fresh spawns, one per dimension (see run_dynamic_stage /
    _run_two_spawns) and drives each with its single-dimension sequence.
    Best-effort UI stepping that fails is captured in the stage evidence, not
    fatal (see _run_ui_action)."""
    if target == "AndroGoat":
        # AndroGoat's SSL pinning runs from the CERTIFICATE PINNING button in
        # TrafficActivity; its root check from the CHECK ROOT button in
        # RootDetectionActivity - both button-triggered, so a run must tap the
        # button for each check it means to verify. The hand-authored SSL script
        # is supplemented by the synthesized native root envelope for a
        # ROOT/BOTH run (see run_dynamic_stage).
        if action == Action.ROOT_ONLY:
            return [
                ("am_start", "owasp.sat.agoat/.RootDetectionActivity"),
                ("sleep", 2.0),
                ("tap", 720, 993),
            ]
        return [
            ("am_start", "owasp.sat.agoat/.TrafficActivity"),
            ("sleep", 2.0),
            ("tap", 720, 1251),
        ]
    return list(UI_ACTIONS_BY_TARGET.get(target, ()))


def _run_ui_action(serial: str, action: tuple) -> dict:
    """Run one target-specific UI action via adb and RETURN what happened.

    Best-effort: a UI step failing shouldn't crash the whole dynamic stage, but it
    also can't be silent. This used to discard the subprocess result entirely, so a
    launch that never started (wrong component, app not installed) or a tap the
    device rejected was indistinguishable from one that worked - the stage then
    waited out its window and reported "inconclusive" with no record of why, which
    contradicts the function's own contract that the evidence captures whether the
    step ran (M5).

    Every outcome is returned, refusals included, in the shape the stage stores
    under `ui_actions` (mirrors mitmproxy_capture._drive_ui's record): the kind and
    rendered command, whether it was attempted, `ok` (True/False, None when nothing
    was observed), the adb return code, and a reason when it did not succeed."""
    adb = _require_adb()
    kind = action[0]
    if kind == "sleep":
        time.sleep(action[1])
        return {"kind": "sleep", "action": f"sleep {action[1]}", "attempted": True,
                "ok": True, "returncode": None, "reason": None}
    if kind == "am_start":
        argv = [adb, "-s", serial, "shell", "am", "start", "-n", action[1]]
        label = f"am start -n {action[1]}"
    elif kind == "tap":
        argv = [adb, "-s", serial, "shell", "input", "tap",
                str(action[1]), str(action[2])]
        label = f"input tap {action[1]} {action[2]}"
    else:
        return {"kind": str(kind), "action": str(action), "attempted": False,
                "ok": False, "returncode": None,
                "reason": f"unknown UI action kind {kind!r}"}
    try:
        proc = subprocess.run(argv, capture_output=True, text=True, timeout=15)
    except Exception as exc:
        # A timeout or a missing adb is a RECORDED failure, not a stage crash -
        # the step did not run, which is exactly what the record must say.
        return {"kind": kind, "action": label, "attempted": True, "ok": False,
                "returncode": None, "reason": f"{label} failed: {exc}"}
    stdout = (proc.stdout or "").strip()
    stderr = (proc.stderr or "").strip()
    ok = proc.returncode == 0
    reason = None
    if not ok:
        detail = stderr or stdout or "no output"
        reason = f"{label} exited {proc.returncode}: {detail}"
    return {"kind": kind, "action": label, "attempted": True, "ok": ok,
            "returncode": proc.returncode, "stdout": stdout, "stderr": stderr,
            "reason": reason}


def _record_ui_actions(serial: str, actions: list[tuple], records: list[dict]) -> None:
    """Run `actions` in order, appending one outcome record per action.

    A patched/stubbed `_run_ui_action` that returns nothing (several unit tests
    replace it with a plain recorder) still gets an honest record: the action was
    attempted, but no outcome was observed - `ok` stays None rather than being
    guessed as a pass."""
    for action in actions:
        record = _run_ui_action(serial, action)
        if not isinstance(record, dict):
            record = {"kind": str(action[0]), "action": str(action),
                      "attempted": True, "ok": None, "returncode": None,
                      "reason": "the UI runner returned no outcome"}
        records.append(record)


def run_dynamic_stage(
    device_serial: str, package_name: str, action: Action,
    target: str = "uncrackable1", settle_seconds: int = 5,
    synthesized: dict | None = None, auth_context=None,
) -> StageResult:
    """Run the dynamic stage for one target/action.

    `auth_context` is an OPTIONAL, currently unenforced hook for the H2
    authorization gate: the stage will be able to refuse to instrument a package
    without an operator-supplied authorization context. It defaults to None, which
    preserves today's behaviour exactly (no enforcement) for every existing
    caller, and it is not recorded in the evidence or reflected in the result type -
    threading it now only gives the gate one place to land."""
    start = time.monotonic()
    messages: list[dict] = []
    # M5: one record per UI action (am start / tap / sleep), so a launch or tap the
    # device refused is reported as such instead of vanishing into a later
    # "inconclusive".
    ui_action_records: list[dict] = []

    def _with_ui_actions(result: StageResult) -> StageResult:
        """Attach the UI-action outcomes to a result's evidence on every exit path.

        Recorded even when empty: "the stage drove no UI step" and "it drove steps
        whose outcomes were lost" must not look alike."""
        result.evidence["ui_actions"] = list(ui_action_records)
        return result

    if action == Action.NEITHER:
        return StageResult(
            stage="dynamic", status="skipped",
            evidence={"reason": "NEITHER classification - no bypass technique to apply"},
            duration_ms=elapsed_ms(start),
        )

    script_names = SCRIPTS_BY_TARGET_ACTION.get(target, {}).get(action)
    synth_source: str | None = None
    synth_applied: list[str] = []
    if script_names is None:
        # Unknown target, or a known target with no hand-authored script for this
        # action. That used to be a hard "not dynamically verified" skip for every
        # real app (L-M2). If the deterministic synthesizer supplied a bypass, use
        # it so a real app gets a real attempt; otherwise degrade honestly.
        if synthesized and synthesized.get("source"):
            script_names = []  # loaded via load_script_source below
            synth_source = synthesized["source"]
            synth_applied = synthesized.get("applied_hooks", [])
        else:
            return StageResult(
                stage="dynamic", status="skipped",
                evidence={
                    "reason": (
                        f"no bypass script available for target '{target}' "
                        f"(action {action.value}) - not dynamically verified"
                    )
                },
                duration_ms=elapsed_ms(start),
            )

    # Bounded longer settle for real apps (see _UNKNOWN_TARGET_SETTLE_SECONDS).
    # `synth_source` is only set for a target with no hand-authored script, so
    # the OWASP/AndroGoat targets (which have one) keep the short default and
    # this cannot slow their runs.
    if synth_source is not None and settle_seconds < _UNKNOWN_TARGET_SETTLE_SECONDS:
        settle_seconds = _UNKNOWN_TARGET_SETTLE_SECONDS

    # RESID-6H root-bypass envelope. The synthesized bypass (findings-specific)
    # is supplemented by the vendored third-party universal for unknown targets
    # (L-M2) - EXCEPT for ROOT_ONLY and BOTH, where the vendor is NOT loaded: it
    # re-applies its own non-observing java.io.File.exists replacement (three
    # times, on post-resume timers), so the synth's probeHit-emitting union patch
    # cannot hold the single Frida slot while the vendor is present - the app's
    # root check reads the real su binary and both the bypass and its observation
    # die (verified live across separate-script and single-concatenated-script
    # loadings, sync and async). To make dropping the vendor for root LOSSLESS
    # rather than a coverage tradeoff, the synthesized root bypass is made
    # comprehensive here: the native libc path-hiding recipe (Interceptor.attach
    # on libc access/stat/lstat/fopen/openat - NOT the File.exists single-slot)
    # and the exec-su recipe are appended to the source. Verified live: synth +
    # native + exec still yields root_bypassed=True with all root-artifact probes
    # answered-false.
    _root_envelope_ids = ["native_su_binary_embedded", "root_runtime_exec_su"]
    _root_envelope_src = "\n\n".join(ROOT_RECIPES[i] for i in _root_envelope_ids)
    if synth_source is not None and action in (Action.ROOT_ONLY, Action.BOTH):
        synth_source = synth_source + "\n\n" + _root_envelope_src

    # AndroGoat's hand-authored script covers SSL only (SCRIPTS_BY_TARGET_ACTION
    # has no root script for it), yet its root check IS genuinely bypassable: the
    # synthesized native root envelope (libc access/stat/open path-hiding +
    # exec-su) answers isRooted()'s File.exists/exec probes as hidden
    # (live-verified root_bypassed=True). It just was never loaded or exercised,
    # so root stayed honest-inconclusive-by-absence rather than confirmed. When a
    # synthesized bypass is available and the action needs root, supplement the
    # hand-authored SSL script with the NATIVE envelope as ONE load: it is
    # Interceptor-on-libc, disjoint from the Java CertificatePinner.check slot
    # the SSL script patches, so - unlike the synth SSL observer, which WOULD
    # collide on that slot - there is no single-slot conflict. The BOTH UI flow
    # exercises both checks (SSL tap first, then CHECK ROOT), and the success
    # check confirms root from the envelope's probeHit.
    #
    # Structural, not name-gated: any target whose bypass is a HAND-AUTHORED
    # script (synth_source is None) rather than the synthesized source gets the
    # native root envelope appended when the action needs root. The synthesized
    # path already appends the envelope to synth_source above, so this covers the
    # hand-authored path only - AndroGoat today, any future real-world target with
    # a hand-authored script and a root check tomorrow. Root confirmation is the
    # synthesized native envelope's probeHit, which requires the app's root check
    # to actually run (see _root_expected below).
    _supplement_root = (
        synth_source is None
        and action in (Action.ROOT_ONLY, Action.BOTH)
        and bool(synthesized and synthesized.get("source"))
    )

    # The vendor is never loaded alongside a synthesized bypass (RESID-6H, revised
    # 2026-08 by live evidence). Originally it was kept for the SSL-only case whose
    # slot methods (CertificatePinner.check / conscrypt TrustManagerImpl) appeared
    # disjoint from the vendor's (X509TrustManager.checkServerTrusted /
    # HostnameVerifier.verify / SSLSocketFactory.getDefault). Live verification on a
    # real target (AndroGoat via a trusted mitmproxy CA) disproved that: synth-only
    # yields ssl_bypassed=True (the app's own trust manager accepts the intercepted
    # cert and the handshake completes), while synth+vendor yields 0 observer
    # messages. The vendor's second script load re-takes the single Frida slot and
    # suppresses the synth's SSL observers just as it suppresses the root probe patch
    # - the disjointness was mechanism-derived and did not survive runtime. The
    # synthesized SSL bypass (native BoringSSL custom-verify hook + OkHttp
    # CertificatePinner.check neutralizer + conscrypt TrustManagerImpl observer) is
    # the complete, observed SSL mechanism, so dropping the vendor for it is lossless
    # on both root and SSL. The scripts_applied label must match what is actually
    # loaded so the report never claims the vendor ran when it did not (principle 3).
    _extra_labels = [f"synthesized:{i}" for i in _root_envelope_ids]
    # The native root envelope is appended to the LOADED source only for a
    # root-needing action - the `synth_source is not None and action in
    # (ROOT_ONLY, BOTH)` guard above on the synthesized path, and _supplement_root
    # (which is only ever set for ROOT_ONLY/BOTH) on the hand-authored path. The
    # scripts_applied label must track that exactly (principle 3 - the same
    # label-matches-what-loaded contract the vendor note above states): a
    # synthesized SSL_ONLY run loads the SSL bypass ALONE, so its label must NOT
    # claim the two root-envelope recipes ran. _supplement_root already implies a
    # root action, so its branch always loads the envelope; the synthesized branch
    # also serves SSL_ONLY, so it needs the explicit action gate or it over-claims
    # two root bypasses on an SSL-only run.
    _root_envelope_loaded = action in (Action.ROOT_ONLY, Action.BOTH)
    if _supplement_root:
        scripts_applied = list(script_names) + _extra_labels
    elif synth_source is not None:
        scripts_applied = ["synthesized"] + synth_applied + (
            _extra_labels if _root_envelope_loaded else []
        )
    else:
        scripts_applied = script_names

    # AndroGoat BOTH: the two button-triggered checks (SSL pinning in
    # TrafficActivity, root in RootDetectionActivity) are mutually exclusive in a
    # single navigation - live-verified (dumpsys + message capture) that whichever
    # runs second in the same process never fires: SSL-first loses the root
    # probeHit, root-first loses the SSL pin hook. There is no honest single-spawn
    # UI sequence that confirms both, so a BOTH run is split into two fresh
    # spawns, one per dimension (see _run_two_spawns). ROOT_ONLY stays single-spawn
    # (it only exercises the root check, which a single spawn already confirms).
    _two_spawn = _supplement_root and action == Action.BOTH

    # Root evidence is expected whenever the native root envelope is loaded for a
    # root-needing action: the hand-authored path (via _supplement_root) or the
    # synthesized path (envelope appended to synth_source above). The single-spawn
    # wait below must then require root evidence (probeHit) rather than returning
    # on the first SSL hook-install checkpoint - otherwise a real-world app whose
    # root check fires after the SSL hooks are reported would be honestly-but-
    # wrongly reported root-inconclusive, because the wait returned before the
    # app's root check ran. This is the "all real world apps" counterpart of the
    # AndroGoat UI-triggered root check: the envelope only confirms root if we let
    # the app's root check actually fire and report the probeHit.
    _root_expected = action in (Action.ROOT_ONLY, Action.BOTH) and (
        _supplement_root or synth_source is not None
    )

    # SSL evidence is expected whenever the action needs SSL (SSL_ONLY or BOTH
    # means the deterministic classification detected SSL pinning and an SSL
    # bypass is being loaded). The same early-return trap as root applies in
    # reverse: an SSL_ONLY run of a real-world app would return from the wait on
    # the hook-install checkpoint before the app's own TLS handshake fires, so
    # the bypassEffect/ssl-handshake evidence - the only SSL-confirmation signal
    # for the technology-level check - would be missed and SSL honestly-but-
    # wrongly reported inconclusive. Requiring SSL evidence lets the app's real
    # handshake reach the pin check and report it, exactly as _root_expected does
    # for the root probeHit. This is the SSL half of the "all real world apps"
    # fix: both dimensions of a real app's bypass are only confirmed if we let
    # the app actually exercise them.
    _ssl_expected = action in (Action.SSL_ONLY, Action.BOTH)

    outcome: dict = {}

    def _run_two_spawns() -> None:
        """AndroGoat BOTH: confirm root AND ssl via two fresh spawns.

        Each spawn loads the synthesized native root envelope - Interceptor on
        libc access/stat/lstat/fopen/openat, disjoint from the SSL script's Java
        CertificatePinner.check slot - so there is no single-slot conflict. The
        SSL spawn loads the hand-authored SSL script plus the envelope and
        exercises the pinning check; the root spawn loads just the envelope and
        exercises CHECK ROOT. Messages from both accumulate into the shared stage
        evidence, so AndroGoatSuccessCheck sees the pin-hook firing (ssl) AND the
        root probeHit (root) - both genuinely confirmed, neither inferred."""
        def on_message(message, data):
            messages.append(message)

        def _run_one_spawn(script_src: str | None, ui_kind: Action,
                           messages: list, settle_seconds: float):
            """One fresh spawn driving a single dimension - attach, load the
            combined source, resume, let the launcher draw, run the button-
            triggered UI actions for `ui_kind`, then wait for the checkpoint.
            Shared by both phases of the two-spawn flow so Phase A and Phase B
            cannot drift. Returns (device, pid, instrument) for the caller's
            outcome."""
            device, session, pid, instrument = attach(device_serial, package_name)
            if script_src is not None:
                load_script_source(session, script_src, on_message)
            outcome["phase"] = "device.resume"
            from trace import trace as _trace
            _trace("dynamic", "resume", "start", pid=pid)
            device.resume(pid)
            _trace("dynamic", "resume", "ok", pid=pid)
            time.sleep(1.0)  # let the launcher activity draw before any UI action
            _record_ui_actions(
                device_serial, _ui_actions_for(target, ui_kind), ui_action_records,
            )
            _wait_for_checkpoint(messages, settle_seconds, require_evidence=True)
            return device, pid, instrument

        def _merge_provisioning_records(first: dict, second: dict) -> dict:
            """One record for a run that provisioned twice (ADR-0020).

            Both attaches of a two-spawn run provision, and only the second
            record survived. The first attach is the one that can find a stale
            server - shell-run, or left mismatched by an earlier run - and replace
            it, after which the second attach finds a matching server already
            running. Keeping only the second record therefore rendered a run that
            replaced the device's instrumentation exactly like one that found it
            already correct, which is the rendering ADR-0020 exists to prevent.
            The device state is the second record's, because that is what is
            running now; a replacement the second did not perform is carried over
            from the first and named as the first attach's."""
            if not first or not second:
                return second or first
            merged = dict(second)
            merged["attaches"] = 2
            if first.get("replaced") and not second.get("replaced"):
                merged["replaced"] = True
                merged["replace_reason"] = (
                    f"on this run's first attach, {first.get('replace_reason')}"
                )
            if first.get("server_before") is not None:
                # What the device held before THIS run - the earliest observation,
                # which only the first attach can have made. The second attach's is
                # what the first attach had just left there.
                merged["server_before"] = first["server_before"]
            return merged

        # Phase A - SSL: a fresh spawn exercising the pinning check.
        _ssl_device, _ssl_pid, ssl_instrument = _run_one_spawn(
            (SCRIPT_DIR / script_names[0]).read_text(encoding="utf-8")
            + "\n\n" + _root_envelope_src,
            Action.SSL_ONLY, messages, settle_seconds,
        )

        # Phase B - root: a fresh spawn exercising the root check. Its
        # instrumentation record is the one carried into the stage evidence - it
        # is the provisioning the root confirmation rests on - with Phase A's
        # merged in, so a server the FIRST attach replaced stays visible.
        root_device, root_pid, instrument = _run_one_spawn(
            _root_envelope_src, Action.ROOT_ONLY, messages, settle_seconds,
        )
        instrument = _merge_provisioning_records(ssl_instrument, instrument)
        outcome["instrument"] = instrument

        # FR-4.6: a spawned process gone after the settle window self-terminated.
        if classify_self_termination(_process_is_alive(root_device, root_pid)):
            outcome["result"] = _self_terminated_result(
                root_pid, messages, scripts_applied, target, start,
                instrument=instrument,
            )
            return

        # FR-4.6 success via the shared builder: root_pid survived the settle
        # window (self-termination checked just above), so app_still_running is
        # recorded True. SESSION11I: the two-spawn path now ALSO gathers UI liveness
        # here - check_ui_liveness works for AndroGoat (proven standalone) and the
        # second spawn has settled with the app foreground, so this path can report
        # its real UI state + the two-sample progress signal instead of always
        # "not captured". Best-effort: any failure stays None ("not captured"),
        # never a guess.
        ui_liveness = None
        try:
            from dynamic.ui_liveness import check_ui_liveness
            ui_liveness = check_ui_liveness(device_serial, package_name)
            from trace import trace as _trace
            _trace("dynamic", "ui_liveness", "ok",
                   screen=(ui_liveness or {}).get("screen_state"),
                   resumed=(ui_liveness or {}).get("activity_resumed"),
                   changed=(ui_liveness or {}).get("screen_changed"))
        except Exception:
            ui_liveness = None
        outcome["result"] = _bypass_success_result(
            root_pid, messages, scripts_applied, target, start,
            instrument=instrument, ui_liveness=ui_liveness,
        )

    def _run_frida() -> None:
        """All the blocking Frida work, run under FRIDA_STAGE_TIMEOUT (RESID-6B).
        A genuinely hung spawn/attach/load/resume must fail the stage loudly,
        not hang the whole pipeline forever."""
        try:
            if _two_spawn:
                # AndroGoat BOTH: root and ssl each need their own fresh spawn
                # (mutually exclusive button-triggered checks in one navigation).
                _run_two_spawns()
                return
            # FRIDA-CEILING1: record the phase, so the timeout reports WHERE it stuck
            # instead of listing all four as a guess. Measured 2026-10-06: propertyguru
            # (--force-dynamic) exceeded even a 120s ceiling while its process was
            # demonstrably running, and the old message gave the operator nothing to
            # act on. The stage is sequential, so the phase is knowable.
            outcome["phase"] = "spawn + attach (frida-server handshake)"
            device, session, pid, instrument = attach(device_serial, package_name)
            outcome["instrument"] = instrument

            def on_message(message, data):
                messages.append(message)

            if synth_source is not None:
                load_script_source(session, synth_source, on_message)
                # RESID-6E: let the synthesized bypass's checkpoint fire before any
                # heavier load. The 114 KB vendored universal is never loaded
                # alongside a synthesized bypass (live evidence - see the module
                # note on VENDORED_UNIVERSAL), so this is a delivery settle for the
                # synth's own checkpoint, not a pre-vendor wait.
                time.sleep(_SYNTH_CHECKPOINT_SETTLE)
            for name in script_names:
                if _supplement_root:
                    # AndroGoat: the hand-authored SSL script plus the synthesized
                    # native root envelope, loaded as ONE script. The native
                    # envelope is disjoint from the SSL script's Java
                    # CertificatePinner.check slot, so a single load patches both
                    # without a slot conflict.
                    src = (SCRIPT_DIR / name).read_text(encoding="utf-8")
                    load_script_source(
                        session, src + "\n\n" + _root_envelope_src, on_message,
                    )
                else:
                    load_script(session, name, on_message)

            ui_actions = _ui_actions_for(target, action)
            outcome["phase"] = "device.resume"
            from trace import trace as _trace
            _trace("dynamic", "resume", "start", pid=pid)
            device.resume(pid)
            _trace("dynamic", "resume", "ok", pid=pid)
            time.sleep(1.0)  # let the launcher activity draw before any UI action
            # RESID-6A: `ui_action`, not `action` - the loop variable must
            # not shadow the Action parameter (a latent footgun for any
            # later use of action.value after this point). Each step's outcome is
            # recorded (M5) so a refused launch/tap is visible in the evidence.
            _record_ui_actions(device_serial, ui_actions, ui_action_records)
            # RESID-6D: signal-aware wait instead of a blind settle sleep. When
            # the flow is UI-triggered (button-tapped checks like AndroGoat's
            # root/pinning), the hook-install checkpoint fires at resume but the
            # app's own bypass EVIDENCE (probeHit / ssl-pin-check / ssl-handshake)
            # arrives only after the UI interaction completes - for those flows we
            # must wait for that evidence, not just the readiness checkpoint, or
            # the stage captures before the check runs and honestly (but wrongly)
            # reports inconclusive.
            outcome["phase"] = (
                f"settle + checkpoint wait ({settle_seconds:.0f}s window)"
            )
            _wait_for_checkpoint(
                messages, settle_seconds,
                require_evidence=bool(ui_actions) or _root_expected or _ssl_expected,
                require_both_dimensions=_root_expected and _ssl_expected,
            )

            # FR-4.6: after the settle window, a spawned process that is no
            # longer alive self-terminated - it detected the instrumentation
            # (Frida/root) and exited (System.exit / killProcess). Surface that
            # as a first-class, logged outcome with an explicit reason instead
            # of silently reporting a generic success or an unexplained crash.
            if classify_self_termination(_process_is_alive(device, pid)):
                outcome["result"] = _self_terminated_result(
                    pid, messages, scripts_applied, target, start,
                    instrument=instrument,
                )
                return

            # Real-time UI-responsiveness: the app is alive (self-termination
            # checked above); now prove its UI is actually live and usable on
            # the device - activity RESUMED, window focused, no ANR, interactive
            # nodes rendered - from real dumpsys/logcat/uiautomator data. Each
            # signal degrades to None ("not captured") if the tool is unavailable;
            # never fabricated. This runs on the worker thread while the app is
            # still foregrounded under the attached session.
            ui_liveness = None
            from trace import trace as _trace
            try:
                from dynamic.ui_liveness import check_ui_liveness
                ui_liveness = check_ui_liveness(device_serial, package_name)
                _trace("dynamic", "ui_liveness", "ok",
                       screen=(ui_liveness or {}).get("screen_state"),
                       resumed=(ui_liveness or {}).get("activity_resumed"),
                       changed=(ui_liveness or {}).get("screen_changed"))
            except Exception as _ui_err:
                ui_liveness = None
                _trace("dynamic", "ui_liveness", "error", error=repr(_ui_err)[:120])

            # FR-4.6 success via the shared builder (see _bypass_success_result):
            # reaching here means the process survived the settle window, so
            # app_still_running is recorded True; ui_liveness carries this path's
            # real-time UI evidence gathered just above.
            outcome["result"] = _bypass_success_result(
                pid, messages, scripts_applied, target, start,
                ui_liveness=ui_liveness, instrument=instrument,
            )
        except Exception as exc:
            # ADR-0020: a provisioning or handshake failure carries its own
            # instrumentation record on the exception (FridaProvisioningError), so
            # the failure path names the Frida it failed on. A failure that
            # happened before provisioning touched the device leaves the record
            # None - not established, which is not the same as a version.
            outcome["instrument"] = getattr(exc, "instrument", outcome.get("instrument"))
            outcome["result"] = StageResult(
                stage="dynamic", status="failed",
                evidence={
                    "frida_messages": messages,
                    "instrument": outcome["instrument"],
                },
                error=str(exc),
                duration_ms=elapsed_ms(start),
            )

    worker = threading.Thread(target=_run_frida, daemon=True)
    worker.start()
    worker.join(timeout=FRIDA_STAGE_TIMEOUT)
    if worker.is_alive():
        # RESID-6B: exceeded the hard ceiling - fail loudly. (The daemon thread
        # is orphaned, but the pipeline proceeds instead of hanging forever.)
        return _with_ui_actions(StageResult(
            stage="dynamic", status="failed",
            evidence={
                "frida_messages": messages,
                "instrument": outcome.get("instrument"),
            },
            error=(
                f"frida stage exceeded {FRIDA_STAGE_TIMEOUT:.0f}s hard timeout "
                f"while in phase: {outcome.get('phase') or 'unknown'}. Cause is "
                f"either a stalled frida-server / hung attach, or a target whose own "
                f"spawn+load+settle genuinely needs longer - the stage's own settle "
                f"window for an unknown app is {_UNKNOWN_TARGET_SETTLE_SECONDS:.0f}s, so "
                f"a heavy app can approach this ceiling on designed timing rather than "
                f"on a fault. Raise FRIDA_STAGE_TIMEOUT for a large target; investigate "
                f"the server if spawn itself never returns."
            ),
            duration_ms=elapsed_ms(start),
        ))
    return _with_ui_actions(outcome["result"])

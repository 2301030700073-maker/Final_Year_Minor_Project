"""Technology-specific (not app-specific) bypass-engagement signal for unknown
targets running the L-M2 synthesized bypass.

A real app with no registered target-specific SuccessCheck still runs the
deterministic synthesized bypass; each applied recipe hook emits a Frida
`send({hook: '<recipe_id>'})` checkpoint once it is attached and running. This
check reports which of the detected techniques' hooks actually engaged in the
live process - an honest, deterministic "the bypass machinery reached the app"
signal, available for ANY target without a hand-authored script. This is the
answer to "how can the project try to bypass without app-specific scripts": it
composes technology-specific recipes from the static findings, and here we prove
those hooks engaged, using only the findings.

Both ROOT and SSL have an observable auto-confirmation, derived from the app's own
behavior (never a fabricated pass, ADR-0006):

* ROOT: when the app's root-check probes a root artifact and is answered-false
  (probeHit), its root logic received the not-rooted result -> root_bypassed=True.
  On the rooted test device that probe would otherwise have returned "rooted", so
  the observed probeHit IS the app's root check being defeated. Root needs only
  this one signal - a root check has no separate "completion" event, the probeHit
  itself is the check returning its result.
* SSL: when the app's own Java pin-check (CertificatePinner / TrustManagerImpl)
  runs and returns WITHOUT rejecting AND a TLS handshake then completes, its pin
  logic demonstrably accepted a connection it would otherwise reject ->
  ssl_bypassed=True. Either signal alone stays effect evidence.

Each confirmation covers the detected checks that were actually exercised in the
run - a flow-triggered check never reached emits nothing and stays inconclusive,
which is honest. Absence of a checkpoint means the agent died before the hooks
could send - a real signal."""

from __future__ import annotations

from common import VerificationResult, describe_frida_script_errors

# Cap on how many raw frida messages are surfaced into the report so the
# engagement evidence stays bounded and auditable (ADR-0006), never a dump.
_MESSAGE_SAMPLE_LIMIT = 8
_PAYLOAD_TRUNCATE = 80


def liveness_evidence_lines(
    app_still_running: bool | None, ui_liveness: dict | None
) -> dict[str, str]:
    """Post-bypass liveness + real-time UI-responsiveness evidence lines, shared
    so EVERY run's report surfaces them - not just unknown/technology targets.
    A claimed bypass is only meaningful if the process survived the settle
    window and its UI is live, focused, un-ANRed and rendering; state it
    audibly for every target (ADR-0006), and say 'not captured' when the tool
    was unavailable rather than guess."""
    lines = {
        "app still running after bypass": (
            "True (process survived the settle window, did not self-terminate)"
            if app_still_running
            else (
                "False (app self-terminated on the injected instrumentation - "
                "bypass not confirmable)"
                if app_still_running is False
                else "not captured (liveness not recorded this run)"
            )
        ),
        "App UI responsiveness (live, real device data)": (
            _summarize_ui_liveness(ui_liveness)
            if ui_liveness else "not captured (no live UI evidence this run)"
        ),
    }
    return lines


def _summarize_ui_liveness(ui: dict) -> str:
    """Render the real-time UI-responsiveness evidence compactly. Each signal is
    real device data; None means that tool was unavailable, reported honestly."""
    def _fmt(key: str, label: str) -> str:
        val = ui.get(key)
        if val is None:
            return f"{label}:not captured"
        if isinstance(val, bool):
            return f"{label}:{'yes' if val else 'no'}"
        return f"{label}:{val}"

    parts = [_fmt("activity_resumed", "activity RESUMED"),
             _fmt("window_focused", "window focused"),
             _fmt("anr_detected", "ANR/frozen-UI")]
    # TLS trust/validation failure: the honest "why the splash is stuck"
    # signal - the app is not ANR-frozen, its startup network calls are being
    # rejected on the certificate trust path (e.g. a MITM/proxy CA not in its
    # trust store). Surface the first quoted failure so the report names the
    # actual cause instead of a bare inconclusive SSL.
    if ui.get("tls_blocked"):
        sample = ui.get("tls_block_lines") or []
        quote = ""
        if sample:
            line = sample[0]
            quote = " - " + (line[-90:] if len(line) > 90 else line)
        parts.append("startup TLS blocked:yes (cert trust rejected on Conscrypt/"
                     "okhttp path; SSL bypass did not neutralize it)" + quote)
    nodes = ui.get("clickable_nodes")
    parts.append(f"interactive nodes:{nodes if nodes is not None else 'not captured'}")
    # The honest screen-state label (splash/loading vs interactive page) from
    # real widget data - this is what separates a frozen logo screen from a
    # reached-and-usable home page, which clickable-count alone cannot do.
    state = ui.get("screen_state")
    if state:
        parts.append(f"screen:{state}")
    ntext = ui.get("text_node_count")
    if ntext is not None:
        parts.append(f"visible text nodes:{ntext}")
    # When the screen is a splash/loading frame (no interactive widgets, minimal
    # text), state it explicitly rather than letting a rendered flag read as a
    # healthy, tappable UI. A bypass on a screen that never advanced is not a
    # usable-app claim and must not read as one.
    if state and "splash/loading" in state:
        parts.append("(app did NOT advance to an interactive page - stuck on splash/loading)")
    errs = ui.get("_errors")
    if errs:
        parts.append("; ".join(str(e) for e in errs[:2]))
    return ", ".join(parts)


def _summarize(message: dict, limit: int = _PAYLOAD_TRUNCATE) -> str:
    """Render one frida message compactly so the report shows what was actually
    observed, not just a pass/fail label. A log message carries a string payload;
    a send() carries a dict (the synthesized hook checkpoints land here)."""
    if not isinstance(message, dict):
        return f"malformed:{type(message).__name__}"
    mtype = message.get("type", "?")
    # An uncaught Frida script error carries its detail at the TOP level
    # (description/fileName/lineNumber) with NO `payload`, so the payload branch
    # below would render it "error:null" and hide the crash reason - exactly the
    # signal this bounded, auditable sample exists to surface (a crashed bypass is
    # WHY "hooks engaged" reads "none"). Describe it via the shared single source
    # of truth (common) so the wording matches the report hooks-audit and the
    # capture caveat; truncate to the same bound as a string payload.
    if mtype == "error":
        described = describe_frida_script_errors([message])
        body = described[0] if described else "unspecified Frida script error"
        if len(body) > limit:
            body = body[:limit] + "…"
        return f"error:{body}"
    payload = message.get("payload")
    if isinstance(payload, dict):
        if "hook" in payload:
            body = f"hook:{payload['hook']}"
        else:
            keys = ",".join(sorted(str(k) for k in payload.keys()))
            body = f"dict{{{keys}}}"
    elif isinstance(payload, str):
        body = payload if len(payload) <= limit else payload[:limit] + "…"
    elif payload is None:
        body = "null"
    else:
        body = type(payload).__name__
    return f"{mtype}:{body}"


# The vendored universal reports native-hook engagement via console.log lines of
# this shape (observed on a real app): e.g. "[OK] [ROOT] libc.stat native" or
# "[OK] [SSL] libssl.SSL_CTX_set_cert_cb native". These are direct, observable
# third-party confirmations that the injected agent hooked native functions; they
# are engagement evidence, not a bypass pass (root/ssl stay None - only a
# target-specific live SuccessCheck can confirm the app's own check was defeated).
_VENDOR_ROOT_MARKER = "[OK] [ROOT]"
_VENDOR_SSL_MARKER = "[OK] [SSL]"


class TechnologyHooksEngagedCheck:
    """Report which synthesized recipe hooks engaged in the running process, and
    surface a bounded sample of the actual frida messages so the engagement
    claim is auditable (a "none" is distinguishable from an empty capture).

    Fix-1 / Fix-3 (unknown targets: 'hooks engaged' is not 'confirmed'): beyond
    raw hook engagement, the check now surfaces BEHAVIORAL-EFFECT evidence the
    recipes emit when they observe a real outcome, and promotes BOTH categories to
    a confirmed bypass from the app's own observable behavior (ADR-0006):
    * ROOT (root_bypassed=True) when the app's own root-check probed a root
      artifact and was answered-false (`probeHit`) - its root logic received the
      not-rooted result. On the rooted test device that probe would otherwise have
      returned rooted, so the probeHit IS the check being defeated.
    * SSL (ssl_bypassed=True) ONLY when the app's own pin-check ran without
      rejecting AND a handshake completed - its pin logic demonstrably accepted a
      connection it would otherwise reject.
    Each is scoped to the detected checks actually exercised in the run; a
    flow-triggered check never reached emits nothing and stays inconclusive."""

    def check(
        self,
        frida_messages: list | None,
        app_still_running: bool | None = None,
        ui_liveness: dict | None = None,
    ) -> VerificationResult:
        """`app_still_running` is the post-bypass liveness of the app process,
        recorded by the dynamic stage at the settle window (True = it survived
        and did not self-terminate on the instrumentation). Surfaced in the
        report so a claimed bypass is backed by an explicit, auditable
        liveness signal - a bypass on a process that killed itself would be
        meaningless, so "still running" is stated, never implied.

        `ui_liveness` is real-time UI-responsiveness evidence gathered from the
        device after the bypass (dumpsys activity/window, logcat ANR scan,
        uiautomator interactive-node count) - it proves the app is not merely
        alive but its UI is live, focused, un-ANRed, and renders interactive
        nodes. Each signal is honest real device data; None means "not captured"
        (a missing tool), never a guessed pass."""
        messages = frida_messages or []
        engaged: list[str] = []
        root_probe_hits: list[str] = []
        effects: list[str] = []
        for m in messages:
            if not isinstance(m, dict):
                continue
            payload = m.get("payload")
            if isinstance(payload, dict):
                hook = payload.get("hook")
                if hook and str(hook) not in engaged:
                    engaged.append(str(hook))
                ph = payload.get("probeHit")
                # Only a root-VALUED probeHit confirms a ROOT bypass. The
                # synthesized native envelope emits probeHit:'root' (the app's own
                # root check answered-false); a future non-root probe recipe
                # (emulator/debugger) would carry a different value and must NOT
                # promote root_bypassed - the same probeHit-VALUE precision AG-SC1
                # established for the AndroGoat check (see androgoat.py's
                # _ROOT_PROBE_RE). The decider owns this guard here rather than
                # relying on the synthesizer only ever emitting 'root'.
                if ph and str(ph) == "root":
                    root_probe_hits.append(f"{ph}:{payload.get('path', '?')}")
                eff = payload.get("bypassEffect")
                if eff and eff not in effects:
                    effects.append(str(eff))
            elif isinstance(payload, str) and (
                _VENDOR_ROOT_MARKER in payload or _VENDOR_SSL_MARKER in payload
            ):
                # Vendored-universal native-hook engagement, labelled distinctly
                # from a synthesized recipe checkpoint.
                token = (
                    "vendor:native-root"
                    if _VENDOR_ROOT_MARKER in payload else "vendor:native-ssl"
                )
                if token not in engaged:
                    engaged.append(token)
        # SSL confirmation: the app's own Java pin-check ran WITHOUT rejecting
        # (ssl-pin-check) AND a TLS handshake then completed (ssl-handshake) - its
        # pin logic demonstrably accepted a connection it would otherwise reject.
        # That is the deterministic confirmation the SSL bypass worked for that
        # connection, derived from the app's own observable behavior (ADR-0006).
        # Either signal alone, or neither, keeps ssl_bypassed None (effect
        # evidence only) - we never promote on a handshake alone (a non-pinned
        # app also completes handshakes) nor on a pin-check alone (no completed
        # connection).
        ssl_confirmed = ("ssl-pin-check" in effects) and ("ssl-handshake" in effects)
        # Root confirmation: a root-artifact probe was observed AND answered-false
        # (probeHit). On the rooted test device that probe would have returned
        # "rooted" without the hook, so a probeHit means the app's own root-check
        # primitive was invoked and returned the not-rooted result to the app -
        # its root logic received the safe answer. That IS the app's root check
        # being defeated, observed directly. Root needs only this one signal (where
        # SSL needs pin-check + handshake) because a root check has no separate
        # "completion" event: the probeHit itself is the check returning its result.
        # Symmetric in honesty to SSL - it confirms the detected root checks that
        # were actually exercised, which is all either mechanism can claim (ADR-0006).
        root_confirmed = bool(root_probe_hits)
        # Post-bypass liveness (FR-4.6) + real-time UI-responsiveness lines come
        # from the SHARED liveness_evidence_lines() helper, the single source of
        # truth cli.py:2039 also renders for non-technology targets. These two
        # keys were previously duplicated inline here (byte-identical), which let
        # the two copies silently diverge on any future wording edit - and since
        # they feed different targets' reports, no run would compare them. Splat
        # the helper instead; the "app still running after bypass" key keeps its
        # original leading position and "App UI responsiveness ..." lands last,
        # matching the prior inline order (dict insertion order preserved).
        liveness_lines = liveness_evidence_lines(app_still_running, ui_liveness)
        evidence_lines = {
            # Explicit post-bypass liveness (FR-4.6): the app process survived the
            # settle window and did not self-terminate on the injected
            # instrumentation. Stated audibly so a bypass claim is never made
            # against a dead/self-killed process without it being called out.
            "app still running after bypass": liveness_lines["app still running after bypass"],
            "bypass hooks engaged": (
                ", ".join(engaged) if engaged
                else "none (no hook checkpoint observed)"
            ),
            # Root confirmation basis, on the app's own observable behavior: its
            # root-check probed a root artifact and was answered-false, so its
            # root logic received the not-rooted result.
            "root bypass confirmation basis": (
                "app's own root-check probed a root artifact and was answered-false "
                "(on the rooted test device that probe would otherwise have returned "
                "rooted); its root logic received the not-rooted result"
                if root_confirmed
                else "not confirmed (no root-artifact probe was observed during the "
                     "run - a flow-triggered root check may not have been reached)"
            ),
            # Fix-3: the raw probes that drove the confirmation - the app actually
            # probed these root artifacts and was answered-false.
            "root artifact probes answered-false": (
                ", ".join(dict.fromkeys(root_probe_hits)) if root_probe_hits
                else "none observed (no root check reached during the run)"
            ),
            # Fix-1: observable SSL effect - a TLS handshake completed through the
            # neutralized stack, evidence the bypass had a real effect. This line
            # reports ONLY the handshake effect, not every bypassEffect in the run:
            # a pin-check alone (ssl-pin-check with no completed handshake) is not a
            # handshake and must not be reported under a "handshakes completed"
            # heading - a mislabeled line for any real app whose only effect is the
            # pin-check.
            "TLS handshakes completed post-bypass": (
                "yes (a TLS handshake completed through the neutralized stack)"
                if "ssl-handshake" in effects
                else (
                    "none completed - handshakes were ATTEMPTED but rejected on "
                    "the cert trust path (SSL bypass did not neutralize them; "
                    "see startup-TLS signal)"
                    if (ui_liveness or {}).get("tls_blocked")
                    else "none observed (no TLS handshake reached during the run)"
                )
            ),
            # Confirmed SSL bypass, on the app's own observable behavior: its pin-
            # check ran without rejecting and a handshake completed. Never a
            # fabricated pass.
            "SSL bypass confirmation basis": (
                "app's own pin-check ran without rejecting AND a TLS handshake "
                "completed (pin logic accepted a connection it would otherwise "
                "reject)" if ssl_confirmed
                else "not confirmed (need BOTH the app's pin-check to run without "
                     "rejecting and a TLS handshake to complete)"
            ),
            "frida messages observed": (
                f"{len(messages)} total; sample: "
                + (", ".join(_summarize(m) for m in messages[:_MESSAGE_SAMPLE_LIMIT])
                   if messages else "(none captured)")
            ),
            # Real-time UI-responsiveness (from live device data, not inference):
            # the app's top activity reached RESUMED (foreground), it owns window
            # focus, no ANR / input-dispatch timeout was logged (UI thread not
            # frozen), and a real interactive UI hierarchy is rendered. This is
            # the honest "app is usable, not stuck" claim - it proves the UI is
            # live and tappable without fabricating a specific click. From the
            # shared helper (see the liveness_lines splat above).
            "App UI responsiveness (live, real device data)": liveness_lines[
                "App UI responsiveness (live, real device data)"
            ],
        }
        return VerificationResult(
            root_bypassed=True if root_confirmed else None,
            ssl_bypassed=True if ssl_confirmed else None,
            evidence_lines=evidence_lines,
        )

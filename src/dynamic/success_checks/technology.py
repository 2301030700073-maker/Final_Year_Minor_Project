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

from common import TLS_HANDSHAKE_REJECTED, TLS_HANDSHAKE_NONE_OBSERVED, TLS_HANDSHAKE_OBSERVER_NONE_TLS_FAILED, VerificationResult, describe_frida_script_errors

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
    # When the UI thread DID freeze (anr_detected), name the actual ANR /
    # input-dispatch-timeout cause the scan captured, instead of a bare
    # "ANR/frozen-UI:yes" - the symmetric treatment to the startup-TLS quote
    # below. A frozen UI thread and a rejected startup handshake are the two
    # "why the app is stuck" causes this summary deliberately separates, and
    # `anr_lines` are real logcat lines captured for exactly this purpose;
    # dropping them left the report naming the SSL cause but not the ANR one.
    # Same tail-quote as TLS (a logcat line's tail carries the message, not the
    # timestamp/tag prefix).
    if ui.get("anr_detected"):
        anr_sample = ui.get("anr_lines") or []
        if anr_sample:
            aline = anr_sample[0]
            parts.append("ANR cause - " + (aline[-90:] if len(aline) > 90 else aline))
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
        # The mechanism is named only when the matched line actually establishes
        # it. A generic SSLHandshakeException is a handshake failure, not a
        # certificate rejection - reporting one as the other asserted a cause the
        # evidence does not carry (see _TLS_CERT_REJECT_MARKERS).
        if ui.get("tls_cert_rejected"):
            parts.append("startup TLS blocked:yes (cert trust rejected on Conscrypt/"
                         "okhttp path; SSL bypass did not neutralize it)" + quote)
        else:
            parts.append("startup TLS blocked:yes (a TLS handshake failed; the logged "
                         "failure does not establish a certificate/pin rejection, so "
                         "the cause is not attributed here)" + quote)
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
    # Structural corroborator for the screen_state verdict above: whether a
    # rendered content widget exists BEYOND the bare layout root (a non-container
    # class node). ui_liveness._parse_rendered_content computes exactly this to
    # tell an RN/Flutter/WebView surface that is DRAWING content (0 per-node
    # clickables is expected there - JS/engine-driven) apart from an empty frame,
    # but the verdict was decided from text-node count alone and this signal was
    # computed, stored, and then never shown to anyone. Surface it so the
    # "content rendered" / "splash/loading" label is auditable against the
    # independent structural fact, and so the honest RN case (real content
    # widgets, minimal text, 0 clickables -> a conservative "splash/loading"
    # verdict) carries its qualifying evidence instead of discarding it. Strictly
    # report-only: it never overrides _classify_screen - letting it upgrade a
    # splash verdict would push toward OVERSTATING liveness, the dangerous
    # direction this module guards against (see the clickable-node regex note).
    # None (dump failed) is omitted like visible-text-nodes above; screen_state
    # already reads "not captured" on that path.
    rendered = ui.get("rendered_content")
    if rendered is not None:
        parts.append(f"content widget beyond bare layout root:{'yes' if rendered else 'no'}")
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
# The injected script's own report of a hook that is not in the process, in one of
# the three shapes it emits - "no <sym> in <where>" (nothing exports it),
# "<sym> found in <where> but the hook could not be installed: <e>" (present, hook
# refused), "could not look up <sym> in <where>: <e>" (the lookup itself threw).
# Unlike the [OK] markers below - which are engagement evidence - these are the
# script telling us part of the bypass is a no-op, and on a production target the
# native SSL arm is exactly that: BoringSSL ships with its verify symbols stripped,
# so the lookup finds nothing for every one of them. Collected so the report can
# say so instead of leaving the reader to infer a cause for a stalled startup from
# evidence that does not carry one (F-9). The shapes are listed because the
# producers used to log the not-found wording from the catch around the install, so
# a line could name a symbol the lookup had in fact found, and a genuinely absent
# symbol produced no line at all.
_SYNTH_LOG_MARKER = "[synth] "
_VENDOR_ROOT_MARKER = "[OK] [ROOT]"
_VENDOR_SSL_MARKER = "[OK] [SSL]"

# The two SSL-derived evidence lines, named once. ADR-0016's post-capture
# evaluation takes exactly these two from the capture window's evaluation and keeps
# everything else (the root lines and the liveness lines) from the dynamic window's -
# the capture window's bypass is pinning-only, so it carries no root evidence to
# offer. That makes this pair a contract between the check and cli.py, not two
# literals in two files that can silently drift apart and merge the wrong lines.
SSL_HANDSHAKE_LINE = "TLS handshakes completed post-bypass"
SSL_CONFIRMATION_LINE = "SSL bypass confirmation basis"


# ADR-0023. The native-hook statement is the one line that answers a question
# about a LAUNCH rather than about the app: "did the script injected into THIS
# process install its hooks" has a different answer per launch, and both answers
# are true. The SSL pair above is the opposite case - one question about the app,
# two observers of it - so cli.py lifts the capture window's values over the
# dynamic window's. Doing that here would destroy the dynamic launch's statement,
# which is exactly the F-9 evidence the line exists to carry. So the key is
# windowed instead of constant, and no merge can silently replace a finding with
# another launch's non-finding.
NATIVE_HOOK_INSTALLATION_LINE = "Native hook installation (script's own report)"
# One definition of the windowed spelling: the producer writes keys with
# native_hook_installation_key() and the merger in cli.py selects them with this
# prefix, so the two cannot drift into "the merge stopped matching" silence.
WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX = NATIVE_HOOK_INSTALLATION_LINE + "; "


def native_hook_installation_key(window: str | None = None) -> str:
    """The evidence key the native-hook statement is filed under. An unlabelled
    launch (the dynamic window, which is the run's own) keeps the bare constant;
    a labelled one carries its window, so the two launches' statements coexist in
    one evidence dict rather than the second overwriting the first.

    The window belongs in the key here, not in the value as it does for the SSL
    pair: the value is the statement about one launch, and repeating the window
    inside it would render the label twice on one report line."""
    if not window:
        return NATIVE_HOOK_INSTALLATION_LINE
    return WINDOWED_NATIVE_HOOK_INSTALLATION_PREFIX + window


def _native_hook_installation_line(uninstalled: list[str], captured: bool) -> str:
    """Tri-state on purpose: "the script reported no failure" and "the script's
    output was not captured" are different facts, and only the first says anything
    about whether a hook went in. An empty or absent message list is reported as
    not-captured, never as a clean install."""
    if not captured:
        return "not captured (no Frida script output this run)"
    if not uninstalled:
        return ("the injected script reported no failed hook installation this run "
                "(it names a symbol only when no loaded module exports it or the "
                "hook could not be installed)")
    return ("hook(s) the injected script could NOT install: " + "; ".join(uninstalled))


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
        window: str | None = None,
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
        (a missing tool), never a guessed pass.

        `window` names the launch this stream came from, and is set when the
        evaluation is about the capture window rather than the dynamic stage's own
        (ADR-0016). It is a LABEL, not a mode: the predicate is evaluated on the
        stream it was given exactly as before, and the label only makes the
        resulting confirmation lines state which launch they are about - so a
        confirmation can never be read as belonging to the other window, which is
        the conflation ADR-0015 spent three commits removing. None keeps the
        original wording byte-for-byte for the dynamic stage's own evaluation."""
        messages = frida_messages or []
        engaged: list[str] = []
        root_probe_hits: list[str] = []
        effects: list[str] = []
        not_installed: list[str] = []
        hook_failures: list[str] = []
        for m in messages:
            if isinstance(m, str):
                # The capture stage stores a payload that was ITSELF a string (a
                # script log line) as the bare string.
                payload = m
            elif isinstance(m, dict):
                payload = m.get("payload")
                if not isinstance(payload, (dict, str)):
                    # Payload-unwrapped, the capture stage's stored shape: the
                    # message IS the payload. Read it rather than skipping - an
                    # extractor that can decline to look at a message turns that
                    # message into silence, which is how this check's sibling read
                    # the whole capture window as an observer that saw nothing.
                    payload = m
            else:
                continue
            if isinstance(payload, dict):
                hook = payload.get("hook")
                # JAVABRIDGE1. A hook message whose OWN payload reports a failure is
                # not an engaged hook, and `engaged` feeds the rendered "bypass hooks
                # engaged" line - so counting `java_bridge` (whose payload says the
                # Java bridge never became available) as engagement told the operator
                # the opposite of what the script reported. Failures are named
                # separately and never join `engaged`.
                #
                # The script's own comment claims this "surfaces as a real failure,
                # not a silent hang"; until this, it did not - nothing read `status`,
                # so the reason was discarded and the failing hook was listed as
                # though it had installed.
                if str(payload.get("status", "")).lower() == "failed":
                    if hook:
                        # Carry the REASON with the name. The "frida messages observed"
                        # line summarizes each message to `send:hook:<name>` and drops
                        # the error, so naming the hook alone would send the operator
                        # looking for a reason that is not rendered anywhere.
                        detail = str(
                            payload.get("error") or payload.get("reason") or ""
                        ).strip()
                        entry = f"{hook} ({detail})" if detail else str(hook)
                        if entry not in hook_failures:
                            hook_failures.append(entry)
                elif hook and str(hook) not in engaged:
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
            elif isinstance(payload, str) and _SYNTH_LOG_MARKER in payload:
                line = payload.strip()
                if line not in not_installed:
                    not_installed.append(line)
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
            # JAVABRIDGE1. A hook that reported its OWN failure, named and kept OUT
            # of the line above. Before this, a script that could not bring the Java
            # bridge up had its hook listed as engaged - the report asserting
            # engagement while the message beside it said the opposite, and the
            # reason ("Java.available never became true within 15000ms") discarded.
            # Rendered only when something actually failed, so a clean run is
            # unchanged; the template iterates every evidence_line generically.
            **({
                "bypass hooks that reported a FAILURE": (
                    ", ".join(hook_failures)
                    + " - this hook did not install; the reason is in parentheses, "
                      "as the script reported it"
                )
            } if hook_failures else {}),
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
            # F-9: what the injected script reported it could NOT install. The
            # native SSL arm is the case that matters - on a production target its
            # verify symbols are stripped, so the arm is a no-op and the report
            # used to omit that entirely while explaining a stalled startup with a
            # cause the evidence did not carry. Rendered generically (the report
            # loops evidence_lines), so no template change is needed.
            # ADR-0023: windowed key, so the capture launch's own statement of
            # the same question lands BESIDE this one instead of replacing it.
            native_hook_installation_key(window): (
                _native_hook_installation_line(not_installed, captured=bool(messages))
            ),
            SSL_HANDSHAKE_LINE: (
                "yes (a TLS handshake completed through the neutralized stack"
                f"{', ' + window if window else ''})"
                if "ssl-handshake" in effects
                else (
                    TLS_HANDSHAKE_REJECTED
                    if (ui_liveness or {}).get("tls_cert_rejected")
                    else (
                        # A TLS failure was logged but it is not a certificate
                        # rejection: no completed handshake was observed and the
                        # mechanism is not established. The bare none-observed
                        # wording would read as "no TLS activity", which the logged
                        # failure contradicts (ADR-0006).
                        TLS_HANDSHAKE_OBSERVER_NONE_TLS_FAILED
                        if (ui_liveness or {}).get("tls_blocked")
                        else TLS_HANDSHAKE_NONE_OBSERVED
                    )
                )
            ),
            # Confirmed SSL bypass, on the app's own observable behavior: its pin-
            # check ran without rejecting and a handshake completed. Never a
            # fabricated pass.
            SSL_CONFIRMATION_LINE: (
                "app's own pin-check ran without rejecting AND a TLS handshake "
                "completed (pin logic accepted a connection it would otherwise "
                "reject)"
                f"{'; ' + window if window else ''}" if ssl_confirmed
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

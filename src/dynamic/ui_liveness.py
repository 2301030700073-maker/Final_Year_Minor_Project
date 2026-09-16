"""Real-time UI-responsiveness evidence for a bypassed app (reference machine).

Beyond process liveness (the app didn't self-terminate), a bypass is only
meaningful if the app is actually *usable* - its UI rendered, focused, and not
frozen. This module gathers real device data via adb to prove that, for ANY
target, using only what the device reports (no app-specific assumptions):

* the app's top activity is in the RESUMED state (it reached and holds the
  foreground) - `dumpsys activity activities`
* the app owns the current window focus - `dumpsys window`
* no ANR / "Input dispatching timed out" for this app in logcat (the UI thread
  is not blocked - a frozen UI logs ANR within seconds) - `logcat -d`
* a real interactive UI hierarchy is rendered (clickable/tappable nodes present)
  - `uiautomator dump`

Each signal is a pure function of real device output, so it is auditable and
never fabricated. A tool missing on the host degrades that one signal to
"not captured" (a miss is reported honestly, never guessed). This is "the app
is alive and its UI is live and interactive" - it is NOT a claim that a
specific click was performed (driving an actual tap is app-specific and
fragile; proving the UI is focused, un-ANRed, and renders interactive nodes is
the strongest honest, deterministic responsiveness claim).
"""

from __future__ import annotations

import re
import subprocess
import time
from pathlib import Path

_ANR_MARKERS = (
    "ANR in",
    "Application Not Responding",
    "Input dispatching timed out",
    "Reason: timeout dispatching",
)

# Startup-TLS-blockage signatures: an app whose certificate validation rejects
# the presented chain (typically a MITM/proxy CA not in its trust store) logs
# these and never advances past a splash/loading gate. This is the honest
# "why the app is stuck" discriminator - the app is not ANR-frozen, it is
# blocked on TLS trust it cannot satisfy.
#
# These are compared against a LOWERCASED logcat line (see _parse_tls_block), so
# every marker MUST itself be lowercase - a mixed-case marker (e.g.
# `CertPathValidatorException`) can never be a substring of a lowercased line and
# would silently never fire, losing the "why the splash is stuck" signal for an
# app that logs only that exception form. Kept lowercase here so the intended
# case-insensitive match actually holds for all five markers, not just the two
# that happened to be all-lowercase.
# Split by the claim each group licenses, because they are NOT the same failure.
# A CERTIFICATE-VALIDATION failure is what the bypass is built to neutralize, and
# it is the only evidence that supports the report naming a cert-trust rejection.
# A generic HANDSHAKE failure (SSLHandshakeException, a timed-out handshake)
# establishes only that the handshake did not complete - equally consistent with
# an upstream proxy-path failure or the client aborting - so the certificate
# cause must not be named from it. Verified live: a PropertyGuru run logged
# `SSLHandshakeException: Read error: ssl=0x...: Failure in SSL library, usually
# a protocol error` and the report rendered that as "cert trust rejected on
# Conscrypt/okhttp path" - a mechanism that line does not establish.
_TLS_CERT_REJECT_MARKERS = (
    "trust anchor for certification path not found",
    "certpathvalidatorexception",
    "could not validate",
)
_TLS_HANDSHAKE_FAIL_MARKERS = (
    "sslhandshakeexception",
    "handshake timed out",
)
# The union, unchanged: this is what "a TLS block was observed" means, and every
# existing consumer keeps that meaning.
_TLS_BLOCK_MARKERS = _TLS_CERT_REJECT_MARKERS + _TLS_HANDSHAKE_FAIL_MARKERS


def _parse_activity_resumed(dumpsys_activities: str, package: str) -> bool:
    """True when the app's top activity is in the RESUMED (foreground) state.
    `dumpsys activity activities` reports this in several spellings across
    Android versions: an all-caps `*RESUMED*` state marker, or the newer
    `ResumedActivity:` / `mResumedActivity:` field (capital R). Match
    case-insensitively so the newer spellings are not missed, and require the
    line to name this package's component."""
    needle = "resumed"
    lines = dumpsys_activities.splitlines()
    for i, ln in enumerate(lines):
        if needle not in ln.lower():
            continue
        # The state marker and the component are usually on the same line;
        # accept a RESUMED record whose neighboring line names the package too
        # (some dumpsys versions split them across adjacent lines).
        window = lines[max(0, i - 1):i + 2]
        if package in ln or any(package in w for w in window):
            return True
    return False


def _parse_window_focused(dumpsys_window: str, package: str) -> bool:
    """True when the app owns the current window focus. Android reports focus
    two ways across versions: `mCurrentFocus=Window{... pkg/...}` (the focused
    window, the common case) or `mFocusedApp=...pkg/...` (the focused app token,
    on some versions/states where only the app-level focus is populated). Match
    either, requiring the line to name this package - the same version-spelling
    robustness as the RESUMED capital-R fix. A backgrounded or stuck app loses
    focus in both fields."""
    for ln in dumpsys_window.splitlines():
        if "mCurrentFocus" not in ln and "mFocusedApp" not in ln:
            continue
        if package in ln:
            return True
    return False


def _matches_target(ln: str, package: str, pid: str | None) -> bool:
    """True when a logcat line belongs to the app: it names the package, or
    carries the app's pid. The pid fallback matters because a real app's SDK
    components (RN's `dev.expo.updates`, analytics SDKs like Braze, Conscrypt)
    log under their own tags, not the main package - the line still carries the
    app's pid in its columns, so matching on it keeps those lines attributed."""
    if package in ln:
        return True
    if not pid:
        return False
    # The pid must match as a logcat PID/TID COLUMN token, not a bare substring.
    # A bare `pid in ln` false-attributes any line whose message body or hex
    # address happens to contain the digits (an unrelated process's tid, a
    # "0x<pid>" literal) to this app - which could flip anr_detected/tls_blocked
    # on evidence that isn't the app's. The default threadtime format columns
    # are "MM-DD hh:mm:ss.mmm PID TID level tag: message", so the process's own
    # pid appears as the exact PID (token 2) or TID (token 3) token - match only
    # those, so SDK-tagged lines (expo/Braze log under their own tag but carry
    # the app's pid in these columns) stay attributed while unrelated lines do
    # not.
    tokens = ln.split()
    if len(tokens) < 4:
        return False
    return pid in (tokens[2], tokens[3])


def _parse_anr(logcat: str, package: str, pid: str | None = None) -> list[str]:
    """ANR / input-dispatch-timeout lines for this app (the frozen-UI
    signature), matched by package or pid. Returns matching lines so the report
    can quote them."""
    hits = []
    for ln in logcat.splitlines():
        if not _matches_target(ln, package, pid):
            continue
        if any(marker in ln for marker in _ANR_MARKERS):
            hits.append(ln.strip())
    return hits


def _parse_tls_block(logcat: str, package: str, pid: str | None = None) -> list[str]:
    """TLS trust/validation failures for this app - the 'stuck on splash
    because its startup network calls can't be trusted' signature (distinct
    from an ANR: the UI thread is fine, TLS is blocked). Matched by package or
    pid so SDK-tagged failures (expo/Braze/okhttp) are not missed. Returns
    matching lines so the report can quote the actual failure."""
    hits = []
    for ln in logcat.splitlines():
        if not _matches_target(ln, package, pid):
            continue
        if any(marker in ln.lower() for marker in _TLS_BLOCK_MARKERS):
            hits.append(ln.strip())
    return hits


def _tls_cert_rejection(lines: list[str]) -> bool:
    """True when one of the matched lines is a CERTIFICATE-VALIDATION failure,
    as opposed to a generic handshake failure. Only this licenses the report's
    "cert trust rejected" wording - see _TLS_CERT_REJECT_MARKERS."""
    return any(m in ln.lower() for ln in lines for m in _TLS_CERT_REJECT_MARKERS)


def _parse_clickable_nodes(uiautomator_xml: str) -> int:
    """Count interactive (clickable or focusable) UI nodes in a uiautomator
    dump. A rendered, interactive screen shows real tappable widgets; a stuck
    or blank frame shows ~zero. Pure over the XML, fixture-testable.

    The `(?<![\\w-])` before the attribute name is load-bearing: `\\b` alone
    matches the `clickable="true"` INSIDE `long-clickable="true"` (a distinct
    uiautomator attribute), because a word boundary falls at the `-`/`c` seam. A
    node that is long-clickable but NOT clickable/focusable would then be counted
    as a tappable widget, and _classify_screen would label a splash/logo frame
    (long-clickable root, zero real widgets) as "interactive" - overstating UI
    liveness, the dangerous direction for this module's honesty claim. Requiring
    no word char OR hyphen immediately before the name rejects long-clickable and
    context-clickable while still matching a genuine clickable/focusable."""
    count = 0
    for m in re.finditer(r'<node[^>]*(?<![\w-])(?:clickable|focusable)="true"[^>]*>', uiautomator_xml):
        count += 1
    return count


# Widgets that are pure layout/container roots (no self-rendered content). RN,
# Flutter and WebView apps paint into one of these; the actual screen content
# lives in the *child* widgets. Excluding them lets us tell "a surface is
# rendering content" apart from "only a blank root frame is up."
_CONTAINER_CLASSES = ("FrameLayout", "ViewGroup", "ReactRootView", "FakeView")


def _parse_text_nodes(uiautomator_xml: str) -> list[str]:
    """Visible text content in a uiautomator dump - the screen's actual words.
    A splash/loading screen shows a brand tagline plus maybe a region or loading
    label (typically 1-3 nodes); an interactive page shows listings, nav labels,
    buttons. Text-node richness is the discriminator that separates 'stuck on
    the logo' from 'reached an interactive screen', which clickable-count alone
    cannot do for RN/Flutter UIs."""
    return re.findall(r'text="([^"]+)"', uiautomator_xml)


# A real interactive page surfaces more distinct visible strings than a splash/
# loading frame. Below this count with zero interactive widgets, the honest
# label is "splash/loading, not an interactive page" - never a healthy UI.
_SPLASH_TEXT_LIMIT = 3


def _classify_screen(text_nodes: list[str], clickable_nodes: int | None) -> str:
    """Honest screen-state label from real widget data. A screen with no
    interactive widgets AND very little visible text is a splash/loading/blank
    foreground, NOT an interactive page - distinguishing it means a frozen logo
    screen is never reported as a healthy, usable UI."""
    if text_nodes is None:
        return "unknown (no UI dump captured)"
    if clickable_nodes and clickable_nodes > 0:
        return "interactive (has tappable widgets)"
    # DISTINCT non-empty strings, not the raw node count: this module's own
    # discriminator is "more distinct visible strings than a splash frame" (see
    # _SPLASH_TEXT_LIMIT). A splash/loading frame can repeat ONE label across
    # several nodes (a shimmer row, a tagline echoed in a banner + a title bar),
    # so counting duplicates would push it over the limit and mislabel it
    # "content rendered" - overstating UI liveness, the dangerous direction this
    # module guards against (same honesty rule as _parse_clickable_nodes). Dedup
    # only ever LOWERS the count, so it can never upgrade a splash to interactive;
    # a genuine content page still surfaces many distinct strings. Dedup on the
    # stripped value so whitespace variants of one word are not counted as two.
    visible = {t.strip() for t in text_nodes if t.strip()}
    if len(visible) <= _SPLASH_TEXT_LIMIT:
        return "splash/loading (no interactive widgets, minimal text) - NOT an interactive page"
    return "content rendered but no tappable widgets (RN/Flutter surface)"


def _parse_rendered_content(uiautomator_xml: str) -> bool:
    """True when the dump shows a rendered content widget beyond a bare layout
    root. RN/Flutter/WebView screens render into a single container whose
    children carry the real content; a truly blank/frozen frame shows only the
    container. This distinguishes 'RN surface is drawing content' (so 0
    per-node clickables is expected, JS-driven) from 'empty frame'."""
    if not uiautomator_xml.strip():
        return False
    for m in re.finditer(r'<node[^>]*class="([^"]+)"[^>]*/?>', uiautomator_xml):
        cls = m.group(1)
        if not any(tok in cls for tok in _CONTAINER_CLASSES):
            return True
    return False


# The verbs a first-party "go to the network" control uses. Deliberately small and
# explicit rather than a broad word list: on an arbitrary app's home screen a loose
# match would pick navigation or a settings entry, and this module's job is to tap
# only what it can justify (ADR-0011). Matched against the WHOLE label, lowercased.
_INTENT_LABELS = ("start", "begin", "load", "continue", "retry", "submit", "go",
                  "open", "fetch", "login", "sign in")


def _node_label(node: str) -> str:
    """A node's human label: its text, else its content-desc.

    Both are what a person reads on the control, and an icon-only button carries
    only the desc. The `(?<![\\w-])` guard is the same one _parse_clickable_nodes
    documents - without it `text` matches inside a longer attribute name and the
    label comes from the wrong place."""
    for attr in ("text", "content-desc"):
        m = re.search(r'(?<![\w-])' + attr + r'="([^"]+)"', node)
        if m and m.group(1).strip():
            return m.group(1).strip()
    return ""


def _parse_tap_targets(uiautomator_xml: str) -> list[dict]:
    """Tappable widgets in a uiautomator dump, each with the centre of its own
    bounds. Pure over the XML, so the selection policy below is fixture-testable
    with no device attached.

    `bounds="[x1,y1][x2,y2]"` is the DEVICE's own geometry, and that is the whole
    point of this function: it is where a tap coordinate comes from INSTEAD of a
    stored constant, which is what makes one policy hold across devices and DPIs
    (project-limitations D2). Nodes with missing or degenerate bounds are skipped
    rather than tapped at (0,0)."""
    targets: list[dict] = []
    for m in re.finditer(r'<node[^>]*(?<![\w-])(?:clickable|focusable)="true"[^>]*>',
                         uiautomator_xml):
        node = m.group(0)
        b = re.search(r'bounds="\[(-?\d+),(-?\d+)\]\[(-?\d+),(-?\d+)\]"', node)
        if not b:
            continue
        x1, y1, x2, y2 = (int(v) for v in b.groups())
        if x2 <= x1 or y2 <= y1:
            continue
        targets.append({
            "label": _node_label(node),
            "bounds": [x1, y1, x2, y2],
            "center": [(x1 + x2) // 2, (y1 + y2) // 2],
        })
    return targets


def _choose_tap_target(targets: list[dict]) -> tuple[dict | None, str]:
    """The single target to tap, or None with the reason it refused. Pure policy.

    Deterministic, and refuses rather than guesses: a tap changes app state, so an
    arbitrary one would capture a screen nobody chose and leave the run's result
    uninterpretable. The second return value is how it was decided, and is
    recorded verbatim - a `sole-target` tap is a weaker justification than a
    `label-match` and the evidence says which one happened."""
    if not targets:
        return None, "no tappable widget in the hierarchy"
    for t in targets:
        if t["label"].strip().lower() in _INTENT_LABELS:
            return t, "label-match"
    if len(targets) == 1:
        return targets[0], "sole-target"
    return None, (
        f"{len(targets)} tappable widgets and not one whose label names a "
        "start/continue action - refusing to guess which of them exercises the "
        "network path")


def dump_ui_targets(serial: str, adb: str | None = None) -> dict:
    """A FRESH uiautomator dump's tap targets: {"targets", "measured", "reason"}.

    Carries the same stale-file guard check_ui_liveness uses, and for a sharper
    reason here. On failure `uiautomator dump` prints "ERROR: could not get idle
    state" and a STALE /sdcard/ui_dump.xml from a previous screen remains; tapping
    a coordinate read from it would press wherever an earlier screen had a button.
    A stale coordinate is worse than no coordinate, so a dump without its own
    success marker degrades to a recorded not-measured, never to a tap."""
    adb = adb or _adb_wrapper()
    try:
        out = subprocess.run(
            [adb, "-s", serial, "shell", "uiautomator", "dump", "/sdcard/ui_dump.xml"],
            capture_output=True, text=True, timeout=30,
        )
        stdout = out.stdout or ""
        if "dumped to" not in stdout:
            return {"targets": [], "measured": False,
                    "reason": "uiautomator dump failed (stale file not trusted): "
                              + (stdout.strip()[:80] or "no output")}
        xml_out = subprocess.run(
            [adb, "-s", serial, "shell", "cat", "/sdcard/ui_dump.xml"],
            capture_output=True, text=True, timeout=30,
        ).stdout or ""
        return {"targets": _parse_tap_targets(xml_out), "measured": True, "reason": None}
    except Exception as e:
        return {"targets": [], "measured": False, "reason": f"uiautomator: {e}"}


def tap(serial: str, x: int, y: int, adb: str | None = None) -> None:
    """Send one tap at a coordinate that came from the device's own dump.

    check=True: a drive that did not happen must not be recorded as one, and the
    caller records the failure as the drive's outcome (principle 3)."""
    adb = adb or _adb_wrapper()
    subprocess.run([adb, "-s", serial, "shell", "input", "tap", str(int(x)), str(int(y))],
                   capture_output=True, text=True, check=True, timeout=20)


def wait_for_foreground(serial: str, package: str, timeout: float = 8.0,
                        interval: float = 0.5, adb: str | None = None) -> dict:
    """Poll until the app's OWN activity is the resumed one - the precondition for
    dumping a hierarchy that is the app's.

    The drive used to dump immediately after `am start`. On a cold start the
    activity has not drawn yet, so uiautomator returns the PREVIOUS screen - the
    launcher's - and a tap resolved from those coordinates would change the
    state of a screen the app does not own, silently and uninterpretably. The
    wait is bounded so a launch that never comes up is a recorded refusal
    rather than a hang.

    `foreground` is True (the app owns the screen), False (it never did within
    the bound) or None (the probe itself failed on every poll - a fact about
    the observer, never a False, which would assert the app stayed away).
    """
    adb = adb or _adb_wrapper()
    deadline = time.monotonic() + timeout
    polls = 0
    errors = 0
    while True:
        polls += 1
        out = None
        try:
            out = subprocess.run(
                [adb, "-s", serial, "shell", "dumpsys", "activity", "activities"],
                capture_output=True, text=True, timeout=30,
            ).stdout
        except Exception:
            errors += 1
        if out is not None and _parse_activity_resumed(out, package):
            return {"foreground": True, "polls": polls, "errors": errors,
                    "timeout_s": timeout, "reason": None}
        if time.monotonic() >= deadline:
            break
        time.sleep(interval)
    if errors == polls:
        return {"foreground": None, "polls": polls, "errors": errors, "timeout_s": timeout,
                "reason": (f"`dumpsys activity activities` failed on all {polls} poll(s) "
                           f"over {timeout}s, so whether the app owns the foreground was "
                           "not measured")}
    return {"foreground": False, "polls": polls, "errors": errors, "timeout_s": timeout,
            "reason": (f"the app's activity was still not the resumed one after {timeout}s "
                       f"({polls} poll(s))")}


def check_ui_liveness(serial: str, package: str, adb: str | None = None) -> dict:
    """Gather real-time UI-responsiveness evidence for the running app.

    Each signal is collected independently; a missing tool or a failed shell
    call degrades that signal to False-for-presence but records `_error` so the
    report shows "not captured" rather than a silent absence (never guess).
    """
    adb = adb or _adb_wrapper()
    result: dict = {"package": package}

    # 1) activity RESUMED
    try:
        out = subprocess.run(
            [adb, "-s", serial, "shell", "dumpsys", "activity", "activities"],
            capture_output=True, text=True, timeout=30,
        ).stdout
        result["activity_resumed"] = _parse_activity_resumed(out, package)
    except Exception as e:
        result["activity_resumed"] = None
        result["_errors"] = result.get("_errors", []) + [f"dumpsys activity: {e}"]

    # 2) window focus
    try:
        out = subprocess.run(
            [adb, "-s", serial, "shell", "dumpsys", "window"],
            capture_output=True, text=True, timeout=30,
        ).stdout
        result["window_focused"] = _parse_window_focused(out, package)
    except Exception as e:
        result["window_focused"] = None
        result["_errors"] = result.get("_errors", []) + [f"dumpsys window: {e}"]

    # 3) ANR / frozen-UI scan (+ TLS-trust-block root cause). Get the app's
    # pid so SDK-tagged lines (expo/Braze/okhttp log under their own tags, not
    # the package) are still attributed to this app.
    pid = None
    try:
        pid = subprocess.run(
            [adb, "-s", serial, "shell", "pidof", package],
            capture_output=True, text=True, timeout=15,
        ).stdout.strip()
        pid = pid or None
    except Exception as e:
        # pid is a best-effort attribution helper (SDK-tagged logcat lines that
        # carry the app's pid but not its package name). A genuine adb failure
        # resolving it degrades the ANR/TLS scan below to package-only
        # attribution - a supported, tested fallback that fabricates no signal.
        # But this module's contract is that a failed shell call is SURFACED
        # ("not captured"), never a silent absence (see the other four excepts
        # and the docstring), so record it rather than swallowing it.
        pid = None
        result["_errors"] = result.get("_errors", []) + [f"pidof: {e}"]
    try:
        out = subprocess.run(
            [adb, "-s", serial, "shell", "logcat", "-d"],
            capture_output=True, text=True, timeout=30,
        ).stdout
        anr = _parse_anr(out, package, pid)
        result["anr_detected"] = bool(anr)
        result["anr_lines"] = anr[:3]
        # Same logcat, a different signal: TLS trust/validation failures that
        # explain WHY a splash is stuck (the app isn't ANR-frozen; its startup
        # network calls are being rejected on the trust path).
        tls = _parse_tls_block(out, package, pid)
        result["tls_blocked"] = bool(tls)
        result["tls_block_lines"] = tls[:2]
        # Co-sourced from the same logcat read as tls_blocked above, so it takes
        # the same not-captured sentinel below - a consumer must not read the two
        # in different states for the same IO call.
        result["tls_cert_rejected"] = _tls_cert_rejection(tls)
    except Exception as e:
        # The ANR scan and the TLS-trust-block scan both derive from THIS single
        # `logcat -d` call. When it fails, degrade BOTH to the None "not captured"
        # sentinel - this module's contract (the docstring, and the four other
        # except arms) is that a failed shell call is a surfaced "not captured",
        # never a silent absence. Leaving tls_blocked absent while anr_detected got
        # the sentinel was exactly that silent absence for the co-sourced TLS
        # signal: a presence-checking or serializing consumer would see the two in
        # different states, and _summarize_ui_liveness's positive-only TLS callout
        # would read identically to "logcat succeeded, no TLS block" - the honesty
        # boundary this module exists to hold, quietly not held for the TLS cause.
        result["anr_detected"] = None
        result["tls_blocked"] = None
        result["tls_cert_rejected"] = None
        result["_errors"] = result.get("_errors", []) + [f"logcat: {e}"]

    # 4) interactive UI hierarchy. Only trust the catted dump if uiautomator
    # actually wrote a fresh one: on failure it prints "ERROR: could not get
    # idle state" and a STALE /sdcard/ui_dump.xml from a prior run remains,
    # which would otherwise be reported as live data. Gate on the dump's own
    # success marker so a failed dump degrades to "not captured", never stale.
    try:
        out = subprocess.run(
            [adb, "-s", serial, "shell", "uiautomator", "dump", "/sdcard/ui_dump.xml"],
            capture_output=True, text=True, timeout=30,
        )
        dump_stdout = out.stdout or ""
        if "dumped to" not in dump_stdout:
            result["clickable_nodes"] = None
            result["rendered_content"] = None
            result["screen_state"] = "not captured (uiautomator dump failed)"
            result["_errors"] = result.get("_errors", []) + [
                "uiautomator dump failed (stale file not trusted): "
                + (dump_stdout.strip()[:80] or "no output")
            ]
        else:
            xml_out = subprocess.run(
                [adb, "-s", serial, "shell", "cat", "/sdcard/ui_dump.xml"],
                capture_output=True, text=True, timeout=30,
            ).stdout
            result["clickable_nodes"] = _parse_clickable_nodes(xml_out)
            result["rendered_content"] = _parse_rendered_content(xml_out)
            text_nodes = _parse_text_nodes(xml_out)
            result["text_nodes"] = text_nodes
            result["text_node_count"] = len(text_nodes)
            result["screen_state"] = _classify_screen(text_nodes, result["clickable_nodes"])
    except Exception as e:
        # This section's co-sourced signals (clickable_nodes, rendered_content,
        # screen_state) all derive from THIS uiautomator dump + cat. When either
        # shell call raises, degrade ALL of them to the SAME "not captured"
        # sentinels the dump-failed branch above sets - not just clickable_nodes.
        # Leaving rendered_content/screen_state ABSENT was a silent absence:
        # _summarize_ui_liveness omits the screen line entirely on a missing
        # screen_state (vs the honest "not captured" label it renders when the
        # dump-marker check fails), and a serializing/presence-checking consumer
        # would see clickable_nodes present-as-None while its siblings vanished -
        # the exact co-sourced asymmetry the logcat except arm above was fixed for.
        # Distinct label ("error" vs "dump failed") keeps the two failure modes
        # diagnosable; the exception detail is recorded in _errors.
        result["clickable_nodes"] = None
        result["rendered_content"] = None
        result["screen_state"] = "not captured (uiautomator error)"
        result["_errors"] = result.get("_errors", []) + [f"uiautomator: {e}"]

    return result


def _adb_wrapper() -> str:
    """Same adb resolution as device.py's _require_adb (Windows wrapper first)."""
    from dynamic import device
    return device._require_adb()

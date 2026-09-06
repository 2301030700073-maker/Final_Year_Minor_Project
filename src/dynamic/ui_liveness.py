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
_TLS_BLOCK_MARKERS = (
    "trust anchor for certification path not found",
    "certpathvalidatorexception",
    "sslhandshakeexception",
    "could not validate",
    "handshake timed out",
)


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


def _parse_clickable_nodes(uiautomator_xml: str) -> int:
    """Count interactive (clickable or focusable) UI nodes in a uiautomator
    dump. A rendered, interactive screen shows real tappable widgets; a stuck
    or blank frame shows ~zero. Pure over the XML, fixture-testable."""
    count = 0
    for m in re.finditer(r'<node[^>]*\b(?:clickable|focusable)="true"[^>]*>', uiautomator_xml):
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
    visible = [t for t in text_nodes if t.strip()]
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
    except Exception as e:
        result["anr_detected"] = None
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
        result["clickable_nodes"] = None
        result["_errors"] = result.get("_errors", []) + [f"uiautomator: {e}"]

    return result


def _adb_wrapper() -> str:
    """Same adb resolution as device.py's _require_adb (Windows wrapper first)."""
    from dynamic import device
    return device._require_adb()

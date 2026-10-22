"""Regression guard for Task #11: the shipped SSL-pinning bypass scripts must
never report `bypassed:true` when no hook actually loaded.

THE DEFECT
----------
Every per-hook `catch (e) {}` swallowed the failure, and the script then
unconditionally sent `{hook: 'universal-ssl-pinning', bypassed: true}`. A script
that installed NOTHING still claimed a successful bypass - exactly the
"report says OK but the app is stuck/crashed / nothing actually hooked" false-OK
pattern this project exists to prevent.

THE FIX
-------
Each script now tracks `_*_hooks_loaded` and gates the marker on it, emitting
honest `hook_loaded` / `hook_skipped` per hook. Zero loaded -> `bypassed: false`
with a reason; >=1 loaded -> `bypassed: true` carrying the count.

THIS TEST
---------
Reads the real scripts and (a) asserts no silent swallow remains, (b) asserts
the unconditional marker is gone, and (c) evaluates the ACTUAL gating expression
extracted from the source so a future edit that weakens it (e.g. `>= 0`, or
re-introducing the unconditional send) is caught: zero loaded hooks must NOT
claim `bypassed: true`.
"""
import re
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
SCRIPTS = {
    "universal": REPO / "src/dynamic/scripts/ssl_pinning_bypass_universal.js",
    "drive": REPO / "src/dynamic/scripts/ssl_pinning_bypass_drive.js",
}

GATE_RE = re.compile(r"if\s*\(([A-Za-z_]\w*_hooks_loaded\s*>\s*0)\)")
OLD_MARKER = "send({hook: 'universal-ssl-pinning', bypassed: true});"


def _src(name: str) -> str:
    return SCRIPTS[name].read_text(encoding="utf-8")


def test_no_silent_catch_in_ssl_bypass_scripts():
    for name in SCRIPTS:
        assert "catch (e) {}" not in _src(name), (
            f"{name} still swallows hook errors silently (Task #11 regression)"
        )


def test_unconditional_bypassed_marker_is_gone():
    for name in SCRIPTS:
        assert OLD_MARKER not in _src(name), (
            f"{name} still sends the unconditional bypassed:true marker (Task #11)"
        )


def test_bypass_claim_is_gated_on_loaded_hooks():
    for name in SCRIPTS:
        src = _src(name)
        m = GATE_RE.search(src)
        assert m, f"{name}: cannot find the hooks-loaded gate expression"
        var, cond = m.group(1).split(">")[0].strip(), m.group(1)
        # Zero hooks loaded MUST NOT pass the gate (else bypassed:true would fire).
        assert eval(cond, {}, {var: 0}) is False, (
            f"{name}: gate `{cond}` is True when 0 hooks loaded - false bypass (Task #11)"
        )
        # At least one loaded hook MUST pass the gate (don't hide a real bypass).
        assert eval(cond, {}, {var: 1}) is True, (
            f"{name}: gate `{cond}` is False when a hook loaded - would hide a real bypass"
        )


def test_final_marker_carries_hook_count_and_honest_failure():
    for name in SCRIPTS:
        src = _src(name)
        assert "hooks_loaded" in src, (
            f"{name}: final marker no longer reports how many hooks loaded (Task #11)"
        )
        assert "bypassed: false" in src, (
            f"{name}: missing the honest bypassed:false branch for 0-loaded runs (Task #11)"
        )


def test_universal_and_drive_neutralize_okhttp_certificatepinner():
    # The single most common Android SSL-pinning method is OkHttp's
    # CertificatePinner.check. Both recipes must neutralize it (no-op every
    # check overload); without it an OkHttp-pinning app/SDK rejects the capture
    # CA and its handshake fails - the stuck-network / frozen-splash symptom.
    # This exact gap left propertyguru's pinned SDK hosts (cdn-settings.segment.
    # com, featureassets.org) undecryptable.
    for name in SCRIPTS:
        src = _src(name)
        assert "okhttp3.CertificatePinner" in src, (
            f"{name}: does not hook okhttp3.CertificatePinner (SSL-pinning gap)"
        )
        assert "CertificatePinner.check" in src, (
            f"{name}: does not neutralize CertificatePinner.check (SSL-pinning gap)"
        )


def test_universal_neutralizes_native_boringssl_for_flutter_and_rn():
    # Flutter / React Native bundle BoringSSL inside libflutter.so /
    # libreactnative.so (NOT libssl.so) and have no Java SSL stack, so the
    # universal recipe must hook THOSE libs' SSL_CTX_set_* to stop a pure-native
    # host verifying the capture CA.
    src = _src("universal")
    assert "libflutter.so" in src, "universal: no native hook for Flutter's BoringSSL"
    assert "libreactnative.so" in src, "universal: no native hook for React Native's BoringSSL"

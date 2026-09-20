"""The vendored third-party universal bypass is kept as the audited record of a
measured negative result - and it must never be on a load path.

VENDORED.md and the runner's own header record why the file is retained but
unused: loading it ALONGSIDE a synthesized bypass suppressed the synthesized
bypass's observers on both root and SSL, measured live on AndroGoat through a
trusted mitmproxy CA (root: root_bypassed=True with the synth alone vs 0
probeHits with both loaded; SSL: ssl_bypassed=True vs 0 observer messages). The
report states the same thing to its reader (report/generator.py).

That invariant was written down in three places and guarded by none of them. The
test that looked like its guard asserted a constant f-string
(`assert f"universal({VENDORED_UNIVERSAL})"` - always truthy, and the label form
it named is not produced anywhere in src/ at all), and its comment asserted the
arrangement the measurement disproved - that the unknown-target path labels the
vendor "so the report shows it ran alongside the synthesized bypass". A guard
that cannot fail is not a guard, and a one-line re-add to a target map would have
re-broken root and SSL in silence, on every synthesized run.

So the file stays as evidence and the load path is pinned shut: the name may
appear in src/ only at the two places that define it as a constant, no
script-loading call may be handed it, and the path constant may have no reader.
"""

import ast
from pathlib import Path

from dynamic.frida_runner import VENDORED_UNIVERSAL, VENDORED_UNIVERSAL_PATH

SRC = Path(__file__).resolve().parents[2] / "src"

# Where the name is allowed to exist: the runner's record pointer and the
# synthesizer's report label. Both are constants, neither is a load.
ALLOWED_NAME_SITES = {("frida_runner.py", VENDORED_UNIVERSAL), ("synthesizer.py", VENDORED_UNIVERSAL)}


def _parsed():
    """(path, tree) for every module in src/, parsed rather than grepped: a
    reformatted call or a commented-out mention must neither satisfy these checks
    nor trip them."""
    for path in sorted(SRC.rglob("*.py")):
        yield path, ast.parse(path.read_text(encoding="utf-8"))


def test_vendored_universal_file_is_present_and_complete():
    assert VENDORED_UNIVERSAL_PATH.exists(), (
        f"vendored universal {VENDORED_UNIVERSAL} is missing"
    )
    src = VENDORED_UNIVERSAL_PATH.read_text(encoding="utf-8")
    assert len(src) > 50_000, "expected a full real script, not a stub"
    # the two core entry points must be present
    assert "addUniversalSSLPinningBypass" in src
    assert "addUniversalRootBypass" in src
    # it self-runs (top-level setImmediate hooks), so loading the source executes
    assert "setImmediate(hookNativeRootFuncs)" in src
    assert "setImmediate(hookNativeSSLFuncs)" in src


def test_the_vendored_script_is_named_only_where_it_is_defined():
    """Every string in src/ that contains the name must be one of the two
    definitions - so a target map entry ("...-bypass.js"), a path, or any other
    spelling that would put the file back on a load path fails here."""
    sites = {
        (path.name, node.value)
        for path, tree in _parsed()
        for node in ast.walk(tree)
        if isinstance(node, ast.Constant) and isinstance(node.value, str) and VENDORED_UNIVERSAL in node.value
    }
    assert sites == ALLOWED_NAME_SITES, (
        f"the vendored script is named at {sites - ALLOWED_NAME_SITES}; if it is being reintroduced "
        "deliberately, the measured reason it was dropped (VENDORED.md, report/generator.py) has to "
        "be answered first - the vendor's second load suppressed the synthesized bypass's observers "
        "on both root and SSL"
    )


def test_no_script_loading_call_is_handed_the_vendored_script():
    """A name constant is not a load; this pins the call surface itself, which is
    how the vendor would actually reach Frida (frida_runner.load_script reads
    SCRIPT_DIR / name, and an absolute path argument would bypass that dir)."""
    offenders, load_calls = [], 0
    for path, tree in _parsed():
        for node in ast.walk(tree):
            if not isinstance(node, ast.Call):
                continue
            func = node.func
            name = func.attr if isinstance(func, ast.Attribute) else getattr(func, "id", "")
            if name not in {"load_script", "create_script"}:
                continue
            load_calls += 1
            for arg in [*node.args, *node.keywords]:
                text = ast.unparse(arg)
                if VENDORED_UNIVERSAL in text or "VENDORED" in text:
                    offenders.append(f"{path.name}:{node.lineno} {text}")
    assert offenders == [], offenders
    # Non-vacuity: the loader exists and is called for other scripts, so a rename
    # of the helper cannot make this pass by finding no call sites at all.
    assert load_calls >= 2, f"expected the real load sites, found {load_calls}"


def test_the_path_constant_has_no_reader_in_src():
    """VENDORED_UNIVERSAL_PATH documents which artifact the recorded evidence is.
    The moment anything reads it, the file is on a load path - which is the one
    thing the measurement forbids."""
    readers = [
        f"{path.name}:{node.lineno}"
        for path, tree in _parsed()
        for node in ast.walk(tree)
        if isinstance(node, ast.Name) and node.id == "VENDORED_UNIVERSAL_PATH" and isinstance(node.ctx, ast.Load)
    ]
    assert readers == [], readers

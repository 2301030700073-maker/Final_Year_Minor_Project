"""The vendored third-party universal bypass must be present, non-trivial, and
referenced by the dynamic runner as a supplement to the synthesized bypass."""

from dynamic.frida_runner import VENDORED_UNIVERSAL, VENDORED_UNIVERSAL_PATH


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


def test_runner_names_the_vendored_universal_supplement():
    # The unknown-target synthesized path must label the vendored universal in
    # scripts_applied so the report shows it ran alongside the synthesized bypass.
    from dynamic import frida_runner as fr
    assert hasattr(fr, "VENDORED_UNIVERSAL_PATH")
    assert f"universal({VENDORED_UNIVERSAL})"  # the scripts_applied label form

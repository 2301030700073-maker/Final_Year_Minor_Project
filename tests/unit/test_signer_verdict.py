"""ADR-0019: three states for a signature verdict, and a refusal that no longer halts.

The defect these pin: ingest read apksigner's "DOES NOT VERIFY" as the APK's own
property and stopped, so two validly-signed production APKs were never analysed
at all. The tool had verified no scheme; both files demonstrably carry v2. The
halt was a statement about the installed toolchain, made in the APK's voice, over
a verdict no downstream decision consumes - the report renders it and the apks
table stores it, and nothing branches on it.
"""

import subprocess

from _apk_fixtures import V2, V31, pair, with_block, write_apk, zip_bytes
from ingest.metadata import (
    SIGNER_FAILED,
    SIGNER_NOT_EVALUATED,
    SIGNER_VERIFIED,
    ApksignerError,
    classify_signer_verdict,
    ingest,
    tool_versions,
    verify_signature,
)
from ingest.signing_block import SigningBlock

_REFUSAL = (
    "apksigner exited 1: stdout: DOES NOT VERIFY | stderr: ERROR: Target SDK version 36 "
    "requires a minimum of signature scheme v2; the APK is not signed with this or a "
    "later signature scheme"
)


def _block(pair_ids, schemes) -> SigningBlock:
    return SigningBlock(
        found=bool(pair_ids),
        pair_ids=list(pair_ids),
        schemes=list(schemes),
        detail=f"{len(pair_ids)} ID-value pair(s)",
    )


def _no_block() -> SigningBlock:
    return SigningBlock(found=False, detail="no 'APK Sig Block 42' magic at the offset given")


# --- the rule itself ---------------------------------------------------------

def test_a_scheme_the_tool_verified_is_verified():
    verdict, reason = classify_signer_verdict(
        ["v2 scheme (APK Signature Scheme v2)"], _block([V2], ["v2"]), None
    )
    assert verdict == SIGNER_VERIFIED
    assert "v2 scheme" in reason


def test_a_scheme_present_but_not_certified_is_not_evaluated():
    verdict, reason = classify_signer_verdict([], _block([V2, V31], ["v2", "v3.1"]), _REFUSAL)
    assert verdict == SIGNER_NOT_EVALUATED
    # The claim names the schemes the file carries and carries the tool's own
    # reason, so a reader can check it rather than trust the label.
    assert "v2/v3.1" in reason
    assert "DOES NOT VERIFY" in reason


def test_a_refusal_with_no_scheme_in_the_block_is_a_failure():
    verdict, reason = classify_signer_verdict([], _no_block(), _REFUSAL)
    assert verdict == SIGNER_FAILED
    assert "carries none" in reason


def test_a_verified_scheme_is_never_downgraded_by_a_refusal():
    # The order of the rule's tests is load-bearing: a tool that did certify a
    # scheme settles the verdict, whatever else it reported alongside.
    verdict, _ = classify_signer_verdict(
        ["v1 scheme (JAR signing)"], _block([V2], ["v2"]), _REFUSAL
    )
    assert verdict == SIGNER_VERIFIED


# --- verify_signature, against a real file on disk ---------------------------

def _verify(tmp_path, data, monkeypatch, *, output=None, error=None):
    apk = write_apk(tmp_path, data)
    monkeypatch.setattr("common.shutil.which", lambda name: name)

    def _run(*args, **kwargs):
        if error is not None:
            raise error

        class _Result:
            stdout = output

        return _Result()

    monkeypatch.setattr("ingest.metadata.subprocess.run", _run)
    return verify_signature(apk)


def test_a_present_scheme_the_tool_could_not_certify_is_not_evaluated(tmp_path, monkeypatch):
    signer = _verify(
        tmp_path,
        with_block(zip_bytes(), pair(V2) + pair(V31)),
        monkeypatch,
        error=ApksignerError(_REFUSAL),
    )
    assert signer["verdict"] == SIGNER_NOT_EVALUATED
    assert signer["signing_block_schemes"] == ["v2", "v3.1"]
    assert signer["signing_block_pairs"] == ["0x7109871a", "0x1b93ad61"]
    assert signer["apksigner_verified_schemes"] == []
    assert "DOES NOT VERIFY" in signer["apksigner_refusal"]
    # None, not False: no scheme was reported at all, which is not the same claim
    # as a scheme reported and failed.
    assert signer["v2_verified"] is None
    assert signer["signer_count"] == 0


def test_a_file_with_no_scheme_at_all_is_a_failure(tmp_path, monkeypatch):
    signer = _verify(tmp_path, zip_bytes(), monkeypatch, error=ApksignerError(_REFUSAL))
    assert signer["verdict"] == SIGNER_FAILED
    assert signer["signing_block_found"] is False
    assert signer["signing_block_schemes"] == []
    assert signer["signing_block_pairs"] == []


def test_a_verification_the_tool_did_perform_is_read_as_verified(tmp_path, monkeypatch):
    report = (
        "Verifies\n"
        "Verified using v1 scheme (JAR signing): false\n"
        "Verified using v2 scheme (APK Signature Scheme v2): true\n"
        "Number of signers: 1\n"
    )
    signer = _verify(tmp_path, with_block(zip_bytes(), pair(V2)), monkeypatch, output=report)
    assert signer["verdict"] == SIGNER_VERIFIED
    assert signer["v2_verified"] is True
    assert signer["apksigner_refusal"] is None


# --- and the halt is gone, while the gate that belongs there is not --------

def test_an_apksigner_refusal_no_longer_halts_ingest(tmp_path, monkeypatch):
    """The measured regression: Facebook and Netflix halted here and produced no
    report. aapt2 succeeding is what makes the point - the pipeline reaches the
    package name and continues to the analysis stages."""
    apk = write_apk(tmp_path, with_block(zip_bytes(), pair(V2) + pair(V31)))

    class _Result:
        stdout = "package: name='com.example.app' versionCode='1' versionName='1.0'\n"

    def _run(cmd, **kwargs):
        if cmd[0] == "apksigner":
            raise subprocess.CalledProcessError(1, cmd, output="DOES NOT VERIFY\n", stderr="")
        return _Result()

    monkeypatch.setattr("common.shutil.which", lambda name: name)
    monkeypatch.setattr("ingest.metadata.subprocess.run", _run)
    tool_versions.cache_clear()
    try:
        result = ingest(apk)
    finally:
        tool_versions.cache_clear()

    assert result.status == "success", result.error
    assert result.evidence["package"]["package_name"] == "com.example.app"
    assert result.evidence["signer"]["verdict"] == SIGNER_NOT_EVALUATED
    assert result.evidence["signer"]["signing_block_schemes"] == ["v2", "v3.1"]


def test_an_aapt2_failure_still_halts_ingest(tmp_path, monkeypatch):
    """Part 3 moved the signature gate, not the package gate. The package name is
    genuinely required downstream - frida attach and target resolution both fail
    confusingly without it - so aapt2 still fails the stage loudly."""
    apk = write_apk(tmp_path, zip_bytes())

    def _run(cmd, **kwargs):
        raise subprocess.CalledProcessError(1, cmd, output="", stderr="aapt2: unrecognised")

    monkeypatch.setattr("common.shutil.which", lambda name: name)
    monkeypatch.setattr("ingest.metadata.subprocess.run", _run)
    tool_versions.cache_clear()
    try:
        result = ingest(apk)
    finally:
        tool_versions.cache_clear()

    assert result.status == "failed"
    assert "Aapt2Error" in result.error

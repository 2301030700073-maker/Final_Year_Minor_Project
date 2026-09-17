"""ADR-0019 part 3: the signer verdict reaches the report in the state it is in.

A verdict that never renders is a verdict that was computed for nothing, and the
failure this pins is the one the ADR was written about: the platform knew the
signature could not be certified and said nothing a reader could act on. The
three states must be distinguishable in the rendered text, and a record written
before the verdict existed must keep rendering as it did rather than gaining a
claim nobody measured.
"""

from common import Action, CategoryVerdict, ClassificationResult
from report.generator import generate_report


def _neither_classification():
    root = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    ssl = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    return ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)


def _render(tmp_path, signer):
    report_path = generate_report(
        run_id="sig", apk_hash="sig001", timestamp="2026-09-17T12:00:00",
        metadata={
            "hashes": {"sha256": "sig001"},
            "package": {"package_name": "com.example.sig"},
            "signer": signer,
        },
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path, manifest=None,
    )
    return report_path.read_text(encoding="utf-8")


def _signer(verdict, reason, **extra):
    return {
        "v1_verified": None, "v2_verified": None, "v3_verified": None, "v4_verified": None,
        "certificate_dn": None, "certificate_sha256": None, "signer_count": 0,
        "schemes": {}, "verdict": verdict, "verdict_reason": reason, **extra,
    }


def test_a_scheme_the_tool_could_not_certify_renders_as_a_toolchain_bound(tmp_path):
    text = _render(tmp_path, _signer(
        "not_evaluated",
        "apksigner verified no signature scheme, but the signing block carries v2/v3.1/v3",
        signing_block_schemes=["v2", "v3.1", "v3"],
    ))
    assert "**Signature verification: NOT EVALUATED**" in text
    assert "v2/v3.1/v3" in text
    # The sentence that stops the reader taking this as a finding about the app.
    assert "not a finding that the APK is unsigned" in text


def test_a_genuine_verification_failure_renders_as_a_finding(tmp_path):
    text = _render(tmp_path, _signer(
        "failed", "apksigner verified no signature scheme and the signing block carries none",
    ))
    assert "**Signature verification: FAILED**" in text
    assert "treat the signature as absent or invalid" in text
    # The two states must not be confusable in the rendered text.
    assert "NOT EVALUATED" not in text


def test_a_verified_signature_gains_no_verdict_line(tmp_path):
    text = _render(tmp_path, _signer("verified", "apksigner verified v2 scheme (APK Signature Scheme v2)"))
    assert "**Signature verification:" not in text


def test_a_record_written_before_the_verdict_existed_still_renders(tmp_path):
    # No `verdict` key at all - an older stored record, or the reuse path reading
    # one. It must keep rendering its Signing line and gain no claim nobody made.
    text = _render(tmp_path, {
        "v1_verified": True, "v2_verified": True, "v3_verified": None, "v4_verified": None,
        "certificate_dn": "CN=x", "certificate_sha256": "ab", "signer_count": 1, "schemes": {},
    })
    assert "**Signing:**" in text
    assert "**Signature verification:" not in text


def test_the_reason_is_escaped_so_tool_output_cannot_break_the_line(tmp_path):
    # The reason carries apksigner's own output, which is not ours to trust: a
    # newline would split the caveat off its label and a pipe would open a table
    # column. Both are neutralised the same way every other rendered value is.
    text = _render(tmp_path, _signer(
        "failed", "apksigner exited 1: DOES NOT VERIFY | ERROR: Target SDK version 36\nrequires v2",
    ))
    line = next(l for l in text.splitlines() if l.startswith("**Signature verification: FAILED**"))
    assert "DOES NOT VERIFY \\| ERROR" in line
    assert "version 36 requires v2" in line

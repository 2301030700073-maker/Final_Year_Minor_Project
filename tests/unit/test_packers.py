"""Unit tests for static/packers.py - deterministic packer/protector detection
(Gap-2). Pure matching is fixture-testable anywhere; the APK-opening path is
validated separately against a real APK in an env-guarded test."""

from pathlib import Path

import pytest

from static.packers import (
    PackerSignature,
    load_packer_signatures,
    match_packers,
)


def _sig(sig_id="packer_x", packer="Fake", **signals):
    return PackerSignature(id=sig_id, packer=packer, **signals)


def test_match_packers_fires_on_native_loader_lib():
    # Tencent Legu ships libDexHelper.so under lib/<abi>/ - a deterministic,
    # in-stack signal independent of the DEX (which is hidden).
    sig = _sig("packer_tencent_legu", "Tencent Legu", native_lib=["libDexHelper.so"])
    findings = match_packers(None, ["libDexHelper.so", "libfoo.so"], [], [sig])
    assert len(findings) == 1
    assert findings[0].packer == "Tencent Legu"
    assert findings[0].signals == ["native_lib:libDexHelper.so"]


def test_match_packers_fires_on_stub_application_class():
    # A packer's stub <application android:name> wrapper - the real Application
    # is only reachable through it.
    sig = _sig("packer_bangcle_secneo", "Bangcle / SecNeo",
               application=["com.secneo.apkwrapper.ApplicationWrapper"])
    findings = match_packers("com.secneo.apkwrapper.ApplicationWrapper", [], [], [sig])
    assert len(findings) == 1
    assert findings[0].signals == ["application:com.secneo.apkwrapper.ApplicationWrapper"]


def test_match_packers_fires_on_encrypted_dex_asset():
    # An encrypted-DEX blob under assets/ (OR-within-entry: any signal detects).
    sig = _sig("packer_bangcle_secneo", "Bangcle / SecNeo", asset=["assets/secData0.jar"])
    findings = match_packers(None, [], ["assets/secData0.jar"], [sig])
    assert len(findings) == 1


def test_match_packers_or_within_entry_any_signal():
    # Any ONE signal matching detects the packer - not all must be present.
    sig = _sig("packer_qihoo_360", "Qihoo 360",
               native_lib=["libjiagu.so"], application=["com.qihoo.util.StubApplication"])
    findings = match_packers(None, ["libjiagu.so"], [], [sig])
    assert len(findings) == 1
    assert findings[0].packer == "Qihoo 360"


def test_match_packers_no_match_when_none_present():
    sig = _sig(native_lib=["libDexHelper.so"], application=["com.stub.StubApp"])
    findings = match_packers(None, ["libfoo.so"], [], [sig])
    assert findings == []


def test_match_packers_multiple_families():
    sigs = [
        _sig("packer_a", "A", native_lib=["libDexHelper.so"]),
        _sig("packer_b", "B", native_lib=["libjiagu.so"]),
    ]
    findings = match_packers(None, ["libDexHelper.so", "libjiagu.so"], [], sigs)
    assert {f.packer for f in findings} == {"A", "B"}


def test_load_packer_signatures_reads_real_corpus():
    repo = Path(__file__).resolve().parents[2]
    sigs = load_packer_signatures(repo / "config" / "signatures" / "packers.yaml")
    assert sigs, "packers.yaml must define at least one family"
    ids = {s.id for s in sigs}
    assert "packer_tencent_legu" in ids
    assert "packer_bangcle_secneo" in ids
    assert "packer_qihoo_360" in ids
    assert all(s.packer for s in sigs)
    # A4 breadth: the classic Chinese commercial packers (Ijiami, AliProtect,
    # AppSealing) must be present - a packed app from these reads java=partial,
    # never a silent confident negative.
    assert "packer_ijiami" in ids
    assert "packer_alibaba" in ids
    assert "packer_appsealing" in ids
    # At least one signal per entry (validation guarantees this).
    assert all((s.native_lib or s.application or s.asset) for s in sigs)


def test_load_packer_signatures_rejects_missing_packer_name(tmp_path):
    p = tmp_path / "p.yaml"
    p.write_text("- id: x\n  native_lib: ['libDexHelper.so']\n")  # no packer field
    with pytest.raises(ValueError, match="packer"):
        load_packer_signatures(p)


def test_load_packer_signatures_rejects_no_signals(tmp_path):
    p = tmp_path / "p.yaml"
    p.write_text("- id: x\n  packer: Foo\n")
    with pytest.raises(ValueError, match="no signals"):
        load_packer_signatures(p)


def test_load_packer_signatures_rejects_non_list_signal(tmp_path):
    p = tmp_path / "p.yaml"
    p.write_text("- id: x\n  packer: Foo\n  native_lib: libDexHelper.so\n")  # string, not list
    with pytest.raises(ValueError, match="list of strings"):
        load_packer_signatures(p)


def test_load_packer_signatures_normalizes_absent_signal_to_empty(tmp_path):
    # An entry with native_lib but no asset/app fields loads with those as [].
    p = tmp_path / "p.yaml"
    p.write_text("- id: x\n  packer: Foo\n  native_lib: ['libjiagu.so']\n")
    (sig,) = load_packer_signatures(p)
    assert sig.native_lib == ["libjiagu.so"]
    assert sig.asset == []
    assert sig.application == []


def test_detect_packers_runs_on_real_apk():
    # Exercise the real APK-extraction path (manifest app class, native lib
    # basenames, asset tokens) against an actual APK. The repo's known corpus is
    # unpacked, so it must report no packers - and must not raise. Skipped when
    # no real APK is present so the unit suite stays runnable anywhere (NFR).
    repo = Path(__file__).resolve().parents[2]
    apk = next((repo / "APK_Test").glob("*.apk"), None)
    if apk is None:
        pytest.skip("no real APK present to run the packer extraction path on")

    from static.packers import detect_packers

    findings = detect_packers(apk, [])
    assert isinstance(findings, list)  # extraction ran cleanly; no signatures -> no hits


def test_packer_entry_validation_rejects_bad_branches():
    # _validate_packer_entry rejects a packer signature that would silently
    # never fire. It had zero direct coverage.
    from pathlib import Path

    from static.packers import VALID_PACKER_SIGNAL_FIELDS, _validate_packer_entry

    p = Path("packer.yaml")
    field = next(iter(VALID_PACKER_SIGNAL_FIELDS))
    good = {"id": "x", "packer": "SomePacker", field: ["signal"]}

    def _raises(bad, needle):
        try:
            _validate_packer_entry(bad, p)
        except ValueError as e:
            assert needle in str(e), e
            return
        raise AssertionError(f"expected ValueError with '{needle}'")

    _raises({"id": "x", field: ["s"]}, "no 'packer' name")
    _raises({"id": "x", "packer": "P"}, "no signals")
    _raises({**good, field: "notalist"}, "must be a list of strings")
    _raises({**good, field: ["good", ""]}, "empty entry")
    _validate_packer_entry(good, p)  # valid entry does not raise

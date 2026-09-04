from pathlib import Path

import pytest
import yaml

from calibration.ground_truth import load_ground_truth

REPO_ROOT = Path(__file__).resolve().parents[2]


def test_load_ground_truth_reads_real_yaml_with_all_four_known_targets():
    entries = load_ground_truth(REPO_ROOT / "config/ground_truth.yaml")

    uncrackable1 = entries["1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21"]
    assert uncrackable1.root is True
    assert uncrackable1.ssl is False
    assert uncrackable1.source  # non-empty

    contacts = entries["5fc85732e9824bba2947460a52b50e107e1167128d876ff64230767acf7169cb"]
    assert contacts.root is False
    assert contacts.ssl is False

    # RS_Vapour (com.redshift.rs_vapourtraining) - SSL negative control, root
    # POSITIVE. Root was registered False until 2026-09-03 on a verification that
    # grepped for full su-path literals ("no su paths ... Runtime.exec su"); the
    # app's own Login.java builds each path at runtime instead - findBinary walks a
    # bare-directory array with `new File(where + binaryName).exists()` and
    # isRooted() calls findBinary("su") - so no "/system/xbin/su"-shaped string
    # exists anywhere in its DEX and the check was missed. Corrected against the
    # real APK: all eight directory literals and the standalone "su" are exact DEX
    # string constants xref'd to Lcom/redshift/rs_vapourtraining/Login;, the app's
    # OWN class. This label is what makes the residual false negative measurable -
    # the app has exactly ONE root technique, so it scores 0.30 and stays NEITHER
    # (see test_signatures test_sudir1_bare_su_search_directories...). Do not
    # "restore" root False to make recall look better.
    rs_vapour = entries["1c747b27b3547a8a8798a03128a7edd903a88e02dbcc5b1b2dbf14db69d7e212"]
    assert rs_vapour.root is True
    # SSL absence still holds, independently re-confirmed the same way: of 111
    # app-owned string constants, zero are SSL-shaped.
    assert rs_vapour.ssl is False
    assert rs_vapour.source


def test_load_ground_truth_rejects_entry_missing_source(tmp_path):
    bad_file = tmp_path / "ground_truth.yaml"
    bad_file.write_text(yaml.dump({"somehash": {"root": True, "ssl": False}}))

    with pytest.raises(ValueError, match="source"):
        load_ground_truth(bad_file)


def test_load_ground_truth_accepts_null_category_as_not_yet_established(tmp_path):
    gt_file = tmp_path / "ground_truth.yaml"
    gt_file.write_text(yaml.dump({"somehash": {"root": True, "source": "manual review"}}))

    entries = load_ground_truth(gt_file)

    assert entries["somehash"].root is True
    assert entries["somehash"].ssl is None  # not forced to False just because it's absent from the file


def test_load_ground_truth_empty_file_returns_empty_dict(tmp_path):
    gt_file = tmp_path / "ground_truth.yaml"
    gt_file.write_text("")

    assert load_ground_truth(gt_file) == {}


def test_load_ground_truth_rejects_lowercase_none_string_as_category(tmp_path):
    # GT1: `root: none` (lowercase - the natural way a human writes "not
    # established") is NOT a YAML null. PyYAML parses it to the truthy STRING
    # "none", which classify_tier2 then reads as PRESENT, turning a clean scan
    # into a fabricated false_negative (verified empirically). The loader must
    # reject it loudly, not silently corrupt Tier 2 - the correct spelling is
    # `null` or omitting the key.
    gt_file = tmp_path / "ground_truth.yaml"
    gt_file.write_text("somehash:\n  root: none\n  ssl: false\n  source: manual review\n")
    with pytest.raises(ValueError, match="root"):
        load_ground_truth(gt_file)


def test_load_ground_truth_rejects_quoted_boolean(tmp_path):
    # GT1: a quoted boolean is a truthy string. `ssl: "false"` (intended absent)
    # reads as PRESENT -> a correct clean scan becomes a false_negative, silently
    # deflating recall. Reject loudly (root is valid here, so ssl is the offender).
    gt_file = tmp_path / "ground_truth.yaml"
    gt_file.write_text('somehash:\n  root: true\n  ssl: "false"\n  source: manual review\n')
    with pytest.raises(ValueError, match="ssl"):
        load_ground_truth(gt_file)


def test_load_ground_truth_rejects_falsy_non_bool_that_would_launder_a_miss(tmp_path):
    # GT1, the ADR-0006 direction: a falsy non-bool (`0`, `""`) reads as ABSENT.
    # If a technique is genuinely present but written `0`, a real miss
    # (detected=False) is laundered into a true_negative - a silent confident
    # false negative. Only real booleans / null are admissible.
    gt_file = tmp_path / "ground_truth.yaml"
    gt_file.write_text("somehash:\n  root: 0\n  ssl: false\n  source: manual review\n")
    with pytest.raises(ValueError, match="root"):
        load_ground_truth(gt_file)


def test_load_ground_truth_accepts_all_real_boolean_and_null_forms(tmp_path):
    # The complement: every ADMISSIBLE form (true / false / null / omitted key)
    # still loads and round-trips to the exact Python value classify_tier2
    # expects - so the stricter validation rejects only the footguns above, never
    # a correct entry (this is what proved the real config still loads clean).
    gt_file = tmp_path / "ground_truth.yaml"
    gt_file.write_text(
        "a:\n  root: true\n  ssl: false\n  source: s\n"
        "b:\n  root: false\n  ssl: null\n  source: s\n"
        "c:\n  root: true\n  source: s\n"  # ssl omitted -> None
    )
    e = load_ground_truth(gt_file)
    assert (e["a"].root, e["a"].ssl) == (True, False)
    assert (e["b"].root, e["b"].ssl) == (False, None)
    assert (e["c"].root, e["c"].ssl) == (True, None)
    for entry in e.values():  # never a str/int that would misclassify downstream
        for v in (entry.root, entry.ssl):
            assert isinstance(v, bool) or v is None

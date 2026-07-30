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

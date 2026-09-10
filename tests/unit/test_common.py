import pytest

from common import Action, CategoryVerdict, ClassificationResult, load_yaml_entries


def test_classification_result_construction():
    verdict = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
    result = ClassificationResult(
        action=Action.ROOT_ONLY, root=verdict, ssl=verdict
    )
    assert result.action == Action.ROOT_ONLY
    assert result.root.confidence == 0.9


def _write(tmp_path, text):
    p = tmp_path / "sig.yaml"
    p.write_text(text, encoding="utf-8")
    return p


# load_yaml_entries is the signature-corpus loader shared by the Java, native and
# packer loaders (static/signatures.py, static/native.py, static/packers.py). It is
# the sole source of truth for detection, so its fail-loud contract on a malformed
# corpus (Principle 3: no silent failures) is worth locking directly - it was only
# exercised indirectly through the three loaders on the well-formed real config.


def test_load_yaml_entries_rejects_a_top_level_string_not_a_list(tmp_path):
    # The dangerous malformed case: a bare top-level YAML string. Without the
    # guard, `for entry in raw` iterates it CHARACTER BY CHARACTER and hands each
    # char to validate/ctor - silently corrupting the detection corpus. The guard
    # turns that into a clear ValueError instead.
    with pytest.raises(ValueError, match="expected a top-level YAML list"):
        load_yaml_entries(_write(tmp_path, "just a bare string\n"), lambda entry, path: None, dict)


def test_load_yaml_entries_rejects_a_top_level_mapping_not_a_list(tmp_path):
    # A single entry written without the leading `- ` parses to a mapping, not a
    # list; iterating it would yield the dict's KEYS. Also fails loud.
    with pytest.raises(ValueError, match="expected a top-level YAML list"):
        load_yaml_entries(_write(tmp_path, "id: x\npacker: Foo\n"), lambda entry, path: None, dict)


def test_load_yaml_entries_treats_an_empty_file_as_no_entries(tmp_path):
    # An empty signature file is a legitimate empty corpus (yaml.safe_load -> None
    # -> `or []`), never a crash - a not-yet-populated category is allowed.
    assert load_yaml_entries(_write(tmp_path, ""), lambda entry, path: None, dict) == []


def test_load_yaml_entries_validates_every_entry_then_constructs_it(tmp_path):
    # A well-formed list validates each entry then constructs the typed object via
    # ctor(**entry). Confirms both the per-entry validate call and that the built
    # objects preserve the entry fields.
    seen = []
    out = load_yaml_entries(_write(tmp_path, "- id: a\n- id: b\n"), lambda entry, path: seen.append(entry), dict)
    assert out == [{"id": "a"}, {"id": "b"}]
    assert len(seen) == 2


def test_load_yaml_entries_propagates_a_validator_rejection(tmp_path):
    # Validators signal failure by RAISING - load_yaml_entries ignores their
    # return value by design, so a rejection must propagate unchanged and halt the
    # load (a malformed signature file never yields a partial corpus).
    def reject(entry, path):
        raise ValueError("bad entry")

    with pytest.raises(ValueError, match="bad entry"):
        load_yaml_entries(_write(tmp_path, "- id: a\n"), reject, dict)

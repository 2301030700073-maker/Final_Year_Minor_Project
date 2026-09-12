import pytest

from common import (
    Action,
    CategoryVerdict,
    ClassificationResult,
    derive_namespace,
    is_known_third_party,
    is_third_party_file,
    load_yaml_entries,
    namespace_of_decompiled_path,
)


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


# WINSEP1 (2026-09-12): derive_namespace and namespace_of_decompiled_path used a
# bare `path.split("/")`, a POSIX-only assumption. The reference platform is
# WSL2/Linux (ADR-0007) so production was correct, but on Windows
# `str(Path(...))` emits backslashes: the whole path collapsed to ONE segment,
# no `sources`/`classes-*` marker was found, and the namespace became None.
# `is_known_third_party(None)` is False, so every bundled-SDK file silently read
# as the APP'S OWN evidence - the exact false-positive direction DYNLOAD-VENDOR1
# / WEBVIEW-VENDOR1 exist to prevent.
#
# The pre-existing namespace tests in test_attribution.py cannot catch this:
# they *build* their inputs with "/", so they never exercise a backslash form.
# These tests pin the separator handling directly. They pass on POSIX too (a
# no-op there), so they are not Windows-only - they lock behaviour that must
# hold on every platform.

# The two spellings of the same real jadx path: classic layout, and the modern
# multidex layout. Both must yield the identical dotted namespace.
_POSIX_JADX = "sources/com/google/android/gms/common/net/zza.java"
_WIN_JADX = r"sources\com\google\android\gms\common\net\zza.java"
_POSIX_MODERN = "classes-7c8ed94a0b1d-1.5.6/sources/com/google/android/gms/ads/AdView.java"
_WIN_MODERN = r"classes-7c8ed94a0b1d-1.5.6\sources\com\google\android\gms\ads\AdView.java"


def test_derive_namespace_splits_on_backslashes_like_slashes():
    # The regression lock: a backslash path must derive the SAME namespace as its
    # slash twin. Before the fix this returned None, which silently turned every
    # bundled-SDK file into app-owned evidence.
    assert derive_namespace(_WIN_JADX) == "com.google.android.gms.common.net"
    assert derive_namespace(_WIN_JADX) == derive_namespace(_POSIX_JADX)
    assert derive_namespace(_WIN_MODERN) == "com.google.android.gms.ads"
    assert derive_namespace(_WIN_MODERN) == derive_namespace(_POSIX_MODERN)


def test_derive_namespace_backslash_path_is_recognized_as_third_party():
    # The consequence that actually matters: the namespace a backslash path
    # yields must still be classified as a bundled SDK, so it is excluded from
    # the app's own evidence. This is the assertion that would have failed
    # (is_known_third_party(None) is False) had the fix regressed.
    ns = derive_namespace(_WIN_JADX)
    assert is_known_third_party(ns) is True
    assert is_third_party_file(ns, "com.allproperty.android.consumer.my") is True


def test_derive_namespace_strips_a_windows_drive_prefix():
    # `str(Path("C:/a/sources/x/Y.java"))` on Windows is "C:\\a\\sources\\x\\Y.java".
    # The drive letter "C:" must not survive as a package segment, or the derived
    # namespace would be "C:.x" and match no vendor prefix.
    assert derive_namespace(r"C:\a\sources\com\example\app\Main.java") == "com.example.app"
    assert derive_namespace(r"D:\out\sources\io\sentry\Core.java") == "io.sentry"
    # and the marker is still found with no drive at all
    assert derive_namespace(r"\a\sources\com\example\Main.java") == "com.example"


def test_derive_namespace_backslash_smali_classes_dirs_are_stripped():
    # The multi-dex output dirs are layout, not package, on either separator.
    assert derive_namespace(r"smali_classes2\coil\util\-SvgUtils.smali") == "coil.util"
    assert derive_namespace(r"smali\coil\util\SvgUtils.smali") == "coil.util"


def test_derive_namespace_backslash_bare_filename_is_still_none():
    # With no package directory at all there is nothing to derive, on either
    # platform. Note `C:\out\Bar.java` is NOT in this list: `out` is a dotless
    # segment, so it is a legitimate package directory and derives as 'out' -
    # the rule is "dotless segment = package", and it applies identically after
    # a backslash split (see the equivalence sweep below).
    assert derive_namespace(r"Bar.java") is None
    assert derive_namespace(r"C:\Bar.java") is None
    assert derive_namespace(r"\Bar.java") is None


def test_namespace_of_decompiled_path_finds_cfr_anchor_on_backslashes():
    # CFR writes `<analysis>/<sha256>/cfr/<pkg>/...` with no `sources` marker, so
    # the 64-hex hash + `cfr` pair is the only anchor. On Windows the old
    # split("/") never saw it, so an absolute CFR path derived as garbage
    # ("outputs.analysis.<sha>.cfr.okhttp3.internal") and matched no vendor -
    # every CFR-recovered bundled-SDK file read as app-owned (CFR-NS1).
    h = "a" * 64
    win = "C:\\out\\" + h + "\\cfr\\okhttp3\\internal\\Util.java"
    posix = "/out/" + h + "/cfr/okhttp3/internal/Util.java"
    assert namespace_of_decompiled_path(win) == "okhttp3.internal"
    assert namespace_of_decompiled_path(win) == namespace_of_decompiled_path(posix)
    assert is_known_third_party(namespace_of_decompiled_path(win)) is True


def test_namespace_of_decompiled_path_cfr_anchor_requires_the_hash_prefix():
    # The `cfr` segment is an anchor ONLY when preceded by the 64-hex APK hash;
    # a genuine package segment named `cfr` must not be mistaken for the output
    # dir. Verified on backslash input because that is where the anchor was lost.
    win = r"C:\out\sources\com\example\cfr\Thing.java"
    assert namespace_of_decompiled_path(win) == "com.example.cfr"


def test_derive_namespace_never_mis_attributes_on_either_separator():
    # Equivalence sweep over every layout the pipeline actually produces. Any
    # divergence between the two spellings is a bug by definition; this is the
    # table that makes the fix's scope explicit rather than relying on spot checks.
    cases = [
        ("sources/com/google/android/gms/common/net/zza.java", "com.google.android.gms.common.net"),
        ("classes-deadbeefcafe-1.5.6/sources/com/facebook/ads/Ad.java", "com.facebook.ads"),
        ("smali_classes3/coil/util/-SvgUtils.smali", "coil.util"),
        # `resources` is a layout marker too, so it anchors and the remainder is
        # the namespace - the XML filename (contains '.') stops the walk.
        ("resources/res/layout/main.xml", "res.layout"),
        ("Bar.java", None),
        ("", None),
    ]
    for path, expected in cases:
        win = path.replace("/", "\\")
        assert derive_namespace(path) == expected, f"posix: {path}"
        assert derive_namespace(win) == expected, f"windows: {win}"

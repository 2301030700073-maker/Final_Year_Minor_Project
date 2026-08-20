"""Pure AAB / split-APK normalization - no device, no toolchain, testable anywhere."""

import zipfile
from pathlib import Path

from ingest import normalize


def _zip(write_dir: Path, name: str, entries: dict[str, bytes]) -> Path:
    p = write_dir / name
    with zipfile.ZipFile(p, "w", zipfile.ZIP_DEFLATED) as z:
        for entry_name, data in entries.items():
            z.writestr(entry_name, data)
    return p


def _plain_apk(write_dir: Path, name: str = "base.apk") -> Path:
    manifest = b"<manifest package='com.example.app'/>"
    return _zip(write_dir, name, {
        "AndroidManifest.xml": manifest,
        "classes.dex": b"\x00dex-a",
        "classes2.dex": b"\x00dex-b",
        "lib/arm64-v8a/libnative.so": b"\x7fELF-arm64",
    })


def _aab(write_dir: Path) -> Path:
    return _zip(write_dir, "app.aab", {
        "base/manifest/AndroidManifest.xml": b"<manifest package='com.example.aab'/>",
        "base/dex/classes.dex": b"\x00dex-1",
        "base/dex/classes2.dex": b"\x00dex-2",
        "base/root/classes3.dex": b"\x00dex-3",
        "base/lib/arm64-v8a/libnative.so": b"\x7fELF-arm64",
        "base/lib/x86_64/libnative.so": b"\x7fELF-x86",
        "base/res/xml/network_security_config.xml": b"<network-security-config/>",
        "base/assets/secret.dat": b"payload",
    })


def test_normalize_input_passthrough_plain_apk(tmp_path):
    apk = _plain_apk(tmp_path, "plain.apk")
    out = normalize.normalize_input(apk, tmp_path / "out")
    assert out == apk  # unchanged, no copy


def test_normalize_input_detects_aab_by_extension(tmp_path):
    aab = _aab(tmp_path)
    out = normalize.normalize_input(aab, tmp_path / "out")
    assert out != aab
    assert out.suffix == ".apk"


def test_normalize_aab_merges_root_level_entries(tmp_path):
    aab = _aab(tmp_path)
    out = normalize.normalize_aab(aab, tmp_path / "out")
    with zipfile.ZipFile(out) as z:
        names = z.namelist()
        assert "AndroidManifest.xml" in names
        assert "classes.dex" in names
        assert "classes2.dex" in names
        assert "classes3.dex" in names           # from base/root/
        assert "lib/arm64-v8a/libnative.so" in names
        assert "lib/x86_64/libnative.so" in names
        assert "res/xml/network_security_config.xml" in names   # NSC resolution
        assert "assets/secret.dat" in names
        assert z.read("AndroidManifest.xml").startswith(b"<manifest package='com.example.aab'/>")


def test_normalize_aab_renumbers_dex_in_order(tmp_path):
    aab = _aab(tmp_path)
    out = normalize.normalize_aab(aab, tmp_path / "out")
    with zipfile.ZipFile(out) as z:
        # three distinct dex -> classes.dex, classes2.dex, classes3.dex
        assert z.read("classes.dex") == b"\x00dex-1"
        assert z.read("classes2.dex") == b"\x00dex-2"
        assert z.read("classes3.dex") == b"\x00dex-3"


def test_normalize_aab_rejects_bundle_without_manifest(tmp_path):
    bad = _zip(tmp_path, "bad.aab", {"base/dex/classes.dex": b"\x00x"})
    try:
        normalize.normalize_aab(bad, tmp_path / "out")
        raise AssertionError("expected ValueError")
    except ValueError as e:
        assert "not a valid AAB" in str(e)


def test_normalize_split_set_merges_dex_and_libs(tmp_path):
    d = tmp_path / "splits"
    d.mkdir()
    _plain_apk(d, "base.apk")                                # manifest + dex-a + dex-b
    _zip(d, "config.arm64_v8a.apk", {
        "classes.dex": b"\x00dex-c",
        "lib/arm64-v8a/libextra.so": b"\x7fELF-extra",
    })
    _zip(d, "config.en.apk", {"classes.dex": b"\x00dex-d", "res/values/strings.xml": b"<x/>"})

    out = normalize.normalize_split_set(d, tmp_path / "out")
    with zipfile.ZipFile(out) as z:
        names = z.namelist()
        assert "AndroidManifest.xml" in names
        # all four distinct dex kept and renumbered (deterministic by content hash)
        dex = sorted(n for n in names if n.startswith("classes") and n.endswith(".dex"))
        assert len(dex) == 4
        # union of libs from base + config split
        assert "lib/arm64-v8a/libnative.so" in names
        assert "lib/arm64-v8a/libextra.so" in names
        assert "res/values/strings.xml" in names


def test_normalize_split_set_requires_a_base(tmp_path):
    d = tmp_path / "nobase"
    d.mkdir()
    _zip(d, "config.arm64_v8a.apk", {"classes.dex": b"\x00x"})  # no root manifest
    try:
        normalize.normalize_split_set(d, tmp_path / "out")
        raise AssertionError("expected ValueError")
    except ValueError as e:
        assert "expected base.apk" in str(e)


def test_normalize_split_set_requires_some_apk(tmp_path):
    d = tmp_path / "empty"
    d.mkdir()
    try:
        normalize.normalize_split_set(d, tmp_path / "out")
        raise AssertionError("expected ValueError")
    except ValueError as e:
        assert "no .apk" in str(e)

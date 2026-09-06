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
        # A native lib bundletool placed under the "root" module (base/root/):
        # destined for the APK root, so it must survive normalization. Kept in
        # the shared fixture so every AAB test exercises it.
        "base/root/lib/arm64-v8a/libroot.so": b"\x7fELF-root-lib",
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
        # A native lib under base/root/lib/<abi>/ must be rescued to the APK root
        # (previously dropped -> silent native-coverage loss, ADR-0006).
        assert "lib/arm64-v8a/libroot.so" in names
        assert "res/xml/network_security_config.xml" in names   # NSC resolution
        assert "assets/secret.dat" in names
        assert z.read("AndroidManifest.xml").startswith(b"<manifest package='com.example.aab'/>")


def test_normalize_aab_rescues_base_root_native_lib_without_dropping_or_duplicating(tmp_path):
    # A native library shipped under base/root/lib/<abi>/ used to vanish from the
    # synthesized APK: the merge rescued only base/lib/*.so, so the native stage
    # never saw it - a silent coverage loss that can read a real native root/SSL
    # detection as a confident negative (ADR-0006 forbids exactly that). It must
    # now land at the APK root. When base/lib and base/root/lib carry the SAME
    # path, base/ wins deterministically and NO duplicate zip entry is emitted
    # (a duplicate arcname is a corrupt APK). base/root/*.dex stays handled by
    # the renumbering dex loop, never also copied verbatim.
    aab = _zip(tmp_path, "collide.aab", {
        "base/manifest/AndroidManifest.xml": b"<manifest package='com.example.aab'/>",
        "base/dex/classes.dex": b"\x00dex-1",
        "base/root/classes2.dex": b"\x00dex-2",                    # root-placed dex
        "base/lib/arm64-v8a/libc.so": b"BASE-libc",                # base copy (wins)
        "base/root/lib/arm64-v8a/libc.so": b"ROOT-libc",           # collision (loses)
        "base/root/lib/arm64-v8a/libonlyroot.so": b"\x7fELF-only", # only in root/
    })
    out = normalize.normalize_aab(aab, tmp_path / "out")
    with zipfile.ZipFile(out) as z:
        names = z.namelist()
        # No duplicate arcnames anywhere (corrupt-APK guard).
        assert len(names) == len(set(names)), f"duplicate arcname: {names}"
        # The root-only native lib survives.
        assert "lib/arm64-v8a/libonlyroot.so" in names
        # On a genuine path collision, base/ content wins.
        assert z.read("lib/arm64-v8a/libc.so") == b"BASE-libc"
        # base/root/*.dex is renumbered by the dex loop, not copied verbatim.
        dex = sorted(n for n in names if n.startswith("classes") and n.endswith(".dex"))
        assert dex == ["classes.dex", "classes2.dex"], dex
        assert not any(n.startswith("root/") or n.startswith("base/") for n in names)


def test_normalize_aab_base_wins_collision_regardless_of_zip_order(tmp_path):
    # Base-wins on a base/ vs base/root/ path collision must hold DETERMINISTICALLY,
    # independent of the order the two entries happen to appear in the AAB's central
    # directory. The sibling test above lists base/lib/libc.so BEFORE its base/root/
    # twin, so a first-in-zip-order merge would let base win there by luck - it never
    # exercises the reverse ordering. This fixture lists the base/root/ copy FIRST:
    #
    #   base/root/lib/arm64-v8a/libc.so   (root module - must LOSE)
    #   base/lib/arm64-v8a/libc.so        (base module - must WIN)
    #
    # A raw `namelist()` merge visits base/root/ first here, so its `arc in written`
    # guard would keep ROOT-libc - analyzing a native lib the device would NOT load
    # at that path, back toward the confident-negative this rescue exists to prevent
    # (ADR-0006). The merge sorts non-root base/ ahead of base/root/, so base wins by
    # construction whatever the zip order - the same guarantee split-set gets by
    # merging base first (setdefault).
    aab = _zip(tmp_path, "order.aab", {
        "base/manifest/AndroidManifest.xml": b"<manifest package='com.example.aab'/>",
        "base/dex/classes.dex": b"\x00dex-1",
        "base/root/lib/arm64-v8a/libc.so": b"ROOT-libc",   # listed first, must lose
        "base/lib/arm64-v8a/libc.so": b"BASE-libc",        # listed second, must win
    })
    # Confirm the fixture really does list the root copy first (else the test would
    # not exercise the reverse ordering it exists to cover).
    with zipfile.ZipFile(aab) as z:
        order = [n for n in z.namelist() if n.endswith("libc.so")]
    assert order == [
        "base/root/lib/arm64-v8a/libc.so",
        "base/lib/arm64-v8a/libc.so",
    ], order
    out = normalize.normalize_aab(aab, tmp_path / "out")
    with zipfile.ZipFile(out) as z:
        names = z.namelist()
        assert names.count("lib/arm64-v8a/libc.so") == 1, f"duplicate arcname: {names}"
        assert z.read("lib/arm64-v8a/libc.so") == b"BASE-libc"


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


def test_is_aab_and_sorted_dex_entries(tmp_path):
    # _is_aab: a .aab suffix is authoritative; otherwise a zip is an AAB only if
    # it carries base/manifest/AndroidManifest.xml; a bad zip is never an AAB.
    # _sorted_dex_entries: returns only base/classes*.dex, sorted. Pure zip
    # handling - both had zero direct coverage.
    import io
    import zipfile
    from pathlib import Path
    from ingest.normalize import _is_aab, _sorted_dex_entries

    # .aab suffix -> True regardless of contents
    assert _is_aab(Path("pkg.aab")) is True
    assert _is_aab(Path("pkg.apk")) is False

    # a real zip missing the AAB manifest -> not an AAB
    plain = io.BytesIO()
    with zipfile.ZipFile(plain, "w") as z:
        z.writestr("AndroidManifest.xml", "<manifest/>")
    plain.seek(0)
    tmp = (tmp_path / "_is_aab_plain.apk"); tmp.write_bytes(plain.getvalue())
    assert _is_aab(tmp) is False

    # a zip WITH the AAB manifest -> an AAB
    aab = io.BytesIO()
    with zipfile.ZipFile(aab, "w") as z:
        z.writestr("base/manifest/AndroidManifest.xml", "<manifest/>")
    aab.seek(0)
    tmp2 = (tmp_path / "_is_aab_true.aab"); tmp2.write_bytes(aab.getvalue())
    assert _is_aab(tmp2) is True

    # garbage bytes -> not an AAB (no crash)
    junk = (tmp_path / "_is_aab_junk.apk"); junk.write_bytes(b"\x00\x01garbage")
    assert _is_aab(junk) is False

    # sorted_dex_entries over an in-memory zip
    mem = io.BytesIO()
    with zipfile.ZipFile(mem, "w") as z:
        for n in ("base/classes2.dex", "base/classes.dex", "base/classes3.dex", "base/res/a", "other.dex"):
            z.writestr(n, "x")
    mem.seek(0)
    with zipfile.ZipFile(mem) as z:
        assert _sorted_dex_entries(z) == ["base/classes.dex", "base/classes2.dex", "base/classes3.dex"]


def test_read_zip_entries_excludes_directories(tmp_path):
    # _read_zip_entries: reads a zip to {name: bytes}, excluding directory
    # entries (trailing '/'). Pure zip parsing - had zero direct coverage.
    import io
    import zipfile
    from pathlib import Path
    from ingest.normalize import _read_zip_entries
    buf = io.BytesIO()
    with zipfile.ZipFile(buf, "w") as z:
        z.writestr("AndroidManifest.xml", "<manifest/>")
        z.writestr("classes.dex", b"\x00\x01")
        z.writestr("res/", b"")  # directory entry - must be excluded
    buf.seek(0)
    p = (tmp_path / "_rze.apk"); p.write_bytes(buf.getvalue())
    entries = _read_zip_entries(p)
    assert "AndroidManifest.xml" in entries
    assert "classes.dex" in entries
    assert "res/" not in entries
    assert entries["classes.dex"] == b"\x00\x01"


def test_sha256_bytes_is_stable_and_hex(tmp_path):
    # common.sha256_bytes: the pure content hash that names the run dir. Must be a
    # stable 64-char hex over the bytes, independent of path/name. Had zero
    # coverage.
    from common import sha256_bytes
    h = sha256_bytes(b"hello")
    assert h == sha256_bytes(b"hello")          # deterministic
    assert len(h) == 64 and all(c in "0123456789abcdef" for c in h)
    assert sha256_bytes(b"hello") != sha256_bytes(b"hellp")


def test_is_apk_zip_true_only_with_root_manifest(tmp_path):
    # _is_apk_zip: an APK is a zip carrying a root AndroidManifest.xml; a plain
    # zip or a corrupt file is not. Degrades to False (never raises) on a bad
    # zip. Had zero coverage.
    import zipfile as _z
    from ingest.normalize import _is_apk_zip

    apk = tmp_path / "a.apk"
    with _z.ZipFile(apk, "w") as z:
        z.writestr("AndroidManifest.xml", "<manifest/>")
        z.writestr("classes.dex", "dex")
    assert _is_apk_zip(apk) is True

    plain = tmp_path / "b.zip"
    with _z.ZipFile(plain, "w") as z:
        z.writestr("note.txt", "hi")
    assert _is_apk_zip(plain) is False

    bad = tmp_path / "c.apk"
    bad.write_bytes(b"not a zip")
    assert _is_apk_zip(bad) is False
    assert _is_apk_zip(tmp_path / "missing.apk") is False


def test_sha256_split_dir_is_deterministic_and_order_insensitive(tmp_path):
    # _sha256_split_dir: deterministic identity for a split-APK dir - combines
    # sorted per-file name+hash so the same set always yields the same output
    # name (and only .apk files count; other artifacts must not perturb it).
    # Had zero coverage.
    import zipfile as _z
    from ingest.normalize import _sha256_split_dir

    a = tmp_path / "1.apk"
    with _z.ZipFile(a, "w") as z:
        z.writestr("classes.dex", b"dex1")
    b = tmp_path / "2.apk"
    with _z.ZipFile(b, "w") as z:
        z.writestr("classes.dex", b"dex2")

    h0 = _sha256_split_dir(tmp_path)
    assert _sha256_split_dir(tmp_path) == h0  # deterministic on unchanged dir

    # a non-.apk file must not change the identity
    (tmp_path / "notes.txt").write_text("not an apk", encoding="utf-8")
    assert _sha256_split_dir(tmp_path) == h0

    # changing one apk's content changes the identity (capture before vs after)
    with _z.ZipFile(a, "w") as z:
        z.writestr("classes.dex", b"changed")
    h_after = _sha256_split_dir(tmp_path)
    assert h_after != h0
    assert len(h_after) == 64  # hex


def test_normalize_input_rejects_plain_zip_loudly(tmp_path):
    # normalize.py:101-105: a zip that is neither an APK (no root manifest) nor
    # an AAB must fail LOUDLY, never silently no-op - the project's principle 3
    # (a mis-suffixed or wrong-format input must not silently produce nothing).
    # Real coverage proved this raise branch untested.
    import zipfile as _z
    plain = tmp_path / "pkg.zip"
    with _z.ZipFile(plain, "w") as z:
        z.writestr("assets/note.txt", "hi")
    try:
        normalize.normalize_input(plain, tmp_path / "out")
        raise AssertionError("expected ValueError for a non-APK non-AAB zip")
    except ValueError as e:
        assert "neither an APK" in str(e) and "nor an AAB" in str(e)


def test_normalize_split_set_rejects_when_no_dex_anywhere(tmp_path):
    # normalize.py:163-165: a split set whose APKs carry a manifest but NO
    # classes*.dex (e.g. a config-only split) must fail loudly rather than
    # produce an output with no code - "no classes*.dex found across".
    import zipfile as _z
    d = tmp_path / "nodex"
    d.mkdir()
    # a zip that is a valid APK (root manifest) but contains no dex at all
    nod_dex = d / "base.apk"
    with _z.ZipFile(nod_dex, "w") as z:
        z.writestr("AndroidManifest.xml", "<manifest package='com.x'/>")
        z.writestr("res/values/strings.xml", "<resources/>")
    try:
        normalize.normalize_split_set(d, tmp_path / "out2")
        raise AssertionError("expected ValueError for a split set with no dex")
    except ValueError as e:
        assert "no classes*.dex" in str(e)


def test_normalize_input_routes_directory_to_split_set(tmp_path):
    # normalize.py:101: normalize_input dispatches a DIRECTORY input to the
    # split-APK set path. The split-set logic itself is tested directly, but the
    # is_dir routing branch through normalize_input had zero coverage.
    d = tmp_path / "splits"
    d.mkdir()
    _plain_apk(d, "base.apk")
    out = normalize.normalize_input(d, tmp_path / "out")
    with zipfile.ZipFile(out) as z:
        assert "AndroidManifest.xml" in z.namelist()

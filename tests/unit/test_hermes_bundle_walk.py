"""HERM2: the binary JS-bundle walk (_scan_binary_bundles) must cover every root
the text signature engine scans, not just assets/.

A Hermes/`.hbc` bundle can ship under `res/raw/` (or any decoded resource dir),
which the text engine skips (binary NUL probe). If the binary walk missed it too,
`has_binary_bundle` stayed False and the `js` coverage surface read
`fully_analyzed` - so a root/SSL NEITHER certified a confident negative over code
neither engine ever read (ADR-0006). These tests pin the walk to the full root
list and confirm the conservative gates (suffix + binary probe) still hold.
"""

from cli import _scan_binary_bundles


def test_scan_binary_bundles_finds_bundle_outside_assets(tmp_path):
    # The regression: a binary bundle under res/raw/ (NOT assets/) must be found.
    # Pre-HERM2 the walk was assets/-only, so this bundle was invisible to BOTH
    # engines and js read fully_analyzed - a confident negative over unread code.
    root = tmp_path / "apktool"
    raw = root / "res" / "raw"
    raw.mkdir(parents=True)
    # NUL byte -> is_binary_bundle True; "isRooted" is a recoverable ASCII run
    # that hits JS_ROOT_IDIOMS.
    (raw / "index.android.bundle").write_bytes(b"\x00isRooted\x00" + b"x" * 32)
    has_binary_bundle, matches = _scan_binary_bundles([root])
    assert has_binary_bundle is True
    assert any(cat == "root" for _sig, cat, _txt, _f in matches)


def test_scan_binary_bundles_finds_bundle_in_assets_too(tmp_path):
    # The original assets/ case still works (no regression in the common path).
    root = tmp_path / "apktool"
    assets = root / "assets"
    assets.mkdir(parents=True)
    (assets / "index.android.bundle").write_bytes(
        b"\x1f\xbc\x0c\x00" + b"\x00certificatePinner\x00" + b"y" * 16
    )
    has_binary_bundle, matches = _scan_binary_bundles([root])
    assert has_binary_bundle is True
    assert any(cat == "ssl" for _sig, cat, _txt, _f in matches)


def test_scan_binary_bundles_scans_all_static_roots(tmp_path):
    # Mirrors static_roots = [jadx, apktool, ...]: a bundle in the SECOND root is
    # found, proving the walk is not pinned to a single tree.
    jadx = tmp_path / "jadx"
    apktool = tmp_path / "apktool"
    (apktool / "res" / "raw").mkdir(parents=True)
    jadx.mkdir()
    (apktool / "res" / "raw" / "app.hbc").write_bytes(b"\x00/system/bin/su\x00" + b"z" * 16)
    has_binary_bundle, matches = _scan_binary_bundles([jadx, apktool])
    assert has_binary_bundle is True
    assert any(cat == "root" for _sig, cat, _txt, _f in matches)


def test_scan_binary_bundles_skips_plaintext_js(tmp_path):
    # Plain-text .js is the text engine's job: is_binary_bundle False -> skipped
    # here, so it never double-counts and never flips has_binary_bundle. This is
    # what keeps widening the walk purely additive (no over-detection).
    root = tmp_path / "apktool"
    assets = root / "assets"
    assets.mkdir(parents=True)
    (assets / "app.js").write_text("var isRooted = false;\n" * 5)
    has_binary_bundle, matches = _scan_binary_bundles([root])
    assert has_binary_bundle is False
    assert matches == []


def test_scan_binary_bundles_ignores_non_bundle_binaries(tmp_path):
    # A binary resource that is NOT a bundle candidate by suffix (e.g. a .png) is
    # never opened/scanned - the suffix gate keeps the wider walk cheap and avoids
    # treating arbitrary binaries as JS bundles.
    root = tmp_path / "apktool"
    res = root / "res" / "drawable"
    res.mkdir(parents=True)
    (res / "icon.png").write_bytes(b"\x89PNG\x00\x00isRooted\x00")
    has_binary_bundle, matches = _scan_binary_bundles([root])
    assert has_binary_bundle is False
    assert matches == []


def test_scan_binary_bundles_handles_missing_and_none_roots(tmp_path):
    # A None or non-existent root is skipped, not crashed on (defensive: cfr_output
    # is only appended when present, so the list can carry absent entries).
    has_binary_bundle, matches = _scan_binary_bundles([tmp_path / "nope", None])
    assert has_binary_bundle is False
    assert matches == []


def test_scan_binary_bundles_degrades_on_any_nonplain_kind(tmp_path, monkeypatch):
    # HERM2-GUARD1 (own-your-guard): has_binary_bundle must flip for ANY bundle
    # scan_bundle classifies as something other than plain-text, not only the
    # then-known kinds ("hermes","binary","opaque"). If scan_bundle later grows a
    # new binary kind (a new bytecode container, a new failure sentinel), a
    # hardcoded membership test would silently leave has_binary_bundle False -> js
    # reads fully_analyzed -> a confident negative over an unread bundle (ADR-0006).
    # The walk owns its own contract via `kind != "plain"`; proven here by stubbing
    # a kind that did not exist when the walk was written.
    import cli

    root = tmp_path / "apktool"
    assets = root / "assets"
    assets.mkdir(parents=True)
    # Real binary bundle so the suffix + NUL-probe gates pass and scan_bundle runs.
    (assets / "index.android.bundle").write_bytes(b"\x00payload\x00" + b"q" * 16)

    monkeypatch.setattr(cli, "scan_bundle", lambda p: {"kind": "wasm-future", "matches": []})
    has_binary_bundle, matches = _scan_binary_bundles([root])
    assert has_binary_bundle is True  # non-plain -> degrade, taxonomy-independent
    assert matches == []

    # "plain" is the ONE excluded kind (the text engine's job). It never flips the
    # flag - unreachable in practice past the is_binary_bundle gate, but pinned here
    # so a refactor cannot quietly widen the single exclusion into a silent hole.
    monkeypatch.setattr(cli, "scan_bundle", lambda p: {"kind": "plain", "matches": []})
    has_binary_bundle_plain, _ = _scan_binary_bundles([root])
    assert has_binary_bundle_plain is False

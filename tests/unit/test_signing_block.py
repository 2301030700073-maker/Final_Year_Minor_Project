"""ADR-0019: which signature schemes an APK carries, measured from the file.

Every fixture is laid out the way a real APK is - the signing block is inserted
immediately before the Central Directory and the EOCD's central-directory offset
is corrected to match - so the parser is exercised through the one anchor a real
APK actually provides. A hand-placed magic would test the parser against a file
no toolchain produces, and would not catch the failure that motivated the module:
a tail search for the magic reports "no signing block" on an APK whose Central
Directory is large enough to push it out of any fixed window.
"""

import io
import struct
import zipfile

from ingest.signing_block import SCHEME_BLOCK_IDS, read_signing_block

_MAGIC = b"APK Sig Block 42"
_EOCD = b"PK\x05\x06"
_V2 = 0x7109871A
_V3 = 0xF05368C0
_V31 = 0x1B93AD61
_VERITY_PADDING = 0x42726577
_SOURCE_STAMP = 0x6DFF800D
_UNKNOWN = 0x2146444E


def _zip_bytes(entries: int = 1) -> bytearray:
    buf = io.BytesIO()
    with zipfile.ZipFile(buf, "w") as archive:
        for i in range(entries):
            archive.writestr(f"res/raw/entry{i}.bin", b"x" * 16)
    return bytearray(buf.getvalue())


def _pair(pair_id: int, body: bytes = b"") -> bytes:
    payload = struct.pack("<I", pair_id) + body
    return struct.pack("<Q", len(payload)) + payload


def _insert_before_cd(data: bytearray, chunk: bytes) -> bytearray:
    """Splice `chunk` in immediately before the Central Directory, re-pointing the
    EOCD's central-directory offset at it. The CD's size is untouched, which is
    what makes the parser's EOCD anchor - rather than a tail search - the thing
    under test."""
    eocd = data.rfind(_EOCD)
    cd_offset = int.from_bytes(data[eocd + 16:eocd + 20], "little")
    out = data[:cd_offset] + chunk + data[cd_offset:]
    moved = eocd + len(chunk)
    out[moved + 16:moved + 20] = struct.pack("<I", cd_offset + len(chunk))
    return out


def _with_block(data: bytearray, pairs: bytes) -> bytearray:
    size = len(pairs) + 24
    block = struct.pack("<Q", size) + pairs + struct.pack("<Q", size) + _MAGIC
    return _insert_before_cd(data, block)


def _write(tmp_path, data: bytearray, name: str = "app.apk"):
    path = tmp_path / name
    path.write_bytes(bytes(data))
    return path


def test_a_v2_and_v3_block_is_enumerated(tmp_path):
    data = _with_block(_zip_bytes(), _pair(_V2) + _pair(_V3))
    block = read_signing_block(_write(tmp_path, data))
    assert block.found is True
    assert block.pair_ids == [_V2, _V3]
    assert block.schemes == ["v2", "v3"]


def test_v31_is_recognised_as_a_scheme(tmp_path):
    # v3.1 shipped with build-tools 33 - the scheme the installed 31.0.2 cannot
    # verify, and the reason the verdict needs a measured half at all.
    data = _with_block(_zip_bytes(), _pair(_V31) + _pair(_V2))
    block = read_signing_block(_write(tmp_path, data))
    assert block.schemes == ["v3.1", "v2"]


def test_the_block_is_located_from_the_eocd_not_a_tail_window(tmp_path):
    """The measured defect this module was written around: with a large Central
    Directory the magic sits hundreds of kilobytes from the end of the file, so a
    fixed tail window reports no block on an APK that plainly has one."""
    data = _with_block(_zip_bytes(entries=4000), _pair(_V2))
    path = _write(tmp_path, data)
    block = read_signing_block(path)
    assert block.found is True
    assert block.schemes == ["v2"]
    # State the distance a tail search would have had to cover, so the fixture
    # cannot silently shrink into a case the old approach would also have passed.
    magic_at = bytes(data).find(_MAGIC)
    assert len(data) - magic_at > 100_000


def test_an_unknown_pair_id_is_listed_but_is_not_a_scheme(tmp_path):
    # Real APKs carry non-scheme pairs: verity padding, a source stamp, and an
    # unattributed ID. They belong in the enumeration and never in `schemes`.
    data = _with_block(
        _zip_bytes(),
        _pair(_V2) + _pair(_VERITY_PADDING) + _pair(_SOURCE_STAMP) + _pair(_UNKNOWN),
    )
    block = read_signing_block(_write(tmp_path, data))
    assert block.pair_ids == [_V2, _VERITY_PADDING, _SOURCE_STAMP, _UNKNOWN]
    assert block.schemes == ["v2"]
    assert _VERITY_PADDING not in SCHEME_BLOCK_IDS
    assert _SOURCE_STAMP not in SCHEME_BLOCK_IDS


def test_a_zip_without_a_signing_block_reports_none(tmp_path):
    block = read_signing_block(_write(tmp_path, _zip_bytes()))
    assert block.found is False
    assert block.schemes == []
    assert "no 'APK Sig Block 42' magic" in block.detail


def test_a_block_whose_head_and_footer_disagree_is_rejected(tmp_path):
    # The footer is what locates the block; if the head contradicts it, the bytes
    # between them are not a block this module can read, and saying so beats
    # returning whatever happened to parse.
    pairs = _pair(_V2)
    size = len(pairs) + 24
    chunk = struct.pack("<Q", size) + pairs + struct.pack("<Q", size + 8) + _MAGIC
    block = read_signing_block(_write(tmp_path, _insert_before_cd(_zip_bytes(), chunk)))
    assert block.found is False
    assert "disagree on its size" in block.detail


def test_a_block_that_cannot_fit_before_the_directory_is_rejected(tmp_path):
    chunk = struct.pack("<Q", 10 ** 9) + _MAGIC
    block = read_signing_block(_write(tmp_path, _insert_before_cd(_zip_bytes(), chunk)))
    assert block.found is False
    assert "does not fit before the Central Directory" in block.detail


def test_a_pair_whose_length_overruns_the_block_stops_the_walk(tmp_path):
    # The scheme read before the bad pair is kept - it is a real reading of real
    # bytes - and the reason the rest is missing is stated rather than implied by
    # a short list.
    pairs = _pair(_V2) + struct.pack("<Q", 10 ** 6)
    block = read_signing_block(_write(tmp_path, _with_block(_zip_bytes(), pairs)))
    assert block.found is True
    assert block.schemes == ["v2"]
    assert "declares length 1000000" in block.detail


def test_a_file_that_is_not_a_zip_reports_no_block(tmp_path):
    path = tmp_path / "not_an_apk.apk"
    path.write_bytes(b"definitely not a zip file")
    block = read_signing_block(path)
    assert block.found is False
    assert "not a zip" in block.detail

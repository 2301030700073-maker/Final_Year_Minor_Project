"""ADR-0019: which signature schemes an APK carries, measured from the file.

Fixtures come from `_apk_fixtures` and are laid out the way a real APK is, so the
parser is exercised through the one anchor a real APK actually provides.
"""

import struct

from _apk_fixtures import (
    EOCD,
    MAGIC,
    SOURCE_STAMP,
    UNKNOWN_PAIR,
    V2,
    V3,
    V31,
    VERITY_PADDING,
    insert_before_cd,
    pair,
    with_block,
    write_apk,
    zip_bytes,
)
from ingest.signing_block import SCHEME_BLOCK_IDS, read_signing_block


def test_a_v2_and_v3_block_is_enumerated(tmp_path):
    data = with_block(zip_bytes(), pair(V2) + pair(V3))
    block = read_signing_block(write_apk(tmp_path, data))
    assert block.found is True
    assert block.pair_ids == [V2, V3]
    assert block.schemes == ["v2", "v3"]


def test_v31_is_recognised_as_a_scheme(tmp_path):
    # v3.1 shipped with build-tools 33 - the scheme the installed 31.0.2 cannot
    # verify, and the reason the verdict needs a measured half at all.
    data = with_block(zip_bytes(), pair(V31) + pair(V2))
    block = read_signing_block(write_apk(tmp_path, data))
    assert block.schemes == ["v3.1", "v2"]


def test_a_scheme_appearing_twice_is_named_once(tmp_path):
    # WhatsApp's real block carries v3.1 twice; the scheme list is a set of what
    # the file has, so a legitimate duplicate must not read as two schemes.
    data = with_block(zip_bytes(), pair(V31) + pair(V2) + pair(V31) + pair(V3))
    block = read_signing_block(write_apk(tmp_path, data))
    assert block.pair_ids == [V31, V2, V31, V3]
    assert block.schemes == ["v3.1", "v2", "v3"]


def test_the_block_is_located_from_the_eocd_not_a_tail_window(tmp_path):
    """The measured defect this module was written around: with a large Central
    Directory the magic sits hundreds of kilobytes from the end of the file, so a
    fixed tail window reports no block on an APK that plainly has one."""
    data = with_block(zip_bytes(entries=4000), pair(V2))
    block = read_signing_block(write_apk(tmp_path, data))
    assert block.found is True
    assert block.schemes == ["v2"]
    # State the distance a tail search would have had to cover, so the fixture
    # cannot silently shrink into a case the old approach would also have passed.
    magic_at = bytes(data).find(MAGIC)
    assert len(data) - magic_at > 100_000
    assert bytes(data).rfind(EOCD) > magic_at  # the EOCD is what anchors it


def test_an_unknown_pair_id_is_listed_but_is_not_a_scheme(tmp_path):
    # Real APKs carry non-scheme pairs: verity padding, a source stamp, and an
    # unattributed ID. They belong in the enumeration and never in `schemes`.
    data = with_block(
        zip_bytes(),
        pair(V2) + pair(VERITY_PADDING) + pair(SOURCE_STAMP) + pair(UNKNOWN_PAIR),
    )
    block = read_signing_block(write_apk(tmp_path, data))
    assert block.pair_ids == [V2, VERITY_PADDING, SOURCE_STAMP, UNKNOWN_PAIR]
    assert block.schemes == ["v2"]
    assert VERITY_PADDING not in SCHEME_BLOCK_IDS
    assert SOURCE_STAMP not in SCHEME_BLOCK_IDS


def test_a_zip_without_a_signing_block_reports_none(tmp_path):
    block = read_signing_block(write_apk(tmp_path, zip_bytes()))
    assert block.found is False
    assert block.schemes == []
    assert "no 'APK Sig Block 42' magic" in block.detail


def test_a_block_whose_head_and_footer_disagree_is_rejected(tmp_path):
    # The footer is what locates the block; if the head contradicts it, the bytes
    # between them are not a block this module can read, and saying so beats
    # returning whatever happened to parse.
    pairs = pair(V2)
    size = len(pairs) + 24
    chunk = struct.pack("<Q", size) + pairs + struct.pack("<Q", size + 8) + MAGIC
    block = read_signing_block(write_apk(tmp_path, insert_before_cd(zip_bytes(), chunk)))
    assert block.found is False
    assert "disagree on its size" in block.detail


def test_a_block_that_cannot_fit_before_the_directory_is_rejected(tmp_path):
    chunk = struct.pack("<Q", 10 ** 9) + MAGIC
    block = read_signing_block(write_apk(tmp_path, insert_before_cd(zip_bytes(), chunk)))
    assert block.found is False
    assert "does not fit before the Central Directory" in block.detail


def test_a_pair_whose_length_overruns_the_block_stops_the_walk(tmp_path):
    # The scheme read before the bad pair is kept - it is a real reading of real
    # bytes - and the reason the rest is missing is stated rather than implied by
    # a short list.
    pairs = pair(V2) + struct.pack("<Q", 10 ** 6)
    block = read_signing_block(write_apk(tmp_path, with_block(zip_bytes(), pairs)))
    assert block.found is True
    assert block.schemes == ["v2"]
    assert "declares length 1000000" in block.detail


def test_a_file_that_is_not_a_zip_reports_no_block(tmp_path):
    path = tmp_path / "not_an_apk.apk"
    path.write_bytes(b"definitely not a zip file")
    block = read_signing_block(path)
    assert block.found is False
    assert "not a zip" in block.detail

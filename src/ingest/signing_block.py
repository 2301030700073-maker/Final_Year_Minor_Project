"""Which signature schemes an APK actually carries (ADR-0019).

`apksigner verify` reports what it could *verify*; it never reports what the file
*contains*. On a toolchain older than the signing scheme inside the APK those two
diverge, and the tool's "the APK is not signed with this or a later signature
scheme" becomes a claim about its own reach rather than about the file. Measured
on two production APKs: `apksigner` 31.0.2 reports exactly that for Facebook and
Netflix, while the same v2 block verifies true when the same tool is asked at a
lower SDK level. This module answers the other half directly, so a caller can
distinguish "no scheme is present" from "no scheme could be read".

Layout (every integer little-endian), ending immediately before the ZIP Central
Directory::

    [size of block uint64][ID-value pairs][size of block uint64]["APK Sig Block 42"]

The block's position is derived from the Central Directory offset in the
End-Of-Central-Directory record, deliberately - not by searching a fixed window
at the end of the file for the magic. That search was the first thing tried here
and it reported "no signing block" for all three APKs it was pointed at: a large
APK's Central Directory pushes the magic far outside any fixed window (Facebook's
is ~1 MB across 14,636 entries), so the tail search never sees it. The EOCD is
the only sound anchor, because the ZIP format guarantees the CD begins where the
EOCD says it does.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path

_SIG_BLOCK_MAGIC = b"APK Sig Block 42"
_EOCD_MAGIC = b"PK\x05\x06"
_EOCD_RECORD_SIZE = 22
# Offset of the "start of Central Directory" field within the EOCD record.
_EOCD_CD_OFFSET_AT = 16
# The EOCD is followed by a ZIP comment of at most 0xFFFF bytes, so the record
# itself begins no further than that plus its own size from the end of the file.
_EOCD_SEARCH = 0xFFFF + _EOCD_RECORD_SIZE
_FOOTER_SIZE = 24  # [uint64 block size][16-byte magic], mirrored at the head
_PAIR_HEADER_SIZE = 8  # [uint64 ID-value pair length]
_PAIR_ID_SIZE = 4  # the pair ID itself, the first 4 bytes of the pair body

# Signature scheme -> the ID-value pair ID carrying it, per the APK Signature
# Scheme v2/v3/v3.1 specifications. Only these three are signature schemes; the
# other IDs a real APK carries (verity padding 0x42726577, source stamp
# 0x6dff800d, and the unattributed 0x2146444e) are enumerated in `pair_ids` but
# are not schemes, so they never appear in `schemes`.
SCHEME_BLOCK_IDS: dict[int, str] = {
    0x7109871A: "v2",
    0xF05368C0: "v3",
    0x1B93AD61: "v3.1",
}


@dataclass
class SigningBlock:
    """What one APK's signing block holds - measured, never inferred from tool output.

    `found` False means no block is present, and `detail` says which structural
    fact established that. `detail` is populated on the found path too, so a
    caller can render *why* a block yielded no scheme without re-parsing.
    """

    found: bool
    pair_ids: list[int] = field(default_factory=list)
    schemes: list[str] = field(default_factory=list)
    detail: str = ""


def _schemes_for(pair_ids: list[int]) -> list[str]:
    """The signature schemes among `pair_ids`, in file order, deduplicated (a
    key-rotation or v3.1 block can legitimately appear more than once)."""
    schemes: list[str] = []
    for pair_id in pair_ids:
        name = SCHEME_BLOCK_IDS.get(pair_id)
        if name is not None and name not in schemes:
            schemes.append(name)
    return schemes


def _central_directory_offset(handle) -> int | None:
    """The Central Directory's file offset, from the EOCD record, or None.

    The record is located from the tail - that is where the format puts it - but
    the offset is then taken from the record's own field rather than assumed, so
    the caller never has to know how far the directory or the signing block
    extends.
    """
    handle.seek(0, 2)
    size = handle.tell()
    window = min(size, _EOCD_SEARCH)
    handle.seek(size - window)
    tail = handle.read(window)
    at = tail.rfind(_EOCD_MAGIC)
    if at < 0:
        return None
    offset = int.from_bytes(
        tail[at + _EOCD_CD_OFFSET_AT:at + _EOCD_CD_OFFSET_AT + 4], "little"
    )
    # A zero or out-of-file offset is not usable as an anchor; treat it as absent
    # rather than seeking somewhere arbitrary.
    return offset if 0 < offset <= size else None


def _parse_pairs(block: bytes) -> SigningBlock:
    """Walk the ID-value pairs of a block already known to start with its size."""
    end = len(block) - _FOOTER_SIZE  # the pair region ends at the footer's uint64
    pair_ids: list[int] = []
    pos = _PAIR_HEADER_SIZE
    while pos + _PAIR_HEADER_SIZE <= end:
        pair_len = int.from_bytes(block[pos:pos + _PAIR_HEADER_SIZE], "little")
        if pair_len < _PAIR_ID_SIZE or pos + _PAIR_HEADER_SIZE + pair_len > end:
            # A declared length that cannot be honoured means the rest of the
            # region is unreadable; keep what was read and say what stopped it,
            # rather than reporting a scheme count that the bytes do not support.
            return SigningBlock(
                found=True,
                pair_ids=pair_ids,
                schemes=_schemes_for(pair_ids),
                detail=(
                    f"pair at offset {pos} declares length {pair_len}, past the "
                    f"{end}-byte pair region; {len(pair_ids)} pair(s) read before it"
                ),
            )
        pair_ids.append(int.from_bytes(block[pos + 8:pos + 12], "little"))
        pos += _PAIR_HEADER_SIZE + pair_len
    return SigningBlock(
        found=True,
        pair_ids=pair_ids,
        schemes=_schemes_for(pair_ids),
        detail=f"{len(pair_ids)} ID-value pair(s)",
    )


def read_signing_block(apk_path: Path) -> SigningBlock:
    """The signing block of `apk_path`, or a stated reason there is none.

    Reads only the bytes it needs - the tail for the EOCD, the 16 before the
    Central Directory for the magic, then the block itself - so it stays cheap on
    a large APK. Structural failure is reported in the return value, not raised:
    this is a measurement that informs a verdict, and "there is no block here" is
    one of its answers.
    """
    with open(apk_path, "rb") as handle:
        handle.seek(0, 2)
        size = handle.tell()
        cd_offset = _central_directory_offset(handle)
        if cd_offset is None:
            return SigningBlock(
                found=False,
                detail=f"no End-Of-Central-Directory record in {size} bytes - not a zip",
            )
        if cd_offset < _FOOTER_SIZE:
            return SigningBlock(
                found=False,
                detail=(
                    f"Central Directory at offset {cd_offset} leaves no room for "
                    f"the {_FOOTER_SIZE}-byte signing-block footer"
                ),
            )
        handle.seek(cd_offset - 16)
        if handle.read(16) != _SIG_BLOCK_MAGIC:
            return SigningBlock(
                found=False,
                detail=(
                    f"no '{_SIG_BLOCK_MAGIC.decode()}' magic immediately before the "
                    f"Central Directory at offset {cd_offset}"
                ),
            )
        handle.seek(cd_offset - _FOOTER_SIZE)
        footer = handle.read(_FOOTER_SIZE)
        block_size = int.from_bytes(footer[:_PAIR_HEADER_SIZE], "little")
        # The size field counts the block excluding itself, and the block ends at
        # the Central Directory - so the head sits 8 + block_size before it.
        block_start = cd_offset - _PAIR_HEADER_SIZE - block_size
        if block_size < _FOOTER_SIZE or block_start < 0:
            return SigningBlock(
                found=False,
                detail=(
                    f"signing block declares {block_size} bytes, which does not fit "
                    f"before the Central Directory at offset {cd_offset}"
                ),
            )
        handle.seek(block_start)
        block = handle.read(block_size + _PAIR_HEADER_SIZE)
    if len(block) != block_size + _PAIR_HEADER_SIZE:
        return SigningBlock(
            found=False,
            detail=(
                f"signing block claims {block_size} bytes but only "
                f"{len(block) - _PAIR_HEADER_SIZE} could be read"
            ),
        )
    head_size = int.from_bytes(block[:_PAIR_HEADER_SIZE], "little")
    if head_size != block_size:
        return SigningBlock(
            found=False,
            detail=(
                f"signing block head and footer disagree on its size "
                f"({head_size} vs {block_size}) - the block is malformed"
            ),
        )
    return _parse_pairs(block)

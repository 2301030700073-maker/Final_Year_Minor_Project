"""APK fixtures laid out the way a real APK is (ADR-0019).

Shared by the signing-block parser tests and the signer-verdict tests. The block
is spliced in immediately before the Central Directory and the EOCD's
central-directory offset is corrected to point at it, because that is the anchor
a real APK provides - a hand-placed magic would test the parser against a file no
toolchain produces, and would not catch the failure that motivated the module: a
fixed tail search for the magic reports "no signing block" on an APK whose
Central Directory is large enough to push the magic out of the window.
"""

import io
import struct
import zipfile
from pathlib import Path

MAGIC = b"APK Sig Block 42"
EOCD = b"PK\x05\x06"

V2 = 0x7109871A
V3 = 0xF05368C0
V31 = 0x1B93AD61
VERITY_PADDING = 0x42726577
SOURCE_STAMP = 0x6DFF800D
UNKNOWN_PAIR = 0x2146444E


def zip_bytes(entries: int = 1) -> bytearray:
    """A minimal but structurally real zip, optionally with many entries so its
    Central Directory is large."""
    buf = io.BytesIO()
    with zipfile.ZipFile(buf, "w") as archive:
        for i in range(entries):
            archive.writestr(f"res/raw/entry{i}.bin", b"x" * 16)
    return bytearray(buf.getvalue())


def pair(pair_id: int, body: bytes = b"") -> bytes:
    payload = struct.pack("<I", pair_id) + body
    return struct.pack("<Q", len(payload)) + payload


def insert_before_cd(data: bytearray, chunk: bytes) -> bytearray:
    """Splice `chunk` in immediately before the Central Directory, re-pointing the
    EOCD's central-directory offset at it. The CD's size is untouched, which is
    what makes the parser's EOCD anchor - rather than a tail search - the thing
    under test."""
    eocd = data.rfind(EOCD)
    cd_offset = int.from_bytes(data[eocd + 16:eocd + 20], "little")
    out = data[:cd_offset] + chunk + data[cd_offset:]
    moved = eocd + len(chunk)
    out[moved + 16:moved + 20] = struct.pack("<I", cd_offset + len(chunk))
    return out


def with_block(data: bytearray, pairs: bytes) -> bytearray:
    size = len(pairs) + 24
    block = struct.pack("<Q", size) + pairs + struct.pack("<Q", size) + MAGIC
    return insert_before_cd(data, block)


def write_apk(tmp_path, data: bytearray, name: str = "app.apk") -> Path:
    path = tmp_path / name
    path.write_bytes(bytes(data))
    return path

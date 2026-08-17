"""Gap-4: UPX / native packing of `.so` files.

Some native libraries are executable-packed with UPX (or a compatible packer).
UPX compresses the code/data into a stub and writes a decompressor in its
place, so `readelf`/`nm`/`strings` on the raw `.so` see the compressed payload,
not the real code - symbols, strings, and disassembly all come back empty or
garbage. A detection engine that did not account for this would read a packed
lib's empty symbols as a clean lib and certify a confident negative over code
it never actually read (ADR-0006). This is the native-side analogue of Gap-2's
DEX packers: the code is hidden, so the surface must read `partial`, never a
silent `fully_analyzed`.

This module makes native analysis UPX-aware:

* `is_upx_packed` - deterministic detection from the ELF's OWN markers: the
  `.UPX0`/`.UPX1`/`.UPX2` section names UPX writes, and/or the `UPX!`
  compressed-stub magic. A packed lib is never read as a clean lib.
* `unpack_upx` - run `upx -d` (when present) to recover the real uncompressed
  `.so`, so the existing symbol/string/Ghidra path then analyses the ACTUAL
  code instead of the stub. `upx` is an OPTIONAL toolchain dependency (like
  Ghidra): when absent, a packed lib degrades to `partial` with a loud note -
  it is never falsely certified scanned (ADR-0006, principle 3).

The detection core is pure (takes raw bytes / section names) and fixture-
testable anywhere with synthetic data; the unpack shell-out is toolchain-gated
and only exercised for real on the reference environment (NFR). A packed lib
that cannot be unpacked is surfaced as `packed=True` so coverage reads it as
`partial`, matching Gap-2's `packed -> java=partial` semantics for consistency.
"""

from __future__ import annotations

import shutil
import subprocess
from pathlib import Path

try:
    from elftools.elf.elffile import ELFFile  # type: ignore
except Exception:  # pragma: no cover - optional dependency, degrades like Ghidra
    ELFFile = None

# Section names UPX writes into a packed ELF's section header table.
_UPX_SECTIONS = {".UPX0", ".UPX1", ".UPX2"}
# The compressed-stub magic UPX stamps into every packed file.
_UPX_MAGIC = b"UPX!"

_UPX_TIMEOUT = 120.0


def is_upx_packed_bytes(section_names: set[str], data: bytes) -> bool:
    """Pure: is this ELF data UPX-packed? True when the section header table
    carries a `.UPX*` name (strong, structural) OR the raw bytes carry the
    `UPX!` compressed-stub magic. OR - not AND - so a packed lib whose section
    headers were further mangled is still caught by the magic; and a false
    `UPX!` coincidence is self-correcting (the unpack attempt below simply
    fails cleanly and degrades to partial), never a semantic clean label."""
    return bool(_UPX_SECTIONS & section_names) or _UPX_MAGIC in data


def _elf_section_names(data: bytes) -> set[str]:
    """Read the section header names from raw ELF bytes, arch-agnostically via
    pyelftools. Returns an empty set on any parse failure (e.g. a mangled
    packed header) so the caller still falls back to the `UPX!` magic check."""
    if ELFFile is None:
        return set()
    try:
        import io

        with ELFFile(io.BytesIO(data)) as elf:
            return {s.name for s in elf.iter_sections()}
    except Exception:
        return set()


def is_upx_packed(so_path: Path) -> bool:
    """Detect UPX packing on a real `.so` file. Reads the raw bytes, pulls the
    section names via pyelftools (empty set on parse failure), and runs the pure
    detector. Never raises for an unreadable file - returns False so the caller's
    own fail-loud symbol read still governs a genuinely corrupt lib."""
    try:
        data = so_path.read_bytes()
    except OSError:
        return False
    return is_upx_packed_bytes(_elf_section_names(data), data)


def find_upx() -> str | None:
    """Locate the optional `upx` unpacker. Returns its path or None when absent."""
    return shutil.which("upx")


def unpack_upx(
    so_path: Path, out_path: Path, upx_bin: str | None = None
) -> tuple[bool, str | None]:
    """Run `upx -d -o <out> <so>` to recover the real uncompressed library.

    Returns (True, None) on success; (False, err) on any failure - upx missing,
    non-zero exit, or timeout. Never raises: the caller treats a False as a
    packed lib it cannot unpack and degrades it to `partial` (the honest
    ADR-0006 state), not as a crash."""
    upx = upx_bin or find_upx()
    if not upx:
        return False, "upx not found on PATH - packed .so cannot be unpacked"
    try:
        out_path.parent.mkdir(parents=True, exist_ok=True)
        # UPX refuses to overwrite an existing `-o` target
        # (FileAlreadyExistsException). The caller derives `out_path`
        # deterministically from the packed lib, so a prior run leaves a stale
        # `.unpacked.so` behind and the NEXT unpack would fail - degrading a
        # perfectly unpackable lib to `partial` (0 symbols) for no reason. Drop
        # the stale file first so re-runs are idempotent; it is regenerated
        # here from `so_path` anyway. Only reach this after confirming `upx`
        # exists, so we never delete a recovered unpack we cannot replace.
        if out_path.exists():
            out_path.unlink()
        proc = subprocess.run(
            [upx, "-d", "-o", str(out_path), str(so_path)],
            capture_output=True,
            text=True,
            timeout=_UPX_TIMEOUT,
        )
    except subprocess.TimeoutExpired:
        return False, f"upx -d timed out after {_UPX_TIMEOUT:.0f}s"
    except OSError as exc:
        return False, f"upx -d could not run: {exc}"
    if proc.returncode != 0 or not out_path.is_file():
        return False, (proc.stderr or proc.stdout or "").strip() or "upx -d failed"
    return True, None

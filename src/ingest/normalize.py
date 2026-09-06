"""Normalize arbitrary input into a single root-level APK before the pipeline.

The pipeline (ingest, decompile, manifest, native, dex-scan) assumes a single
self-contained APK with `AndroidManifest.xml`, `classes*.dex`, and
`lib/<abi>/*.so` at the zip root. Real-world deliveries diverge (research,
real-world-static-analysis-limitations.md, Axis 4):

- **Android App Bundle (.aab)** - a zip whose content lives under `base/`: the
  manifest at `base/manifest/AndroidManifest.xml`, dex under `base/dex/` and
  `base/root/`, libs under `base/lib/<abi>/`, resources under `base/res/`, assets
  under `base/assets/`. Every root-level reader would miss all of these.
- **Split-APK set** (Play delivery from an AAB) - `base.apk` + `config.*.apk`
  splits, each a zip carrying extra dex/libs/resources across several files.

We do **static** analysis (no runtime needed), so the clean, honest treatment is
to synthesize a single merged APK carrying every analyzable entry at the root,
then run the unchanged single-APK pipeline against it. The synthesized APK is
keyed by its own SHA-256, so the output dir names the content actually analyzed.

Pure `zipfile` - no bundletool, no new dependency. Fails loudly on unparseable
input (principle 3: never a silent no-op). The `.aab`/split paths are unit-
testable anywhere with fixture zips; only real large bundles need the reference
environment.
"""

from __future__ import annotations

import hashlib
import zipfile
from pathlib import Path

from common import sha256_bytes, sha256_file

# AAB dex can sit under base/dex/ (split dex) or base/root/; both are base/
# prefixed. AAB native libs live at base/lib/<abi>/*.so.
_AAB_MANIFEST = "base/manifest/AndroidManifest.xml"



def _sha256_split_dir(directory: Path) -> str:
    """Deterministic identity for a split-APK directory: combine the sorted
    per-file hashes so re-running on the same set yields the same output name."""
    h = hashlib.sha256()
    for p in sorted(directory.iterdir()):
        if p.suffix.lower() == ".apk":
            h.update(p.name.encode("utf-8"))
            h.update(sha256_file(p).encode("utf-8"))
    return h.hexdigest()


def _read_zip_entries(path: Path) -> dict[str, bytes]:
    with zipfile.ZipFile(path) as z:
        return {n: z.read(n) for n in z.namelist() if not n.endswith("/")}


def _is_aab(path: Path) -> bool:
    if path.suffix.lower() == ".aab":
        return True
    try:
        with zipfile.ZipFile(path) as z:
            return _AAB_MANIFEST in z.namelist()
    except (zipfile.BadZipFile, OSError):
        return False


def _is_apk_zip(path: Path) -> bool:
    try:
        with zipfile.ZipFile(path) as z:
            return "AndroidManifest.xml" in z.namelist()
    except (zipfile.BadZipFile, OSError):
        return False


def _sorted_dex_entries(zin: zipfile.ZipFile) -> list[str]:
    return sorted(
        n for n in zin.namelist()
        if n.startswith("base/")
        and Path(n).name.startswith("classes")
        and Path(n).name.endswith(".dex")
    )


def normalize_input(path: Path, out_dir: Path) -> Path:
    """Return a single root-level APK path for the pipeline.

    - single APK (zip with root AndroidManifest.xml) -> passthrough (unchanged).
    - .aab (or zip with base/manifest/AndroidManifest.xml) -> normalize_aab().
    - directory -> normalize_split_set().
    - any other zip -> loud error (not a silent no-op).
    """
    if path.is_dir():
        return normalize_split_set(path, out_dir)
    if _is_aab(path):
        return normalize_aab(path, out_dir)
    if zipfile.is_zipfile(path) and not _is_apk_zip(path):
        raise ValueError(
            f"{path} is a zip but neither an APK (no root AndroidManifest.xml) "
            "nor an AAB (no base/manifest/). Pass a single APK, an .aab, or a "
            "directory of split APKs."
        )
    return path


def normalize_aab(aab: Path, out_dir: Path) -> Path:
    """Synthesize a root-level APK from an Android App Bundle's base/ entries."""
    out_dir.mkdir(parents=True, exist_ok=True)
    out_apk = out_dir / f"{sha256_file(aab)}-aab.apk"
    with zipfile.ZipFile(aab) as zin, zipfile.ZipFile(out_apk, "w", zipfile.ZIP_DEFLATED) as zout:
        if _AAB_MANIFEST not in zin.namelist():
            raise ValueError(f"{aab} has no {_AAB_MANIFEST} - not a valid AAB")
        zout.writestr("AndroidManifest.xml", zin.read(_AAB_MANIFEST))
        # dex: base/dex/*.dex + base/root/*.dex -> classes.dex, classes2.dex, ...
        written: set[str] = {"AndroidManifest.xml"}
        for i, entry in enumerate(_sorted_dex_entries(zin), 1):
            name = "classes.dex" if i == 1 else f"classes{i}.dex"
            zout.writestr(name, zin.read(entry))
            written.add(name)
        for n in sorted(zin.namelist(), key=lambda e: (e.startswith("base/root/"), e)):
            # Map a base/ entry to the APK-root path the single-APK pipeline
            # reads. Two prefixes both land content at the APK root:
            #   base/<x>       -> <x>            (base/lib/…, base/res/…, base/assets/…)
            #   base/root/<x>  -> <x>            (bundletool's "root" module: files
            #                                     destined for the APK root, incl.
            #                                     native libs under base/root/lib/<abi>/)
            # base/root/lib/<abi>/*.so was previously DROPPED entirely: the merge
            # rescued only base/lib/*.so, so a native library shipped under
            # base/root/ vanished from the synthesized APK and the native stage
            # never saw it - a silent coverage loss that could read a real native
            # root/SSL detection as a confident negative (ADR-0006 forbids exactly
            # this). Rescue both prefixes; on a genuine path collision (the same
            # arc under both base/ and base/root/) base/ must win - it is the
            # module bundletool actually installs at that path, so analyzing the
            # base .so is analyzing what the device would load. The written-set
            # guard only makes base/ win if base/ is CONSIDERED FIRST, which raw
            # zip order does not guarantee: an AAB that happened to list
            # base/root/lib/x.so before base/lib/x.so let the root module win (the
            # wrong .so - back toward the very confident-negative this rescue
            # exists to prevent). Sorting non-root base/ (key 0) ahead of
            # base/root/ (key 1) makes base-wins deterministic and independent of
            # zip order, mirroring split-set's "base merged first" (setdefault).
            if n.startswith("base/root/"):
                arc = n[len("base/root/"):]
            elif n.startswith("base/"):
                arc = n[len("base/"):]
            else:
                continue
            # base/root/*.dex is already emitted (renumbered) by the dex loop
            # above; don't also copy it verbatim under its original name.
            if Path(arc).name.startswith("classes") and Path(arc).name.endswith(".dex"):
                continue
            keep = (
                (arc.startswith("lib/") and arc.endswith(".so"))
                or arc.startswith("res/")       # NSC @xml/ resolution
                or arc.startswith("assets/")     # asset-packed .so / configs
            )
            if not keep or arc in written:
                continue
            zout.writestr(arc, zin.read(n))
            written.add(arc)
    return out_apk


def normalize_split_set(directory: Path, out_dir: Path) -> Path:
    """Merge a directory of split APKs into one root-level APK.

    base.apk seeds the manifest; every split's classes*.dex is kept (renumbered
    to classes.dex..N) and lib/res/assets union-merge, base winning on non-dex
    name collisions.
    """
    apks = sorted(p for p in directory.iterdir() if p.suffix.lower() == ".apk")
    if not apks:
        raise ValueError(f"no .apk files found in {directory} - cannot build a split set")
    base = next((p for p in apks if _is_apk_zip(p)), None)
    if base is None:
        raise ValueError(
            f"no split APK in {directory} has a root AndroidManifest.xml (expected base.apk)"
        )

    dex_blobs: list[bytes] = []
    non_dex: dict[str, bytes] = {}
    # Merge the identified base APK FIRST so its non-dex entries win collisions by
    # construction. setdefault keeps the first writer, so the previous `for p in
    # apks` (a sorted list) only made base win when "base.apk" happened to sort
    # ahead of every split - a split named e.g. "aaa.apk" would otherwise shadow
    # the base's manifest-side resources/libs. Ordering base first makes the
    # documented "base wins" precedence real instead of incidental to filename sort.
    ordered = [base] + [p for p in apks if p != base]
    for p in ordered:
        for name, data in _read_zip_entries(p).items():
            if Path(name).name.startswith("classes") and Path(name).name.endswith(".dex"):
                # each split ships its own dex - keep them all
                dex_blobs.append(data)
            else:
                non_dex.setdefault(name, data)  # base wins: it is merged first

    if not dex_blobs:
        raise ValueError(f"no classes*.dex found across {directory}")

    out_dir.mkdir(parents=True, exist_ok=True)
    out_apk = out_dir / f"{_sha256_split_dir(directory)}-splits.apk"
    # deterministic renumber: order identical dex by content hash
    dex_blobs.sort(key=sha256_bytes)
    with zipfile.ZipFile(out_apk, "w", zipfile.ZIP_DEFLATED) as zout:
        for i, blob in enumerate(dex_blobs, 1):
            zout.writestr("classes.dex" if i == 1 else f"classes{i}.dex", blob)
        for name, data in non_dex.items():
            zout.writestr(name, data)
    return out_apk

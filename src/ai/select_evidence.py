"""Evidence selection for AI-augmented per-target bypass generation.

The whole point of this module: a 152 MB APK decompiles to tens of thousands of
files. Feeding that to a model is impossible (context) and wasteful (most of it
is library code). So instead of "give the model the app", we *select* the parts
most likely to contain the app's own root/SSL-pinning logic and hand the model a
small, capped bundle.

The vocabulary below is intentionally aligned with the project's static layer
(``src/static/indicators.py`` / ``signatures.py`` detect the same primitives:
``X509TrustManager``, ``checkServerTrusted``, ``CertificatePinner``, ``RootBeer``,
``isDeviceRooted``, ``/system/bin/su`` ...). We reuse the *concepts*, not the
code, so this stays a lightweight, testable sweeper. The output is capped so a
generated prompt can never blow the model's context.
"""

from __future__ import annotations

import os
from dataclasses import dataclass, field
from pathlib import Path
from typing import TypedDict


# Root-detection vocabulary.
ROOT_KEYWORDS = (
    "isDeviceRooted", "isRooted", "RootBeer", "checkForRoot", "checkSuExists",
    "checkRoot", "detectRoot", "rootManagementApps", "su binary", "/system/bin/su",
    "/system/xbin/su", "Magisk", "SuperSU", "BusyBox", "isEmulator", "checkEmulator",
    "Runtime.exec", "ProcessBuilder", "File.exists", "nativeIsRooted",
)

# SSL-pinning / certificate-trust vocabulary.
SSL_KEYWORDS = (
    "X509TrustManager", "checkServerTrusted", "CertificatePinner", "OkHttpClient",
    "setCertificatePinner", "TrustManagerImpl", "checkClientTrusted",
    "HostnameVerifier", "verify(", "getAcceptedIssuers", "SSLContext", "TrustManager",
    "certificatePinner", "pin", "publicKeyPin", "BoringSSL", "consCrypt",
    "checkValidity", "setSSLSocketFactory", "NetworkSecurityConfig",
)


class SelectedRegion(TypedDict):
    path: str
    line: int
    snippet: str
    keyword: str


@dataclass
class EvidenceBundle:
    target: str
    root_regions: list[SelectedRegion] = field(default_factory=list)
    ssl_regions: list[SelectedRegion] = field(default_factory=list)
    keywords_hit: dict[str, int] = field(default_factory=dict)
    total_chars: int = 0
    files_scanned: int = 0
    files_text: int = 0

    def is_empty(self) -> bool:
        return not self.root_regions and not self.ssl_regions

    def to_prompt_text(self, max_chars: int = 12000) -> str:
        """Render the bundle as compact text for the model.

        Truncates gracefully if the selected regions exceed ``max_chars`` so the
        prompt is always bounded.
        """
        lines: list[str] = []
        lines.append(f"# Evidence bundle for target: {self.target}")
        lines.append(f"# files scanned={self.files_scanned} text_files={self.files_text}")
        lines.append(f"# keywords hit: {self.keywords_hit}")
        lines.append("")

        def _dump(label: str, regions: list[SelectedRegion]) -> None:
            lines.append(f"## {label} logic ({len(regions)} regions)")
            for r in regions:
                rel = os.path.relpath(r["path"], start=_BUNDLE_ROOT)
                lines.append(f"[{label}] {rel}:{r['line']}  ({r['keyword']})")
                lines.append("    " + r["snippet"].replace("\n", " "))
            lines.append("")

        _dump("ROOT", self.root_regions)
        _dump("SSL", self.ssl_regions)

        text = "\n".join(lines)
        if len(text) > max_chars:
            text = text[:max_chars] + "\n... [bundle truncated to fit context window]"
        self.total_chars = len(text)
        return text


_BUNDLE_ROOT = "."  # replaced per-call so paths are relative to the scanned tree


# Text-like extensions we are willing to grep. Skips binaries, images, archives.
_TEXT_EXTS = (".java", ".smali", ".kt", ".json", ".js", ".xml", ".txt", ".gradle")


def _looks_textual(path: Path) -> bool:
    if path.suffix.lower() not in _TEXT_EXTS:
        return False
    # Quick heuristic: skip files that are almost certainly not source of interest
    # (e.g. vendored resource blobs). Keep it permissive; the keyword filter does
    # the real work.
    return True


def build_evidence_bundle(
    decompile_root: str | os.PathLike,
    target: str,
    *,
    max_regions_per_kind: int = 60,
    max_file_bytes: int = 400_000,
) -> EvidenceBundle:
    """Sweep a decompiled tree and return a capped bundle of root/SSL regions.

    ``decompile_root`` is the directory containing jadx/cfr output (sources,
    smali, resources). The sweep is bounded: per-file size cap, per-kind region
    cap, and the rendered prompt text is capped separately in ``to_prompt_text``.
    """
    root = Path(decompile_root)
    global _BUNDLE_ROOT
    _BUNDLE_ROOT = str(root)

    bundle = EvidenceBundle(target=target)
    root_hits: dict[str, int] = {}
    ssl_hits: dict[str, int] = {}

    files_scanned = 0
    files_text = 0
    for path in root.rglob("*"):
        if not path.is_file():
            continue
        files_scanned += 1
        if not _looks_textual(path):
            continue
        try:
            size = path.stat().st_size
        except OSError:
            continue
        if size > max_file_bytes or size == 0:
            continue
        try:
            text = path.read_text(errors="ignore")
        except (OSError, UnicodeError):
            continue
        files_text += 1

        for lineno, line in enumerate(text.splitlines(), start=1):
            low = line.lower()
            # Root
            for kw in ROOT_KEYWORDS:
                if kw.lower() in low and len(bundle.root_regions) < max_regions_per_kind:
                    bundle.root_regions.append(
                        SelectedRegion(
                            path=str(path), line=lineno, snippet=line.strip()[:300], keyword=kw
                        )
                    )
                    root_hits[kw] = root_hits.get(kw, 0) + 1
                    break
            for kw in SSL_KEYWORDS:
                if kw.lower() in low and len(bundle.ssl_regions) < max_regions_per_kind:
                    bundle.ssl_regions.append(
                        SelectedRegion(
                            path=str(path), line=lineno, snippet=line.strip()[:300], keyword=kw
                        )
                    )
                    ssl_hits[kw] = ssl_hits.get(kw, 0) + 1
                    break

        # Stop early only if both kinds are saturated (keeps it fast on huge trees).
        if len(bundle.root_regions) >= max_regions_per_kind and \
           len(bundle.ssl_regions) >= max_regions_per_kind:
            break

    bundle.keywords_hit = {**root_hits, **ssl_hits}
    bundle.files_scanned = files_scanned
    bundle.files_text = files_text
    return bundle

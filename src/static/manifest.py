"""AndroidManifest.xml parsing - the fields aapt2's badging dump doesn't surface (FR-2 manifest indicators)."""

from __future__ import annotations

import xml.etree.ElementTree as ET
from dataclasses import dataclass
from pathlib import Path

ANDROID_NS = "{http://schemas.android.com/apk/res/android}"


@dataclass
class ManifestInfo:
    debuggable: bool
    network_security_config: str | None
    # True when a real <application> element was read; False when the manifest
    # has none and the two fields above are defaults, not reads (5-2).
    application_present: bool = True
    # RESID-5C: whether the referenced NSC file (@xml/<name>) actually exists in
    # the decoded resources (resource_root/res/xml/<name>.xml). None when no NSC
    # is declared or no resource_root was provided to resolve against.
    nsc_file_present: bool | None = None


def _resolve_nsc_file(network_security_config: str | None, resource_root: Path | None) -> bool | None:
    """RESID-5C: resolve @xml/<name> against res/xml/<name>.xml in the decoded
    resources, so the report can say whether the referenced file exists instead
    of surfacing an opaque attribute reference a reader can't check. Returns
    None when there is nothing to resolve (no NSC, or no resource root given)."""
    if network_security_config is None or resource_root is None:
        return None
    if not network_security_config.startswith("@xml/"):
        return None
    name = network_security_config[len("@xml/"):]
    return (resource_root / "res" / "xml" / f"{name}.xml").exists()


def parse_manifest(manifest_path: Path, resource_root: Path | None = None) -> ManifestInfo:
    tree = ET.parse(manifest_path)
    root = tree.getroot()
    # 5-4: validate the root tag - a non-manifest XML (wrong file, truncation)
    # used to silently yield defaults, indistinguishable from a real read.
    if root.tag != "manifest":
        raise ValueError(f"expected <manifest> root tag, got <{root.tag}>")

    application = root.find("application")
    if application is None:
        # 5-2: explicit flag so the consumer knows debuggable/NSC are defaults,
        # not reads, when there is no <application> element.
        return ManifestInfo(debuggable=False, network_security_config=None, application_present=False)

    debuggable_attr = application.get(f"{ANDROID_NS}debuggable")
    # RESID-5B: True/TRUE and "1" are legal non-canonical boolean encodings in
    # Android XML but were silently read as False by strict == "true". Normalize
    # before comparing.
    debuggable = debuggable_attr is not None and debuggable_attr.strip().lower() in ("true", "1")
    network_security_config = application.get(f"{ANDROID_NS}networkSecurityConfig")

    return ManifestInfo(
        debuggable=debuggable,
        network_security_config=network_security_config,
        nsc_file_present=_resolve_nsc_file(network_security_config, resource_root),
    )

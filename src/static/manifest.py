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


def parse_manifest(manifest_path: Path) -> ManifestInfo:
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
    debuggable = debuggable_attr == "true"
    network_security_config = application.get(f"{ANDROID_NS}networkSecurityConfig")

    return ManifestInfo(debuggable=debuggable, network_security_config=network_security_config)

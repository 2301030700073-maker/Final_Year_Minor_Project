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


def parse_manifest(manifest_path: Path) -> ManifestInfo:
    tree = ET.parse(manifest_path)
    application = tree.getroot().find("application")

    debuggable = False
    network_security_config = None
    if application is not None:
        debuggable_attr = application.get(f"{ANDROID_NS}debuggable")
        debuggable = debuggable_attr == "true"
        network_security_config = application.get(f"{ANDROID_NS}networkSecurityConfig")

    return ManifestInfo(debuggable=debuggable, network_security_config=network_security_config)

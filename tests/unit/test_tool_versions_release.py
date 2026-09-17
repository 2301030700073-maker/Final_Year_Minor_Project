"""The Toolchain line names a release, or says it cannot.

`apksigner --version` prints `0.9` on every build-tools release ever shipped -
it is the apksigner library version, not the toolchain's. The report rendered it
verbatim as `apksigner=0.9`, which is exactly the field ADR-0019 leans on to make
a v3.1 bound legible: a reader checking whether the installed release could have
certified the scheme got a number that identifies no release at all. The tests
below pin the two layouts an install can name its release in, and pin that an
install naming none is recorded as naming none rather than silently passing the
self-reported line off as one.
"""

import subprocess

from ingest import metadata
from ingest.metadata import build_tools_revision, tool_versions


def _fake_tool(directory, name="apksigner"):
    directory.mkdir(parents=True, exist_ok=True)
    tool = directory / name
    tool.write_text("#!/bin/sh\n")
    return tool


def test_an_sdk_build_tools_directory_reports_its_pkg_revision(tmp_path):
    directory = tmp_path / "build-tools" / "34.0.0"
    tool = _fake_tool(directory)
    (directory / "source.properties").write_text(
        "Pkg.UserSrc=false\nPkg.Revision=34.0.0\n", encoding="utf-8"
    )
    assert build_tools_revision(tool) == "34.0.0"


def test_a_distribution_jar_names_the_release_through_its_symlink(tmp_path):
    # The Debian/Ubuntu layout: the binary's directory holds a versionless
    # `apksigner.jar` symlink whose target carries the build-tools release.
    directory = tmp_path / "build-tools" / "debian"
    tool = _fake_tool(directory)
    (directory / "apksigner-31.0.2.jar").write_bytes(b"")
    (directory / "apksigner.jar").symlink_to("apksigner-31.0.2.jar")
    assert build_tools_revision(tool) == "31.0.2"


def test_a_versioned_jar_beside_the_binary_is_read_directly(tmp_path):
    directory = tmp_path / "build-tools"
    tool = _fake_tool(directory)
    (directory / "apksigner-34.0.0.jar").write_bytes(b"")
    assert build_tools_revision(tool) == "34.0.0"


def test_an_install_that_names_no_release_returns_none(tmp_path):
    # A bare PATH entry. Returning a guess here is what would put a fabricated
    # toolchain version in a report.
    assert build_tools_revision(_fake_tool(tmp_path)) is None


def _probe(monkeypatch, tools: dict[str, str], reported: dict[str, str]):
    monkeypatch.setattr("ingest.metadata.require_tool", lambda name: tools[name])
    monkeypatch.setattr("common.shutil.which", lambda name: tools.get(name))

    def _run(cmd, **kwargs):
        class _Result:
            stdout = reported.get(cmd[0], "")
            stderr = ""

        return _Result()

    monkeypatch.setattr("ingest.metadata.subprocess.run", _run)
    tool_versions.cache_clear()
    try:
        return tool_versions()
    finally:
        tool_versions.cache_clear()


def test_the_recorded_apksigner_version_is_its_build_tools_release(tmp_path, monkeypatch):
    directory = tmp_path / "build-tools" / "debian"
    tool = _fake_tool(directory)
    (directory / "apksigner-31.0.2.jar").write_bytes(b"")
    (directory / "apksigner.jar").symlink_to("apksigner-31.0.2.jar")
    versions = _probe(
        monkeypatch,
        {"aapt2": str(tool), "apksigner": str(tool), "jadx": str(tool), "apktool": str(tool)},
        {str(tool): "0.9"},
    )
    assert versions["apksigner"] == "31.0.2 (build-tools)"


def test_a_self_reported_version_that_names_no_release_says_so(tmp_path, monkeypatch):
    tool = _fake_tool(tmp_path)
    versions = _probe(
        monkeypatch,
        {"aapt2": str(tool), "apksigner": str(tool), "jadx": str(tool), "apktool": str(tool)},
        {str(tool): "0.9"},
    )
    assert versions["apksigner"] == "0.9 (not a build-tools release)"


def test_a_tool_that_names_its_own_release_is_recorded_verbatim(tmp_path, monkeypatch):
    # jadx and apktool report a version that does identify them; they must not
    # pick up the apksigner caveat on the way through.
    tool = _fake_tool(tmp_path, name="jadx")
    versions = _probe(
        monkeypatch,
        {"aapt2": str(tool), "apksigner": str(tool), "jadx": str(tool), "apktool": str(tool)},
        {str(tool): "1.5.6"},
    )
    assert versions["jadx"] == "1.5.6"


def test_a_missing_tool_is_still_recorded_as_unknown(tmp_path, monkeypatch):
    def _which(name):
        return None

    monkeypatch.setattr("common.shutil.which", _which)
    monkeypatch.setattr("ingest.metadata.require_tool", _which)
    tool_versions.cache_clear()
    try:
        versions = metadata.tool_versions()
    finally:
        tool_versions.cache_clear()
    assert versions == {"aapt2": "unknown", "apksigner": "unknown", "jadx": "unknown", "apktool": "unknown"}


def test_the_probe_never_raises_on_a_failing_tool(tmp_path, monkeypatch):
    tool = _fake_tool(tmp_path)

    def _run(cmd, **kwargs):
        raise subprocess.CalledProcessError(1, cmd, output="", stderr="boom")

    monkeypatch.setattr("ingest.metadata.require_tool", lambda name: str(tool))
    monkeypatch.setattr("ingest.metadata.subprocess.run", _run)
    tool_versions.cache_clear()
    try:
        versions = metadata.tool_versions()
    finally:
        tool_versions.cache_clear()
    assert versions["apksigner"] == "unknown"

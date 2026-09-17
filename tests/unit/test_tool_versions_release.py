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

from common import vendored_tool
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


def _probe(
    monkeypatch,
    tools: dict[str, str],
    reported: dict[str, str],
    vendored=None,
    cfr: str = "",
    ghidra: str | None = None,
):
    """Run tool_versions() with every lookup under the test's control.

    `tools`/`reported` drive the PATH half; `vendored` maps a tool name to a path
    the repo-vendored lookup should return. Leaving it None stubs that lookup to
    nothing, so a test meaning to exercise PATH resolution is not silently
    answered by the real checkout's `tools/` directory. `cfr`/`ghidra` are the
    same idea for the two optional engines: they default to absent, so a test
    that is not about them is not answered by whatever this checkout happens to
    have vendored."""
    monkeypatch.setattr("ingest.metadata.require_tool", lambda name: tools[name])
    monkeypatch.setattr(
        "ingest.metadata.vendored_tool",
        lambda name, root, is_windows=None: (vendored or {}).get(name),
    )
    monkeypatch.setattr("ingest.metadata.find_cfr_jar", lambda root: cfr)
    monkeypatch.setattr("ingest.metadata.find_ghidra_headless", lambda root: ghidra)
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
    # A missing tool is missing through both paths - the vendored tree is
    # untracked, so it exists here and not on CI.
    monkeypatch.setattr("ingest.metadata.vendored_tool", lambda name, root, is_windows=None: None)
    monkeypatch.setattr("ingest.metadata.find_cfr_jar", lambda root: "")
    monkeypatch.setattr("ingest.metadata.find_ghidra_headless", lambda root: None)
    tool_versions.cache_clear()
    try:
        versions = metadata.tool_versions()
    finally:
        tool_versions.cache_clear()
    assert versions == {
        "aapt2": "unknown",
        "apksigner": "unknown",
        "jadx": "unknown",
        "apktool": "unknown",
        "cfr": "not installed",
        "ghidra": "not installed",
    }


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


def test_a_tool_outside_build_tools_is_never_labelled_a_build_tools_release(tmp_path, monkeypatch):
    """The release probe reads a versioned jar beside the binary. apktool is
    reached through a script sitting beside its own jar, so without scoping, its
    version would be recorded as a build-tools release it is not - a fabricated
    toolchain claim in the one line meant to make the toolchain checkable."""
    bindir = tmp_path / "bin"
    bindir.mkdir()
    tool = bindir / "apktool"
    tool.write_text("#!/bin/sh\n")
    (bindir / "apktool-3.0.1.jar").write_bytes(b"")

    versions = _probe(
        monkeypatch,
        {name: str(tool) for name in ("aapt2", "apksigner", "jadx", "apktool")},
        {str(tool): "3.0.1"},
    )
    assert versions["apktool"] == "3.0.1"
    assert "build-tools" not in versions["apktool"]


def test_the_recorded_jadx_is_the_build_the_pipeline_runs(tmp_path, monkeypatch):
    """decompile._find_jadx prefers the repo-pinned jadx over PATH, and the
    Toolchain line has to name that build. The two differ here in a way that
    matters: 1.5.1 is the ambient version the README documents as leaving some
    real APKs' Java surface partial, and the vendored 1.5.6 is what decompiles
    them - so naming 1.5.1 misattributes the coverage bound."""
    bin_dir = tmp_path / "tools" / "jadx" / "bin"
    bin_dir.mkdir(parents=True)
    launcher = bin_dir / "jadx"
    launcher.write_text("#!/bin/sh\n")

    monkeypatch.setattr("ingest.metadata.repo_root", lambda: tmp_path)
    monkeypatch.setattr("ingest.metadata.require_tool", lambda name: f"/usr/bin/{name}")
    monkeypatch.setattr("common.shutil.which", lambda name: f"/usr/bin/{name}")

    def _run(cmd, **kwargs):
        class _Result:
            stdout = "1.5.6" if cmd[0] == str(launcher) else "1.5.1"
            stderr = ""

        return _Result()

    monkeypatch.setattr("ingest.metadata.subprocess.run", _run)
    tool_versions.cache_clear()
    try:
        versions = tool_versions()
    finally:
        tool_versions.cache_clear()
    assert versions["jadx"] == "1.5.6"


def test_only_the_vendored_tools_are_preferred(tmp_path):
    """A repo that vendors nothing resolves from PATH; the lookup returns None
    rather than raising, so the fallback stays at the call site."""
    (tmp_path / "tools").mkdir()
    bin_dir = tmp_path / "tools" / "jadx" / "bin"
    bin_dir.mkdir(parents=True)
    (bin_dir / "jadx").write_text("#!/bin/sh\n")

    assert vendored_tool("jadx", tmp_path) == str(bin_dir / "jadx")
    assert vendored_tool("apktool", tmp_path) is None


def test_the_optional_engines_are_named_so_their_absence_is_legible(tmp_path, monkeypatch):
    """CFR and Ghidra are the two engines whose absence the report itself turns
    into a coverage claim - no CFR is `fallback_unavailable` on the Java side, no
    Ghidra is `partial` on the native side. Neither was recorded on the Toolchain
    line at all, so a reader asking why either surface is not complete had
    nothing on that line to answer with."""
    tool = _fake_tool(tmp_path)
    versions = _probe(
        monkeypatch,
        {name: str(tool) for name in ("aapt2", "apksigner", "jadx", "apktool")},
        {str(tool): "1.0"},
        cfr="/opt/cfr/cfr-0.152.jar",
        ghidra="/opt/ghidra/ghidra_11.2.1_PUBLIC/support/analyzeHeadless",
    )
    assert versions["cfr"] == "0.152"
    assert versions["ghidra"] == "11.2.1"


def test_an_engine_that_is_not_installed_is_recorded_as_absent(tmp_path, monkeypatch):
    tool = _fake_tool(tmp_path)
    versions = _probe(
        monkeypatch,
        {name: str(tool) for name in ("aapt2", "apksigner", "jadx", "apktool")},
        {str(tool): "1.0"},
    )
    assert versions["cfr"] == "not installed"
    assert versions["ghidra"] == "not installed"


def test_an_engine_found_under_a_name_carrying_no_release_is_still_present(tmp_path, monkeypatch):
    """Found-but-unversioned and absent are different states driving different
    report text, so they must not collapse into one another - the same rule the
    build-tools probe follows when it refuses to guess a release."""
    tool = _fake_tool(tmp_path)
    versions = _probe(
        monkeypatch,
        {name: str(tool) for name in ("aapt2", "apksigner", "jadx", "apktool")},
        {str(tool): "1.0"},
        cfr="/tmp/cfr.jar",
        ghidra="/tmp/ghidra/support/analyzeHeadless",
    )
    assert versions["cfr"] == "installed"
    assert versions["ghidra"] == "installed"


import pytest

from static.decompile import _require_tool, decompile


def test_decompile_uses_cache_without_needing_toolchain(tmp_path):
    apk_hash = "deadbeef"
    target_dir = tmp_path / apk_hash
    (target_dir / "jadx").mkdir(parents=True)
    (target_dir / "apktool").mkdir(parents=True)

    result = decompile(tmp_path / "fake.apk", tmp_path, apk_hash)

    assert result.status == "success"
    assert result.evidence["cached"] is True
    assert result.evidence["manifest_path"].endswith("AndroidManifest.xml")


def test_require_tool_raises_loudly_when_missing():
    with pytest.raises(RuntimeError, match="not found on PATH"):
        _require_tool("definitely_not_a_real_tool_xyz")

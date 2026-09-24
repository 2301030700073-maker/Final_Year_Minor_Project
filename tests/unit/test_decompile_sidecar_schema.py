"""Cache-reuse guards for the decompile sidecar.

The sidecar is written once on a cold run and never rewritten, so a sidecar
written by an older version of the module keeps being read on every later cache
hit. Two properties have to hold regardless of which version wrote it: a sidecar
that cannot prove it carries the current evidence schema is re-decompiled rather
than read blind, and the cache-hit path carries forward the evidence fields the
writer recorded.
"""

import json
from pathlib import Path

from static.decompile import (
    _SIDECAR_SCHEMA_VERSION,
    _cached_result,
    _cached_status_is_clean,
)


def _write_sidecar(path: Path, **overrides) -> Path:
    """A clean sidecar as the current writer records it. An override of None
    removes the key, which is how a sidecar predating a field looks on disk."""
    data = {
        "schema_version": _SIDECAR_SCHEMA_VERSION,
        "decompile_completeness": "complete",
        "jadx_exit_code": 0,
        "apktool_exit_code": 0,
        "jadx_file_count": 3,
        "asset_surface_extracted": True,
        "asset_file_count": 12,
    }
    data.update(overrides)
    for key, value in overrides.items():
        if value is None:
            data.pop(key, None)
    path.write_text(json.dumps(data), encoding="utf-8")
    return path


def test_sidecar_predating_the_schema_is_re_decompiled(tmp_path):
    # No schema_version at all: written before the field existed, so it cannot
    # prove it carries the evidence the current reader expects.
    sidecar = _write_sidecar(tmp_path / "s.json", schema_version=None)
    assert _cached_status_is_clean(sidecar) is False


def test_sidecar_from_an_older_schema_is_re_decompiled(tmp_path):
    sidecar = _write_sidecar(tmp_path / "s.json",
                             schema_version=_SIDECAR_SCHEMA_VERSION - 1)
    assert _cached_status_is_clean(sidecar) is False


def test_sidecar_from_a_newer_schema_is_re_decompiled(tmp_path):
    sidecar = _write_sidecar(tmp_path / "s.json",
                             schema_version=_SIDECAR_SCHEMA_VERSION + 1)
    assert _cached_status_is_clean(sidecar) is False


def test_sidecar_recording_the_current_schema_is_reused(tmp_path):
    assert _cached_status_is_clean(_write_sidecar(tmp_path / "s.json")) is True


def test_an_unclean_sidecar_is_still_re_decompiled(tmp_path):
    # The schema guard must not displace the exit-code gate it sits beside.
    sidecar = _write_sidecar(tmp_path / "s.json", jadx_exit_code=1)
    assert _cached_status_is_clean(sidecar) is False


def test_cache_hit_carries_asset_evidence(tmp_path):
    jadx_dir = tmp_path / "jadx"
    jadx_dir.mkdir()
    apktool_dir = tmp_path / "apktool"
    apktool_dir.mkdir()
    sidecar = _write_sidecar(tmp_path / "s.json")
    result = _cached_result(0.0, jadx_dir, apktool_dir, sidecar)
    assert result.evidence["asset_surface_extracted"] is True
    assert result.evidence["asset_file_count"] == 12


def test_cache_hit_without_asset_evidence_leaves_it_absent(tmp_path):
    # Absence has to stay absence: the consumer default is what degrades the js
    # surface, so the reader must not invent a value here.
    jadx_dir = tmp_path / "jadx"
    jadx_dir.mkdir()
    apktool_dir = tmp_path / "apktool"
    apktool_dir.mkdir()
    sidecar = _write_sidecar(tmp_path / "s.json", asset_surface_extracted=None,
                             asset_file_count=None)
    result = _cached_result(0.0, jadx_dir, apktool_dir, sidecar)
    assert "asset_surface_extracted" not in result.evidence


def test_cache_hit_carries_the_smali_fallback_apktool_tail(tmp_path):
    # The smali-fallback branch writes smali_fallback AND apktool_error_tail into
    # the same sidecar, so a reader that carried one forward and dropped the other
    # described that identical run two different ways depending on whether the
    # output came from the cache.
    jadx_dir = tmp_path / "jadx"
    jadx_dir.mkdir()
    apktool_dir = tmp_path / "apktool"
    apktool_dir.mkdir()
    sidecar = _write_sidecar(
        tmp_path / "s.json", smali_fallback=True,
        apktool_error_tail="apktool --no-res fallback produced nothing")
    result = _cached_result(0.0, jadx_dir, apktool_dir, sidecar)
    assert result.evidence["smali_fallback"] is True
    assert result.evidence["apktool_error_tail"] == (
        "apktool --no-res fallback produced nothing")


# --- the version and the carry-forward field list move together -------------

# One entry per schema version: the exact fields a reader of that version carries
# forward. A field ADDED to _SIDECAR_EVIDENCE_FIELDS at an unchanged version makes
# every cached sidecar read as "field absent" - the fix renders nothing on the next
# run. Measured 2026-09-24 on run 085a8c10: asset_entries_in_apk was written and
# read, the version stayed 2, the cache was reused, and the report printed the
# pre-fix clause. Adding a field therefore forces a bump here AND in the module.
_FIELDS_AT_VERSION = {
    2: (
        "fallback_engine", "fallback_unavailable", "fallback_recovered",
        "fallback_output", "fallback_error_tail", "fallback_file_count",
        "lazy_decompile", "dex_units", "smali_fallback", "apktool_error_tail",
        "asset_surface_extracted", "asset_file_count",
        "apktool_timed_out", "jadx_timed_out", "apktool_timeout_s",
    ),
    3: (
        "fallback_engine", "fallback_unavailable", "fallback_recovered",
        "fallback_output", "fallback_error_tail", "fallback_file_count",
        "lazy_decompile", "dex_units", "smali_fallback", "apktool_error_tail",
        "asset_surface_extracted", "asset_file_count", "asset_entries_in_apk",
        "apktool_timed_out", "jadx_timed_out", "apktool_timeout_s",
    ),
}


def test_a_new_carried_field_forces_a_schema_version_bump():
    from static.decompile import _SIDECAR_EVIDENCE_FIELDS, _SIDECAR_SCHEMA_VERSION

    assert _SIDECAR_SCHEMA_VERSION == max(_FIELDS_AT_VERSION), (
        "the module's schema version is not the latest one recorded here - a bump "
        "must add its field list to _FIELDS_AT_VERSION in the same commit"
    )
    assert tuple(_SIDECAR_EVIDENCE_FIELDS) == _FIELDS_AT_VERSION[_SIDECAR_SCHEMA_VERSION], (
        "the carry-forward field list changed without a version bump: every cached "
        "sidecar would be read with the new field absent (ASSET-TRI1)"
    )
    for version, fields in _FIELDS_AT_VERSION.items():
        assert len(set(fields)) == len(fields), version
    # fields are added across versions, never quietly dropped from the carry-forward
    assert set(_FIELDS_AT_VERSION[2]) < set(_FIELDS_AT_VERSION[3])

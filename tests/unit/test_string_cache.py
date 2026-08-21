"""String-cache persistence (androguard_scanner): the save/load round-trip must
restore app_strings as a set and any stale/corrupt/wrong-version entry must be a
miss (None), never a wrong result."""


def test_string_cache_round_trip_and_staleness(tmp_path):
    import json
    from static.androguard_scanner import _save_string_cache, _load_string_cache

    # save receives app_strings already serializable (a list); load restores it
    # to a set (the documented list->set round-trip)
    payload = {"app_strings": ["su", "/system/bin/su"], "count": 2}
    _save_string_cache(tmp_path, "abc123", payload)

    loaded = _load_string_cache(tmp_path, "abc123")
    assert loaded is not None
    assert loaded["app_strings"] == {"su", "/system/bin/su"}  # list->set restored
    assert loaded["count"] == 2

    # wrong version -> miss (a stale cache must never read as valid)
    (tmp_path / "old.json").write_text(
        json.dumps({"version": "old-version", "payload": {"app_strings": []}}), encoding="utf-8"
    )
    assert _load_string_cache(tmp_path, "old") is None

    # missing file -> miss
    assert _load_string_cache(tmp_path, "missing") is None

    # corrupt entry -> miss, never a crash
    (tmp_path / "corrupt.json").write_text("{not valid json", encoding="utf-8")
    assert _load_string_cache(tmp_path, "corrupt") is None

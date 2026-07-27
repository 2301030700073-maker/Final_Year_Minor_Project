from cli import _wrap_stage


def test_wrap_stage_success_returns_raw_result():
    stage_result, raw = _wrap_stage("demo", lambda x: x * 2, 21)
    assert stage_result.status == "success"
    assert raw == 42


def test_wrap_stage_failure_captures_error_and_returns_none():
    def boom():
        raise ValueError("something broke")

    stage_result, raw = _wrap_stage("demo", boom)

    assert stage_result.status == "failed"
    assert "something broke" in stage_result.error
    assert raw is None

"""Tests for the ClaudeCliClient backend (AI_BACKEND=claude-cli).

These exercise the headless ``claude -p`` invocation WITHOUT a real claude binary
or network: ``subprocess.run`` is mocked so we assert (a) the exact flags that
make the call non-interactive + safe, (b) the unknown-model enforcement override
is set so a third-party ``deepseek-v4-flash`` is honored headlessly, (c) JSON is
parsed including fenced responses, (d) a non-zero exit raises, and (e) backend
selection in ``get_client`` works.
"""

from ai import get_client
from ai.client import ClaudeCliClient, _find_claude_binary


class _FakeCompleted:
    def __init__(self, stdout="", stderr="", returncode=0):
        self.stdout = stdout
        self.stderr = stderr
        self.returncode = returncode


_GOOD_JSON = (
    '{"script":"Java.perform(function(){});","applied_hooks":["X"],'
    '"skipped":[],"notes":"n","confidence":"low"}'
)


def test_claude_cli_client_builds_headless_command(monkeypatch):
    captured = {}

    def fake_run(cmd, *, env=None, capture_output=False, text=False, timeout=None):
        captured["cmd"] = list(cmd)
        captured["env"] = dict(env or {})
        return _FakeCompleted(stdout=_GOOD_JSON)

    monkeypatch.setattr("ai.client.subprocess.run", fake_run)
    client = ClaudeCliClient(binary="/opt/claude", timeout=10)
    data = client.complete_json("SYS", "USER")

    cmd = captured["cmd"]
    # Non-interactive print mode + the user prompt as positional arg.
    assert "-p" in cmd
    assert cmd[cmd.index("-p") + 1] == "USER"
    # Our strict generator instructions replace the default system prompt.
    assert "--system-prompt" in cmd
    assert cmd[cmd.index("--system-prompt") + 1] == "SYS"
    # Text output, no session written to disk, no permission prompts.
    assert "--output-format" in cmd and cmd[cmd.index("--output-format") + 1] == "text"
    assert "--no-session-persistence" in cmd
    assert "--dangerously-skip-permissions" in cmd
    # Reduced to a pure text generator: no filesystem / command tools.
    assert "--allowedTools" in cmd
    assert cmd[cmd.index("--allowedTools") + 1] == ""
    # The unknown-model enforcement is disabled, mirroring the operator's
    # interactive session so a third-party deepseek model is honored.
    assert (
        captured["env"].get("CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT")
        == "1"
    )
    assert data["script"] == "Java.perform(function(){});"


def test_claude_cli_client_parses_fenced_json(monkeypatch):
    def fake_run(cmd, **kw):
        return _FakeCompleted(
            stdout='```json\n{"script":"x","applied_hooks":[],'
            '"skipped":[],"notes":"","confidence":"low"}\n```'
        )

    monkeypatch.setattr("ai.client.subprocess.run", fake_run)
    client = ClaudeCliClient(binary="/opt/claude")
    data = client.complete_json("SYS", "USER")
    assert data == {
        "script": "x", "applied_hooks": [], "skipped": [],
        "notes": "", "confidence": "low",
    }


def test_claude_cli_client_raises_on_nonzero_exit(monkeypatch):
    def fake_run(cmd, **kw):
        return _FakeCompleted(stdout="", stderr="model not recognized", returncode=1)

    monkeypatch.setattr("ai.client.subprocess.run", fake_run)
    client = ClaudeCliClient(binary="/opt/claude")
    import pytest

    with pytest.raises(RuntimeError) as exc:
        client.complete_json("SYS", "USER")
    assert "Claude CLI failed" in str(exc.value)


def test_claude_cli_client_from_env_uses_claude_bin(monkeypatch):
    monkeypatch.setenv("CLAUDE_BIN", "/custom/claude")
    client = ClaudeCliClient.from_env()
    assert client.binary == "/custom/claude"


def test_find_claude_binary_falls_back_to_path(monkeypatch):
    monkeypatch.delenv("CLAUDE_BIN", raising=False)
    monkeypatch.setattr(
        "ai.client.shutil.which",
        lambda name: "/usr/local/bin/claude" if name == "claude" else None,
    )
    assert _find_claude_binary() == "/usr/local/bin/claude"


def test_get_client_selects_claude_cli_backend(monkeypatch):
    monkeypatch.setenv("AI_BACKEND", "claude-cli")
    monkeypatch.setenv("CLAUDE_BIN", "/custom/claude")
    monkeypatch.delenv("AI_API_KEY", raising=False)
    client = get_client()
    assert isinstance(client, ClaudeCliClient)


def test_claude_cli_client_injects_provider_env_from_dotenv(monkeypatch):
    captured: dict = {}

    def fake_run(cmd, *, env=None, capture_output=False, text=False, timeout=None):
        captured["env"] = dict(env or {})
        return _FakeCompleted(stdout=_GOOD_JSON)

    monkeypatch.setattr("ai.client.subprocess.run", fake_run)
    # Simulate the gitignored .env carrying the provider config, so a clean
    # non-interactive launch (no ~/.bashrc exports) still reaches the gateway.
    monkeypatch.setattr(
        "ai.client._find_project_env",
        lambda: {
            "ANTHROPIC_BASE_URL": "https://agentrouter.org/",
            "ANTHROPIC_AUTH_TOKEN": "sk-from-dotenv",
            "CLAUDE_ALLOWED_TOOLS": "Read",
        },
    )
    # Ensure these are NOT already in the process environment (clean launch).
    monkeypatch.delenv("ANTHROPIC_BASE_URL", raising=False)
    monkeypatch.delenv("ANTHROPIC_AUTH_TOKEN", raising=False)
    monkeypatch.delenv("CLAUDE_ALLOWED_TOOLS", raising=False)
    client = ClaudeCliClient(binary="/opt/claude")
    client.complete_json("SYS", "USER")
    env = captured["env"]
    assert env["ANTHROPIC_BASE_URL"] == "https://agentrouter.org/"
    assert env["ANTHROPIC_AUTH_TOKEN"] == "sk-from-dotenv"
    assert env["CLAUDE_ALLOWED_TOOLS"] == "Read"
    # The unknown-model enforcement is always forced headlessly.
    assert env["CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT"] == "1"


def test_claude_cli_client_shell_env_wins_over_dotenv(monkeypatch):
    captured: dict = {}

    def fake_run(cmd, *, env=None, capture_output=False, text=False, timeout=None):
        captured["env"] = dict(env or {})
        return _FakeCompleted(stdout=_GOOD_JSON)

    monkeypatch.setattr("ai.client.subprocess.run", fake_run)
    # An explicitly-exported shell var must NOT be clobbered by .env.
    monkeypatch.setenv("ANTHROPIC_AUTH_TOKEN", "sk-from-shell")
    monkeypatch.setattr(
        "ai.client._find_project_env",
        lambda: {"ANTHROPIC_AUTH_TOKEN": "sk-from-dotenv"},
    )
    client = ClaudeCliClient(binary="/opt/claude")
    client.complete_json("SYS", "USER")
    assert captured["env"]["ANTHROPIC_AUTH_TOKEN"] == "sk-from-shell"



def test_is_transient_gateway_error():
    from ai.client import _is_transient_gateway_error
    # A third-party router's transient outage - worth retrying.
    assert _is_transient_gateway_error("503 \u5f53\u524d\u5206\u7ec4 core \u4e0b\u5bf9\u4e8e\u6a21\u578b deepseek-v4-flash \u65e0\u53ef\u7528\u6e20\u9053")
    assert _is_transient_gateway_error("429 rate limit exceeded")
    assert _is_transient_gateway_error("overloaded, please try again")
    # Permanent auth/script errors - must NOT be retried.
    assert not _is_transient_gateway_error("401 unauthorized client")
    assert not _is_transient_gateway_error("400 bad request")
    assert not _is_transient_gateway_error("model not recognized")


def test_claude_cli_client_retries_transient_gateway_error(monkeypatch):
    import ai.client as ac
    calls = {"n": 0}

    def fake_run(cmd, **kw):
        calls["n"] += 1
        if calls["n"] < 3:
            return _FakeCompleted(stdout="", stderr="503 no available channel", returncode=1)
        return _FakeCompleted(stdout=_GOOD_JSON)

    monkeypatch.setattr(ac.subprocess, "run", fake_run)
    monkeypatch.setattr(ac.time, "sleep", lambda s: None)
    client = ClaudeCliClient(binary="/opt/claude", timeout=10)
    data = client.complete_json("SYS", "USER")
    assert calls["n"] == 3
    assert data["script"] == "Java.perform(function(){});"


def test_claude_cli_client_raises_after_exhausting_retries(monkeypatch):
    import ai.client as ac
    calls = {"n": 0}

    def fake_run(cmd, **kw):
        calls["n"] += 1
        return _FakeCompleted(stdout="", stderr="503 no available channel", returncode=1)

    monkeypatch.setattr(ac.subprocess, "run", fake_run)
    monkeypatch.setattr(ac.time, "sleep", lambda s: None)
    client = ClaudeCliClient(binary="/opt/claude", timeout=10)
    import pytest
    with pytest.raises(RuntimeError):
        client.complete_json("SYS", "USER")
    assert calls["n"] == 3  # bounded: 3 attempts, then raise


def test_claude_cli_client_does_not_retry_permanent_error(monkeypatch):
    import ai.client as ac
    calls = {"n": 0}

    def fake_run(cmd, **kw):
        calls["n"] += 1
        return _FakeCompleted(stdout="", stderr="401 unauthorized client", returncode=1)

    monkeypatch.setattr(ac.subprocess, "run", fake_run)
    monkeypatch.setattr(ac.time, "sleep", lambda s: None)
    client = ClaudeCliClient(binary="/opt/claude", timeout=10)
    import pytest
    with pytest.raises(RuntimeError):
        client.complete_json("SYS", "USER")
    assert calls["n"] == 1  # a permanent error raises immediately, no retry

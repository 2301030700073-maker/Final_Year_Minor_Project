"""Provider-agnostic chat client for the AI augmentation layer.

Two backends are supported, selected by ``AI_BACKEND`` (see ``get_client``):

  - ``http`` (default): the OpenAI-compatible ``/v1/chat/completions`` JSON
    contract, which is what agentrouter/taotoken-style unified-key routers expose
    for ``deepseek-v4-flash`` (and what api.deepseek.com / OpenAI use). Nothing
    about the provider is hard-coded: ``AI_BASE_URL``, ``AI_API_KEY`` and
    ``AI_MODEL`` all come from the environment so the exact host drops in.
  - ``claude-cli``: drives the locally-installed, already-authenticated Claude
    Code CLI non-interactively (``claude -p``). No project-level key is required -
    it inherits the operator's existing provider config (e.g. ANTHROPIC_BASE_URL /
    ANTHROPIC_AUTH_TOKEN from the shell). For non-interactive launches where the
    shell's exports are absent (cron, CI, systemd, ``wsl.exe bash -lc``), those
    provider vars are ALSO read from the project's gitignored ``.env`` so the
    backend works from any launch context, not just an interactive terminal.

A ``FakeClient`` is provided for tests so the whole generation/repair pipeline can
be exercised with zero network access and zero token spend.
"""

from __future__ import annotations

import glob
import json
import os
import shutil
import subprocess
import time
import urllib.request
import urllib.error
from typing import Any


DEFAULT_MODEL = "deepseek-v4-flash"


def _env(name: str, default: str | None = None) -> str | None:
    v = os.environ.get(name)
    if v is None or v == "":
        return default
    return v


# Provider vars the ``claude-cli`` backend pulls from the project ``.env`` when
# they are not already present in the process environment. These are exactly the
# vars an *interactive* shell would export (e.g. from ~/.bashrc) but that are
# absent in a clean non-interactive launch (cron, CI, systemd,
# ``wsl.exe bash -lc``). An explicitly-exported shell var always wins.
_CLI_ENV_VARS = (
    "ANTHROPIC_BASE_URL",
    "ANTHROPIC_AUTH_TOKEN",
    "ANTHROPIC_API_KEY",
    "CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT",
    "CLAUDE_BIN",
    "CLAUDE_ALLOWED_TOOLS",
)


def _load_dotenv_file(path: str) -> dict[str, str]:
    """Parse a minimal KEY=VALUE ``.env`` file (no interpolation, no exports).

    Mirrors the project's existing convention (the ``.env`` is normally
    ``export``-ed manually). We only extract the handful of provider vars listed
    in ``_CLI_ENV_VARS`` so the headless backend can self-bootstrap its provider
    config without a dotenv auto-loader (which would perturb the test suite and
    ``ChatClient``'s key-required contract).
    """
    parsed: dict[str, str] = {}
    try:
        with open(path, "r", encoding="utf-8") as fh:
            for raw in fh:
                line = raw.strip()
                if not line or line.startswith("#"):
                    continue
                if line.startswith("export "):
                    line = line[len("export "):].strip()
                if "=" not in line:
                    continue
                key, _, val = line.partition("=")
                key = key.strip()
                val = val.strip()
                if len(val) >= 2 and val[0] == val[-1] and val[0] in ("'", '"'):
                    val = val[1:-1]
                if key in _CLI_ENV_VARS and val:
                    parsed[key] = val
    except FileNotFoundError:
        return parsed
    return parsed


def _find_project_env() -> dict[str, str]:
    """Locate and parse the project ``.env``, walking up from the cwd. Cached."""
    cached = getattr(_find_project_env, "_cache", None)
    if cached is not None:
        return cached
    env: dict[str, str] = {}
    dir_ = os.getcwd()
    for _ in range(10):
        cand = os.path.join(dir_, ".env")
        if os.path.exists(cand):
            env = _load_dotenv_file(cand)
            break
        parent = os.path.dirname(dir_)
        if parent == dir_:
            break
        dir_ = parent
    _find_project_env._cache = env  # type: ignore[attr-defined]
    return env


def _resolve_env(name: str, default: str | None = None) -> str | None:
    """Like ``_env`` but also consults the project ``.env`` for provider vars."""
    v = os.environ.get(name)
    if v and v != "":
        return v
    dotenv = _find_project_env()
    if name in dotenv and dotenv[name]:
        return dotenv[name]
    return default


class ChatClient:
    """Minimal OpenAI-compatible chat client.

    Usage::

        client = ChatClient.from_env()          # raises if AI_API_KEY unset
        reply = client.complete(system, user, json_mode=True)
    """

    def __init__(
        self,
        base_url: str,
        api_key: str,
        model: str = DEFAULT_MODEL,
        timeout: float = 120.0,
    ) -> None:
        self.base_url = base_url.rstrip("/")
        self.api_key = api_key
        self.model = model
        self.timeout = timeout

    @classmethod
    def from_env(cls, timeout: float = 120.0) -> "ChatClient":
        base_url = _env("AI_BASE_URL")
        api_key = _env("AI_API_KEY")
        model = _env("AI_MODEL", DEFAULT_MODEL)
        if not api_key:
            raise RuntimeError(
                "AI_API_KEY is not set. Export AI_API_KEY (and, if your provider "
                "is not api.deepseek.com, AI_BASE_URL and AI_MODEL) before running "
                "the AI augmentation layer. The key is never written into code."
            )
        if not base_url:
            # Sensible default only for the canonical provider; an agentrouter
            # operator must set AI_BASE_URL explicitly.
            base_url = "https://api.deepseek.com/v1"
        return cls(base_url=base_url, api_key=api_key, model=model, timeout=timeout)

    # -- transport ---------------------------------------------------------
    def chat(
        self,
        messages: list[dict[str, str]],
        *,
        json_mode: bool = False,
        temperature: float = 0.2,
    ) -> str:
        """Send a chat request and return the assistant message content."""
        url = f"{self.base_url}/chat/completions"
        body: dict[str, Any] = {
            "model": self.model,
            "messages": messages,
            "temperature": temperature,
        }
        if json_mode:
            body["response_format"] = {"type": "json_object"}

        data = json.dumps(body).encode("utf-8")
        req = urllib.request.Request(
            url,
            data=data,
            headers={
                "Authorization": f"Bearer {self.api_key}",
                "Content-Type": "application/json",
            },
            method="POST",
        )
        try:
            with urllib.request.urlopen(req, timeout=self.timeout) as resp:
                payload = json.loads(resp.read().decode("utf-8"))
        except urllib.error.HTTPError as exc:  # provider returned an error body
            detail = exc.read().decode("utf-8", "replace")
            raise RuntimeError(f"AI provider HTTP {exc.code}: {detail}") from exc
        except urllib.error.URLError as exc:  # DNS / connection / TLS
            raise RuntimeError(f"AI provider unreachable ({url}): {exc.reason}") from exc

        try:
            return payload["choices"][0]["message"]["content"]
        except (KeyError, IndexError, TypeError) as exc:
            raise RuntimeError(f"Unexpected AI provider response shape: {payload!r}") from exc

    # -- convenience wrappers ----------------------------------------------
    def complete(
        self,
        system: str,
        user: str,
        *,
        json_mode: bool = False,
        temperature: float = 0.2,
    ) -> str:
        return self.chat(
            [
                {"role": "system", "content": system},
                {"role": "user", "content": user},
            ],
            json_mode=json_mode,
            temperature=temperature,
        )

    def complete_json(
        self,
        system: str,
        user: str,
        *,
        temperature: float = 0.2,
    ) -> dict[str, Any]:
        """Complete and parse a JSON-mode response, with recovery.

        If the model wraps JSON in markdown fences or adds prose, this strips it
        before parsing, rather than blindly json.loads-ing a dirty string.
        """
        raw = self.complete(system, user, json_mode=True, temperature=temperature)
        return _extract_json(raw)


def _extract_json(raw: str) -> dict[str, Any]:
    if raw is None:
        raise ValueError("empty model response")
    text = raw.strip()
    # Strip a ```json ... ``` or ``` ... ``` fence if present.
    if text.startswith("```"):
        # drop the first line (```json) and the trailing ```
        text = text.split("\n", 1)[1] if "\n" in text else text[len("```json"):]
        if text.endswith("```"):
            text = text[: -len("```")]
        text = text.strip()
    try:
        return json.loads(text)
    except json.JSONDecodeError:
        # Last resort: find the first { and last } and parse the slice.
        start = text.find("{")
        end = text.rfind("}")
        if start != -1 and end != -1 and end > start:
            return json.loads(text[start : end + 1])
        raise ValueError(f"could not parse JSON from model response: {raw!r}")


class FakeClient:
    """Test double implementing the same surface as ``ChatClient``.

    Records every (system, user) it was asked, and returns a canned, valid
    response so the generation + repair-loop pipeline runs end-to-end with no
    network and no token spend. Set ``script_template`` to control the script it
    emits; ``error_after`` (iteration index) simulates a script that only works
    after N revisions, to exercise the repair loop.
    """

    def __init__(self, *, error_after: int = -1, script_template: str | None = None) -> None:
        self.calls: list[tuple[str, str]] = []
        self.error_after = error_after  # -1 = always succeeds
        self._iteration = 0
        self.script_template = script_template or (
            "Java.perform(function () {\n"
            "  // AI-generated (fake client) bypass scaffold\n"
            "  var X509TrustManager = Java.use('javax.net.ssl.X509TrustManager');\n"
            "});"
        )

    def _record(self, system: str, user: str) -> None:
        self.calls.append((system, user))

    def chat(self, messages, *, json_mode=False, temperature=0.2) -> str:
        system = messages[0]["content"] if messages else ""
        user = messages[-1]["content"] if messages else ""
        self._record(system, user)
        # The repair loop feeds back runtime errors; after error_after iterations
        # we "fix" the script so the loop can converge in tests.
        self._iteration += 1
        failing = self.error_after != -1 and self._iteration <= self.error_after
        script = self.script_template
        if failing:
            script = script + "\n// INJECTED_FAULT_LINE_THAT_THROWS_AT_RUNTIME\n"
        payload = {
            "script": script,
            "applied_hooks": ["X509TrustManager.checkServerTrusted"],
            "notes": "fake-client generated scaffold",
            "confidence": "low",
            "runtime_errors_seen": ([] if not failing else ["ReferenceError: foo is not defined"]),
        }
        return json.dumps(payload)

    def complete(self, system, user, *, json_mode=False, temperature=0.2) -> str:
        return self.chat(
            [
                {"role": "system", "content": system},
                {"role": "user", "content": user},
            ],
            json_mode=json_mode,
            temperature=temperature,
        )

    def complete_json(self, system, user, *, temperature=0.2) -> dict:
        return _extract_json(self.complete(system, user, json_mode=True, temperature=temperature))


def _find_claude_binary() -> str | None:
    """Locate the ``claude`` executable.

    Order: explicit ``CLAUDE_BIN`` -> ``claude`` on ``PATH`` -> an fnm-managed
    install (the layout observed on the analysis host) -> a global npm install.
    Returns ``None`` if nothing plausible is found.
    """
    if explicit := _resolve_env("CLAUDE_BIN"):
        return explicit
    if which := shutil.which("claude"):
        return which
    home = os.path.expanduser("~")
    candidates = [
        # fnm node-version layout (exact version observed in this project)
        os.path.join(
            home, ".local", "share", "fnm", "node-versions", "v24.15.0",
            "installation", "lib", "node_modules", "@anthropic-ai", "claude-code",
            "node_modules", "@anthropic-ai", "claude-code-linux-x64", "claude",
        ),
    ]
    # Any fnm node version, any arch suffix.
    candidates.extend(
        glob.glob(
            os.path.join(
                home, ".local", "share", "fnm", "node-versions", "*",
                "installation", "lib", "node_modules", "@anthropic-ai",
                "claude-code", "node_modules", "@anthropic-ai",
                "claude-code-*-x64", "claude",
            )
        )
    )
    # Global npm install.
    candidates.append(
        os.path.join(home, ".npm-global", "lib", "node_modules",
                     "@anthropic-ai", "claude-code", "cli.js")
    )
    for c in candidates:
        if c and os.path.exists(c):
            return c
    return None


# Markers of a TRANSIENT gateway outage (not a real failure): a third-party router
# (e.g. AgentRouter serving deepseek-v4-flash) returns these when its upstream
# channel for the model is briefly unavailable - "503 ... 无可用渠道" observed live.
_TRANSIENT_GATEWAY_MARKERS = (
    "503", "429", "无可用渠道", "no available channel", "rate limit",
    "overloaded", "temporarily unavailable", "service unavailable",
    "try again", "attempt ",
)


def _is_transient_gateway_error(detail: str) -> bool:
    """True when a ``claude -p`` failure is a transient gateway outage worth
    retrying, not a permanent auth/script error (which must still raise)."""
    low = detail.lower()
    return any(m in low for m in _TRANSIENT_GATEWAY_MARKERS)


class ClaudeCliClient:
    """Model backend that drives the locally-installed, already-authenticated
    Claude Code CLI non-interactively (``claude -p``) instead of calling an HTTP
    endpoint.

    This is the natural fit for operators who already have Claude Code configured
    on the analysis host (the same binary they use interactively). It shells out
    to ``claude``, inheriting the operator's existing auth + provider config
    (e.g. a third-party OpenAI-compatible gateway serving ``deepseek-v4-flash``),
    so no separate API key has to be handed to this project.

    Safety / ADR-0004: invoked with ``--dangerously-skip-permissions`` (no human
    in the loop for the subprocess itself) AND ``--allowedTools ''`` so the child
    process cannot read, edit, or execute - it is reduced to a pure text
    generator that returns the Frida-script JSON. The generated artifact is still
    written by OUR code (``repair_loop._save_script``) and flagged for human
    review. Only the model call is delegated.

    Select this backend with ``AI_BACKEND=claude-cli``.
    """

    def __init__(self, binary: str, *, timeout: float = 300.0) -> None:
        self.binary = binary
        self.timeout = timeout

    @classmethod
    def from_env(cls, timeout: float = 300.0) -> "ClaudeCliClient":
        binary = _find_claude_binary()
        if not binary:
            raise RuntimeError(
                "Claude CLI not found. Set CLAUDE_BIN to the absolute path of the "
                "claude executable, or install Claude Code so 'claude' is on PATH. "
                "Headless usage: claude -p '<task>' --dangerously-skip-permissions."
            )
        return cls(binary=binary, timeout=timeout)

    # -- subprocess transport ----------------------------------------------
    def _build_env(self) -> dict[str, str]:
        """Assemble the environment for the ``claude`` subprocess.

        Starts from the parent process environment, then:

          - forces ``CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT=1`` so
            third-party/uncatalogued models (e.g. ``deepseek-v4-flash`` served by
            a gateway) are honored headlessly, mirroring the operator's working
            interactive session;
          - fills any *provider* var (ANTHROPIC_BASE_URL / ANTHROPIC_AUTH_TOKEN /
            ANTHROPIC_API_KEY / CLAUDE_ALLOWED_TOOLS) that the process environment
            lacks from the project ``.env`` (the gitignored secrets store). This
            is what makes the backend work from a clean non-interactive launch
            where ``~/.bashrc``'s exports were never sourced. An explicitly
            exported shell var always wins over ``.env``.
        """
        env = os.environ.copy()
        env["CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT"] = "1"
        dotenv = _find_project_env()
        for key in _CLI_ENV_VARS:
            if key == "CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT":
                continue  # always forced above
            if key not in env and key in dotenv and dotenv[key]:
                env[key] = dotenv[key]
        return env

    def _run(self, system: str, user: str) -> str:
        # Claude Code keeps its own (large) default system prompt; we replace it
        # with our strict generator instructions and pass the evidence/user text
        # as the positional prompt. Args are passed as a list (no shell), so the
        # large, quote-heavy bundle cannot break out or be injected.
        cmd = [
            self.binary,
            "-p", user,
            "--system-prompt", system,
            "--output-format", "text",
            "--no-session-persistence",
            "--dangerously-skip-permissions",
            "--allowedTools", _resolve_env("CLAUDE_ALLOWED_TOOLS", ""),
        ]
        env = self._build_env()
        # A third-party gateway (e.g. AgentRouter serving deepseek-v4-flash) returns
        # a transient 503/429 "no available channel" when its upstream channel is
        # briefly unavailable - observed live. That is NOT a script/auth failure, so
        # it must not abort a whole ai-bypass run. Retry bounded with backoff; a
        # permanent error (401/400/...) or an exhausted retry still raises.
        last_err = ""
        for attempt in range(3):
            try:
                proc = subprocess.run(
                    cmd, env=env, capture_output=True, text=True, timeout=self.timeout
                )
            except subprocess.TimeoutExpired as exc:
                raise RuntimeError(
                    f"Claude CLI timed out after {self.timeout}s"
                ) from exc
            if proc.returncode == 0:
                return proc.stdout
            detail = (proc.stderr or proc.stdout).strip()
            last_err = f"Claude CLI failed (rc={proc.returncode}): {detail}"
            if attempt < 2 and _is_transient_gateway_error(detail):
                time.sleep(3 * (attempt + 1))
                continue
            raise RuntimeError(last_err)
        raise RuntimeError(last_err)

    # -- the same surface as ChatClient -------------------------------------
    def chat(
        self,
        messages: list[dict[str, str]],
        *,
        json_mode: bool = False,
        temperature: float = 0.2,
    ) -> str:
        system = next(
            (m["content"] for m in messages if m.get("role") == "system"), ""
        )
        user = next(
            (m["content"] for m in reversed(messages) if m.get("role") == "user"), ""
        )
        return self._run(system, user)

    def complete(
        self,
        system: str,
        user: str,
        *,
        json_mode: bool = False,
        temperature: float = 0.2,
    ) -> str:
        return self._run(system, user)

    def complete_json(
        self,
        system: str,
        user: str,
        *,
        temperature: float = 0.2,
    ) -> dict[str, Any]:
        return _extract_json(self._run(system, user))


def get_client() -> ChatClient | FakeClient | ClaudeCliClient:
    """Return the configured model client.

    Backend is selected by ``AI_BACKEND``:

      - ``http`` (default): ``ChatClient`` over the OpenAI-compatible HTTP API,
        requires ``AI_API_KEY`` (and usually ``AI_BASE_URL``).
      - ``claude-cli``: ``ClaudeCliClient`` driving the locally-installed,
        already-authenticated Claude Code CLI non-interactively. No project-level
        key required - it inherits the operator's existing provider config.

    Kept as a single seam so callers never construct the client directly and the
    "no backend configured" failure is uniform and explicit.
    """
    backend = (_env("AI_BACKEND") or "http").lower()
    if backend == "claude-cli":
        return ClaudeCliClient.from_env()
    if backend in ("http", "openai", "openai-compatible"):
        return ChatClient.from_env()
    raise RuntimeError(
        f"Unknown AI_BACKEND={backend!r}. Use 'http' or 'claude-cli'."
    )

"""Provider-agnostic chat client for the AI augmentation layer.

The client speaks the OpenAI-compatible ``/v1/chat/completions`` JSON contract,
which is what the agentrouter/taotoken-style unified-key routers expose for
``deepseek-v4-flash`` (and what api.deepseek.com / OpenAI itself use). Nothing
about the provider is hard-coded: ``AI_BASE_URL``, ``AI_API_KEY`` and ``AI_MODEL``
all come from the environment so the exact host the operator has just drops in.

A ``FakeClient`` is provided for tests so the whole generation/repair pipeline can
be exercised with zero network access and zero token spend.
"""

from __future__ import annotations

import json
import os
import urllib.request
import urllib.error
from typing import Any


DEFAULT_MODEL = "deepseek-v4-flash"


def _env(name: str, default: str | None = None) -> str | None:
    v = os.environ.get(name)
    if v is None or v == "":
        return default
    return v


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


def get_client() -> ChatClient | FakeClient:
    """Return a real ``ChatClient`` from env, or raise if no key is configured.

    Kept as a single seam so callers never construct the client directly and so
    the "key not set" failure is uniform and explicit.
    """
    return ChatClient.from_env()

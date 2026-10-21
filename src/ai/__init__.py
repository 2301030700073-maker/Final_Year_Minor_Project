"""AI augmentation layer for the analysis tool.

This package does NOT put an LLM in the runtime verdict/report path. It is a
*development- and per-target augmentation* aid:

  - ``select_evidence`` pulls the root/SSL-pinning logic of a *specific* APK into
    a compact, capped bundle (it never feeds the whole decompiled tree to a model).
  - ``bypass_gen`` turns that bundle into a candidate Frida script + an
    instrumentation plan (error-reporting hooks so the loop can see where a
    generated script fails).
  - ``repair_loop`` runs that script on the emulator via the existing
    ``frida_runner`` ``synthesized`` seam, captures the runtime errors, and asks
    the model to revise - bounded iterations, with a saved, human-reviewed output.

The generated script is written to ``src/dynamic/scripts/ai_generated/<target>.js``
and flagged for human review before it is trusted. It is loaded through the same
``synthesized`` path the deterministic synthesizer uses, so the report's
``scripts_applied`` label stays honest ("synthesized" + applied hooks), and the
verdict path is untouched.

Authorization: AI-bypass is gated by the same justification model the project
uses (OWN_APP / CTF / AUTHORIZED_ENGAGEMENT / ACADEMIC_TRAINING_TARGET). The
``ai-bypass`` CLI command refuses to run unless ``AI_ALLOW_AUTHORIZED_TARGET`` is
set and a ``--justification`` is supplied, mirroring the H2 authorization intent.
"""

from .client import ChatClient, FakeClient, ClaudeCliClient, get_client
from .select_evidence import build_evidence_bundle
from .repair_loop import repair_loop

__all__ = [
    "ChatClient", "FakeClient", "ClaudeCliClient", "get_client",
    "build_evidence_bundle", "repair_loop",
]

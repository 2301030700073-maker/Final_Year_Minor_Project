---
name: deepseek-usage-optimizer
description: Real‑time DeepSeek V4 self‑audit. Cache‑aware + token‑frugal + $0 local‑LLM fallback. "Do more with less."
---

## Mandatory Call Tracking

Every tool call in this session MUST be logged with:

| Field | What to record |
|-------|---------------|
| `#` | Sequential number |
| `Tool` | Which tool (Bash/Read/Write/Edit/etc) |
| `Purpose` | What it's doing (≤10 words) |
| `Why needed` | Why this couldn't be skipped |
| `If skipped` | What breaks without it |
| `Batchable?` | Could it merge with adjacent calls? |

Log format (append to session-call-audit memory after each call):
```
[N] TOOL: purpose → why needed → if skipped → batchable?
```

## Waste Rules

1. **No sequential reads** — Read tool only if the file isn't already in context
2. **No split commands** — Use `&&` to chain; never `Run command 1, wait, Run command 2`
3. **No re-reading** — If you wrote it or just read it, use `Edit`, not `Read`
4. **No "what if" calls** — Don't ask the system something you can answer from context
5. **Batch verification** — `git status && git log && pytest` in one call, not three
6. **Response < 5 lines** unless the user explicitly asks for detail

# DeepSeek Usage Optimizer

**Maximize output per token. Never sacrifice quality.**

---

## 📊 Official Pricing (per 1M tokens, verified from api-docs.deepseek.com)

| Metric | V4-Flash (`deepseek-v4-flash`) | V4-Pro (`deepseek-v4-pro`) |
|--------|-------------------------------|----------------------------|
| Context | 1M tokens | 1M tokens |
| Max output | 384K tokens | 384K tokens |
| **Input (cache HIT)** | **$0.0028** | **$0.003625** |
| Input (cache miss) | $0.14 | $0.435 |
| **Output** | **$0.28** | **$0.87** |
| Concurrency | 2,500 | 500 |

**No peak/valley pricing exists.** Price is flat at all times. The only price lever is **cache hits** (50× cheaper input).

**Deprecated:** `deepseek-chat` and `deepseek-reasoner` map to V4-Flash. Retired July 24, 2026.

---

## 💰 Real Cost Examples (V4-Flash)

| Scenario | Tokens | Cost |
|----------|--------|------|
| Prompt (cache HIT) | 1,000 | $0.0000028 |
| Prompt (cache miss) | 1,000 | $0.00014 |
| Output | 500 | $0.00014 |
| **Total (cache HIT + 500 out)** | 1,500 | **$0.000143** |
| **Total (cache miss + 500 out)** | 1,500 | **$0.00028** |

**Verdict:** Most individual calls cost < $0.0003. The $4.47 balance supports ~15,000+ cache-hit calls.

---

## 🔄 5-Step Cycle: TRACK → DESIGN → HIT → LEARN → APPLY

### 1. TRACK
- **Balance** (always fetch LIVE):
  ```bash
  KEY=$(grep DEEPSEEK_API_KEY .env | cut -d= -f2)
  curl -s https://api.deepseek.com/user/balance -H "Authorization: Bearer $KEY"
  ```
- **Alert**: Balance < $0.30 → use Ollama ($0) exclusively
- **Model**: Use V4-Flash by default. V4-Pro only when explicitly required.

### 2. DESIGN for cache HITS
- **Cache HIT = 50× cheaper.** Design EVERY call for maximum prefix reuse.
- Group similar prompts to share the same system-prompt prefix.
- Identical `messages[0]` (system prompt) → cache hit on next call.
- **Combine multiple sub-questions into ONE message** instead of sequential calls.

### 3. HIT (Token-Frugal Calling)
| Rule | Action |
|------|--------|
| System prompt | **Keep identical** across calls for cache reuse |
| Examples | **Maximum 3** per prompt, not 5+ |
| Output length | Set `max_tokens` to minimum viable (not default max) |
| Redundant context | **Strip** — don't echo huge prior outputs |
| Temperature | Skip (thinking mode ignores it anyway) |
| `top_logprobs` | Never use (adds token cost for no gain) |

### 4. LEARN
One concrete lesson per session. Save to memory as `feedback` type.

### 5. APPLY
Next response: shorter prompts, fewer calls, same quality.

---

## 🎯 Targets
- **≥ 50% cache-hit rate** (input cost drops 50×)
- **≥ 25% token reduction** within 10 interactions
- **0 non-essential DeepSeek calls** (if Ollama can do it, use $0)
- **Waste Score < 5%** = (REDUNDANT + UNNECESSARY) calls / total × 100%
- **Completeness ≥ 9/10** — never sacrifice accuracy

---

## 🚫 Don't
- Use `deepseek-chat`/`deepseek-reasoner` (deprecated — use `deepseek-v4-flash`)
- Send huge system prompts that change every call (kills cache)
- Call DeepSeek when Ollama (local, $0) can deliver the same quality
- Repeat the same failing call expecting different results
- Let waste accumulate session after session without self-correcting

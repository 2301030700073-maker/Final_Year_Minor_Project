# Known audit-log integrity finding: concurrent-write fork (2026-08-17)

`verify-audit-log` on `outputs/audit_log.jsonl` reports **exactly one** integrity
break, at line 185:

```
line 185: prev_hash forks the chain - points to an earlier record, not the tail
(likely a concurrent write onto a stale tail)
```

(Before the verifier gained fork-classification, the same break was reported with the
more generic wording "prev_hash breaks the chain (record inserted/deleted)". The event
is identical; only the label became accurate.)

This document exists so that a `FAILED` result whose *only* error is this line is
understood as a known, explained, historical event — not treated as fresh tampering.

## What happened

Two analysis runs overlapped on 2026-08-17:

- Run `516eda0e…` was authorized at 05:22 (record at line 181) and ran until ~06:14.
- Run `e73f80d…` ran 05:22 → 05:36 and wrote lines 182–184 in between.

When run `516eda0e` finally wrote its `classification` record (line 185, 06:14), it
chained `prev_hash` onto **its own** `run_authorized` record (line 181) instead of the
actual on-disk tail (line 184, which belonged to run `e73f80d`). That is a *forked
chain*: two records (line 182 and line 185) carry the same `prev_hash`.

## Why it is not tampering, and not a current bug

- **It is a concurrent-write fork, not an edit or a deletion.** An edit trips the
  separate `record_hash mismatch` check; a deletion or insertion leaves a `prev_hash`
  that matches nothing the verifier has seen. Here line 185's `prev_hash` matches an
  *earlier* record's hash — the exact shape of two processes appending at once, one
  using a stale cached tail.
- **Everything else is intact.** 623 of 624 links verify, including every record
  written after the fix. Silently "repairing" a genuine tamper would require
  re-chaining all downstream records; nothing downstream is disturbed.
- **The root cause is already fixed.** The append path once held a per-path tail cache
  keyed on path alone and read the tail *before* taking the lock, so a second
  concurrent process could chain onto a superseded tail. `_append_audit_record` now
  reads the tail *inside* an exclusive `flock`, with a size-witnessed cache
  (`src/audit/attestation.py`). This specific fork cannot recur.

## Decision: retain the log byte-for-byte

The log is an immutable, hash-chained audit trail (ADR-0005). Rewriting hashes so
`verify` turns green would destroy the exact tamper-evidence the log exists to provide
— that would be a fabricated fix, forbidden by principle 3. So the log is kept
unchanged, and `verify-audit-log` will keep reporting this one historical fork. That is
correct behavior: the log genuinely contains a real, explained discontinuity, and a
check that continued to hide it would be the broken one.

**Operational rule:** a `FAILED` result whose only error is this documented line-185
fork is expected. Any *new* or *different* error is not, and must be investigated.

## Regression coverage

`tests/unit/test_attestation.py::test_verify_audit_log_classifies_a_concurrent_write_fork_distinctly`
reproduces this incident from first principles (three chained records, the third
re-pointed onto the first with a recomputed, internally-valid `record_hash`) and pins
that the verifier reports it as a *fork* while still failing the check — and that it
does not misfire as a `record_hash mismatch`.

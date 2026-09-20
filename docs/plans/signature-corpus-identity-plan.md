# Plan: record the signature corpus a run was analysed against (ADR-0022)

Status: proposed - not implemented. Written 2026-09-20.
Decision of record: `docs/plans/adr/0022-a-run-records-the-corpus-it-ran.md`.

## What is being built

One new recorded fact: a content fingerprint of the signature YAML a run
loaded, stored on the run, shown in the report, and NULL-with-a-reason for the
264 runs that predate it.

Not in scope: hashing the Python source tree (ADR-0022 says why), and any
backfill (ADR-0022 forbids it).

## Facts this plan is built on (measured, not assumed)

- Four corpus files: `config/signatures/{root_detection,ssl_pinning,native_detection,packers}.yaml`.
- They are loaded at four sites in `src/cli.py`: `311` (`native_detection`),
  `1695` (`root_detection`), `1698` (`ssl_pinning`), `2008` (`packers`).
- None of the four files has a version key. `config/settings.yaml` has exactly
  one live top-level key, `thresholds:` - there is no config knob to add and
  none is needed.
- `storage/db.py:171` calls `_migrate_schema`, which diffs declared columns
  against the live table and runs `ALTER TABLE … ADD COLUMN` (`db.py:206`),
  because `create_all` never extends an existing table. A new nullable column
  therefore needs no hand-written migration.
- `IDENTITY_FIELDS` (`storage/run_status.py:47`) is *written* into the sidecar,
  never compared against anything. Adding a member is safe and reaches both
  surfaces from one edit.
- The report renders `**Analysis code:** {{ git_commit or "unknown" }}` at
  `src/report/generator.py:99` - the natural neighbour for the new line.

## Steps

**1. The fingerprint function.** `src/static/signatures.py`:

```
def corpus_fingerprint(paths: Sequence[Path]) -> str
```

SHA-256 over, for each path ordered by name: the relative file name, a
separator, then the file's bytes. Including the name means a rename moves the
hash as well as an edit. **A missing path raises** - never hash the subset that
exists, which would silently fingerprint a different corpus.

Tests (fixtures in `tmp_path`, no APK needed):
- stable across two calls on unchanged input;
- moves on a one-byte edit;
- moves on a rename with identical content;
- raises on a missing file.

**2. One list of corpus paths.** Name the four paths once in `src/cli.py` and
have steps at `311`, `1695`, `1698`, `2008` load from that list, so a fifth
signature file cannot be added without joining the hash. A test asserts the list
and the loader call sites agree - the "one corpus, one list" invariant.

**3. Thread it into the record.** `run_data["signature_corpus"] = corpus_fingerprint(...)`.

**4. Persist it.**
- `storage/db.py`: `signature_corpus: Mapped[str | None] = mapped_column(String)`
  on `runs`.
- `storage/results.py:202` (beside `git_commit=`): `signature_corpus=run_data.get("signature_corpus")`.
- `storage/run_status.py:47`: append `"signature_corpus"` to `IDENTITY_FIELDS`.

**5. Render it.** `src/report/generator.py`, beside the `Analysis code` line:
the hash when present; when NULL, an explicit sentence naming the cause -
the corpus was not recorded for runs made before ADR-0022, and it is not
derivable for a dirty tree. Never an empty value and never the word "unknown"
alone, which reads as a lookup failure rather than a category.

**6. Guard the template.** Add the new variable to the report template's
variable-coverage check. An unguarded Jinja variable renders as a silent blank,
and this line's whole point is that its absence must be loud.

**7. Prove it on a real run.** One run on the reference environment; assert the
new column is populated and that the rendered report shows the same hash the
function returns for `config/signatures/` at that moment. Then read one
pre-ADR-0022 report and confirm it states the reason rather than a blank.

**8. Ledger.** Suite count + `tests/` LOC moved in the same commit as the tests.

## Verification that must not be skipped

- The hash is computed from the **same path list the pipeline loads**, not from
  a glob over `config/signatures/`: a glob would silently include a stray file
  and produce a hash that no run can reproduce.
- A stored run's NULL must not be rendered as `unknown`, and the new column must
  not be confused with `git_commit` in the reference docs.
- The two surfaces (`runs` row, `run_status.json` sidecar) must agree for a new
  run - that is what `IDENTITY_FIELDS` is for, and this is the first change to
  exercise it since it was introduced.

## Explicitly deferred

Widening the hash to cover the hardcoded JS idiom lists in
`src/static/hermes.py`. ADR-0022 names the asymmetry and accepts it; revisiting
it means revisiting the ADR, not extending this plan.

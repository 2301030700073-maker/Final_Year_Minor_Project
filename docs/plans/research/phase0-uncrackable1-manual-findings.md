# Phase 0 — UnCrackable1 Manual Findings

## Target
OWASP UnCrackable Level 1 (`APK_Test/UnCrackable-Level1.apk`)

## Root Detection — `sg.vantagepoint.a.c`

Three static methods, all in class `c` (no inheritance, no RootBeer library):

| Method | What it checks | Implementation |
|--------|---------------|----------------|
| `c.a()` | su on PATH | Splits `$PATH` by `:`, checks `File(str, "su").exists()` for each — **dynamic path, not a literal** |
| `c.b()` | test-keys build | `Build.TAGS != null && Build.TAGS.contains("test-keys")` |
| `c.c()` | 7 indicator files | Iterates hardcoded array: `/system/app/Superuser.apk`, `/system/xbin/daemonsu`, `/system/etc/init.d/99SuperSUDaemon`, `/system/bin/.ext/.su`, `/system/etc/.has_su_daemon`, `/system/etc/.installed_su_daemon`, `/dev/com.koushikdutta.superuser.daemon/` |

**Call site** (`MainActivity.onCreate`): `if (c.a() || c.b() || c.c())` → shows "Root detected!" dialog.

## Debug Detection — `sg.vantagepoint.a.b`

`b.a(Context)`: checks `(getApplicationInfo().flags & 2) != 0` (debuggable flag).

## SSL/TLS Pinning

**None.** No `network_security_config.xml`, no OkHttp `CertificatePinner`, no custom `TrustManager`, no SSL-related code anywhere in the decompiled sources. Correct finding: `NEITHER` / `Inconclusive`.

## Secret Verification — `sg.vantagepoint.uncrackable1.a`

`a.a(String)`: AES-128 decrypts a Base64 ciphertext using hex key `8d127684cbc37c17616d806cf50473cc`, compares result to input via `str.equals(...)`. Ciphertext: `5UJiFctbmgbDoLXmpL12mkno8HT4Lv8dlat8FxR2GOc=`. Decrypt helper `a.b(String)` is a hex-to-bytes routine.

## UI Signals

| Signal | Dialog Title | Dialog Message | Follow-up |
|--------|-------------|----------------|-----------|
| Root detected | `"Root detected!"` | `"This is unacceptable. The app is now going to exit."` | `System.exit(0)` |
| Debuggable | `"App is debuggable!"` | (same message/exit) | `System.exit(0)` |
| Success | `"Success!"` | `"This is the correct secret."` | Dismiss |
| Wrong secret | `"Nope..."` | `"That's not it. Try again."` | Dismiss |

## Recommended Hook Strategy

- `c.a()` — hook `java.io.File.exists()` → return `false`, OR hook `c.a()` → return `false` directly.
- `c.b()` — hook `android.os.Build.TAGS` → return `"release-keys"`, OR hook `c.b()` → return `false`.
- `c.c()` — hook `java.io.File.exists()` → return `false` (covers all 7 paths at once), OR hook `c.c()` → return `false`.
- `b.a()` — hook `c.a()` if called; otherwise debug flag is on the `ApplicationInfo` object which is hard to patch at runtime — hook `b.a()` → return `false`.

## Pattern Corrections

`src/dynamic/success_checks/uncrackable1.py` should use:

- `SECRET_REVEALED_PATTERN`: `r"Success\!|correct secret"`
- `BLOCK_SIGNAL_PATTERN`: `r"Root detected\!|App is debuggable\!|unacceptable"`

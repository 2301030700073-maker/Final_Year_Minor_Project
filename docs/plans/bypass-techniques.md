# Bypass technique toolbox: SSL/TLS pinning and root detection

Reference for the deterministic bypass techniques the platform implements, and
how they are applied. Pairs with `src/dynamic/scripts/` and the vendored
universal (`scripts/universal-robust-advanced-root--ssl-pinning-bypass.js`, the
line refs below are to that file unless noted). Per ADR-0006, a technique being
present in a script is a *deterministic* capability; whether it actually fires
on a given target is the dynamic-verification tier, tracked separately per run.

## SSL/TLS pinning bypass

Defeating certificate pinning means making the app accept the capture CA when
its pinned endpoint is MITM'd. Techniques grouped by the layer they patch.

### Java / Android framework
| Technique | What it hooks | Why it works | Where |
|---|---|---|---|
| OkHttp `CertificatePinner.check` | `okhttp3.CertificatePinner.check` / `check$okhttp` | OkHttp's pin compare never runs / always passes | `ssl_pinning_bypass_v1.js`; universal `:464-510` |
| OkHttp hostname verifier | `okhttp3.internal.tls.OkHostnameVerifier.verify` (+ `com.squareup.okhttp` v2) | Accepts any hostname on the TLS session | universal `:20-32` |
| Conscrypt `TrustManagerImpl.checkTrustedRecursive` | `com.android.org.conscrypt.TrustManagerImpl` | Returns an empty (trusted) chain; neutralizes Android's real chain builder | universal `:35-40`; `ssl_pinning_bypass_v1.js:19-25` |
| Conscrypt `TrustManagerImpl.verifyChain` | same class, `verifyChain` overload | Stops the pin/hostname verify on the trusted chain | universal `:574-581` |
| Custom `X509TrustManager.checkServerTrusted` no-op | any `javax.net.ssl.X509TrustManager` | Installs a trust-all manager | universal `:436-444` |
| BouncyCastle `checkServerTrusted` | `org.bouncycastle.jsse.provider` | Trusts any chain in BouncyCastle JSSE | universal `:42-46` |
| `SSLPeerUnverifiedException` ctor | `javax.net.ssl.SSLPeerUnverifiedException.$init` | Clears the reason string on the thrown exception | universal `:78-83` |
| Apache HttpClient `AbstractVerifier.verify` | `org.apache.http.conn.ssl.AbstractVerifier` | Legacy Apache stack accepts any host | universal `:86-90` |
| `SSLSocketFactory.createSocket` | `javax.net.ssl.SSLSocketFactory` | Forces re-wrap of the socket | universal `:104-109` |
| Trust/KeyManagerFactory `init` | `javax.net.ssl.TrustManagerFactory` / `KeyManagerFactory` | Neutralizes custom trust anchors | universal `:111-123` |
| WebView SSL error | `WebViewClient.onReceivedSslError` → `handler.proceed()` (+ Cordova variant) | Tells a WebView to proceed past the cert error | universal `:12-17, 125-131` |

### Native (OpenSSL / BoringSSL / mbedTLS)
| Technique | What it hooks | Why it works | Where |
|---|---|---|---|
| `SSL_CTX_set_custom_verify` | libssl export; zero the callback arg | Custom verify never invoked | universal `:140-149` |
| `SSL_CTX_set_verify` | libssl export; zero the mode | Sets `SSL_VERIFY_NONE` | universal `:151-160` |
| BoringSSL `SSL_set_custom_verify` | `SSL_set_custom_verify` | Custom verify disabled | universal `:173-182` |
| `SSL_get_verify_result` | onLeave → retval 0 | Always reports `X509_V_OK` after the handshake | universal `:184-190` |
| `mbedtls_ssl_conf_authmode` | zero the authmode arg | `MBEDTLS_SSL_VERIFY_NONE` | universal `:162-171` |

### SDK-specific pinning (Java)
| Technique | What it hooks | Where |
|---|---|---|
| TrustKit | `com.datatheorem.android.trustkit.pinning.OkHostnameVerifier.verify` + `PinningTrustManager.checkServerTrusted` | universal `:519-547` |
| IBM Worklight | `com.worklight.wlclient.api.WLClient.pinTrustedCertificatePublicKey` + `HostNameVerifierWithCertificatePinning.verify` | universal `:701-767` |

## Root detection bypass

Root-detection bypass means hiding every signal an app probes for "am I rooted":
su binaries, root packages, `test-keys` build tags, and Magisk artifacts.

| Technique | What it hooks | Why it works | Where |
|---|---|---|---|
| Package blocklist | `PackageManager` get-package-list / package-name scan | Root/Superuser/Xposed/Magisk packages report not-installed | universal `:198-205, 315-321`; `root_bypass_uncrackable3.js` |
| Binary blocklist | `su`, `which`, `busybox`, `magisk` presence checks | `File.exists`/path scans report absent | universal `:207, 324` |
| `java.io.File.exists` | replacement returning false for root paths | App sees no `/su` etc. | universal `:222, 343` |
| `Runtime.exec` / `getRuntime` | null out `su` invocations | `su -c` probes return empty | universal `:236, 355` |
| `ProcessBuilder` | intercept `su` in the command list | `su` command never runs | universal `:273, 396` |
| exec-arg string match | inspect exec args for `su`/`substrate` | Neutralize `su`-shaped commands | universal `:287-290` |
| Build-tag spoof | rewrite `ro.build.tags=test-keys` → `release-keys` (getprop/file read) | App sees a "release" build | universal `:261-263, 376-378` |
| libc `fopen` | `libc.so fopen` interception on `build.prop` | Hide the real (test-keys) build.prop content | universal `:383-387` |
| libc `access` / `open` | `NativeCallback` replacement matching `/su` paths | Native stat/open on su paths fail | universal `:413-428` |

## How the techniques are selected and applied

- **Known targets** (UnCrackable 1/2/3, AndroGoat) resolve a hand-authored script
  from `SCRIPTS_BY_TARGET_ACTION` in `src/dynamic/frida_runner.py:43-74`
  (`root_bypass_v1.js`, `root_bypass_uncrackable2.js`, `root_bypass_uncrackable3.js`,
  `ssl_pinning_bypass_v1.js`).
- **Unknown/real apps** degrade to a deterministic synthesized bypass
  (`frida_runner.py:279-281`) — the vendored universal is the *source* of the
  technique set but is not loaded verbatim at runtime.
- **Capture-with-bypass** (`run_capture_stage(..., bypass_script=...)` in
  `src/dynamic/mitmproxy_capture.py`) cold-starts the app under Frida with a
  chosen pinning-only script (`ssl_pinning_bypass_universal.js`, or the
  self-driving `ssl_pinning_bypass_drive.js`) so its traffic decrypts through
  the capture proxy. Use a **pinning-only** script here — never a root script,
  which would self-terminate the app mid-capture. For the "without" arm of an
  A/B, `ssl_pinning_drive_only.js` issues the same in-process pinned-host
  `HttpsURLConnection` **without** any bypass hooks, so the contrast isolates
  the bypass effect. Both drive scripts run the connection on a background
  Java thread and `Java.cast` the connection to `HttpURLConnection` so the
  request methods resolve.

## A/B proof on RS_CertPinning (2026-08-21)

Static detection reports RS_CertPinning declares a `<pin-set>` (3 SHA-256 pins)
for `redshift.co.za` in `res/xml/network_security_config.xml`. The live A/B
first revealed that declaration is **not enforced** — the same `HttpsURLConnection`
to `https://redshift.co.za/` returned `200` and decrypted *without* any bypass.
Root causes (both confirmed from the installed manifest):

1. **The config is never wired in.** `<application>` has **no
   `android:networkSecurityConfig` attribute**, so the platform never applies
   the file; the pin-set is dead weight.
2. The pin-set's `expiration` is `2022-12-12` — all pins expired, so even if
   wired, Android disables an all-expired pin-set and falls back to the system
   trust store (where the capture CA is pushed).

**Repair (deterministic, to produce a genuinely-enforcing pinned target):** the
APK was rebuilt with apktool to (a) add `android:networkSecurityConfig` to the
manifest and (b) move `expiration` to `2030-12-31`. Reinstalled, the declared
pin-set now actually enforces for `redshift.co.za`.

**Resulting A/B (window 20s, drive-only vs bypass+drive, both spawning the app
under Frida, only variable = bypass hooks):**

| arm | drive outcome | `redshift.co.za` in captured flows |
|---|---|---|
| WITHOUT bypass hooks (`ssl_pinning_drive_only.js`) | `SSLHandshakeException: Pin verification failed` | **absent (blocked)** — only `b.6sc.co`, `r.clarity.ms` |
| WITH bypass hooks (`ssl_pinning_bypass_drive.js`) | `status: 200` | **present + decrypted** |

This is the blocked-without / decrypted-with contrast on a genuinely-enforcing
pinned host. Evidence is the live `frida_messages` + captured host lists (a
dynamic-confirmation tier, ADR-0006), not a mocked flow list (principle 3).

**Detection gap surfaced:** a `network_security_config.xml` with a pin-set is
not proof the app enforces pinning — the manifest must actually reference it.
The platform's `network_security_config_pinset` signal should be refined to
also require the `android:networkSecurityConfig` manifest attribute before
attributing pinning (otherwise a present-but-unwired config over-reports).

## Honest boundaries

- Presence of a technique in the toolbox is a *deterministic capability*, not a
  claim it fired. Only the live run's `frida_messages` / captured-flow evidence
  is a dynamic-confirmation tier (ADR-0006).
- No fabricated capture results (principle 3): if a target produces no
  observable pinned-host traffic, that is reported as-is.

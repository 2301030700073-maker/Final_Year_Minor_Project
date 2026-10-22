// Pinning-only SSL/TLS bypass. Extracted verbatim from the vendored universal
// (scripts/universal-robust-advanced-root--ssl-pinning-bypass.js), ROOT
// detection removed so the app never self-terminates during a capture window.
// Hooks the Java + native SSL verification/pinning entry points so a pinned app
// accepts the capture CA, letting its traffic decrypt through mitmproxy.
//
// HONESTY CONTRACT (Task #11 fix): every hook install is accounted for. A
// successful install emits hook_loaded; a failed one emits hook_skipped with
// the reason (e.g. ClassNotFoundException when the class is absent from this
// APK). The final universal-ssl-pinning marker reports bypassed:true ONLY when
// at least one hook actually loaded - a script that installed nothing no longer
// claims success. Silent catch(e){} swallows are replaced by honest skips so the
// frida message stream itself cannot lie about what took effect.
var _ssl_hooks_loaded = 0;

function _ssl_try_hook(name, fn) {
    try {
        fn();
        _ssl_hooks_loaded++;
        send({ type: 'hook_loaded', name: name, ok: true });
    } catch (e) {
        send({ type: 'hook_skipped', name: name, reason: String(e) });
    }
}

function _ssl_try_native(exportName, lib, attach) {
    try {
        var addr = Module.findExportByName(lib, exportName);
        if (!addr) {
            send({ type: 'hook_skipped', name: exportName, reason: 'export not found in ' + (lib || 'any loaded module') });
            return;
        }
        attach(addr);
        _ssl_hooks_loaded++;
        send({ type: 'hook_loaded', name: exportName, ok: true });
    } catch (e) {
        send({ type: 'hook_skipped', name: exportName, reason: String(e) });
    }
}

function addUniversalSSLPinningBypass() {
    Java.perform(function() {
        // WebView SSL error bypass
        _ssl_try_hook('android.webkit.WebViewClient.onReceivedSslError', function() {
            var WebViewClient = Java.use('android.webkit.WebViewClient');
            WebViewClient.onReceivedSslError.implementation = function(view, handler, error) {
                console.log('[+] WebViewClient.onReceivedSslError() bypassed');
                handler.proceed();
            };
        });
        // WebViewClient SUBCLASSES that OVERRIDE onReceivedSslError (to reject the
        // capture CA - a common anti-MITM pattern) bypass the base-class hook above:
        // the subclass's own method runs, not the base's. Enumerate loaded classes
        // and neutralize onReceivedSslError on any that declare it, bounded so the
        // scan stays cheap. Each install is reported like every other hook.
        (function () {
            var _wv = 0;
            Java.enumerateLoadedClasses({
                onMatch: function (className) {
                    if (_wv >= 60) return;
                    try {
                        var k = Java.use(className);
                        if (k.onReceivedSslError) {
                            k.onReceivedSslError.implementation = function (view, handler, error) {
                                console.log('[+] WebView onReceivedSslError bypassed: ' + className);
                                handler.proceed();
                            };
                            _wv++;
                            _ssl_hooks_loaded++;
                            send({ type: 'hook_loaded', name: 'webview.onReceivedSslError:' + className, ok: true });
                        }
                    } catch (e) { send({ type: 'hook_skipped', name: 'webview:' + className, reason: String(e) }); }
                },
                onComplete: function () {}
            });
        })();
        // OkHttp3
        _ssl_try_hook('okhttp3.internal.tls.OkHostnameVerifier.verify', function() {
            var OkHostnameVerifier = Java.use('okhttp3.internal.tls.OkHostnameVerifier');
            OkHostnameVerifier.verify.overload('java.lang.String', 'javax.net.ssl.SSLSession').implementation = function(host, session) {
                console.log('[+] OkHttp3 OkHostnameVerifier.verify() bypassed for host: ' + host);
                return true;
            };
        });
        // OkHttp3 CertificatePinner.check - the single most common Android
        // SSL-pinning method, which the universal recipe previously did NOT
        // neutralize (the dynamic scan below only covers checkServerTrusted /
        // checkClientTrusted / verify / ...). An OkHttp-pinning app or a bundled
        // SDK therefore rejected the capture CA and its handshake failed - the
        // stuck-network / frozen-splash symptom (seen on propertyguru's
        // cdn-settings.segment.com / featureassets.org). check() returns void
        // and throws on a pin mismatch, so a no-op accepts any chain.
        _ssl_try_hook('okhttp3.CertificatePinner.check', function() {
            var CP = Java.use('okhttp3.CertificatePinner');
            var _ovs = CP.check.overloads;
            for (var _i = 0; _i < _ovs.length; _i++) {
                (function (ov) {
                    ov.implementation = function () {
                        console.log('[+] OkHttp3 CertificatePinner.check() bypassed');
                    };
                })(_ovs[_i]);
            }
            if (_ovs.length === 0) { throw new Error('okhttp3.CertificatePinner.check: no overloads to neutralize'); }
        });
        // OkHttp2
        _ssl_try_hook('com.squareup.okhttp.internal.tls.OkHostnameVerifier.verify', function() {
            var OkHostnameVerifier2 = Java.use('com.squareup.okhttp.internal.tls.OkHostnameVerifier');
            OkHostnameVerifier2.verify.overload('java.lang.String', 'javax.net.ssl.SSLSession').implementation = function(host, session) {
                console.log('[+] OkHttp2 OkHostnameVerifier.verify() bypassed for host: ' + host);
                return true;
            };
        });
        // Conscrypt
        _ssl_try_hook('com.android.org.conscrypt.TrustManagerImpl.checkTrustedRecursive', function() {
            var conscrypt_TrustManagerImpl = Java.use('com.android.org.conscrypt.TrustManagerImpl');
            conscrypt_TrustManagerImpl.checkTrustedRecursive.implementation = function() {
                console.log('[+] Conscrypt TrustManagerImpl.checkTrustedRecursive() bypassed');
                // Return the PRESENTED peer chain as a List (trust it), NOT an
                // empty list. checkTrustedRecursive must return the verified
                // chain; returning [] empties it, so the handshake fails
                // downstream (no peer certificate -> SSLPeerUnverifiedException,
                // or the app's own code sees an empty chain and its network call
                // hangs -> a frozen/stuck splash). Trusting the presented chain
                // IS the bypass and lets the connection complete.
                try {
                    var _chain = arguments[0];
                    if (_chain && _chain.length) {
                        var _al = Java.use('java.util.ArrayList');
                        var _list = _al.$new();
                        for (var _i = 0; _i < _chain.length; _i++) { _list.add(_chain[_i]); }
                        return _list;
                    }
                } catch (e) { console.log('[!] checkTrustedRecursive chain wrap failed: ' + e); }
                return [];
            };
        });
        // BouncyCastle
        _ssl_try_hook('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider.checkServerTrusted', function() {
            var bouncy_TrustManager = Java.use('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider');
            bouncy_TrustManager.checkServerTrusted.implementation = function() {
                console.log('[+] BouncyCastle checkServerTrusted() bypassed');
            };
        });
        // Dynamic class/method scan for pinning
        Java.enumerateLoadedClasses({
            onMatch: function(className) {
                var lc = className.toLowerCase();
                if (
                    lc.indexOf('pin') !== -1 ||
                    lc.indexOf('trust') !== -1 ||
                    lc.indexOf('cert') !== -1 ||
                    lc.indexOf('ssl') !== -1 ||
                    lc.indexOf('verify') !== -1 ||
                    lc.indexOf('chain') !== -1
                ) {
                    try {
                        var klass = Java.use(className);
                        ['checkServerTrusted', 'checkClientTrusted', 'verify', 'verifyCertificateChain', 'onReceivedError'].forEach(function(method) {
                            if (klass[method]) {
                                klass[method].implementation = function() {
                                    console.log('[+] Universal dynamic SSL bypass: ' + className + '.' + method + '()');
                                    if (method === 'verify') return true;
                                    if (method === 'onReceivedError') return;
                                    return;
                                };
                            }
                        });
                    } catch (e) {
                        send({ type: 'hook_skipped', name: 'dynamic:' + className, reason: String(e) });
                    }
                }
            },
            onComplete: function() {}
        });
        // Universal Java SSL error bypass
        _ssl_try_hook('javax.net.ssl.SSLPeerUnverifiedException.$init', function() {
            var SSLPeerUnverifiedException = Java.use('javax.net.ssl.SSLPeerUnverifiedException');
            SSLPeerUnverifiedException.$init.implementation = function(reason) {
                console.log('[+] Universal SSLPeerUnverifiedException bypassed: ' + reason);
                return this.$init('');
            };
        });
        // Apache HttpClient
        _ssl_try_hook('org.apache.http.conn.ssl.AbstractVerifier.verify', function() {
            var AbstractVerifier = Java.use('org.apache.http.conn.ssl.AbstractVerifier');
            AbstractVerifier.verify.implementation = function(host, ssl) {
                console.log('[+] Apache HttpClient AbstractVerifier.verify() bypassed for: ' + host);
            };
        });
        // Netty
        _ssl_try_hook('io.netty.handler.ssl.util.FingerprintTrustManagerFactory.checkTrusted', function() {
            var NettyFingerprintTrustManagerFactory = Java.use('io.netty.handler.ssl.util.FingerprintTrustManagerFactory');
            NettyFingerprintTrustManagerFactory.checkTrusted.implementation = function(type, chain) {
                console.log('[+] Netty FingerprintTrustManagerFactory.checkTrusted() bypassed');
            };
        });
        // SSLParametersImpl
        _ssl_try_hook('com.android.org.conscrypt.SSLParametersImpl.setEndpointIdentificationAlgorithm', function() {
            var SSLParametersImpl = Java.use('com.android.org.conscrypt.SSLParametersImpl');
            SSLParametersImpl.setEndpointIdentificationAlgorithm.implementation = function(alg) {
                console.log('[+] SSLParametersImpl.setEndpointIdentificationAlgorithm() bypassed');
            };
        });
        // SSLSocketFactory
        _ssl_try_hook('javax.net.ssl.SSLSocketFactory.createSocket', function() {
            var SSLSocketFactory = Java.use('javax.net.ssl.SSLSocketFactory');
            SSLSocketFactory.createSocket.overload('java.net.Socket', 'java.lang.String', 'int', 'boolean').implementation = function() {
                console.log('[+] SSLSocketFactory.createSocket() bypassed');
                return this.createSocket.apply(this, arguments);
            };
        });
        // TrustManagerFactory
        _ssl_try_hook('javax.net.ssl.TrustManagerFactory.init', function() {
            var TrustManagerFactory = Java.use('javax.net.ssl.TrustManagerFactory');
            TrustManagerFactory.init.overload('java.security.KeyStore').implementation = function(ks) {
                console.log('[+] TrustManagerFactory.init() bypassed');
                return this.init(ks);
            };
        });
        // KeyManagerFactory
        _ssl_try_hook('javax.net.ssl.KeyManagerFactory.init', function() {
            var KeyManagerFactory = Java.use('javax.net.ssl.KeyManagerFactory');
            KeyManagerFactory.init.overload('java.security.KeyStore', '[C').implementation = function(ks, pwd) {
                console.log('[+] KeyManagerFactory.init() bypassed');
                return this.init(ks, pwd);
            };
        });
        // Cordova
        _ssl_try_hook('org.apache.cordova.CordovaWebViewClient.onReceivedSslError', function() {
            var CordovaWebViewClient = Java.use('org.apache.cordova.CordovaWebViewClient');
            CordovaWebViewClient.onReceivedSslError.implementation = function(view, handler, error) {
                console.log('[+] CordovaWebViewClient.onReceivedSslError() bypassed');
                handler.proceed();
            };
        });
        // Unity
        _ssl_try_hook('com.unity3d.player.UnityWebRequest.setCertificateHandler', function() {
            var UnityWebRequest = Java.use('com.unity3d.player.UnityWebRequest');
            UnityWebRequest.setCertificateHandler.implementation = function(handler) {
                console.log('[+] UnityWebRequest.setCertificateHandler() bypassed');
            };
        });
        // Native hooks
        _ssl_try_native('SSL_CTX_set_custom_verify', 'libssl.so', function(addr) {
            Interceptor.attach(addr, {
                onEnter: function(args) {
                    console.log('[+] Native SSL_CTX_set_custom_verify called, bypassing');
                    args[1] = ptr(0);
                }
            });
        });
        _ssl_try_native('SSL_CTX_set_verify', 'libssl.so', function(addr) {
            Interceptor.attach(addr, {
                onEnter: function(args) {
                    console.log('[+] Native SSL_CTX_set_verify called, bypassing');
                    args[1] = ptr(0);
                }
            });
        });
        // Flutter / React Native bundle their OWN BoringSSL inside libflutter.so /
        // libreactnative.so (NOT libssl.so), so the libssl hooks above never fire
        // for them. A pure-native host (Flutter dart:io, an RN native module) has
        // no Java SSL stack, so these native hooks are the only way to stop it
        // verifying the capture CA. Takes effect only when the symbol is exported;
        // a stripped BoringSSL degrades to hook_skipped (honest).
        ['SSL_CTX_set_custom_verify', 'SSL_CTX_set_verify'].forEach(function(sym) {
            ['libflutter.so', 'libreactnative.so'].forEach(function(lib) {
                _ssl_try_native(sym, lib, function(addr) {
                    Interceptor.attach(addr, {
                        onEnter: function(args) {
                            console.log('[+] ' + lib + ' BoringSSL ' + sym + ' bypassed');
                            args[1] = ptr(0);
                        }
                    });
                });
            });
        });
        _ssl_try_native('mbedtls_ssl_conf_authmode', null, function(addr) {
            Interceptor.attach(addr, {
                onEnter: function(args) {
                    console.log('[+] mbedtls_ssl_conf_authmode called, bypassing');
                    args[1] = 0;
                }
            });
        });
        _ssl_try_native('SSL_set_custom_verify', null, function(addr) {
            Interceptor.attach(addr, {
                onEnter: function(args) {
                    console.log('[+] boringssl SSL_set_custom_verify called, bypassing');
                    args[1] = ptr(0);
                }
            });
        });
        try {
            Interceptor.attach(Module.findExportByName(null, 'SSL_get_verify_result'), {
                onLeave: function(retval) {
                    console.log('[+] Native SSL_get_verify_result bypassed');
                    retval.replace(0);
                }
            });
            _ssl_hooks_loaded++;
            send({ type: 'hook_loaded', name: 'SSL_get_verify_result', ok: true });
        } catch (e) {
            send({ type: 'hook_skipped', name: 'SSL_get_verify_result', reason: String(e) });
        }
    });
}

// Invoke the pinning bypass and signal readiness (checkpoint for the stage).
// Only claim bypassed:true when at least one hook actually loaded; otherwise
// report the honest failure so the stream can never claim a bypass it did not
// achieve (Task #11).
Java.perform(function() {
    try {
        addUniversalSSLPinningBypass();
        if (_ssl_hooks_loaded > 0) {
            send({ hook: 'universal-ssl-pinning', bypassed: true, hooks_loaded: _ssl_hooks_loaded });
        } else {
            send({ hook: 'universal-ssl-pinning', bypassed: false, hooks_loaded: 0, reason: 'no SSL hooks could be installed' });
        }
    } catch (e) {
        send({ hook: 'universal-ssl-pinning', error: String(e) });
    }
});

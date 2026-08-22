// Pinning-only SSL/TLS bypass. Extracted verbatim from the vendored universal
// (scripts/universal-robust-advanced-root--ssl-pinning-bypass.js), ROOT
// detection removed so the app never self-terminates during a capture window.
// Hooks the Java + native SSL verification/pinning entry points so a pinned app
// accepts the capture CA, letting its traffic decrypt through mitmproxy. The
// send() checkpoint signals hook-install to the capture stage.
function addUniversalSSLPinningBypass() {
    Java.perform(function() {
        // WebView SSL error bypass
        try {
            var WebViewClient = Java.use('android.webkit.WebViewClient');
            WebViewClient.onReceivedSslError.implementation = function(view, handler, error) {
                console.log('[+] WebViewClient.onReceivedSslError() bypassed');
                handler.proceed();
            };
        } catch (e) {}
        // OkHttp
        try {
            var OkHostnameVerifier = Java.use('okhttp3.internal.tls.OkHostnameVerifier');
            OkHostnameVerifier.verify.overload('java.lang.String', 'javax.net.ssl.SSLSession').implementation = function(host, session) {
                console.log('[+] OkHttp3 OkHostnameVerifier.verify() bypassed for host: ' + host);
                return true;
            };
        } catch (e) {}
        try {
            var OkHostnameVerifier2 = Java.use('com.squareup.okhttp.internal.tls.OkHostnameVerifier');
            OkHostnameVerifier2.verify.overload('java.lang.String', 'javax.net.ssl.SSLSession').implementation = function(host, session) {
                console.log('[+] OkHttp2 OkHostnameVerifier.verify() bypassed for host: ' + host);
                return true;
            };
        } catch (e) {}
        // Conscrypt, BouncyCastle
        try {
            var conscrypt_TrustManagerImpl = Java.use('com.android.org.conscrypt.TrustManagerImpl');
            conscrypt_TrustManagerImpl.checkTrustedRecursive.implementation = function() {
                console.log('[+] Conscrypt TrustManagerImpl.checkTrustedRecursive() bypassed');
                return [];
            };
        } catch (e) {}
        try {
            var bouncy_TrustManager = Java.use('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider');
            bouncy_TrustManager.checkServerTrusted.implementation = function() {
                console.log('[+] BouncyCastle checkServerTrusted() bypassed');
            };
        } catch (e) {}
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
                    } catch (e) {}
                }
            },
            onComplete: function() {}
        });
        // Universal Java SSL error bypass
        try {
            var SSLPeerUnverifiedException = Java.use('javax.net.ssl.SSLPeerUnverifiedException');
            SSLPeerUnverifiedException.$init.implementation = function(reason) {
                console.log('[+] Universal SSLPeerUnverifiedException bypassed: ' + reason);
                return this.$init('');
            };
        } catch (e) {}
        // Apache HttpClient, Netty, JSSE, SSLSocketFactory, TrustManagerFactory, KeyManagerFactory
        try {
            var AbstractVerifier = Java.use('org.apache.http.conn.ssl.AbstractVerifier');
            AbstractVerifier.verify.implementation = function(host, ssl) {
                console.log('[+] Apache HttpClient AbstractVerifier.verify() bypassed for: ' + host);
            };
        } catch (e) {}
        try {
            var NettyFingerprintTrustManagerFactory = Java.use('io.netty.handler.ssl.util.FingerprintTrustManagerFactory');
            NettyFingerprintTrustManagerFactory.checkTrusted.implementation = function(type, chain) {
                console.log('[+] Netty FingerprintTrustManagerFactory.checkTrusted() bypassed');
            };
        } catch (e) {}
        try {
            var SSLParametersImpl = Java.use('com.android.org.conscrypt.SSLParametersImpl');
            SSLParametersImpl.setEndpointIdentificationAlgorithm.implementation = function(alg) {
                console.log('[+] SSLParametersImpl.setEndpointIdentificationAlgorithm() bypassed');
            };
        } catch (e) {}
        try {
            var SSLSocketFactory = Java.use('javax.net.ssl.SSLSocketFactory');
            SSLSocketFactory.createSocket.overload('java.net.Socket', 'java.lang.String', 'int', 'boolean').implementation = function() {
                console.log('[+] SSLSocketFactory.createSocket() bypassed');
                return this.createSocket.apply(this, arguments);
            };
        } catch (e) {}
        try {
            var TrustManagerFactory = Java.use('javax.net.ssl.TrustManagerFactory');
            TrustManagerFactory.init.overload('java.security.KeyStore').implementation = function(ks) {
                console.log('[+] TrustManagerFactory.init() bypassed');
                return this.init(ks);
            };
        } catch (e) {}
        try {
            var KeyManagerFactory = Java.use('javax.net.ssl.KeyManagerFactory');
            KeyManagerFactory.init.overload('java.security.KeyStore', '[C').implementation = function(ks, pwd) {
                console.log('[+] KeyManagerFactory.init() bypassed');
                return this.init(ks, pwd);
            };
        } catch (e) {}
        // Cordova/Unity/Flutter/ReactNative/Other Frameworks
        try {
            var CordovaWebViewClient = Java.use('org.apache.cordova.CordovaWebViewClient');
            CordovaWebViewClient.onReceivedSslError.implementation = function(view, handler, error) {
                console.log('[+] CordovaWebViewClient.onReceivedSslError() bypassed');
                handler.proceed();
            };
        } catch (e) {}
        try {
            var UnityWebRequest = Java.use('com.unity3d.player.UnityWebRequest');
            UnityWebRequest.setCertificateHandler.implementation = function(handler) {
                console.log('[+] UnityWebRequest.setCertificateHandler() bypassed');
            };
        } catch (e) {}
        // Native hooks
        try {
            var sslctx_custom_verify = Module.findExportByName('libssl.so', 'SSL_CTX_set_custom_verify');
            if (sslctx_custom_verify) {
                Interceptor.attach(sslctx_custom_verify, {
                    onEnter: function(args) {
                        console.log('[+] Native SSL_CTX_set_custom_verify called, bypassing');
                        args[1] = ptr(0);
                    }
                });
            }
        } catch (e) {}
        try {
            var sslctx_set_verify = Module.findExportByName('libssl.so', 'SSL_CTX_set_verify');
            if (sslctx_set_verify) {
                Interceptor.attach(sslctx_set_verify, {
                    onEnter: function(args) {
                        console.log('[+] Native SSL_CTX_set_verify called, bypassing');
                        args[1] = ptr(0);
                    }
                });
            }
        } catch (e) {}
        try {
            var mbedtls_ssl_conf_authmode = Module.findExportByName(null, 'mbedtls_ssl_conf_authmode');
            if (mbedtls_ssl_conf_authmode) {
                Interceptor.attach(mbedtls_ssl_conf_authmode, {
                    onEnter: function(args) {
                        console.log('[+] mbedtls_ssl_conf_authmode called, bypassing');
                        args[1] = 0; // MBEDTLS_SSL_VERIFY_NONE
                    }
                });
            }
        } catch (e) {}
        try {
            var boringssl_set_custom_verify = Module.findExportByName(null, 'SSL_set_custom_verify');
            if (boringssl_set_custom_verify) {
                Interceptor.attach(boringssl_set_custom_verify, {
                    onEnter: function(args) {
                        console.log('[+] boringssl SSL_set_custom_verify called, bypassing');
                        args[1] = ptr(0);
                    }
                });
            }
        } catch (e) {}
        try {
            Interceptor.attach(Module.findExportByName(null, 'SSL_get_verify_result'), {
                onLeave: function(retval) {
                    console.log('[+] Native SSL_get_verify_result bypassed');
                    retval.replace(0); // X509_V_OK
                }
            });
        } catch (e) {}
    });
}

// --- Universal Root Detection Bypass Function ---

// Invoke the pinning bypass and signal readiness (checkpoint for the stage).
Java.perform(function() {
    try { addUniversalSSLPinningBypass(); send({hook: 'universal-ssl-pinning', bypassed: true}); }
    catch (e) { send({hook: 'universal-ssl-pinning', error: String(e)}); }
});

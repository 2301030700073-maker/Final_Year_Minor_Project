package com.fsck.k9.mail.ssl;

import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.hc.client5.http.ssl.DefaultHostnameVerifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TrustManagerFactory {
    public final HashMap cachedTrustManagers = new HashMap();
    public X509TrustManager defaultTrustManager;
    public final LocalKeyStore keyStore;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SecureX509TrustManager implements X509TrustManager {
        public final DefaultHostnameVerifier hostnameVerifier = new DefaultHostnameVerifier();
        public final String mHost;
        public final int mPort;

        public SecureX509TrustManager(String str, int i) {
            this.mHost = str;
            this.mPort = i;
        }

        @Override // javax.net.ssl.X509TrustManager
        public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            TrustManagerFactory.this.defaultTrustManager.checkClientTrusted(x509CertificateArr, str);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0094 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0095  */
        @Override // javax.net.ssl.X509TrustManager
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void checkServerTrusted(java.security.cert.X509Certificate[] r11, java.lang.String r12) {
            /*
                r10 = this;
                r0 = 0
                r1 = r11[r0]
                com.fsck.k9.mail.ssl.TrustManagerFactory r2 = com.fsck.k9.mail.ssl.TrustManagerFactory.this     // Catch: javax.net.ssl.SSLException -> L15 java.security.cert.CertificateException -> L17
                javax.net.ssl.X509TrustManager r2 = r2.defaultTrustManager     // Catch: javax.net.ssl.SSLException -> L15 java.security.cert.CertificateException -> L17
                r2.checkServerTrusted(r11, r12)     // Catch: javax.net.ssl.SSLException -> L15 java.security.cert.CertificateException -> L17
                org.apache.hc.client5.http.ssl.DefaultHostnameVerifier r12 = r10.hostnameVerifier     // Catch: javax.net.ssl.SSLException -> L15 java.security.cert.CertificateException -> L17
                java.lang.String r2 = r10.mHost     // Catch: javax.net.ssl.SSLException -> L15 java.security.cert.CertificateException -> L17
                r12.getClass()     // Catch: javax.net.ssl.SSLException -> L15 java.security.cert.CertificateException -> L17
                org.apache.hc.client5.http.ssl.DefaultHostnameVerifier.verify(r2, r1)     // Catch: javax.net.ssl.SSLException -> L15 java.security.cert.CertificateException -> L17
                return
            L15:
                r12 = move-exception
                goto L19
            L17:
                r12 = move-exception
                goto L1e
            L19:
                java.lang.String r2 = r12.getMessage()
                goto L22
            L1e:
                java.lang.String r2 = r12.getMessage()
            L22:
                com.fsck.k9.mail.ssl.TrustManagerFactory r3 = com.fsck.k9.mail.ssl.TrustManagerFactory.this
                com.fsck.k9.mail.ssl.LocalKeyStore r3 = r3.keyStore
                java.lang.String r4 = r10.mHost
                int r10 = r10.mPort
                monitor-enter(r3)
                r1.getClass()     // Catch: java.lang.Throwable -> L59
                r4.getClass()     // Catch: java.lang.Throwable -> L59
                kotlin.SynchronizedLazyImpl r5 = r3.keyStore$delegate     // Catch: java.lang.Throwable -> L59
                java.lang.Object r5 = r5.getValue()     // Catch: java.lang.Throwable -> L59
                java.security.KeyStore r5 = (java.security.KeyStore) r5     // Catch: java.lang.Throwable -> L59
                if (r5 != 0) goto L3d
                monitor-exit(r3)
                goto L92
            L3d:
                java.lang.String r6 = com.fsck.k9.mail.ssl.LocalKeyStore.getCertKey(r4, r10)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                java.security.cert.Certificate r5 = r5.getCertificate(r6)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r6 = 2
                r7 = 1
                if (r5 != 0) goto L5d
                java.lang.String r1 = "Couldn't find a stored certificate for %s:%d"
                java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                java.lang.Object[] r5 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r5[r0] = r4     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r5[r7] = r10     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                net.thunderbird.core.logging.legacy.Log.v(r1, r5)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                goto L91
            L59:
                r10 = move-exception
                goto L9b
            L5b:
                r10 = move-exception
                goto L8a
            L5d:
                boolean r8 = r5.equals(r1)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                if (r8 != 0) goto L79
                java.lang.String r8 = "Stored certificate for %s:%d doesn't match.\nExpected:\n%s\nActual:\n%s"
                java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r9 = 4
                java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r9[r0] = r4     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r9[r7] = r10     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r9[r6] = r5     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r10 = 3
                r9[r10] = r1     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                net.thunderbird.core.logging.legacy.Log.v(r8, r9)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                goto L91
            L79:
                java.lang.String r1 = "Stored certificate for %s:%d matches the server certificate"
                java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                java.lang.Object[] r5 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r5[r0] = r4     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r5[r7] = r10     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                net.thunderbird.core.logging.legacy.Log.v(r1, r5)     // Catch: java.lang.Throwable -> L59 java.security.KeyStoreException -> L5b
                r0 = r7
                goto L91
            L8a:
                java.lang.String r1 = "Error reading from KeyStore"
                java.lang.Object[] r4 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L59
                net.thunderbird.core.logging.legacy.Log.w(r10, r1, r4)     // Catch: java.lang.Throwable -> L59
            L91:
                monitor-exit(r3)
            L92:
                if (r0 == 0) goto L95
                return
            L95:
                com.fsck.k9.mail.CertificateChainException r10 = new com.fsck.k9.mail.CertificateChainException
                r10.<init>(r2, r11, r12)
                throw r10
            L9b:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L59
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.ssl.TrustManagerFactory.SecureX509TrustManager.checkServerTrusted(java.security.cert.X509Certificate[], java.lang.String):void");
        }

        @Override // javax.net.ssl.X509TrustManager
        public final X509Certificate[] getAcceptedIssuers() {
            return TrustManagerFactory.this.defaultTrustManager.getAcceptedIssuers();
        }
    }

    public TrustManagerFactory(LocalKeyStore localKeyStore) {
        this.keyStore = localKeyStore;
    }

    public final void initialize() {
        javax.net.ssl.TrustManagerFactory trustManagerFactory = javax.net.ssl.TrustManagerFactory.getInstance("X509");
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers != null) {
            for (TrustManager trustManager : trustManagers) {
                if (trustManager instanceof X509TrustManager) {
                    this.defaultTrustManager = (X509TrustManager) trustManager;
                    return;
                }
            }
        }
    }
}

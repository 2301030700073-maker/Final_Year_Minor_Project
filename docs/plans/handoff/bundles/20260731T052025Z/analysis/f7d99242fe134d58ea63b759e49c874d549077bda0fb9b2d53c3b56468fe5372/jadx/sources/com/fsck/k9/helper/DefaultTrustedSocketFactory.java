package com.fsck.k9.helper;

import android.content.Context;
import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import android.text.TextUtils;
import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.mail.ssl.TrustManagerFactory;
import com.fsck.k9.mail.ssl.TrustManagerFactory.SecureX509TrustManager;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import kotlin.collections.ArraysKt___ArraysKt;
import net.thunderbird.core.common.net.HostNameUtils;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultTrustedSocketFactory {
    public static final String[] DISALLOWED_CIPHERS = {"SSL_RSA_WITH_DES_CBC_SHA", "SSL_DHE_RSA_WITH_DES_CBC_SHA", "SSL_DHE_DSS_WITH_DES_CBC_SHA", "SSL_RSA_EXPORT_WITH_RC4_40_MD5", "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", "SSL_RSA_WITH_3DES_EDE_CBC_SHA", "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", "TLS_ECDH_RSA_WITH_RC4_128_SHA", "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", "SSL_RSA_WITH_RC4_128_SHA", "SSL_RSA_WITH_RC4_128_MD5", "TLS_ECDH_RSA_WITH_NULL_SHA", "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_anon_WITH_NULL_SHA", "TLS_ECDH_anon_WITH_RC4_128_SHA", "TLS_RSA_WITH_NULL_SHA256"};
    public static final String[] DISALLOWED_PROTOCOLS = {"SSLv3"};
    public static final String[] ENABLED_CIPHERS;
    public static final String[] ENABLED_PROTOCOLS;
    public final Context context;
    public final TrustManagerFactory trustManagerFactory;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final String[] access$remove(String[] strArr, String[] strArr2) {
            String[] strArr3 = DefaultTrustedSocketFactory.DISALLOWED_CIPHERS;
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                if (!ArraysKt___ArraysKt.contains(strArr2, str)) {
                    arrayList.add(str);
                }
            }
            return (String[]) arrayList.toArray(new String[0]);
        }

        public static final void access$setSniHost(SSLSocketFactory sSLSocketFactory, SSLSocket sSLSocket, String str) {
            String[] strArr = DefaultTrustedSocketFactory.DISALLOWED_CIPHERS;
            if (sSLSocketFactory instanceof SSLCertificateSocketFactory) {
                ((SSLCertificateSocketFactory) sSLSocketFactory).setHostname(sSLSocket, str);
                return;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                SSLParameters sSLParameters = sSLSocket.getSSLParameters();
                sSLParameters.setServerNames(IntOffsetKt.listOf(new SNIHostName(str)));
                sSLSocket.setSSLParameters(sSLParameters);
            } else {
                try {
                    sSLSocket.getClass().getMethod("setHostname", String.class).invoke(sSLSocket, str);
                } catch (Throwable th) {
                    Log.e(th, "Could not call SSLSocket#setHostname(String) method ", new Object[0]);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0067  */
    static {
        /*
            java.lang.String r21 = "TLS_ECDH_anon_WITH_RC4_128_SHA"
            java.lang.String r22 = "TLS_RSA_WITH_NULL_SHA256"
            java.lang.String r2 = "SSL_RSA_WITH_DES_CBC_SHA"
            java.lang.String r3 = "SSL_DHE_RSA_WITH_DES_CBC_SHA"
            java.lang.String r4 = "SSL_DHE_DSS_WITH_DES_CBC_SHA"
            java.lang.String r5 = "SSL_RSA_EXPORT_WITH_RC4_40_MD5"
            java.lang.String r6 = "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"
            java.lang.String r7 = "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"
            java.lang.String r8 = "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"
            java.lang.String r9 = "SSL_RSA_WITH_3DES_EDE_CBC_SHA"
            java.lang.String r10 = "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"
            java.lang.String r11 = "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"
            java.lang.String r12 = "TLS_ECDHE_RSA_WITH_RC4_128_SHA"
            java.lang.String r13 = "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"
            java.lang.String r14 = "TLS_ECDH_RSA_WITH_RC4_128_SHA"
            java.lang.String r15 = "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"
            java.lang.String r16 = "SSL_RSA_WITH_RC4_128_SHA"
            java.lang.String r17 = "SSL_RSA_WITH_RC4_128_MD5"
            java.lang.String r18 = "TLS_ECDH_RSA_WITH_NULL_SHA"
            java.lang.String r19 = "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"
            java.lang.String r20 = "TLS_ECDH_anon_WITH_NULL_SHA"
            java.lang.String[] r0 = new java.lang.String[]{r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22}
            com.fsck.k9.helper.DefaultTrustedSocketFactory.DISALLOWED_CIPHERS = r0
            java.lang.String r0 = "SSLv3"
            java.lang.String[] r0 = new java.lang.String[]{r0}
            com.fsck.k9.helper.DefaultTrustedSocketFactory.DISALLOWED_PROTOCOLS = r0
            r1 = 0
            java.lang.String r0 = "TLS"
            javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch: java.lang.Exception -> L5a
            r0.init(r1, r1, r1)     // Catch: java.lang.Exception -> L5a
            javax.net.ssl.SSLSocketFactory r0 = r0.getSocketFactory()     // Catch: java.lang.Exception -> L5a
            java.net.Socket r0 = r0.createSocket()     // Catch: java.lang.Exception -> L5a
            r0.getClass()     // Catch: java.lang.Exception -> L5a
            javax.net.ssl.SSLSocket r0 = (javax.net.ssl.SSLSocket) r0     // Catch: java.lang.Exception -> L5a
            java.lang.String[] r2 = r0.getEnabledCipherSuites()     // Catch: java.lang.Exception -> L5a
            java.lang.String[] r0 = r0.getSupportedProtocols()     // Catch: java.lang.Exception -> L58
            goto L65
        L58:
            r0 = move-exception
            goto L5c
        L5a:
            r0 = move-exception
            r2 = r1
        L5c:
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = "Error getting information about available SSL/TLS ciphers and protocols"
            net.thunderbird.core.logging.legacy.Log.e(r0, r4, r3)
            r0 = r1
        L65:
            if (r2 == 0) goto L6e
            java.lang.String[] r3 = com.fsck.k9.helper.DefaultTrustedSocketFactory.DISALLOWED_CIPHERS
            java.lang.String[] r2 = com.fsck.k9.helper.DefaultTrustedSocketFactory.Companion.access$remove(r2, r3)
            goto L6f
        L6e:
            r2 = r1
        L6f:
            com.fsck.k9.helper.DefaultTrustedSocketFactory.ENABLED_CIPHERS = r2
            if (r0 == 0) goto L79
            java.lang.String[] r1 = com.fsck.k9.helper.DefaultTrustedSocketFactory.DISALLOWED_PROTOCOLS
            java.lang.String[] r1 = com.fsck.k9.helper.DefaultTrustedSocketFactory.Companion.access$remove(r0, r1)
        L79:
            com.fsck.k9.helper.DefaultTrustedSocketFactory.ENABLED_PROTOCOLS = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.helper.DefaultTrustedSocketFactory.<clinit>():void");
    }

    public DefaultTrustedSocketFactory(Context context, TrustManagerFactory trustManagerFactory) {
        this.context = context;
        this.trustManagerFactory = trustManagerFactory;
    }

    public final Socket createSocket(Socket socket, String str, int i, String str2) {
        TrustManagerFactory.SecureX509TrustManager secureX509TrustManager;
        str.getClass();
        String str3 = str + ":" + i;
        TrustManagerFactory trustManagerFactory = this.trustManagerFactory;
        HashMap hashMap = trustManagerFactory.cachedTrustManagers;
        if (hashMap.containsKey(str3)) {
            secureX509TrustManager = (TrustManagerFactory.SecureX509TrustManager) hashMap.get(str3);
        } else {
            TrustManagerFactory.SecureX509TrustManager secureX509TrustManager2 = trustManagerFactory.new SecureX509TrustManager(str, i);
            hashMap.put(str3, secureX509TrustManager2);
            secureX509TrustManager = secureX509TrustManager2;
        }
        TrustManager[] trustManagerArr = {secureX509TrustManager};
        KeyManager[] keyManagerArr = !TextUtils.isEmpty(str2) ? new KeyManager[]{new KeyChainKeyManager(this.context, str2)} : null;
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(keyManagerArr, trustManagerArr, null);
        SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
        Socket createSocket = socket == null ? socketFactory.createSocket() : socketFactory.createSocket(socket, str, i, true);
        createSocket.getClass();
        SSLSocket sSLSocket = (SSLSocket) createSocket;
        String[] strArr = ENABLED_CIPHERS;
        if (strArr != null) {
            sSLSocket.setEnabledCipherSuites(strArr);
        }
        String[] strArr2 = ENABLED_PROTOCOLS;
        if (strArr2 != null) {
            sSLSocket.setEnabledProtocols(strArr2);
        }
        String isLegalIPv4Address = HostNameUtils.isLegalIPv4Address(str);
        if (isLegalIPv4Address == null) {
            isLegalIPv4Address = HostNameUtils.isLegalIPv6Address(str);
        }
        if (isLegalIPv4Address == null) {
            socketFactory.getClass();
            Companion.access$setSniHost(socketFactory, sSLSocket, str);
        }
        return createSocket;
    }
}

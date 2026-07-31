package com.fsck.k9.helper;

import android.content.Context;
import android.security.KeyChain;
import android.security.KeyChainException;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.mail.ClientCertificateError;
import com.fsck.k9.mail.ClientCertificateException;
import java.net.Socket;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedKeyManager;
import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KeyChainKeyManager extends X509ExtendedKeyManager {
    public final String mAlias;
    public final X509Certificate[] mChain;
    public final PrivateKey mPrivateKey;

    public KeyChainKeyManager(Context context, String str) {
        this.mAlias = str;
        try {
            this.mChain = fetchCertificateChain(context, str);
            try {
                PrivateKey privateKey = KeyChain.getPrivateKey(context, str);
                if (privateKey == null) {
                    throw new MessagingException(CameraDevices$CC.m("No private key found for: ", str));
                }
                this.mPrivateKey = privateKey;
            } catch (InterruptedException e) {
                e = e;
                throw new ClientCertificateException(ClientCertificateError.RetrievalFailure, e);
            }
        } catch (KeyChainException | InterruptedException e2) {
            e = e2;
        }
    }

    public static X509Certificate[] fetchCertificateChain(Context context, String str) {
        X509Certificate[] certificateChain = KeyChain.getCertificateChain(context, str);
        if (certificateChain == null || certificateChain.length == 0) {
            throw new MessagingException(CameraDevices$CC.m("No certificate chain found for: ", str));
        }
        try {
            for (X509Certificate x509Certificate : certificateChain) {
                x509Certificate.checkValidity();
            }
            return certificateChain;
        } catch (CertificateException e) {
            throw new ClientCertificateException(ClientCertificateError.CertificateExpired, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        if (r14.length != 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        r12 = java.util.Arrays.asList(r14);
        r13 = r1.length;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        if (r14 >= r13) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        if (r12.contains(r1[r14].getIssuerX500Principal()) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0072, code lost:
    
        net.thunderbird.core.logging.legacy.Log.w("Client certificate %s not issued by any of the requested issuers", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007b, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String chooseAlias(java.lang.String[] r13, java.security.Principal[] r14) {
        /*
            r12 = this;
            r0 = 0
            if (r13 == 0) goto L86
            int r1 = r13.length
            if (r1 != 0) goto L8
            goto L86
        L8:
            java.security.cert.X509Certificate[] r1 = r12.mChain
            r2 = 0
            r3 = r1[r2]
            java.security.PublicKey r4 = r3.getPublicKey()
            java.lang.String r4 = r4.getAlgorithm()
            java.lang.String r3 = r3.getSigAlgName()
            java.util.Locale r5 = java.util.Locale.US
            java.lang.String r3 = r3.toUpperCase(r5)
            int r5 = r13.length
            r6 = r2
        L21:
            r7 = 1
            java.lang.String r8 = r12.mAlias
            if (r6 >= r5) goto L7d
            r9 = r13[r6]
            if (r9 != 0) goto L2b
            goto L51
        L2b:
            r10 = 95
            int r10 = r9.indexOf(r10)
            r11 = -1
            if (r10 != r11) goto L36
            r11 = r0
            goto L40
        L36:
            int r11 = r10 + 1
            java.lang.String r11 = r9.substring(r11)
            java.lang.String r9 = r9.substring(r2, r10)
        L40:
            boolean r9 = r4.equals(r9)
            if (r9 != 0) goto L47
            goto L51
        L47:
            if (r11 == 0) goto L54
            if (r3 == 0) goto L54
            boolean r9 = r3.contains(r11)
            if (r9 != 0) goto L54
        L51:
            int r6 = r6 + 1
            goto L21
        L54:
            if (r14 == 0) goto L7c
            int r12 = r14.length
            if (r12 != 0) goto L5a
            goto L7c
        L5a:
            java.util.List r12 = java.util.Arrays.asList(r14)
            int r13 = r1.length
            r14 = r2
        L60:
            if (r14 >= r13) goto L72
            r3 = r1[r14]
            javax.security.auth.x500.X500Principal r3 = r3.getIssuerX500Principal()
            boolean r3 = r12.contains(r3)
            if (r3 == 0) goto L6f
            return r8
        L6f:
            int r14 = r14 + 1
            goto L60
        L72:
            java.lang.Object[] r12 = new java.lang.Object[r7]
            r12[r2] = r8
            java.lang.String r13 = "Client certificate %s not issued by any of the requested issuers"
            net.thunderbird.core.logging.legacy.Log.w(r13, r12)
            return r0
        L7c:
            return r8
        L7d:
            java.lang.Object[] r12 = new java.lang.Object[r7]
            r12[r2] = r8
            java.lang.String r13 = "Client certificate %s does not match any of the requested key types"
            net.thunderbird.core.logging.legacy.Log.w(r13, r12)
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.helper.KeyChainKeyManager.chooseAlias(java.lang.String[], java.security.Principal[]):java.lang.String");
    }

    @Override // javax.net.ssl.X509KeyManager
    public final String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
        return chooseAlias(strArr, principalArr);
    }

    @Override // javax.net.ssl.X509ExtendedKeyManager
    public final String chooseEngineClientAlias(String[] strArr, Principal[] principalArr, SSLEngine sSLEngine) {
        return chooseAlias(strArr, principalArr);
    }

    @Override // javax.net.ssl.X509ExtendedKeyManager
    public final String chooseEngineServerAlias(String str, Principal[] principalArr, SSLEngine sSLEngine) {
        return chooseAlias(new String[]{str}, principalArr);
    }

    @Override // javax.net.ssl.X509KeyManager
    public final String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
        return chooseAlias(new String[]{str}, principalArr);
    }

    @Override // javax.net.ssl.X509KeyManager
    public final X509Certificate[] getCertificateChain(String str) {
        if (this.mAlias.equals(str)) {
            return this.mChain;
        }
        return null;
    }

    @Override // javax.net.ssl.X509KeyManager
    public final String[] getClientAliases(String str, Principal[] principalArr) {
        String chooseAlias = chooseAlias(new String[]{str}, principalArr);
        if (chooseAlias == null) {
            return null;
        }
        return new String[]{chooseAlias};
    }

    @Override // javax.net.ssl.X509KeyManager
    public final PrivateKey getPrivateKey(String str) {
        if (this.mAlias.equals(str)) {
            return this.mPrivateKey;
        }
        return null;
    }

    @Override // javax.net.ssl.X509KeyManager
    public final String[] getServerAliases(String str, Principal[] principalArr) {
        String chooseAlias = chooseAlias(new String[]{str}, principalArr);
        if (chooseAlias == null) {
            return null;
        }
        return new String[]{chooseAlias};
    }
}

package com.fsck.k9.mail.ssl;

import com.fsck.k9.mail.CertificateChainException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLException;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LocalKeyStoreKt {
    public static final char[] PASSWORD = new char[0];

    public static final List extract(SSLException sSLException) {
        CertificateChainException certificateChainException;
        X509Certificate[] x509CertificateArr;
        Throwable th = sSLException;
        while (true) {
            Throwable cause = th.getCause();
            if (th instanceof CertificateChainException) {
                certificateChainException = (CertificateChainException) th;
                break;
            }
            if (cause == null) {
                certificateChainException = null;
                break;
            }
            th = cause;
        }
        if (certificateChainException == null || (x509CertificateArr = certificateChainException.certChain) == null) {
            return null;
        }
        return ArraysKt___ArraysKt.toList(x509CertificateArr);
    }
}

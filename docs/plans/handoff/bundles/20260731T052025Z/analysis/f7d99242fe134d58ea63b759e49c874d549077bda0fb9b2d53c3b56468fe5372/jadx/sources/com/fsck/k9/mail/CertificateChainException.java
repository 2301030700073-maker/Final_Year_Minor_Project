package com.fsck.k9.mail;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CertificateChainException extends CertificateException {
    public final X509Certificate[] certChain;

    public CertificateChainException(String str, X509Certificate[] x509CertificateArr, Exception exc) {
        super(str, exc);
        this.certChain = x509CertificateArr;
    }
}

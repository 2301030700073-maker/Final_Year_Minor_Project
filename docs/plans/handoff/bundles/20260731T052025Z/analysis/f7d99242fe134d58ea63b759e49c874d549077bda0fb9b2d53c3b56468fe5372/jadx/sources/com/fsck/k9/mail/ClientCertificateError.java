package com.fsck.k9.mail;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClientCertificateError {
    public static final /* synthetic */ ClientCertificateError[] $VALUES;
    public static final ClientCertificateError CertificateExpired;
    public static final ClientCertificateError RetrievalFailure;

    static {
        ClientCertificateError clientCertificateError = new ClientCertificateError("RetrievalFailure", 0);
        RetrievalFailure = clientCertificateError;
        ClientCertificateError clientCertificateError2 = new ClientCertificateError("CertificateExpired", 1);
        CertificateExpired = clientCertificateError2;
        $VALUES = new ClientCertificateError[]{clientCertificateError, clientCertificateError2};
    }

    public static ClientCertificateError valueOf(String str) {
        return (ClientCertificateError) Enum.valueOf(ClientCertificateError.class, str);
    }

    public static ClientCertificateError[] values() {
        return (ClientCertificateError[]) $VALUES.clone();
    }
}

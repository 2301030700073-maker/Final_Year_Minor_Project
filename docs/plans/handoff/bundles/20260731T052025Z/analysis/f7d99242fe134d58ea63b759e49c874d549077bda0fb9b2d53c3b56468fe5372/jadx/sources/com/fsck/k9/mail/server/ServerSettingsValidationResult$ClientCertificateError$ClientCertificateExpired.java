package com.fsck.k9.mail.server;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired implements ServerSettingsValidationResult {
    public static final ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired INSTANCE = new ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired);
    }

    public final int hashCode() {
        return 1154340289;
    }

    public final String toString() {
        return "ClientCertificateExpired";
    }
}

package app.k9mail.feature.account.server.certificate.domain.entity;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FormattedServerCertificateError {
    public final String hostname;
    public final ServerCertificateProperties serverCertificateProperties;

    public FormattedServerCertificateError(String str, ServerCertificateProperties serverCertificateProperties) {
        str.getClass();
        this.hostname = str;
        this.serverCertificateProperties = serverCertificateProperties;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormattedServerCertificateError)) {
            return false;
        }
        FormattedServerCertificateError formattedServerCertificateError = (FormattedServerCertificateError) obj;
        return Intrinsics.areEqual(this.hostname, formattedServerCertificateError.hostname) && this.serverCertificateProperties.equals(formattedServerCertificateError.serverCertificateProperties);
    }

    public final int hashCode() {
        return this.serverCertificateProperties.hashCode() + (this.hostname.hashCode() * 31);
    }

    public final String toString() {
        return "FormattedServerCertificateError(hostname=" + this.hostname + ", serverCertificateProperties=" + this.serverCertificateProperties + ")";
    }
}

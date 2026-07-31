package app.k9mail.feature.account.server.certificate.domain.entity;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerCertificateError {
    public final List certificateChain;
    public final String hostname;
    public final int port;

    public ServerCertificateError(String str, int i, List list) {
        str.getClass();
        list.getClass();
        this.hostname = str;
        this.port = i;
        this.certificateChain = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerCertificateError)) {
            return false;
        }
        ServerCertificateError serverCertificateError = (ServerCertificateError) obj;
        return Intrinsics.areEqual(this.hostname, serverCertificateError.hostname) && this.port == serverCertificateError.port && Intrinsics.areEqual(this.certificateChain, serverCertificateError.certificateChain);
    }

    public final int hashCode() {
        return this.certificateChain.hashCode() + (((this.hostname.hashCode() * 31) + this.port) * 31);
    }

    public final String toString() {
        return "ServerCertificateError(hostname=" + this.hostname + ", port=" + this.port + ", certificateChain=" + this.certificateChain + ")";
    }
}

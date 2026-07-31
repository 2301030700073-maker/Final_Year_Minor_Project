package app.k9mail.feature.account.server.certificate.ui;

import app.k9mail.feature.account.server.certificate.domain.entity.FormattedServerCertificateError;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerCertificateErrorContract$State {
    public final FormattedServerCertificateError certificateError;
    public final boolean isShowServerCertificate;

    public ServerCertificateErrorContract$State(boolean z, FormattedServerCertificateError formattedServerCertificateError) {
        this.isShowServerCertificate = z;
        this.certificateError = formattedServerCertificateError;
    }

    public static ServerCertificateErrorContract$State copy$default(ServerCertificateErrorContract$State serverCertificateErrorContract$State, FormattedServerCertificateError formattedServerCertificateError, int i) {
        boolean z = (i & 1) != 0 ? serverCertificateErrorContract$State.isShowServerCertificate : true;
        if ((i & 2) != 0) {
            formattedServerCertificateError = serverCertificateErrorContract$State.certificateError;
        }
        serverCertificateErrorContract$State.getClass();
        return new ServerCertificateErrorContract$State(z, formattedServerCertificateError);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerCertificateErrorContract$State)) {
            return false;
        }
        ServerCertificateErrorContract$State serverCertificateErrorContract$State = (ServerCertificateErrorContract$State) obj;
        return this.isShowServerCertificate == serverCertificateErrorContract$State.isShowServerCertificate && Intrinsics.areEqual(this.certificateError, serverCertificateErrorContract$State.certificateError);
    }

    public final int hashCode() {
        int i = (this.isShowServerCertificate ? 1231 : 1237) * 31;
        FormattedServerCertificateError formattedServerCertificateError = this.certificateError;
        return i + (formattedServerCertificateError == null ? 0 : formattedServerCertificateError.hashCode());
    }

    public final String toString() {
        return "State(isShowServerCertificate=" + this.isShowServerCertificate + ", certificateError=" + this.certificateError + ")";
    }
}

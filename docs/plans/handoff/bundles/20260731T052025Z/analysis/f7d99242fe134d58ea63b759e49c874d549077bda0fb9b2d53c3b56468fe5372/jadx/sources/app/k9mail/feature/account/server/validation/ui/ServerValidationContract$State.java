package app.k9mail.feature.account.server.validation.ui;

import coil3.size.ViewSizeResolver;
import com.fsck.k9.mail.ServerSettings;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerValidationContract$State {
    public final String emailAddress;
    public final ServerValidationContract$Error error;
    public final boolean isLoading;
    public final boolean isSuccess;
    public final boolean needsAuthorization;
    public final ServerSettings serverSettings;

    public ServerValidationContract$State(String str, ServerSettings serverSettings, boolean z, boolean z2, ServerValidationContract$Error serverValidationContract$Error, boolean z3) {
        this.emailAddress = str;
        this.serverSettings = serverSettings;
        this.needsAuthorization = z;
        this.isSuccess = z2;
        this.error = serverValidationContract$Error;
        this.isLoading = z3;
    }

    public static ServerValidationContract$State copy$default(ServerValidationContract$State serverValidationContract$State, boolean z, boolean z2, ServerValidationContract$Error serverValidationContract$Error, boolean z3, int i) {
        String str = serverValidationContract$State.emailAddress;
        ServerSettings serverSettings = serverValidationContract$State.serverSettings;
        if ((i & 4) != 0) {
            z = serverValidationContract$State.needsAuthorization;
        }
        boolean z4 = z;
        if ((i & 8) != 0) {
            z2 = serverValidationContract$State.isSuccess;
        }
        boolean z5 = z2;
        if ((i & 16) != 0) {
            serverValidationContract$Error = serverValidationContract$State.error;
        }
        ServerValidationContract$Error serverValidationContract$Error2 = serverValidationContract$Error;
        if ((i & 32) != 0) {
            z3 = serverValidationContract$State.isLoading;
        }
        serverValidationContract$State.getClass();
        return new ServerValidationContract$State(str, serverSettings, z4, z5, serverValidationContract$Error2, z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerValidationContract$State)) {
            return false;
        }
        ServerValidationContract$State serverValidationContract$State = (ServerValidationContract$State) obj;
        return Intrinsics.areEqual(this.emailAddress, serverValidationContract$State.emailAddress) && Intrinsics.areEqual(this.serverSettings, serverValidationContract$State.serverSettings) && this.needsAuthorization == serverValidationContract$State.needsAuthorization && this.isSuccess == serverValidationContract$State.isSuccess && Intrinsics.areEqual(this.error, serverValidationContract$State.error) && this.isLoading == serverValidationContract$State.isLoading;
    }

    public final int hashCode() {
        String str = this.emailAddress;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        ServerSettings serverSettings = this.serverSettings;
        int hashCode2 = (((((hashCode + (serverSettings == null ? 0 : serverSettings.hashCode())) * 31) + (this.needsAuthorization ? 1231 : 1237)) * 31) + (this.isSuccess ? 1231 : 1237)) * 31;
        ServerValidationContract$Error serverValidationContract$Error = this.error;
        return ((hashCode2 + (serverValidationContract$Error != null ? serverValidationContract$Error.hashCode() : 0)) * 31) + (this.isLoading ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(emailAddress=");
        sb.append(this.emailAddress);
        sb.append(", serverSettings=");
        sb.append(this.serverSettings);
        sb.append(", needsAuthorization=");
        ViewSizeResolver.CC.m(sb, this.needsAuthorization, ", isSuccess=", this.isSuccess, ", error=");
        sb.append(this.error);
        sb.append(", isLoading=");
        sb.append(this.isLoading);
        sb.append(")");
        return sb.toString();
    }
}

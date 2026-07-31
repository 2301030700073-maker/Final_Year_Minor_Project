package app.k9mail.feature.settings.p000import.ui;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PasswordPromptResult {
    public final String accountUuid;
    public final String incomingServerPassword;
    public final String outgoingServerPassword;

    public PasswordPromptResult(String str, String str2, String str3) {
        this.accountUuid = str;
        this.incomingServerPassword = str2;
        this.outgoingServerPassword = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PasswordPromptResult)) {
            return false;
        }
        PasswordPromptResult passwordPromptResult = (PasswordPromptResult) obj;
        return this.accountUuid.equals(passwordPromptResult.accountUuid) && Intrinsics.areEqual(this.incomingServerPassword, passwordPromptResult.incomingServerPassword) && Intrinsics.areEqual(this.outgoingServerPassword, passwordPromptResult.outgoingServerPassword);
    }

    public final int hashCode() {
        int hashCode = this.accountUuid.hashCode() * 31;
        String str = this.incomingServerPassword;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.outgoingServerPassword;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return CameraDevices$CC.m(Config.CC.m("PasswordPromptResult(accountUuid=", this.accountUuid, ", incomingServerPassword=", this.incomingServerPassword, ", outgoingServerPassword="), this.outgoingServerPassword, ")");
    }
}

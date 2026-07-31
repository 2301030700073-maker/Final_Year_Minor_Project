package app.k9mail.feature.account.common.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountDisplayOptions {
    public final String accountName;
    public final String displayName;
    public final String emailSignature;

    public AccountDisplayOptions(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.accountName = str;
        this.displayName = str2;
        this.emailSignature = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountDisplayOptions)) {
            return false;
        }
        AccountDisplayOptions accountDisplayOptions = (AccountDisplayOptions) obj;
        return Intrinsics.areEqual(this.accountName, accountDisplayOptions.accountName) && Intrinsics.areEqual(this.displayName, accountDisplayOptions.displayName) && Intrinsics.areEqual(this.emailSignature, accountDisplayOptions.emailSignature);
    }

    public final int hashCode() {
        int m = Modifier.CC.m(this.accountName.hashCode() * 31, this.displayName, 31);
        String str = this.emailSignature;
        return m + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return CameraDevices$CC.m(Config.CC.m("AccountDisplayOptions(accountName=", this.accountName, ", displayName=", this.displayName, ", emailSignature="), this.emailSignature, ")");
    }
}

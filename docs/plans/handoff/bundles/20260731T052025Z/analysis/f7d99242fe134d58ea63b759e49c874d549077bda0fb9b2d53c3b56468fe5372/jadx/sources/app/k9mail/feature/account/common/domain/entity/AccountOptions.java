package app.k9mail.feature.account.common.domain.entity;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountOptions {
    public final String accountName;
    public final int checkFrequencyInMinutes;
    public final String displayName;
    public final String emailSignature;
    public final int messageDisplayCount;
    public final boolean showNotification;

    public AccountOptions(int i, int i2, String str, String str2, String str3, boolean z) {
        str.getClass();
        str2.getClass();
        this.accountName = str;
        this.displayName = str2;
        this.emailSignature = str3;
        this.checkFrequencyInMinutes = i;
        this.messageDisplayCount = i2;
        this.showNotification = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountOptions)) {
            return false;
        }
        AccountOptions accountOptions = (AccountOptions) obj;
        return Intrinsics.areEqual(this.accountName, accountOptions.accountName) && Intrinsics.areEqual(this.displayName, accountOptions.displayName) && Intrinsics.areEqual(this.emailSignature, accountOptions.emailSignature) && this.checkFrequencyInMinutes == accountOptions.checkFrequencyInMinutes && this.messageDisplayCount == accountOptions.messageDisplayCount && this.showNotification == accountOptions.showNotification;
    }

    public final int hashCode() {
        int m = Modifier.CC.m(this.accountName.hashCode() * 31, this.displayName, 31);
        String str = this.emailSignature;
        return ((((((m + (str == null ? 0 : str.hashCode())) * 31) + this.checkFrequencyInMinutes) * 31) + this.messageDisplayCount) * 31) + (this.showNotification ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("AccountOptions(accountName=", this.accountName, ", displayName=", this.displayName, ", emailSignature=");
        m.append(this.emailSignature);
        m.append(", checkFrequencyInMinutes=");
        m.append(this.checkFrequencyInMinutes);
        m.append(", messageDisplayCount=");
        m.append(this.messageDisplayCount);
        m.append(", showNotification=");
        m.append(this.showNotification);
        m.append(")");
        return m.toString();
    }
}

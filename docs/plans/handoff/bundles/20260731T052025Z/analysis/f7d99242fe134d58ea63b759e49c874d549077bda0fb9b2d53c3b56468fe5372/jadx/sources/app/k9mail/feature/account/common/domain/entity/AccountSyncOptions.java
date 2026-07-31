package app.k9mail.feature.account.common.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSyncOptions {
    public final int checkFrequencyInMinutes;
    public final int messageDisplayCount;
    public final boolean showNotification;

    public AccountSyncOptions(int i, int i2, boolean z) {
        this.checkFrequencyInMinutes = i;
        this.messageDisplayCount = i2;
        this.showNotification = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountSyncOptions)) {
            return false;
        }
        AccountSyncOptions accountSyncOptions = (AccountSyncOptions) obj;
        return this.checkFrequencyInMinutes == accountSyncOptions.checkFrequencyInMinutes && this.messageDisplayCount == accountSyncOptions.messageDisplayCount && this.showNotification == accountSyncOptions.showNotification;
    }

    public final int hashCode() {
        return (((this.checkFrequencyInMinutes * 31) + this.messageDisplayCount) * 31) + (this.showNotification ? 1231 : 1237);
    }

    public final String toString() {
        return CameraDevices$CC.m(")", Config.CC.m91m("AccountSyncOptions(checkFrequencyInMinutes=", this.checkFrequencyInMinutes, ", messageDisplayCount=", this.messageDisplayCount, ", showNotification="), this.showNotification);
    }
}

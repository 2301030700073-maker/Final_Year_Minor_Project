package net.thunderbird.feature.navigation.drawer.dropdown.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnifiedDisplayAccount implements DisplayAccount {
    public final boolean hasError;
    public final int starredMessageCount;
    public final int unreadMessageCount;

    public UnifiedDisplayAccount(int i, int i2, boolean z) {
        this.unreadMessageCount = i;
        this.starredMessageCount = i2;
        this.hasError = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnifiedDisplayAccount)) {
            return false;
        }
        UnifiedDisplayAccount unifiedDisplayAccount = (UnifiedDisplayAccount) obj;
        return this.unreadMessageCount == unifiedDisplayAccount.unreadMessageCount && this.starredMessageCount == unifiedDisplayAccount.starredMessageCount && this.hasError == unifiedDisplayAccount.hasError;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final boolean getHasError() {
        return this.hasError;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final String getId() {
        return "unified_account";
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final int getStarredMessageCount() {
        return this.starredMessageCount;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount
    public final int getUnreadMessageCount() {
        return this.unreadMessageCount;
    }

    public final int hashCode() {
        return (((this.unreadMessageCount * 31) + this.starredMessageCount) * 31) + (this.hasError ? 1231 : 1237);
    }

    public final String toString() {
        return CameraDevices$CC.m(")", Config.CC.m91m("UnifiedDisplayAccount(unreadMessageCount=", this.unreadMessageCount, ", starredMessageCount=", this.starredMessageCount, ", hasError="), this.hasError);
    }
}

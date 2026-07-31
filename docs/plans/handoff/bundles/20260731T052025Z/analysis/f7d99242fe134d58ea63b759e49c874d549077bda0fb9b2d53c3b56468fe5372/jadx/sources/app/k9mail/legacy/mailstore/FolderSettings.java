package app.k9mail.legacy.mailstore;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderSettings {
    public final boolean inTopGroup;
    public final boolean integrate;
    public final boolean isNotificationsEnabled;
    public final boolean isPushEnabled;
    public final boolean isSyncEnabled;
    public final boolean isVisible;
    public final int visibleLimit;

    public FolderSettings(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.visibleLimit = i;
        this.isVisible = z;
        this.isSyncEnabled = z2;
        this.isNotificationsEnabled = z3;
        this.isPushEnabled = z4;
        this.inTopGroup = z5;
        this.integrate = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderSettings)) {
            return false;
        }
        FolderSettings folderSettings = (FolderSettings) obj;
        return this.visibleLimit == folderSettings.visibleLimit && this.isVisible == folderSettings.isVisible && this.isSyncEnabled == folderSettings.isSyncEnabled && this.isNotificationsEnabled == folderSettings.isNotificationsEnabled && this.isPushEnabled == folderSettings.isPushEnabled && this.inTopGroup == folderSettings.inTopGroup && this.integrate == folderSettings.integrate;
    }

    public final int hashCode() {
        return (((((((((((this.visibleLimit * 31) + (this.isVisible ? 1231 : 1237)) * 31) + (this.isSyncEnabled ? 1231 : 1237)) * 31) + (this.isNotificationsEnabled ? 1231 : 1237)) * 31) + (this.isPushEnabled ? 1231 : 1237)) * 31) + (this.inTopGroup ? 1231 : 1237)) * 31) + (this.integrate ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FolderSettings(visibleLimit=");
        sb.append(this.visibleLimit);
        sb.append(", isVisible=");
        sb.append(this.isVisible);
        sb.append(", isSyncEnabled=");
        ViewSizeResolver.CC.m(sb, this.isSyncEnabled, ", isNotificationsEnabled=", this.isNotificationsEnabled, ", isPushEnabled=");
        ViewSizeResolver.CC.m(sb, this.isPushEnabled, ", inTopGroup=", this.inTopGroup, ", integrate=");
        return CameraDevices$CC.m(")", sb, this.integrate);
    }
}

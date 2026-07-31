package app.k9mail.legacy.mailstore;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteFolderDetails {
    public final RemoteFolder folder;
    public final boolean isInTopGroup;
    public final boolean isIntegrate;
    public final boolean isNotificationsEnabled;
    public final boolean isPushEnabled;
    public final boolean isSyncEnabled;
    public final boolean isVisible;

    public RemoteFolderDetails(RemoteFolder remoteFolder, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.folder = remoteFolder;
        this.isInTopGroup = z;
        this.isIntegrate = z2;
        this.isSyncEnabled = z3;
        this.isVisible = z4;
        this.isNotificationsEnabled = z5;
        this.isPushEnabled = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemoteFolderDetails)) {
            return false;
        }
        RemoteFolderDetails remoteFolderDetails = (RemoteFolderDetails) obj;
        return this.folder.equals(remoteFolderDetails.folder) && this.isInTopGroup == remoteFolderDetails.isInTopGroup && this.isIntegrate == remoteFolderDetails.isIntegrate && this.isSyncEnabled == remoteFolderDetails.isSyncEnabled && this.isVisible == remoteFolderDetails.isVisible && this.isNotificationsEnabled == remoteFolderDetails.isNotificationsEnabled && this.isPushEnabled == remoteFolderDetails.isPushEnabled;
    }

    public final int hashCode() {
        return (((((((((((this.folder.hashCode() * 31) + (this.isInTopGroup ? 1231 : 1237)) * 31) + (this.isIntegrate ? 1231 : 1237)) * 31) + (this.isSyncEnabled ? 1231 : 1237)) * 31) + (this.isVisible ? 1231 : 1237)) * 31) + (this.isNotificationsEnabled ? 1231 : 1237)) * 31) + (this.isPushEnabled ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RemoteFolderDetails(folder=");
        sb.append(this.folder);
        sb.append(", isInTopGroup=");
        sb.append(this.isInTopGroup);
        sb.append(", isIntegrate=");
        ViewSizeResolver.CC.m(sb, this.isIntegrate, ", isSyncEnabled=", this.isSyncEnabled, ", isVisible=");
        ViewSizeResolver.CC.m(sb, this.isVisible, ", isNotificationsEnabled=", this.isNotificationsEnabled, ", isPushEnabled=");
        return CameraDevices$CC.m(")", sb, this.isPushEnabled);
    }
}

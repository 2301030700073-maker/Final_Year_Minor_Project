package net.thunderbird.feature.mail.folder.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderDetails {
    public final Folder folder;
    public final boolean isInTopGroup;
    public final boolean isIntegrate;
    public final boolean isNotificationsEnabled;
    public final boolean isPushEnabled;
    public final boolean isSyncEnabled;
    public final boolean isVisible;

    public FolderDetails(Folder folder, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.folder = folder;
        this.isInTopGroup = z;
        this.isIntegrate = z2;
        this.isSyncEnabled = z3;
        this.isVisible = z4;
        this.isNotificationsEnabled = z5;
        this.isPushEnabled = z6;
    }

    public static FolderDetails copy$default(FolderDetails folderDetails, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i) {
        boolean z7 = z;
        Folder folder = folderDetails.folder;
        if ((i & 2) != 0) {
            z7 = folderDetails.isInTopGroup;
        }
        if ((i & 4) != 0) {
            z2 = folderDetails.isIntegrate;
        }
        if ((i & 8) != 0) {
            z3 = folderDetails.isSyncEnabled;
        }
        if ((i & 16) != 0) {
            z4 = folderDetails.isVisible;
        }
        if ((i & 32) != 0) {
            z5 = folderDetails.isNotificationsEnabled;
        }
        if ((i & 64) != 0) {
            z6 = folderDetails.isPushEnabled;
        }
        boolean z8 = z6;
        folderDetails.getClass();
        boolean z9 = z5;
        boolean z10 = z4;
        boolean z11 = z3;
        return new FolderDetails(folder, z7, z2, z11, z10, z9, z8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderDetails)) {
            return false;
        }
        FolderDetails folderDetails = (FolderDetails) obj;
        return this.folder.equals(folderDetails.folder) && this.isInTopGroup == folderDetails.isInTopGroup && this.isIntegrate == folderDetails.isIntegrate && this.isSyncEnabled == folderDetails.isSyncEnabled && this.isVisible == folderDetails.isVisible && this.isNotificationsEnabled == folderDetails.isNotificationsEnabled && this.isPushEnabled == folderDetails.isPushEnabled;
    }

    public final int hashCode() {
        return (((((((((((this.folder.hashCode() * 31) + (this.isInTopGroup ? 1231 : 1237)) * 31) + (this.isIntegrate ? 1231 : 1237)) * 31) + (this.isSyncEnabled ? 1231 : 1237)) * 31) + (this.isVisible ? 1231 : 1237)) * 31) + (this.isNotificationsEnabled ? 1231 : 1237)) * 31) + (this.isPushEnabled ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FolderDetails(folder=");
        sb.append(this.folder);
        sb.append(", isInTopGroup=");
        sb.append(this.isInTopGroup);
        sb.append(", isIntegrate=");
        ViewSizeResolver.CC.m(sb, this.isIntegrate, ", isSyncEnabled=", this.isSyncEnabled, ", isVisible=");
        ViewSizeResolver.CC.m(sb, this.isVisible, ", isNotificationsEnabled=", this.isNotificationsEnabled, ", isPushEnabled=");
        return CameraDevices$CC.m(")", sb, this.isPushEnabled);
    }
}

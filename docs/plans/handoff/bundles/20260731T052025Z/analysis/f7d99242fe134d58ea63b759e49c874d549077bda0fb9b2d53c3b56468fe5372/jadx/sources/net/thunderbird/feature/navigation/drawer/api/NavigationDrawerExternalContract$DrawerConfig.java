package net.thunderbird.feature.navigation.drawer.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavigationDrawerExternalContract$DrawerConfig {
    public final boolean expandAllFolder;
    public final boolean showStarredCount;
    public final boolean showUnifiedFolders;

    public NavigationDrawerExternalContract$DrawerConfig(boolean z, boolean z2, boolean z3) {
        this.showUnifiedFolders = z;
        this.showStarredCount = z2;
        this.expandAllFolder = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NavigationDrawerExternalContract$DrawerConfig)) {
            return false;
        }
        NavigationDrawerExternalContract$DrawerConfig navigationDrawerExternalContract$DrawerConfig = (NavigationDrawerExternalContract$DrawerConfig) obj;
        return this.showUnifiedFolders == navigationDrawerExternalContract$DrawerConfig.showUnifiedFolders && this.showStarredCount == navigationDrawerExternalContract$DrawerConfig.showStarredCount && this.expandAllFolder == navigationDrawerExternalContract$DrawerConfig.expandAllFolder;
    }

    public final int hashCode() {
        return ((((this.showUnifiedFolders ? 1231 : 1237) * 31) + (this.showStarredCount ? 1231 : 1237)) * 31) + (this.expandAllFolder ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DrawerConfig(showUnifiedFolders=");
        sb.append(this.showUnifiedFolders);
        sb.append(", showStarredCount=");
        sb.append(this.showStarredCount);
        sb.append(", expandAllFolder=");
        return CameraDevices$CC.m(")", sb, this.expandAllFolder);
    }
}

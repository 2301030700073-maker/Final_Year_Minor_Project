package net.thunderbird.feature.navigation.drawer.dropdown.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnifiedDisplayFolder implements DisplayFolder {
    public final int starredMessageCount;
    public final int unreadMessageCount;

    public UnifiedDisplayFolder(int i, int i2) {
        this.unreadMessageCount = i;
        this.starredMessageCount = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnifiedDisplayFolder)) {
            return false;
        }
        UnifiedDisplayFolder unifiedDisplayFolder = (UnifiedDisplayFolder) obj;
        return this.unreadMessageCount == unifiedDisplayFolder.unreadMessageCount && this.starredMessageCount == unifiedDisplayFolder.starredMessageCount;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final String getId() {
        return "unified_inbox";
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final String getPathDelimiter() {
        return "/";
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final int getStarredMessageCount() {
        return this.starredMessageCount;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final int getUnreadMessageCount() {
        return this.unreadMessageCount;
    }

    public final int hashCode() {
        return ((((UnifiedDisplayFolderType.INBOX.hashCode() - 778837625) * 31) + this.unreadMessageCount) * 31) + this.starredMessageCount;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UnifiedDisplayFolder(id=unified_inbox, unifiedType=");
        sb.append(UnifiedDisplayFolderType.INBOX);
        sb.append(", unreadMessageCount=");
        sb.append(this.unreadMessageCount);
        sb.append(", starredMessageCount=");
        return CameraDevices$CC.m(sb, this.starredMessageCount, ")");
    }
}

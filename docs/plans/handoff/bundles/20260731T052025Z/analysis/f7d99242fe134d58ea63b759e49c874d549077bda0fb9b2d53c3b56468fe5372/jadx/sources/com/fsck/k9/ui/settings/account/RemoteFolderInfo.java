package com.fsck.k9.ui.settings.account;

import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteFolderInfo {
    public final Map automaticSpecialFolders;
    public final List folders;

    public RemoteFolderInfo(List list, Map map) {
        this.folders = list;
        this.automaticSpecialFolders = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemoteFolderInfo)) {
            return false;
        }
        RemoteFolderInfo remoteFolderInfo = (RemoteFolderInfo) obj;
        return this.folders.equals(remoteFolderInfo.folders) && this.automaticSpecialFolders.equals(remoteFolderInfo.automaticSpecialFolders);
    }

    public final int hashCode() {
        return this.automaticSpecialFolders.hashCode() + (this.folders.hashCode() * 31);
    }

    public final String toString() {
        return "RemoteFolderInfo(folders=" + this.folders + ", automaticSpecialFolders=" + this.automaticSpecialFolders + ")";
    }
}

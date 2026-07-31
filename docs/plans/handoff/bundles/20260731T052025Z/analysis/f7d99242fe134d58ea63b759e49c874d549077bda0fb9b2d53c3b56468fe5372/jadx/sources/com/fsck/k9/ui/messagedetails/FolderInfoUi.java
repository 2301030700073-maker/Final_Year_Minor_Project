package com.fsck.k9.ui.messagedetails;

import net.thunderbird.feature.mail.folder.api.FolderType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderInfoUi {
    public final String displayName;
    public final FolderType type;

    public FolderInfoUi(String str, FolderType folderType) {
        this.displayName = str;
        this.type = folderType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderInfoUi)) {
            return false;
        }
        FolderInfoUi folderInfoUi = (FolderInfoUi) obj;
        return this.displayName.equals(folderInfoUi.displayName) && this.type == folderInfoUi.type;
    }

    public final int hashCode() {
        return this.type.hashCode() + (this.displayName.hashCode() * 31);
    }

    public final String toString() {
        return "FolderInfoUi(displayName=" + this.displayName + ", type=" + this.type + ")";
    }
}

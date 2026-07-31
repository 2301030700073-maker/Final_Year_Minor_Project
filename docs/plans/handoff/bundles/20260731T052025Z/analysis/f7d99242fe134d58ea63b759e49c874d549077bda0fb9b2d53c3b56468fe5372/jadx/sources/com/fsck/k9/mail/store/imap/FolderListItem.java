package com.fsck.k9.mail.store.imap;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.FolderType;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderListItem {
    public final String folderPathDelimiter;
    public final String name;
    public final String serverId;
    public final FolderType type;

    public FolderListItem(String str, String str2, FolderType folderType, String str3) {
        str.getClass();
        this.serverId = str;
        this.name = str2;
        this.type = folderType;
        this.folderPathDelimiter = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderListItem)) {
            return false;
        }
        FolderListItem folderListItem = (FolderListItem) obj;
        return Intrinsics.areEqual(this.serverId, folderListItem.serverId) && this.name.equals(folderListItem.name) && this.type == folderListItem.type && Intrinsics.areEqual(this.folderPathDelimiter, folderListItem.folderPathDelimiter);
    }

    public final int hashCode() {
        int hashCode = (this.type.hashCode() + Modifier.CC.m(this.serverId.hashCode() * 31, this.name, 31)) * 31;
        String str = this.folderPathDelimiter;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("FolderListItem(serverId=", this.serverId, ", name=", this.name, ", type=");
        m.append(this.type);
        m.append(", folderPathDelimiter=");
        m.append(this.folderPathDelimiter);
        m.append(")");
        return m.toString();
    }
}

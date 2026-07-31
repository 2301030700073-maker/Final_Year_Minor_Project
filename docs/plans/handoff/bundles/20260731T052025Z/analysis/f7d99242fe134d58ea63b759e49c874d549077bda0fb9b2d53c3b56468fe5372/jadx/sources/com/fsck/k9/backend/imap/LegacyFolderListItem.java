package com.fsck.k9.backend.imap;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.FolderType;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyFolderListItem {
    public final String name;
    public final String serverId;
    public final FolderType type;

    public LegacyFolderListItem(String str, String str2, FolderType folderType) {
        str.getClass();
        this.serverId = str;
        this.name = str2;
        this.type = folderType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LegacyFolderListItem)) {
            return false;
        }
        LegacyFolderListItem legacyFolderListItem = (LegacyFolderListItem) obj;
        return Intrinsics.areEqual(this.serverId, legacyFolderListItem.serverId) && this.name.equals(legacyFolderListItem.name) && this.type == legacyFolderListItem.type;
    }

    public final int hashCode() {
        return this.type.hashCode() + Modifier.CC.m(this.serverId.hashCode() * 31, this.name, 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("LegacyFolderListItem(serverId=", this.serverId, ", name=", this.name, ", type=");
        m.append(this.type);
        m.append(")");
        return m.toString();
    }
}

package com.fsck.k9.backend.api;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.FolderType;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderInfo {
    public final String name;
    public final String serverId;
    public final FolderType type;

    public FolderInfo(String str, String str2, FolderType folderType) {
        str.getClass();
        str2.getClass();
        this.serverId = str;
        this.name = str2;
        this.type = folderType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderInfo)) {
            return false;
        }
        FolderInfo folderInfo = (FolderInfo) obj;
        return Intrinsics.areEqual(this.serverId, folderInfo.serverId) && Intrinsics.areEqual(this.name, folderInfo.name) && this.type == folderInfo.type;
    }

    public final int hashCode() {
        return (this.type.hashCode() + Modifier.CC.m(this.serverId.hashCode() * 31, this.name, 31)) * 31;
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("FolderInfo(serverId=", this.serverId, ", name=", this.name, ", type=");
        m.append(this.type);
        m.append(", folderPathDelimiter=null)");
        return m.toString();
    }
}

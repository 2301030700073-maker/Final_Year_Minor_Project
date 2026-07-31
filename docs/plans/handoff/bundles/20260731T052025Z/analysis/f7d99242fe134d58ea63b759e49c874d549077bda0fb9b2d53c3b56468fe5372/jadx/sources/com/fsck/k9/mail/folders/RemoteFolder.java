package com.fsck.k9.mail.folders;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.FolderType;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.FolderServerId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteFolder {
    public final String displayName;
    public final String serverId;
    public final FolderType type;

    public RemoteFolder(String str, String str2, FolderType folderType) {
        str.getClass();
        this.serverId = str;
        this.displayName = str2;
        this.type = folderType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemoteFolder)) {
            return false;
        }
        RemoteFolder remoteFolder = (RemoteFolder) obj;
        return Intrinsics.areEqual(this.serverId, remoteFolder.serverId) && this.displayName.equals(remoteFolder.displayName) && this.type == remoteFolder.type;
    }

    public final int hashCode() {
        return this.type.hashCode() + Modifier.CC.m(this.serverId.hashCode() * 31, this.displayName, 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("RemoteFolder(serverId=", FolderServerId.m1035toStringimpl(this.serverId), ", displayName=", this.displayName, ", type=");
        m.append(this.type);
        m.append(")");
        return m.toString();
    }
}

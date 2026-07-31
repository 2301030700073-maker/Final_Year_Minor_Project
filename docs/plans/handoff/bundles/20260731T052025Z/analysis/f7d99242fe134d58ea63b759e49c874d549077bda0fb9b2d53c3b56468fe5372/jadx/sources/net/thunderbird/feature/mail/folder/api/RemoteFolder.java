package net.thunderbird.feature.mail.folder.api;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteFolder {
    public final long id;
    public final String name;
    public final String serverId;
    public final FolderType type;

    public RemoteFolder(long j, String str, String str2, FolderType folderType) {
        this.id = j;
        this.serverId = str;
        this.name = str2;
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
        return this.id == remoteFolder.id && this.serverId.equals(remoteFolder.serverId) && this.name.equals(remoteFolder.name) && this.type == remoteFolder.type;
    }

    public final int hashCode() {
        long j = this.id;
        return this.type.hashCode() + Modifier.CC.m(Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, this.serverId, 31), this.name, 31);
    }

    public final String toString() {
        return "RemoteFolder(id=" + this.id + ", serverId=" + this.serverId + ", name=" + this.name + ", type=" + this.type + ")";
    }
}

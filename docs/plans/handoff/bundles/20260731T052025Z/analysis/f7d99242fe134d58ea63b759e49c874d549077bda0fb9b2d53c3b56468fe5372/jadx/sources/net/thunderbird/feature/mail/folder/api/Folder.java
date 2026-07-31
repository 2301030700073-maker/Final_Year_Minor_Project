package net.thunderbird.feature.mail.folder.api;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Folder {
    public final long id;
    public final boolean isLocalOnly;
    public final String name;
    public final FolderType type;

    public Folder(long j, String str, FolderType folderType, boolean z) {
        str.getClass();
        this.id = j;
        this.name = str;
        this.type = folderType;
        this.isLocalOnly = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Folder)) {
            return false;
        }
        Folder folder = (Folder) obj;
        return this.id == folder.id && Intrinsics.areEqual(this.name, folder.name) && this.type == folder.type && this.isLocalOnly == folder.isLocalOnly;
    }

    public final int hashCode() {
        long j = this.id;
        return ((this.type.hashCode() + Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, this.name, 31)) * 31) + (this.isLocalOnly ? 1231 : 1237);
    }

    public final String toString() {
        return "Folder(id=" + this.id + ", name=" + this.name + ", type=" + this.type + ", isLocalOnly=" + this.isLocalOnly + ")";
    }
}

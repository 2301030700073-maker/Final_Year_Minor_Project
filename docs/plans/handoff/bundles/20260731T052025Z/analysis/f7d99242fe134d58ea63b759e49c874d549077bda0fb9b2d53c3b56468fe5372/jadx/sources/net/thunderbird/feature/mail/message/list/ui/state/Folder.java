package net.thunderbird.feature.mail.message.list.ui.state;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.FolderType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Folder {
    public final Account account;
    public final String id;
    public final String name;
    public final FolderType type;

    public Folder(String str, Account account, String str2, FolderType folderType) {
        str2.getClass();
        this.id = str;
        this.account = account;
        this.name = str2;
        this.type = folderType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Folder)) {
            return false;
        }
        Folder folder = (Folder) obj;
        return this.id.equals(folder.id) && this.account.equals(folder.account) && Intrinsics.areEqual(this.name, folder.name) && this.type == folder.type;
    }

    public final int hashCode() {
        return ((this.type.hashCode() + Modifier.CC.m((this.account.hashCode() + (this.id.hashCode() * 31)) * 31, this.name, 31)) * 29791) + 1237;
    }

    public final String toString() {
        return "Folder(id=" + this.id + ", account=" + this.account + ", name=" + this.name + ", type=" + this.type + ", parent=null, root=null, canExpunge=false)";
    }
}

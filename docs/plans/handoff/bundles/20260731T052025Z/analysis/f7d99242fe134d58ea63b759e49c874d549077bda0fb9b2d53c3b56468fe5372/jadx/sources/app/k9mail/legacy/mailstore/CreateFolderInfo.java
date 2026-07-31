package app.k9mail.legacy.mailstore;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.FolderType;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateFolderInfo {
    public final String name;
    public final String serverId;
    public final FolderSettings settings;
    public final FolderType type;

    public CreateFolderInfo(String str, String str2, FolderType folderType, FolderSettings folderSettings) {
        str.getClass();
        str2.getClass();
        this.serverId = str;
        this.name = str2;
        this.type = folderType;
        this.settings = folderSettings;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreateFolderInfo)) {
            return false;
        }
        CreateFolderInfo createFolderInfo = (CreateFolderInfo) obj;
        return Intrinsics.areEqual(this.serverId, createFolderInfo.serverId) && Intrinsics.areEqual(this.name, createFolderInfo.name) && this.type == createFolderInfo.type && this.settings.equals(createFolderInfo.settings);
    }

    public final int hashCode() {
        return this.settings.hashCode() + ((this.type.hashCode() + Modifier.CC.m(this.serverId.hashCode() * 31, this.name, 31)) * 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("CreateFolderInfo(serverId=", this.serverId, ", name=", this.name, ", type=");
        m.append(this.type);
        m.append(", settings=");
        m.append(this.settings);
        m.append(")");
        return m.toString();
    }
}

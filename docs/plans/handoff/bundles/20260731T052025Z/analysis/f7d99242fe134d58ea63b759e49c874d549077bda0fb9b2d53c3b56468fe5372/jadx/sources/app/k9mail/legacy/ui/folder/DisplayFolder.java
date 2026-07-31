package app.k9mail.legacy.ui.folder;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.Folder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayFolder {
    public final Folder folder;
    public final boolean isInTopGroup;
    public final String pathDelimiter;
    public final int starredMessageCount;
    public final int unreadMessageCount;

    public DisplayFolder(Folder folder, boolean z, int i, int i2, String str) {
        str.getClass();
        this.folder = folder;
        this.isInTopGroup = z;
        this.unreadMessageCount = i;
        this.starredMessageCount = i2;
        this.pathDelimiter = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayFolder)) {
            return false;
        }
        DisplayFolder displayFolder = (DisplayFolder) obj;
        return this.folder.equals(displayFolder.folder) && this.isInTopGroup == displayFolder.isInTopGroup && this.unreadMessageCount == displayFolder.unreadMessageCount && this.starredMessageCount == displayFolder.starredMessageCount && Intrinsics.areEqual(this.pathDelimiter, displayFolder.pathDelimiter);
    }

    public final int hashCode() {
        return this.pathDelimiter.hashCode() + (((((((this.folder.hashCode() * 31) + (this.isInTopGroup ? 1231 : 1237)) * 31) + this.unreadMessageCount) * 31) + this.starredMessageCount) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DisplayFolder(folder=");
        sb.append(this.folder);
        sb.append(", isInTopGroup=");
        sb.append(this.isInTopGroup);
        sb.append(", unreadMessageCount=");
        Modifier.CC.m(sb, this.unreadMessageCount, ", starredMessageCount=", this.starredMessageCount, ", pathDelimiter=");
        return CameraDevices$CC.m(sb, this.pathDelimiter, ")");
    }
}

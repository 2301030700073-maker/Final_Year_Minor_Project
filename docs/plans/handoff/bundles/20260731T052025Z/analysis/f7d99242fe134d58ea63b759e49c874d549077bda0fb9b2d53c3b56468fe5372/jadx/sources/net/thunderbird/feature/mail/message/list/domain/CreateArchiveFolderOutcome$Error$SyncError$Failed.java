package net.thunderbird.feature.mail.message.list.domain;

import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.FolderServerId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateArchiveFolderOutcome$Error$SyncError$Failed implements CreateArchiveFolderOutcome$Error {
    public final String message;
    public final String serverId;

    public CreateArchiveFolderOutcome$Error$SyncError$Failed(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.serverId = str;
        this.message = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreateArchiveFolderOutcome$Error$SyncError$Failed)) {
            return false;
        }
        CreateArchiveFolderOutcome$Error$SyncError$Failed createArchiveFolderOutcome$Error$SyncError$Failed = (CreateArchiveFolderOutcome$Error$SyncError$Failed) obj;
        return Intrinsics.areEqual(this.serverId, createArchiveFolderOutcome$Error$SyncError$Failed.serverId) && Intrinsics.areEqual(this.message, createArchiveFolderOutcome$Error$SyncError$Failed.message);
    }

    public final int hashCode() {
        return Modifier.CC.m(this.serverId.hashCode() * 31, this.message, 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("Failed(serverId=", FolderServerId.m1035toStringimpl(this.serverId), ", message=", this.message, ", exception=null)");
    }
}

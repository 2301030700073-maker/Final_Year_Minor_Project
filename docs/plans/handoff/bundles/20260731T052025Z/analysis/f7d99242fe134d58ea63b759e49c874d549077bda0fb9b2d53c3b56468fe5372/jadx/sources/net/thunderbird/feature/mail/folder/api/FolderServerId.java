package net.thunderbird.feature.mail.folder.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderServerId {
    public final String serverId;

    public /* synthetic */ FolderServerId(String str) {
        this.serverId = str;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1035toStringimpl(String str) {
        return CameraDevices$CC.m("FolderServerId(serverId=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof FolderServerId) {
            return Intrinsics.areEqual(this.serverId, ((FolderServerId) obj).serverId);
        }
        return false;
    }

    public final int hashCode() {
        return this.serverId.hashCode();
    }

    public final String toString() {
        return m1035toStringimpl(this.serverId);
    }
}

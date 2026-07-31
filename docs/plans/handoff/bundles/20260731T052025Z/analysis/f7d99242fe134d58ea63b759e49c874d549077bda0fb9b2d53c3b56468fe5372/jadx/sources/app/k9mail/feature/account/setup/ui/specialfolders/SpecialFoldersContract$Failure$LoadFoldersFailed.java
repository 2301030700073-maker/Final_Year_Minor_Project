package app.k9mail.feature.account.setup.ui.specialfolders;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFoldersContract$Failure$LoadFoldersFailed {
    public final String messageFromServer;

    public SpecialFoldersContract$Failure$LoadFoldersFailed(String str) {
        this.messageFromServer = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SpecialFoldersContract$Failure$LoadFoldersFailed) && Intrinsics.areEqual(this.messageFromServer, ((SpecialFoldersContract$Failure$LoadFoldersFailed) obj).messageFromServer);
    }

    public final int hashCode() {
        String str = this.messageFromServer;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("LoadFoldersFailed(messageFromServer=", this.messageFromServer, ")");
    }
}

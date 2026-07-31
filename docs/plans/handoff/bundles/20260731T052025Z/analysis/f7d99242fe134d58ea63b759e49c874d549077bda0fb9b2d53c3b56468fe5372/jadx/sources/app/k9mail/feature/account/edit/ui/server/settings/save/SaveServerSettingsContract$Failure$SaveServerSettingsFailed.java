package app.k9mail.feature.account.edit.ui.server.settings.save;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveServerSettingsContract$Failure$SaveServerSettingsFailed {
    public final String message;

    public SaveServerSettingsContract$Failure$SaveServerSettingsFailed(String str) {
        this.message = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SaveServerSettingsContract$Failure$SaveServerSettingsFailed) && this.message.equals(((SaveServerSettingsContract$Failure$SaveServerSettingsFailed) obj).message);
    }

    public final int hashCode() {
        return this.message.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("SaveServerSettingsFailed(message=", this.message, ")");
    }
}

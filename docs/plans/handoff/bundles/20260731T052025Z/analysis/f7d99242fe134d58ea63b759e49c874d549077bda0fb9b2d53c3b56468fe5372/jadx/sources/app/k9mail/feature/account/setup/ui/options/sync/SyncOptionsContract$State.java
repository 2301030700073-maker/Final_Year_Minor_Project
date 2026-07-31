package app.k9mail.feature.account.setup.ui.options.sync;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.setup.domain.entity.EmailCheckFrequency;
import app.k9mail.feature.account.setup.domain.entity.EmailDisplayCount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncOptionsContract$State {
    public final EmailCheckFrequency checkFrequency;
    public final EmailDisplayCount messageDisplayCount;
    public final boolean showNotification;

    public SyncOptionsContract$State(EmailCheckFrequency emailCheckFrequency, EmailDisplayCount emailDisplayCount, boolean z) {
        emailCheckFrequency.getClass();
        emailDisplayCount.getClass();
        this.checkFrequency = emailCheckFrequency;
        this.messageDisplayCount = emailDisplayCount;
        this.showNotification = z;
    }

    public static SyncOptionsContract$State copy$default(SyncOptionsContract$State syncOptionsContract$State, EmailCheckFrequency emailCheckFrequency, EmailDisplayCount emailDisplayCount, boolean z, int i) {
        if ((i & 1) != 0) {
            emailCheckFrequency = syncOptionsContract$State.checkFrequency;
        }
        if ((i & 2) != 0) {
            emailDisplayCount = syncOptionsContract$State.messageDisplayCount;
        }
        if ((i & 4) != 0) {
            z = syncOptionsContract$State.showNotification;
        }
        syncOptionsContract$State.getClass();
        emailCheckFrequency.getClass();
        emailDisplayCount.getClass();
        return new SyncOptionsContract$State(emailCheckFrequency, emailDisplayCount, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SyncOptionsContract$State)) {
            return false;
        }
        SyncOptionsContract$State syncOptionsContract$State = (SyncOptionsContract$State) obj;
        return this.checkFrequency == syncOptionsContract$State.checkFrequency && this.messageDisplayCount == syncOptionsContract$State.messageDisplayCount && this.showNotification == syncOptionsContract$State.showNotification;
    }

    public final int hashCode() {
        return ((this.messageDisplayCount.hashCode() + (this.checkFrequency.hashCode() * 31)) * 31) + (this.showNotification ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(checkFrequency=");
        sb.append(this.checkFrequency);
        sb.append(", messageDisplayCount=");
        sb.append(this.messageDisplayCount);
        sb.append(", showNotification=");
        return CameraDevices$CC.m(")", sb, this.showNotification);
    }
}

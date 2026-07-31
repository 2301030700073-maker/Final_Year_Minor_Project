package app.k9mail.feature.account.setup.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountUuid {
    public final String value;

    public final boolean equals(Object obj) {
        if (obj instanceof AccountUuid) {
            return Intrinsics.areEqual(this.value, ((AccountUuid) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("AccountUuid(value=", this.value, ")");
    }
}

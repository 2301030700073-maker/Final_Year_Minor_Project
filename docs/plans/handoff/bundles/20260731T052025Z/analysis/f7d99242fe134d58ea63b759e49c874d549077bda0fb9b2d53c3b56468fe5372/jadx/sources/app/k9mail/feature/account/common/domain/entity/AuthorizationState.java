package app.k9mail.feature.account.common.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationState {
    public final String value;

    public AuthorizationState(String str) {
        this.value = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AuthorizationState) && Intrinsics.areEqual(this.value, ((AuthorizationState) obj).value);
    }

    public final int hashCode() {
        String str = this.value;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("AuthorizationState(value=", this.value, ")");
    }
}

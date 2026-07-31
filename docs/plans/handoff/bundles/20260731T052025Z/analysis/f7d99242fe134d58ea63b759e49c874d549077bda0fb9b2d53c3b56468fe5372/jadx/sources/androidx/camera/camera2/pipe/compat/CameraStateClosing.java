package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStateClosing extends CameraState {
    public final CameraError cameraErrorCode;

    public CameraStateClosing(CameraError cameraError) {
        this.cameraErrorCode = cameraError;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CameraStateClosing) && Intrinsics.areEqual(this.cameraErrorCode, ((CameraStateClosing) obj).cameraErrorCode);
    }

    public final int hashCode() {
        CameraError cameraError = this.cameraErrorCode;
        if (cameraError == null) {
            return 0;
        }
        return cameraError.value;
    }

    public final String toString() {
        return "CameraStateClosing(cameraErrorCode=" + this.cameraErrorCode + ')';
    }
}

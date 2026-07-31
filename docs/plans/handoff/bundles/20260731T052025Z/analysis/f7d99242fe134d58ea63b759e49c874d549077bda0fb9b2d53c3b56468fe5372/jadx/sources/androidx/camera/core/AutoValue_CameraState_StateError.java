package androidx.camera.core;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_CameraState_StateError {
    public final int code;

    public AutoValue_CameraState_StateError(int i) {
        this.code = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AutoValue_CameraState_StateError) && this.code == ((AutoValue_CameraState_StateError) obj).code;
    }

    public final int hashCode() {
        return (this.code ^ 1000003) * 1000003;
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("StateError{code="), this.code, ", cause=null}");
    }
}

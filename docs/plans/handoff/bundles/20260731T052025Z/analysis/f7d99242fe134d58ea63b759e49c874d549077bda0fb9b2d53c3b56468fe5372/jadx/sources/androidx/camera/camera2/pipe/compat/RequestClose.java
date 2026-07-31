package androidx.camera.camera2.pipe.compat;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestClose extends CameraRequest {
    public final ActiveCamera activeCamera;

    public RequestClose(ActiveCamera activeCamera) {
        activeCamera.getClass();
        this.activeCamera = activeCamera;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RequestClose) && Intrinsics.areEqual(this.activeCamera, ((RequestClose) obj).activeCamera);
    }

    public final int hashCode() {
        return this.activeCamera.hashCode();
    }

    public final String toString() {
        return "RequestClose(activeCamera=" + this.activeCamera + ')';
    }
}

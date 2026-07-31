package androidx.camera.camera2.pipe.compat;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AwaitOpenCameraResult {
    public final AndroidCameraState androidCameraState;
    public final CameraDeviceWrapper cameraDeviceWrapper;

    public AwaitOpenCameraResult(CameraDeviceWrapper cameraDeviceWrapper, AndroidCameraState androidCameraState) {
        this.cameraDeviceWrapper = cameraDeviceWrapper;
        this.androidCameraState = androidCameraState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AwaitOpenCameraResult)) {
            return false;
        }
        AwaitOpenCameraResult awaitOpenCameraResult = (AwaitOpenCameraResult) obj;
        return Intrinsics.areEqual(this.cameraDeviceWrapper, awaitOpenCameraResult.cameraDeviceWrapper) && Intrinsics.areEqual(this.androidCameraState, awaitOpenCameraResult.androidCameraState);
    }

    public final int hashCode() {
        CameraDeviceWrapper cameraDeviceWrapper = this.cameraDeviceWrapper;
        int hashCode = (cameraDeviceWrapper == null ? 0 : cameraDeviceWrapper.hashCode()) * 31;
        AndroidCameraState androidCameraState = this.androidCameraState;
        return hashCode + (androidCameraState != null ? androidCameraState.hashCode() : 0);
    }

    public final String toString() {
        return "AwaitOpenCameraResult(cameraDeviceWrapper=" + this.cameraDeviceWrapper + ", androidCameraState=" + this.androidCameraState + ')';
    }
}

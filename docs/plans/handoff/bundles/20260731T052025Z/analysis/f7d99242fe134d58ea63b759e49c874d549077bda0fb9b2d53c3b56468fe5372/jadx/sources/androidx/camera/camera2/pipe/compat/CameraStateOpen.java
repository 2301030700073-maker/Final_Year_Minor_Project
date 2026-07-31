package androidx.camera.camera2.pipe.compat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStateOpen extends CameraState {
    public final CameraDeviceWrapper cameraDevice;

    public CameraStateOpen(CameraDeviceWrapper cameraDeviceWrapper) {
        this.cameraDevice = cameraDeviceWrapper;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CameraStateOpen) && this.cameraDevice.equals(((CameraStateOpen) obj).cameraDevice);
    }

    public final int hashCode() {
        return this.cameraDevice.hashCode();
    }

    public final String toString() {
        return "CameraStateOpen(cameraDevice=" + this.cameraDevice + ')';
    }
}

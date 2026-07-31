package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.CameraId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CameraStatusMonitor$CameraStatus {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CameraAvailable extends CameraStatusMonitor$CameraStatus {
        public final String cameraId;

        public CameraAvailable(String str) {
            this.cameraId = str;
        }

        public final String toString() {
            return "CameraAvailable(camera=" + ((Object) CameraId.m35toStringimpl(this.cameraId)) + ')';
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CameraPrioritiesChanged extends CameraStatusMonitor$CameraStatus {
        public static final CameraPrioritiesChanged INSTANCE = new CameraPrioritiesChanged();

        public final String toString() {
            return "CameraPrioritiesChanged";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CameraUnavailable extends CameraStatusMonitor$CameraStatus {
        public final String cameraId;

        public CameraUnavailable(String str) {
            str.getClass();
            this.cameraId = str;
        }

        public final String toString() {
            return "CameraUnavailable(camera=" + ((Object) CameraId.m35toStringimpl(this.cameraId)) + ')';
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Unknown extends CameraStatusMonitor$CameraStatus {
        public static final Unknown INSTANCE = new Unknown();

        public final String toString() {
            return "UnknownCameraStatus";
        }
    }
}

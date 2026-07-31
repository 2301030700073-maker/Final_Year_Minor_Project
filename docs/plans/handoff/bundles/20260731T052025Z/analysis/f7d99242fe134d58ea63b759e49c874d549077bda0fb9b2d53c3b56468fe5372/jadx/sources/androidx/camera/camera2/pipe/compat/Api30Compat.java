package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api30Compat {
    public static final Set getConcurrentCameraIds(CameraManager cameraManager) {
        Set<Set<String>> concurrentCameraIds = cameraManager.getConcurrentCameraIds();
        concurrentCameraIds.getClass();
        return concurrentCameraIds;
    }

    public static final void setCameraAudioRestriction(CameraDevice cameraDevice, int i) {
        cameraDevice.setCameraAudioRestriction(i);
    }
}

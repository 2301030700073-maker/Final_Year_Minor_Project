package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.GraphState;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2ErrorProcessor {
    public final Object lock = new Object();
    public final LinkedHashMap virtualCameraStateMap = new LinkedHashMap();

    /* renamed from: onCameraError-3M5Xam4, reason: not valid java name */
    public final void m59onCameraError3M5Xam4(int i, String str, boolean z) {
        VirtualCameraState virtualCameraState;
        str.getClass();
        synchronized (this.lock) {
            virtualCameraState = (VirtualCameraState) this.virtualCameraStateMap.get(new CameraId(str));
        }
        if (virtualCameraState == null) {
            return;
        }
        virtualCameraState.graphListener.onGraphError(new GraphState.GraphStateError(i, z));
    }
}

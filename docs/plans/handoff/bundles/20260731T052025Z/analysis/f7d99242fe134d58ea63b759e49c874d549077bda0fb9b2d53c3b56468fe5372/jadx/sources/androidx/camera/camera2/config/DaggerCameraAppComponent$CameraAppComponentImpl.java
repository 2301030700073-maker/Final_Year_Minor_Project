package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import com.eygraber.uri.Uri;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DaggerCameraAppComponent$CameraAppComponentImpl {
    public final DaggerCameraAppComponent$CameraAppComponentImpl cameraAppComponentImpl = this;
    public final Uri.Builder cameraAppConfig;

    public DaggerCameraAppComponent$CameraAppComponentImpl(Uri.Builder builder) {
        this.cameraAppConfig = builder;
    }

    public final CameraDevicesImpl getCameraDevices() {
        CameraPipeImpl cameraPipeImpl = (CameraPipeImpl) this.cameraAppConfig.authority;
        MathKt.checkNotNullFromProvides(cameraPipeImpl);
        CameraDevicesImpl cameras = cameraPipeImpl.cameras();
        MathKt.checkNotNullFromProvides(cameras);
        return cameras;
    }
}

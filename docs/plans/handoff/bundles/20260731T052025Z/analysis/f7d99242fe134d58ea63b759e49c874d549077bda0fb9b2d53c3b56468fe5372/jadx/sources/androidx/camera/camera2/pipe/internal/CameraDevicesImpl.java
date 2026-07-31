package androidx.camera.camera2.pipe.internal;

import android.os.Trace;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraDevicesImpl {
    public final CameraBackendsImpl cameraBackends;

    public CameraDevicesImpl(CameraBackendsImpl cameraBackendsImpl) {
        cameraBackendsImpl.getClass();
        this.cameraBackends = cameraBackendsImpl;
    }

    /* renamed from: getCameraBackend-SeavPBo, reason: not valid java name */
    public final CameraBackend m85getCameraBackendSeavPBo() {
        CameraBackendsImpl cameraBackendsImpl = this.cameraBackends;
        try {
            Trace.beginSection("getCameraBackend");
            cameraBackendsImpl.f1default.getClass();
            CameraBackend m84getSG3A4s8 = cameraBackendsImpl.m84getSG3A4s8("CXCP-Camera2");
            if (m84getSG3A4s8 != null) {
                return m84getSG3A4s8;
            }
            throw new IllegalStateException(("Failed to load CameraBackend " + ((Object) CameraBackendId.m25toStringimpl("CXCP-Camera2"))).toString());
        } finally {
            Trace.endSection();
        }
    }
}

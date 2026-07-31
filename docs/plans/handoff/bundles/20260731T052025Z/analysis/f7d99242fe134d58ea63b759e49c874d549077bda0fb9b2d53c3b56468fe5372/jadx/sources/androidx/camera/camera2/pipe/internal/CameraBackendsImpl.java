package androidx.camera.camera2.pipe.internal;

import android.content.Context;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraBackendsImpl {
    public final Map cameraBackends;

    /* renamed from: default, reason: not valid java name */
    public final CameraBackend f1default;
    public final Object lock = new Object();
    public final LinkedHashMap activeCameraBackends = new LinkedHashMap();

    public CameraBackendsImpl(String str, Map map, Context context, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
        this.cameraBackends = map;
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.CAMERA, new Preview$$ExternalSyntheticLambda0(8, this));
        CameraBackend m84getSG3A4s8 = m84getSG3A4s8(str);
        if (m84getSG3A4s8 != null) {
            this.f1default = m84getSG3A4s8;
            return;
        }
        StringBuilder sb = new StringBuilder("Failed to load the default backend for ");
        sb.append((Object) CameraBackendId.m25toStringimpl(str));
        ZslControlImpl$$ExternalSyntheticLambda1.m(sb, "! Available backends are ", map.keySet());
        throw null;
    }

    /* renamed from: get-SG3A4s8, reason: not valid java name */
    public final CameraBackend m84getSG3A4s8(String str) {
        str.getClass();
        synchronized (this.lock) {
            try {
                CameraBackend cameraBackend = (CameraBackend) this.activeCameraBackends.get(new CameraBackendId(str));
                if (cameraBackend != null) {
                    return cameraBackend;
                }
                CameraPipeModule$Companion$$ExternalSyntheticLambda0 cameraPipeModule$Companion$$ExternalSyntheticLambda0 = (CameraPipeModule$Companion$$ExternalSyntheticLambda0) this.cameraBackends.get(new CameraBackendId(str));
                CameraBackend cameraBackend2 = cameraPipeModule$Companion$$ExternalSyntheticLambda0 != null ? cameraPipeModule$Companion$$ExternalSyntheticLambda0.f$0 : null;
                if (cameraBackend2 != null) {
                    if (!str.equals("CXCP-Camera2")) {
                        throw new IllegalStateException(("Unexpected backend id! Expected " + ((Object) CameraBackendId.m25toStringimpl(str)) + " but it was actually " + ((Object) CameraBackendId.m25toStringimpl("CXCP-Camera2"))).toString());
                    }
                    this.activeCameraBackends.put(new CameraBackendId(str), cameraBackend2);
                }
                return cameraBackend2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

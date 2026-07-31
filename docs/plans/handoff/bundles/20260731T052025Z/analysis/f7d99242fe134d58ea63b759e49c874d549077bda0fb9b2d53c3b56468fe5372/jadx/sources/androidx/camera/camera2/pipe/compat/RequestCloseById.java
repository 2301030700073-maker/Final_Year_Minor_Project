package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestCloseById extends CameraRequest {
    public final String activeCameraId;
    public final CompletableDeferredImpl deferred;

    public RequestCloseById(String str) {
        str.getClass();
        this.activeCameraId = str;
        this.deferred = new CompletableDeferredImpl();
    }

    public final String toString() {
        return "RequestCloseById(" + ((Object) CameraId.m35toStringimpl(this.activeCameraId)) + ')';
    }
}

package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import java.util.LinkedHashSet;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraphRequestListenersImpl {
    public final Object lock;

    public CameraGraphRequestListenersImpl(GraphSessionLock graphSessionLock, GraphProcessorImpl graphProcessorImpl, CoroutineScope coroutineScope) {
        graphSessionLock.getClass();
        graphProcessorImpl.getClass();
        coroutineScope.getClass();
        this.lock = new Object();
        new LinkedHashSet();
    }

    public final List fetchUpdatedListeners$camera_camera2_pipe() {
        synchronized (this.lock) {
        }
        return null;
    }
}

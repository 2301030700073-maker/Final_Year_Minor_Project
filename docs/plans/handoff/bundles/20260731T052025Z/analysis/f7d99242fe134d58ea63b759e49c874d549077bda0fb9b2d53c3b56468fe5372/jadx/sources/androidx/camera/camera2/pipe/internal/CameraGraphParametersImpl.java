package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import java.util.LinkedHashMap;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraphParametersImpl {
    public final Object lock;

    public CameraGraphParametersImpl(GraphSessionLock graphSessionLock, GraphProcessorImpl graphProcessorImpl, CoroutineScope coroutineScope) {
        graphSessionLock.getClass();
        graphProcessorImpl.getClass();
        coroutineScope.getClass();
        this.lock = new Object();
        new LinkedHashMap();
    }
}

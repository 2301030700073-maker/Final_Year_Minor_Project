package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.FlashMode;
import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraphSessionImpl implements AutoCloseable {
    public final Controller3A controller3A;
    public final int debugId;
    public final GraphProcessorImpl graphProcessor;
    public final CameraGraphRequestListenersImpl listeners;
    public final CameraGraphParametersImpl parameters;
    public final MutexToken token;

    public CameraGraphSessionImpl(MutexToken mutexToken, GraphProcessorImpl graphProcessorImpl, Controller3A controller3A, FrameCaptureQueue frameCaptureQueue, CameraGraphParametersImpl cameraGraphParametersImpl, CameraGraphRequestListenersImpl cameraGraphRequestListenersImpl) {
        mutexToken.getClass();
        graphProcessorImpl.getClass();
        controller3A.getClass();
        frameCaptureQueue.getClass();
        cameraGraphParametersImpl.getClass();
        cameraGraphRequestListenersImpl.getClass();
        this.token = mutexToken;
        this.graphProcessor = graphProcessorImpl;
        this.controller3A = controller3A;
        this.parameters = cameraGraphParametersImpl;
        this.listeners = cameraGraphRequestListenersImpl;
        AtomicInt atomicInt = CameraGraphSessionImplKt.cameraGraphSessionIds;
        atomicInt.getClass();
        this.debugId = AtomicInt.FU.incrementAndGet(atomicInt);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.parameters.lock) {
        }
        this.listeners.fetchUpdatedListeners$camera_camera2_pipe();
        this.token.release();
    }

    public final CompletableDeferredImpl setTorchOn() {
        AeMode aeMode = null;
        if (this.token.getReleased()) {
            UriKt$$ExternalSyntheticBUOutline0.m(this, " after close.", "Cannot call setTorchOn on ");
            return null;
        }
        Controller3A controller3A = this.controller3A;
        AeMode aeMode2 = ((State3A) controller3A.graphState3A._state.value).aeMode;
        List list = AeMode.values;
        if ((aeMode2 == null || aeMode2.value != 1) && (aeMode2 == null || aeMode2.value != 0)) {
            aeMode = new AeMode(1);
        }
        return Controller3A.m79update3A169HPGg$default(controller3A, aeMode, null, null, new FlashMode(2), null, null, null, 118);
    }

    public final String toString() {
        return "CameraGraph.Session-" + this.debugId;
    }
}

package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VirtualCameraState {
    public CameraState _lastState;
    public final SharedFlowImpl _stateFlow;
    public final Flow _states;
    public final String cameraId;
    public boolean closed;
    public VirtualAndroidCameraDevice currentVirtualAndroidCamera;
    public final int debugId;
    public final GraphProcessorImpl graphListener;
    public StandaloneCoroutine job;
    public final Object lock;
    public final CoroutineScope scope;
    public MutexToken wakelockToken;

    public VirtualCameraState(String str, GraphProcessorImpl graphProcessorImpl, CoroutineScope coroutineScope) {
        str.getClass();
        coroutineScope.getClass();
        this.cameraId = str;
        this.graphListener = graphProcessorImpl;
        this.scope = coroutineScope;
        AtomicInt atomicInt = VirtualCameraKt.virtualCameraDebugIds;
        atomicInt.getClass();
        this.debugId = AtomicInt.FU.incrementAndGet(atomicInt);
        this.lock = new Object();
        SharedFlowImpl MutableSharedFlow$default = FlowKt.MutableSharedFlow$default(3, 4, null);
        this._stateFlow = MutableSharedFlow$default;
        this._states = FlowKt.distinctUntilChanged(MutableSharedFlow$default);
        CameraStateUnopened cameraStateUnopened = CameraStateUnopened.INSTANCE;
        this._lastState = cameraStateUnopened;
        if (MutableSharedFlow$default.tryEmit(cameraStateUnopened)) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
        throw null;
    }

    /* renamed from: disconnect-TPqeGZw, reason: not valid java name */
    public final void m74disconnectTPqeGZw(CameraError cameraError) {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                Log.i("CXCP", "Disconnecting " + this);
                VirtualAndroidCameraDevice virtualAndroidCameraDevice = this.currentVirtualAndroidCamera;
                if (virtualAndroidCameraDevice != null) {
                    virtualAndroidCameraDevice.disconnect$camera_camera2_pipe();
                }
                StandaloneCoroutine standaloneCoroutine = this.job;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                MutexToken mutexToken = this.wakelockToken;
                if (mutexToken != null) {
                    mutexToken.release();
                }
                if (!(getValue() instanceof CameraStateClosed)) {
                    if (!(this._lastState instanceof CameraStateClosing)) {
                        emitState(new CameraStateClosing(null));
                    }
                    emitState(new CameraStateClosed(this.cameraId, ClosedReason.APP_DISCONNECTED, null, null, null, null, null, null, cameraError));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void emitState(CameraState cameraState) {
        this._lastState = cameraState;
        if (this._stateFlow.tryEmit(cameraState)) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m("Failed to emit ", cameraState, " in ", this);
    }

    public final CameraState getValue() {
        CameraState cameraState;
        synchronized (this.lock) {
            cameraState = this._lastState;
        }
        return cameraState;
    }

    public final String toString() {
        return "VirtualCamera-" + this.debugId;
    }
}

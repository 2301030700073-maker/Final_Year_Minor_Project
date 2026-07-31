package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor$CameraStatus;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material3.ThumbNode$onAttach$1;
import java.util.concurrent.CancellationException;
import javax.inject.Provider;
import kotlin.coroutines.Continuation;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.flow.CallbackFlowBuilder;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CameraStatusMonitor implements AutoCloseable {
    public final StateFlowImpl _cameraAvailability;
    public final SharedFlowImpl _cameraPriorities;
    public final ReadonlyStateFlow cameraAvailability;
    public final String cameraId;
    public final ReadonlySharedFlow cameraPriorities;
    public final CallbackFlowBuilder cameraStatus;
    public final StandaloneCoroutine cameraStatusJob;
    public final AtomicBoolean closed;
    public final CameraManager manager;
    public final ContextScope scope;
    public final Threads threads;

    public Camera2CameraStatusMonitor(Provider provider, Threads threads, String str, Job job) {
        provider.getClass();
        str.getClass();
        this.threads = threads;
        this.cameraId = str;
        this.manager = (CameraManager) provider.get();
        ContextScope CoroutineScope = JobKt.CoroutineScope(UuidKt.plus(new SupervisorJobImpl(job), threads.lightweightDispatcher.plus(new CoroutineName("CXCP-CameraStatusMonitor"))));
        this.scope = CoroutineScope;
        this.closed = AtomicFU.atomic(false);
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(CameraStatusMonitor$CameraStatus.Unknown.INSTANCE);
        this._cameraAvailability = MutableStateFlow;
        this.cameraAvailability = FlowKt.asStateFlow(MutableStateFlow);
        Continuation continuation = null;
        SharedFlowImpl MutableSharedFlow$default = FlowKt.MutableSharedFlow$default(0, 7, null);
        this._cameraPriorities = MutableSharedFlow$default;
        this.cameraPriorities = new ReadonlySharedFlow(MutableSharedFlow$default, null);
        this.cameraStatus = FlowKt.callbackFlow(new RippleNode$onAttach$1(this, continuation, 6));
        this.cameraStatusJob = JobKt.launch$default(CoroutineScope, null, null, new ThumbNode$onAttach$1(this, continuation, 4), 3);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.closed.compareAndSet()) {
            this.cameraStatusJob.cancel(null);
            JobKt.cancel(this.scope, (CancellationException) null);
        }
    }
}

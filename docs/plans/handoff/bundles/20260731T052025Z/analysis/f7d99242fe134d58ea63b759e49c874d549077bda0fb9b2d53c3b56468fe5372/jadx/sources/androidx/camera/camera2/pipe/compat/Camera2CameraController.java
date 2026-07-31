package androidx.camera.camera2.pipe.compat;

import android.os.SystemClock;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraController$ControllerState$ERROR;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor$CameraStatus;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.unit.IntRectKt;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import com.fsck.k9.mailstore.LocalStore;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CameraController {
    public boolean _isForeground;
    public final PruningCamera2DeviceManager camera2DeviceManager;
    public final Camera2Quirks camera2Quirks;
    public CameraStatusMonitor$CameraStatus cameraAvailability;
    public StandaloneCoroutine cameraAvailabilityJob;
    public final CameraGraphId cameraGraphId;
    public StandaloneCoroutine cameraPrioritiesJob;
    public final Camera2CameraStatusMonitor cameraStatusMonitor;
    public final CameraSurfaceManager cameraSurfaceManager;
    public final LocalStore.AnonymousClass7 captureSequenceProcessorFactory;
    public final CaptureSessionFactory captureSessionFactory;
    public final CompletableDeferredImpl closedDeferred;
    public IntRectKt controllerState;
    public VirtualCameraState currentCamera;
    public StandaloneCoroutine currentCameraStateJob;
    public CaptureSessionState currentSession;
    public Map currentSurfaceMap;
    public final CameraGraph$Config graphConfig;
    public final GraphProcessorImpl graphListener;
    public CameraError lastCameraError;
    public TimestampNs lastCameraPrioritiesChangedTs;
    public final Object lock;
    public StandaloneCoroutine restartJob;
    public final CoroutineScope scope;
    public final Camera2Backend shutdownListener;
    public final StreamGraphImpl streamGraph;
    public final StrictMode strictMode;
    public final SurfaceGraph surfaceTracker;
    public final Threads threads;
    public final SystemTimeSource timeSource;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public int label;
        public final /* synthetic */ Camera2CameraController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(Camera2CameraController camera2CameraController, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = camera2CameraController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Camera2CameraController camera2CameraController = this.this$0;
            switch (i) {
                case 0:
                    return new AnonymousClass1(camera2CameraController, continuation, 0);
                case 1:
                    return new AnonymousClass1(camera2CameraController, continuation, 1);
                default:
                    return new AnonymousClass1(camera2CameraController, continuation, 2);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            Unit unit = Unit.INSTANCE;
            CoroutineScope coroutineScope = (CoroutineScope) obj;
            Continuation continuation = (Continuation) obj2;
            switch (i) {
                case 0:
                    ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
                    return coroutineSingletons;
                case 1:
                    ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
                    return coroutineSingletons;
                default:
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            VirtualCameraState virtualCameraState;
            CaptureSessionState captureSessionState;
            Object obj2;
            final int i = 1;
            switch (this.$r8$classId) {
                case 0:
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.label;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            throw Config.CC.m92m(obj);
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    final Camera2CameraController camera2CameraController = this.this$0;
                    ReadonlyStateFlow readonlyStateFlow = camera2CameraController.cameraStatusMonitor.cameraAvailability;
                    final int i3 = 0;
                    FlowCollector flowCollector = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj3, Continuation continuation) {
                            int i4 = i3;
                            Unit unit = Unit.INSTANCE;
                            Camera2CameraController camera2CameraController2 = camera2CameraController;
                            switch (i4) {
                                case 0:
                                    CameraStatusMonitor$CameraStatus cameraStatusMonitor$CameraStatus = (CameraStatusMonitor$CameraStatus) obj3;
                                    CameraGraph$Config cameraGraph$Config = camera2CameraController2.graphConfig;
                                    if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraAvailable) {
                                        if (((CameraStatusMonitor$CameraStatus.CameraAvailable) cameraStatusMonitor$CameraStatus).cameraId.equals(cameraGraph$Config.camera)) {
                                            Camera2CameraController.access$onCameraStatusChanged(camera2CameraController2, cameraStatusMonitor$CameraStatus);
                                            break;
                                        } else {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                                        }
                                    } else if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraUnavailable) {
                                        if (Intrinsics.areEqual(((CameraStatusMonitor$CameraStatus.CameraUnavailable) cameraStatusMonitor$CameraStatus).cameraId, cameraGraph$Config.camera)) {
                                            Camera2CameraController.access$onCameraStatusChanged(camera2CameraController2, cameraStatusMonitor$CameraStatus);
                                            break;
                                        } else {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                                        }
                                    }
                                    break;
                                default:
                                    Camera2CameraController.access$onCameraStatusChanged(camera2CameraController2, CameraStatusMonitor$CameraStatus.CameraPrioritiesChanged.INSTANCE);
                                    break;
                            }
                            return unit;
                        }
                    };
                    this.label = 1;
                    readonlyStateFlow.$$delegate_0.collect(flowCollector, this);
                    return coroutineSingletons;
                case 1:
                    CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i4 = this.label;
                    if (i4 != 0) {
                        if (i4 == 1) {
                            throw Config.CC.m92m(obj);
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    final Camera2CameraController camera2CameraController2 = this.this$0;
                    ReadonlySharedFlow readonlySharedFlow = camera2CameraController2.cameraStatusMonitor.cameraPriorities;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj3, Continuation continuation) {
                            int i42 = i;
                            Unit unit = Unit.INSTANCE;
                            Camera2CameraController camera2CameraController22 = camera2CameraController2;
                            switch (i42) {
                                case 0:
                                    CameraStatusMonitor$CameraStatus cameraStatusMonitor$CameraStatus = (CameraStatusMonitor$CameraStatus) obj3;
                                    CameraGraph$Config cameraGraph$Config = camera2CameraController22.graphConfig;
                                    if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraAvailable) {
                                        if (((CameraStatusMonitor$CameraStatus.CameraAvailable) cameraStatusMonitor$CameraStatus).cameraId.equals(cameraGraph$Config.camera)) {
                                            Camera2CameraController.access$onCameraStatusChanged(camera2CameraController22, cameraStatusMonitor$CameraStatus);
                                            break;
                                        } else {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                                        }
                                    } else if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraUnavailable) {
                                        if (Intrinsics.areEqual(((CameraStatusMonitor$CameraStatus.CameraUnavailable) cameraStatusMonitor$CameraStatus).cameraId, cameraGraph$Config.camera)) {
                                            Camera2CameraController.access$onCameraStatusChanged(camera2CameraController22, cameraStatusMonitor$CameraStatus);
                                            break;
                                        } else {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                                        }
                                    }
                                    break;
                                default:
                                    Camera2CameraController.access$onCameraStatusChanged(camera2CameraController22, CameraStatusMonitor$CameraStatus.CameraPrioritiesChanged.INSTANCE);
                                    break;
                            }
                            return unit;
                        }
                    };
                    this.label = 1;
                    readonlySharedFlow.$$delegate_0.collect(flowCollector2, this);
                    return coroutineSingletons2;
                default:
                    CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i5 = this.label;
                    if (i5 == 0) {
                        ResultKt.throwOnFailure(obj);
                        Camera2CameraController camera2CameraController3 = this.this$0;
                        this.label = 1;
                        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        synchronized (camera2CameraController3.lock) {
                            virtualCameraState = camera2CameraController3.currentCamera;
                            captureSessionState = camera2CameraController3.currentSession;
                            ref$ObjectRef.element = captureSessionState;
                        }
                        if (virtualCameraState == null || captureSessionState == null) {
                            obj2 = Unit.INSTANCE;
                        } else {
                            obj2 = virtualCameraState._states.collect(new FlowKt__LimitKt$drop$2$1(2, ref$ObjectRef, camera2CameraController3), this);
                            if (obj2 != coroutineSingletons3) {
                                obj2 = Unit.INSTANCE;
                            }
                        }
                        if (obj2 == coroutineSingletons3) {
                            return coroutineSingletons3;
                        }
                    } else {
                        if (i5 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
            }
        }
    }

    public Camera2CameraController(CoroutineScope coroutineScope, Threads threads, StrictMode strictMode, CameraGraph$Config cameraGraph$Config, GraphProcessorImpl graphProcessorImpl, SurfaceGraph surfaceGraph, Camera2CameraStatusMonitor camera2CameraStatusMonitor, CaptureSessionFactory captureSessionFactory, LocalStore.AnonymousClass7 anonymousClass7, PruningCamera2DeviceManager pruningCamera2DeviceManager, CameraSurfaceManager cameraSurfaceManager, Camera2Quirks camera2Quirks, SystemTimeSource systemTimeSource, CameraGraphId cameraGraphId, Camera2Backend camera2Backend, StreamGraphImpl streamGraphImpl, ConcurrentSessionSequencers concurrentSessionSequencers) {
        coroutineScope.getClass();
        threads.getClass();
        strictMode.getClass();
        cameraGraph$Config.getClass();
        camera2CameraStatusMonitor.getClass();
        captureSessionFactory.getClass();
        pruningCamera2DeviceManager.getClass();
        cameraSurfaceManager.getClass();
        camera2Quirks.getClass();
        systemTimeSource.getClass();
        concurrentSessionSequencers.getClass();
        this.scope = coroutineScope;
        this.threads = threads;
        this.strictMode = strictMode;
        this.graphConfig = cameraGraph$Config;
        this.graphListener = graphProcessorImpl;
        this.surfaceTracker = surfaceGraph;
        this.cameraStatusMonitor = camera2CameraStatusMonitor;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = anonymousClass7;
        this.camera2DeviceManager = pruningCamera2DeviceManager;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.camera2Quirks = camera2Quirks;
        this.timeSource = systemTimeSource;
        this.cameraGraphId = cameraGraphId;
        this.shutdownListener = camera2Backend;
        this.streamGraph = streamGraphImpl;
        this.lock = new Object();
        this._isForeground = true;
        this.controllerState = CameraController$ControllerState$ERROR.INSTANCE$5;
        this.cameraAvailability = new CameraStatusMonitor$CameraStatus.CameraUnavailable(cameraGraph$Config.camera);
        this.closedDeferred = new CompletableDeferredImpl();
        Continuation continuation = null;
        this.cameraAvailabilityJob = JobKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this, continuation, 0), 3);
        this.cameraPrioritiesJob = JobKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this, continuation, 1), 3);
    }

    public static final void access$onCameraStatusChanged(Camera2CameraController camera2CameraController, CameraStatusMonitor$CameraStatus cameraStatusMonitor$CameraStatus) {
        Log.d("CXCP", camera2CameraController + " (" + ((Object) CameraId.m35toStringimpl(camera2CameraController.graphConfig.camera)) + ") camera status changed: " + cameraStatusMonitor$CameraStatus);
        synchronized (camera2CameraController.lock) {
            try {
                if (camera2CameraController.isClosed()) {
                    return;
                }
                if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraAvailable) {
                    camera2CameraController.cameraAvailability = cameraStatusMonitor$CameraStatus;
                } else if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraUnavailable) {
                    camera2CameraController.cameraAvailability = cameraStatusMonitor$CameraStatus;
                } else if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraPrioritiesChanged) {
                    camera2CameraController.timeSource.getClass();
                    camera2CameraController.lastCameraPrioritiesChangedTs = new TimestampNs(SystemClock.elapsedRealtimeNanos());
                }
                camera2CameraController.tryRestart();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void access$onStateClosed(Camera2CameraController camera2CameraController, CameraStateClosed cameraStateClosed) {
        synchronized (camera2CameraController.lock) {
            try {
                if (camera2CameraController.isClosed()) {
                    return;
                }
                CameraError cameraError = cameraStateClosed.cameraErrorCode;
                if (cameraError != null) {
                    camera2CameraController.lastCameraError = cameraError;
                    int i = cameraError.value;
                    if (i != 6 && i != 1 && i != 2) {
                        camera2CameraController.controllerState = CameraController$ControllerState$ERROR.INSTANCE;
                        Log.d("CXCP", camera2CameraController + " encountered error: " + ((Object) CameraError.m33toStringimpl(cameraStateClosed.cameraErrorCode.value)));
                    }
                    camera2CameraController.controllerState = CameraController$ControllerState$ERROR.INSTANCE$3;
                    Log.d("CXCP", camera2CameraController + " is disconnected");
                } else {
                    camera2CameraController.controllerState = CameraController$ControllerState$ERROR.INSTANCE$5;
                }
                camera2CameraController.surfaceTracker.unregisterAllSurfaces();
                camera2CameraController.tryRestart();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void access$stopLocked(Camera2CameraController camera2CameraController) {
        if (camera2CameraController.isClosed()) {
            Log.w("CXCP", "Ignoring stop(): " + camera2CameraController + " is already closed");
            return;
        }
        IntRectKt intRectKt = camera2CameraController.controllerState;
        CameraController$ControllerState$ERROR cameraController$ControllerState$ERROR = CameraController$ControllerState$ERROR.INSTANCE$6;
        if (intRectKt.equals(cameraController$ControllerState$ERROR) || camera2CameraController.controllerState.equals(CameraController$ControllerState$ERROR.INSTANCE$5)) {
            Log.w("CXCP", "Ignoring stop(): " + camera2CameraController + " already stopping or stopped");
            return;
        }
        VirtualCameraState virtualCameraState = camera2CameraController.currentCamera;
        CaptureSessionState captureSessionState = camera2CameraController.currentSession;
        camera2CameraController.currentCamera = null;
        camera2CameraController.currentSession = null;
        camera2CameraController.controllerState = cameraController$ControllerState$ERROR;
        Log.d("CXCP", "Stopping " + camera2CameraController);
        camera2CameraController.detachSessionAndCamera(captureSessionState, virtualCameraState);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitClosed(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1 r0 = (androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1 r0 = new androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r6)
            goto La1
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r5 = 0
            return r5
        L2f:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.String r6 = "CXCP"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r5)
            java.lang.String r4 = "#awaitClosed"
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r6, r2)
            java.lang.Object r6 = r5.lock
            monitor-enter(r6)
            androidx.compose.ui.unit.IntRectKt r2 = r5.controllerState     // Catch: java.lang.Throwable -> L6f
            androidx.camera.camera2.pipe.CameraController$ControllerState$ERROR r4 = androidx.camera.camera2.pipe.CameraController$ControllerState$ERROR.INSTANCE$1     // Catch: java.lang.Throwable -> L6f
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L71
            java.lang.String r0 = "CXCP"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6f
            r1.<init>()     // Catch: java.lang.Throwable -> L6f
            r1.append(r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r5 = "#awaitClosed: Controller is already closed."
            r1.append(r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Throwable -> L6f
            android.util.Log.d(r0, r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r6)
            return r5
        L6f:
            r5 = move-exception
            goto La4
        L71:
            androidx.compose.ui.unit.IntRectKt r2 = r5.controllerState     // Catch: java.lang.Throwable -> L6f
            androidx.camera.camera2.pipe.CameraController$ControllerState$ERROR r4 = androidx.camera.camera2.pipe.CameraController$ControllerState$ERROR.INSTANCE$2     // Catch: java.lang.Throwable -> L6f
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Throwable -> L6f
            if (r2 != 0) goto L95
            java.lang.String r0 = "CXCP"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6f
            r1.<init>()     // Catch: java.lang.Throwable -> L6f
            r1.append(r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r5 = "#awaitClosed: Controller isn't closing!"
            r1.append(r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Throwable -> L6f
            android.util.Log.w(r0, r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.Boolean r5 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r6)
            return r5
        L95:
            monitor-exit(r6)
            kotlinx.coroutines.CompletableDeferredImpl r5 = r5.closedDeferred
            r0.label = r3
            java.lang.Object r5 = r5.awaitInternal(r0)
            if (r5 != r1) goto La1
            return r1
        La1:
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            return r5
        La4:
            monitor-exit(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2CameraController.awaitClosed(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void detachSessionAndCamera(CaptureSessionState captureSessionState, VirtualCameraState virtualCameraState) {
        StandaloneCoroutine launch$default = JobKt.launch$default(this.scope, null, null, new DataStoreImpl$data$1$3(captureSessionState, virtualCameraState, (Continuation) null, 8), 3);
        if (this.controllerState.equals(CameraController$ControllerState$ERROR.INSTANCE$2)) {
            launch$default.invokeOnCompletion(new Camera2CameraController$$ExternalSyntheticLambda2(this, 0));
        }
    }

    public final boolean isClosed() {
        return this.controllerState.equals(CameraController$ControllerState$ERROR.INSTANCE$2) || this.controllerState.equals(CameraController$ControllerState$ERROR.INSTANCE$1);
    }

    public final void startLocked() {
        if (isClosed()) {
            Log.i("CXCP", "Ignoring start(): " + this + " is already closed");
            return;
        }
        IntRectKt intRectKt = this.controllerState;
        CameraController$ControllerState$ERROR cameraController$ControllerState$ERROR = CameraController$ControllerState$ERROR.INSTANCE$4;
        if (intRectKt.equals(cameraController$ControllerState$ERROR)) {
            Log.w("CXCP", "Ignoring start(): " + this + " is already started");
            return;
        }
        Continuation continuation = null;
        this.lastCameraError = null;
        CameraGraph$Config cameraGraph$Config = this.graphConfig;
        String str = cameraGraph$Config.camera;
        List list = CollectionsKt.toList(Validate.minus(Validate.setOf(new CameraId(str)), new CameraId(str)));
        Camera2CameraController$$ExternalSyntheticLambda2 camera2CameraController$$ExternalSyntheticLambda2 = new Camera2CameraController$$ExternalSyntheticLambda2(this, 1);
        PruningCamera2DeviceManager pruningCamera2DeviceManager = this.camera2DeviceManager;
        pruningCamera2DeviceManager.getClass();
        str.getClass();
        CoroutineScope coroutineScope = pruningCamera2DeviceManager.scope;
        GraphProcessorImpl graphProcessorImpl = this.graphListener;
        VirtualCameraState virtualCameraState = new VirtualCameraState(str, graphProcessorImpl, coroutineScope);
        if (((BufferedChannel) pruningCamera2DeviceManager.queue.fragment).mo1016trySendJP2dKIU(new RequestOpen(virtualCameraState, list, graphProcessorImpl, camera2CameraController$$ExternalSyntheticLambda2)) instanceof ChannelResult.Failed) {
            Log.e("CXCP", "Camera open request failed for " + ((Object) CameraId.m35toStringimpl(str)) + '!');
            graphProcessorImpl.onGraphError(new GraphState.GraphStateError(12, false));
            virtualCameraState = null;
        }
        if (virtualCameraState == null) {
            Log.e("CXCP", "Failed to start " + this + ": Open request submission failed");
            return;
        }
        if (this.currentCamera != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        if (this.currentSession != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        this.currentCamera = virtualCameraState;
        CaptureSessionState captureSessionState = new CaptureSessionState(graphProcessorImpl, this.captureSessionFactory, this.captureSequenceProcessorFactory, this.cameraSurfaceManager, this.timeSource, cameraGraph$Config.flags, null, this.streamGraph, this.strictMode, this.threads, this.scope);
        this.currentSession = captureSessionState;
        Map map = this.currentSurfaceMap;
        if (map != null) {
            captureSessionState.configureSurfaceMap(map);
        }
        this.controllerState = cameraController$ControllerState$ERROR;
        Log.d("CXCP", "Started " + this);
        StandaloneCoroutine standaloneCoroutine = this.currentCameraStateJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.currentCameraStateJob = JobKt.launch$default(this.scope, null, null, new AnonymousClass1(this, continuation, 2), 3);
    }

    public final String toString() {
        return "Camera2CameraController(" + this.cameraGraphId + ')';
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0069, code lost:
    
        if (r3.value != 9) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0073, code lost:
    
        if (r3.value != 8) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void tryRestart() {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2CameraController.tryRestart():void");
    }

    public final void updateSurfaceMap(Map map) {
        synchronized (this.lock) {
            if (isClosed()) {
                return;
            }
            this.currentSurfaceMap = map;
            CaptureSessionState captureSessionState = this.currentSession;
            if (captureSessionState != null) {
                captureSessionState.configureSurfaceMap(map);
            }
        }
    }
}

package androidx.camera.camera2.pipe.compat;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.view.Surface;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.pipe.CameraGraph$Flags;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import androidx.camera.camera2.pipe.graph.GraphCommand;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.compose.animation.core.Animatable$snapTo$2;
import androidx.compose.animation.core.Animatable$stop$2;
import androidx.compose.foundation.gestures.DraggableNode$onDragStarted$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.RawField;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CaptureSessionState implements CameraCaptureSessionWrapper.StateCallback {
    public CameraDeviceWrapper _cameraDevice;
    public Map _surfaceMap;
    public final LinkedHashMap _surfaceTokenMap;
    public final Map activeOutputSurfaceMap;
    public final Map activeStreamSurfaceMap;
    public ConfiguredCameraCaptureSession cameraCaptureSession;
    public final CameraGraph$Flags cameraGraphFlags;
    public final CameraSurfaceManager cameraSurfaceManager;
    public final LocalStore.AnonymousClass7 captureSequenceProcessorFactory;
    public final CountDownLatch captureSessionAttemptCompleted;
    public final CaptureSessionFactory captureSessionFactory;
    public final int debugId;
    public final AtomicRef finalized;
    public final GraphProcessorImpl graphListener;
    public boolean hasAttemptedCaptureSession;
    public final Object lock;
    public Map pendingOutputMap;
    public LinkedHashMap pendingSurfaceMap;
    public final CoroutineScope scope;
    public TimestampNs sessionCreatingTimestamp;
    public final CountDownLatch sessionDisconnected;
    public final SessionSequencer sessionSequencer;
    public State state;
    public final StreamGraphImpl streamGraph;
    public final Threads threads;
    public final SystemTimeSource timeSource;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ConfiguredCameraCaptureSession {
        public final Camera2CaptureSequenceProcessor captureSequenceProcessor;
        public final RawField processor;
        public final CameraCaptureSessionWrapper session;

        public ConfiguredCameraCaptureSession(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, RawField rawField, Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor) {
            cameraCaptureSessionWrapper.getClass();
            this.session = cameraCaptureSessionWrapper;
            this.processor = rawField;
            this.captureSequenceProcessor = camera2CaptureSequenceProcessor;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ConfiguredCameraCaptureSession) {
                ConfiguredCameraCaptureSession configuredCameraCaptureSession = (ConfiguredCameraCaptureSession) obj;
                return Intrinsics.areEqual(this.session, configuredCameraCaptureSession.session) && this.processor == configuredCameraCaptureSession.processor && this.captureSequenceProcessor == configuredCameraCaptureSession.captureSequenceProcessor;
            }
            return false;
        }

        public final int hashCode() {
            return this.captureSequenceProcessor.hashCode() + ((this.processor.hashCode() + (this.session.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "ConfiguredCameraCaptureSession(session=" + this.session + ", processor=" + this.processor + ", captureSequenceProcessor=" + this.captureSequenceProcessor + ')';
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class State {
        public static final /* synthetic */ State[] $VALUES;
        public static final State CLOSED;
        public static final State CLOSING;
        public static final State CREATED;
        public static final State CREATING;
        public static final State PENDING;

        static {
            State state = new State("PENDING", 0);
            PENDING = state;
            State state2 = new State("CREATING", 1);
            CREATING = state2;
            State state3 = new State("CREATED", 2);
            CREATED = state3;
            State state4 = new State("CLOSING", 3);
            CLOSING = state4;
            State state5 = new State("CLOSED", 4);
            CLOSED = state5;
            $VALUES = new State[]{state, state2, state3, state4, state5};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public CaptureSessionState(GraphProcessorImpl graphProcessorImpl, CaptureSessionFactory captureSessionFactory, LocalStore.AnonymousClass7 anonymousClass7, CameraSurfaceManager cameraSurfaceManager, SystemTimeSource systemTimeSource, CameraGraph$Flags cameraGraph$Flags, ConcurrentSessionSequencer concurrentSessionSequencer, StreamGraphImpl streamGraphImpl, StrictMode strictMode, Threads threads, CoroutineScope coroutineScope) {
        captureSessionFactory.getClass();
        cameraSurfaceManager.getClass();
        systemTimeSource.getClass();
        cameraGraph$Flags.getClass();
        strictMode.getClass();
        threads.getClass();
        coroutineScope.getClass();
        this.graphListener = graphProcessorImpl;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = anonymousClass7;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.timeSource = systemTimeSource;
        this.cameraGraphFlags = cameraGraph$Flags;
        this.streamGraph = streamGraphImpl;
        this.threads = threads;
        this.scope = coroutineScope;
        AtomicInt atomicInt = CaptureSessionStateKt.captureSessionDebugIds;
        atomicInt.getClass();
        this.debugId = AtomicInt.FU.incrementAndGet(atomicInt);
        this.lock = new Object();
        this.finalized = AtomicFU.atomic(Boolean.FALSE);
        this.activeStreamSurfaceMap = DesugarCollections.synchronizedMap(new HashMap());
        this.activeOutputSurfaceMap = DesugarCollections.synchronizedMap(new HashMap());
        this.sessionSequencer = null;
        this.state = State.PENDING;
        this.sessionDisconnected = new CountDownLatch(1);
        this.captureSessionAttemptCompleted = new CountDownLatch(1);
        this._surfaceTokenMap = new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$tryCreateCaptureSession(androidx.camera.camera2.pipe.compat.CaptureSessionState r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.CaptureSessionState.access$tryCreateCaptureSession(androidx.camera.camera2.pipe.compat.CaptureSessionState, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void configure(androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper r11) {
        /*
            r10 = this;
            java.lang.String r0 = "Configured "
            java.lang.Object r1 = r10.lock
            monitor-enter(r1)
            androidx.camera.camera2.pipe.compat.CaptureSessionState$ConfiguredCameraCaptureSession r2 = r10.cameraCaptureSession     // Catch: java.lang.Throwable -> L29
            if (r2 != 0) goto L2c
            if (r11 == 0) goto L2c
            com.fsck.k9.mailstore.LocalStore$7 r2 = r10.captureSequenceProcessorFactory     // Catch: java.lang.Throwable -> L29
            java.util.Map r3 = r10.activeStreamSurfaceMap     // Catch: java.lang.Throwable -> L29
            r3.getClass()     // Catch: java.lang.Throwable -> L29
            java.util.Map r4 = r10.activeOutputSurfaceMap     // Catch: java.lang.Throwable -> L29
            r4.getClass()     // Catch: java.lang.Throwable -> L29
            androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor r2 = r2.create(r11, r3, r4)     // Catch: java.lang.Throwable -> L29
            androidx.camera.camera2.pipe.compat.CaptureSessionState$ConfiguredCameraCaptureSession r3 = new androidx.camera.camera2.pipe.compat.CaptureSessionState$ConfiguredCameraCaptureSession     // Catch: java.lang.Throwable -> L29
            org.apache.james.mime4j.stream.RawField r4 = new org.apache.james.mime4j.stream.RawField     // Catch: java.lang.Throwable -> L29
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L29
            r3.<init>(r11, r4, r2)     // Catch: java.lang.Throwable -> L29
            r10.cameraCaptureSession = r3     // Catch: java.lang.Throwable -> L29
            r2 = r3
            goto L2c
        L29:
            r10 = move-exception
            goto L9d
        L2c:
            androidx.camera.camera2.pipe.compat.CaptureSessionState$State r11 = r10.state     // Catch: java.lang.Throwable -> L29
            androidx.camera.camera2.pipe.compat.CaptureSessionState$State r3 = androidx.camera.camera2.pipe.compat.CaptureSessionState.State.CREATED     // Catch: java.lang.Throwable -> L29
            if (r11 != r3) goto L9b
            if (r2 != 0) goto L35
            goto L9b
        L35:
            java.util.Map r11 = r10.pendingOutputMap     // Catch: java.lang.Throwable -> L29
            r3 = 1
            r4 = 0
            if (r11 == 0) goto L41
            java.util.LinkedHashMap r11 = r10.pendingSurfaceMap     // Catch: java.lang.Throwable -> L29
            if (r11 == 0) goto L41
            r11 = r3
            goto L42
        L41:
            r11 = r4
        L42:
            monitor-exit(r1)
            if (r11 == 0) goto L48
            r10.finalizeOutputsIfAvailable(r4)
        L48:
            java.lang.Object r11 = r10.lock
            monitor-enter(r11)
            java.lang.String r1 = "CXCP"
            androidx.camera.camera2.pipe.core.SystemTimeSource r5 = r10.timeSource     // Catch: java.lang.Throwable -> L98
            r5.getClass()     // Catch: java.lang.Throwable -> L98
            long r5 = android.os.SystemClock.elapsedRealtimeNanos()     // Catch: java.lang.Throwable -> L98
            androidx.camera.camera2.pipe.core.TimestampNs r7 = r10.sessionCreatingTimestamp     // Catch: java.lang.Throwable -> L98
            r7.getClass()     // Catch: java.lang.Throwable -> L98
            long r7 = r7.value     // Catch: java.lang.Throwable -> L98
            long r5 = r5 - r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L98
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L98
            r7.append(r10)     // Catch: java.lang.Throwable -> L98
            java.lang.String r0 = " in "
            r7.append(r0)     // Catch: java.lang.Throwable -> L98
            java.lang.String r0 = "%.3f ms"
            double r5 = (double) r5     // Catch: java.lang.Throwable -> L98
            r8 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r5 = r5 / r8
            java.lang.Double r5 = java.lang.Double.valueOf(r5)     // Catch: java.lang.Throwable -> L98
            java.lang.Object[] r6 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L98
            r6[r4] = r5     // Catch: java.lang.Throwable -> L98
            java.lang.Object[] r3 = java.util.Arrays.copyOf(r6, r3)     // Catch: java.lang.Throwable -> L98
            r4 = 0
            java.lang.String r0 = java.lang.String.format(r4, r0, r3)     // Catch: java.lang.Throwable -> L98
            r7.append(r0)     // Catch: java.lang.Throwable -> L98
            java.lang.String r0 = r7.toString()     // Catch: java.lang.Throwable -> L98
            android.util.Log.i(r1, r0)     // Catch: java.lang.Throwable -> L98
            androidx.camera.camera2.pipe.graph.GraphProcessorImpl r10 = r10.graphListener     // Catch: java.lang.Throwable -> L98
            org.apache.james.mime4j.stream.RawField r0 = r2.processor     // Catch: java.lang.Throwable -> L98
            r10.onGraphStarted(r0)     // Catch: java.lang.Throwable -> L98
            monitor-exit(r11)
            return
        L98:
            r10 = move-exception
            monitor-exit(r11)
            throw r10
        L9b:
            monitor-exit(r1)
            return
        L9d:
            monitor-exit(r1)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.CaptureSessionState.configure(androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper):void");
    }

    public final void configureSurfaceMap(Map map) {
        map.getClass();
        synchronized (this.lock) {
            try {
                State state = this.state;
                if (state != State.CLOSING && state != State.CLOSED) {
                    Map map2 = this._surfaceMap;
                    if (map2 == null) {
                        map2 = EmptyMap.INSTANCE;
                    }
                    updateTrackedSurfaces(map2, map);
                    this._surfaceMap = map;
                    Map map3 = this.pendingOutputMap;
                    Continuation continuation = null;
                    if (map3 != null && this.pendingSurfaceMap == null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Map.Entry entry : map.entrySet()) {
                            if (map3.containsKey(entry.getKey())) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                        if (linkedHashMap.size() == map3.size()) {
                            this.pendingSurfaceMap = linkedHashMap;
                            JobKt.launch$default(this.scope, null, null, new WakeLock$release$2(this, continuation, 4), 3);
                        }
                    }
                    JobKt.launch$default(this.scope, null, null, new CaptureSessionState$cameraDevice$2$1(this, continuation, 1), 3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void disconnect() {
        ConfiguredCameraCaptureSession configuredCameraCaptureSession;
        synchronized (this.lock) {
            try {
                State state = this.state;
                State state2 = State.CLOSING;
                if (state != state2 && state != State.CLOSED) {
                    this.state = state2;
                    ConfiguredCameraCaptureSession configuredCameraCaptureSession2 = this.cameraCaptureSession;
                    Continuation continuation = null;
                    boolean z = false;
                    if (configuredCameraCaptureSession2 != null) {
                        this.cameraCaptureSession = null;
                    } else {
                        if (this.cameraGraphFlags.closeCaptureSessionOnDisconnect && this.hasAttemptedCaptureSession) {
                            z = true;
                        }
                        configuredCameraCaptureSession2 = null;
                    }
                    SessionSequencer sessionSequencer = this.sessionSequencer;
                    if (sessionSequencer != null) {
                        sessionSequencer.release();
                    }
                    int i = 2;
                    if (z) {
                        Log.d("CXCP", "Waiting for CameraCaptureSession configuration");
                        if (((Unit) this.threads.runBlockingCheckedOrNull(3000L, new Animatable$stop$2(this, continuation, i))) == null) {
                            Log.e("CXCP", "Waiting for CameraCaptureSession configuration timed out");
                        }
                        synchronized (this.lock) {
                            configuredCameraCaptureSession = this.cameraCaptureSession;
                            this.cameraCaptureSession = null;
                        }
                        configuredCameraCaptureSession2 = configuredCameraCaptureSession;
                    }
                    Trace.beginSection(this.graphListener + "#onGraphStopping");
                    GraphProcessorImpl graphProcessorImpl = this.graphListener;
                    Log.d("CXCP", graphProcessorImpl + " onGraphStopping");
                    graphProcessorImpl._graphState.setValue(GraphState.GraphStateStopping.INSTANCE);
                    graphProcessorImpl.graphLoop.setRequestProcessor(null);
                    for (GraphStateToCameraStateAdapter graphStateToCameraStateAdapter : graphProcessorImpl.externalStateGraphListeners) {
                        graphStateToCameraStateAdapter.cameraStateAdapter.onGraphStateUpdated(graphStateToCameraStateAdapter.getCameraGraph(), GraphState.GraphStateStopping.INSTANCE);
                    }
                    Trace.endSection();
                    if (configuredCameraCaptureSession2 != null) {
                        RawField rawField = configuredCameraCaptureSession2.processor;
                        Log.d("CXCP", this + " Shutdown");
                        Trace.beginSection(this + "#shutdown");
                        if (this.cameraGraphFlags.abortCapturesOnStop && ((Unit) this.threads.runBlockingCheckedOrNull(2000L, new Animatable$snapTo$2(this, rawField, continuation, 3))) == null) {
                            Log.e("CXCP", "Failed to abort captures in 2000ms");
                        }
                        Trace.beginSection(this + "#disconnect");
                        configuredCameraCaptureSession2.captureSequenceProcessor.disconnect$camera_camera2_pipe();
                        Trace.endSection();
                        if (this.cameraGraphFlags.closeCaptureSessionOnDisconnect && ((Unit) this.threads.runBlockingCheckedOrNull(3000L, new Animatable$snapTo$2(this, configuredCameraCaptureSession2, continuation, i))) == null) {
                            Log.e("CXCP", "Failed to close the capture session in 3000ms");
                        }
                        Trace.beginSection(this.graphListener + "#onGraphStopped");
                        this.graphListener.onGraphStopped();
                        Trace.endSection();
                        Trace.endSection();
                    } else {
                        Trace.beginSection(this.graphListener + "#onGraphStopped");
                        this.graphListener.onGraphStopped();
                        Trace.endSection();
                    }
                    this.sessionDisconnected.countDown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finalizeOutputsIfAvailable(boolean z) {
        ConfiguredCameraCaptureSession configuredCameraCaptureSession;
        Map map;
        LinkedHashMap linkedHashMap;
        boolean z2;
        synchronized (this.lock) {
            configuredCameraCaptureSession = this.cameraCaptureSession;
            map = this.pendingOutputMap;
            linkedHashMap = this.pendingSurfaceMap;
        }
        if (configuredCameraCaptureSession == null || map == null || linkedHashMap == null) {
            return;
        }
        Trace.beginSection(this + "#finalizeOutputConfigurations");
        this.timeSource.getClass();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        for (Map.Entry entry : map.entrySet()) {
            int i = ((StreamId) entry.getKey()).value;
            OutputConfigurationWrapper outputConfigurationWrapper = (OutputConfigurationWrapper) entry.getValue();
            Object obj = linkedHashMap.get(new StreamId(i));
            if (obj == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                return;
            }
            ((AndroidOutputConfiguration) outputConfigurationWrapper).addSurface((Surface) obj);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            linkedHashSet.add((OutputConfigurationWrapper) ((Map.Entry) it.next()).getValue());
        }
        configuredCameraCaptureSession.session.finalizeOutputConfigurations(CollectionsKt.toList(linkedHashSet));
        synchronized (this.lock) {
            try {
                z2 = false;
                if (this.state == State.CREATED) {
                    this.activeStreamSurfaceMap.putAll(linkedHashMap);
                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                        int i2 = ((StreamId) entry2.getKey()).value;
                        Surface surface = (Surface) entry2.getValue();
                        CameraStream m82getaKI5c8E = this.streamGraph.m82getaKI5c8E(i2);
                        if (m82getaKI5c8E == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        if (m82getaKI5c8E.outputs.size() != 1) {
                            throw new IllegalStateException("Cannot finalize a multi-output stream!");
                        }
                        Map map2 = this.activeOutputSurfaceMap;
                        map2.getClass();
                        map2.put(new OutputId(((StreamGraphImpl.OutputStreamImpl) CollectionsKt.single(m82getaKI5c8E.outputs)).id), surface);
                    }
                    this.timeSource.getClass();
                    long elapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Finalized ");
                    ArrayList arrayList = new ArrayList(map.size());
                    Iterator it2 = map.entrySet().iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new StreamId(((StreamId) ((Map.Entry) it2.next()).getKey()).value));
                    }
                    sb.append(arrayList);
                    sb.append(" for ");
                    sb.append(this);
                    sb.append(" in ");
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(elapsedRealtimeNanos2 / 1000000.0d)}, 1)));
                    Log.i("CXCP", sb.toString());
                    z2 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2 && z) {
            GraphProcessorImpl graphProcessorImpl = this.graphListener;
            Log.d("CXCP", graphProcessorImpl + " onGraphModified");
            graphProcessorImpl.graphLoop.processingQueue.tryEmit(GraphCommand.Stop.INSTANCE$2);
        }
        Trace.endSection();
    }

    public final void finalizeSession$camera_camera2_pipe(long j) {
        List<AutoCloseable> list;
        if (j != 0) {
            JobKt.launch$default(this.scope, null, null, new DraggableNode$onDragStarted$1(j, this, null), 3);
            return;
        }
        Log.d("CXCP", "Finalizing " + this);
        synchronized (this.lock) {
            list = CollectionsKt.toList(this._surfaceTokenMap.values());
            this._surfaceTokenMap.clear();
        }
        for (AutoCloseable autoCloseable : list) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
            } else if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof ContentProviderClient)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return;
                }
                ((ContentProviderClient) autoCloseable).release();
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public final void onActive(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        Log.d("CXCP", this + " Active");
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public final void onCaptureQueueEmpty(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        Log.d("CXCP", this + " CaptureQueueEmpty");
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public final void onClosed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        Log.d("CXCP", this + " Closed");
        Trace.beginSection(this + "#onClosed");
        shutdown();
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public final void onConfigureFailed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        Log.w("CXCP", this + " Configuration Failed");
        Trace.beginSection(this + "#onConfigureFailed");
        this.graphListener.onGraphError(new GraphState.GraphStateError(9, false));
        shutdown();
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public final void onConfigured(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        Log.d("CXCP", this + " Configured");
        Trace.beginSection(this + "#configure");
        configure(cameraCaptureSessionWrapper);
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public final void onReady(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        Log.d("CXCP", this + " Ready");
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public final void onSessionDisconnected() {
        Log.d("CXCP", this + " session disconnecting");
        Trace.beginSection(this + "#onSessionDisconnected");
        disconnect();
        try {
            Trace.beginSection(this + "#onSessionDisconnected Await");
            this.sessionDisconnected.await();
            Trace.endSection();
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public final void onSessionFinalized() {
        if (this.finalized.compareAndSet(Boolean.FALSE, Boolean.TRUE)) {
            Log.d("CXCP", this + " session finalizing");
            Trace.beginSection(this + "#onSessionFinalized");
            shutdown();
            finalizeSession$camera_camera2_pipe(0L);
            Trace.endSection();
        }
    }

    public final void shutdown() {
        long j;
        boolean z;
        int i;
        disconnect();
        synchronized (this.lock) {
            try {
                State state = this.state;
                State state2 = State.CLOSED;
                j = 0;
                if (state != state2) {
                    z = true;
                    if (this._cameraDevice != null && this.hasAttemptedCaptureSession && (i = this.cameraGraphFlags.finalizeSessionOnCloseBehavior) != 1) {
                        if (i == 2) {
                            j = 2000;
                        }
                    }
                    this._cameraDevice = null;
                    this.state = state2;
                }
                z = false;
                this._cameraDevice = null;
                this.state = state2;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            finalizeSession$camera_camera2_pipe(j);
        }
    }

    public final String toString() {
        return "CaptureSessionState-" + this.debugId;
    }

    public final void updateTrackedSurfaces(Map map, Map map2) {
        Surface surface;
        AutoCloseable autoCloseable;
        Set set = CollectionsKt.toSet(map.values());
        Set set2 = CollectionsKt.toSet(map2.values());
        Iterator it = Validate.minus(set, (Iterable) set2).iterator();
        do {
            boolean hasNext = it.hasNext();
            LinkedHashMap linkedHashMap = this._surfaceTokenMap;
            if (!hasNext) {
                for (Surface surface2 : Validate.minus(set2, (Iterable) set)) {
                    linkedHashMap.put(surface2, this.cameraSurfaceManager.registerSurface$camera_camera2_pipe(surface2));
                }
                return;
            }
            surface = (Surface) it.next();
            autoCloseable = (AutoCloseable) linkedHashMap.remove(surface);
            if (autoCloseable == null) {
                autoCloseable = null;
            } else if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
            } else if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof ContentProviderClient)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return;
                }
                ((ContentProviderClient) autoCloseable).release();
            }
        } while (autoCloseable != null);
        UriKt$$ExternalSyntheticBUOutline0.m(surface, " doesn't have a matching surface token!", "Surface ");
    }
}

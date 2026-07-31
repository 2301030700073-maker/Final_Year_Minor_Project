package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.pipe.CameraController$ControllerState$ERROR;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.OutputStream$DynamicRangeProfile;
import androidx.camera.camera2.pipe.OutputStream$MirrorMode;
import androidx.camera.camera2.pipe.OutputStream$StreamUseCase;
import androidx.camera.camera2.pipe.OutputStream$StreamUseHint;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl;
import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.compat.CaptureSessionState;
import androidx.camera.camera2.pipe.compat.VirtualCameraState;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.RelationUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraphImpl implements AutoCloseable {
    public final AudioRestrictionControllerImpl audioRestrictionController;
    public final Camera2CameraController cameraController;
    public final AtomicBoolean closed;
    public final Controller3A controller3A;
    public final FrameCaptureQueue frameCaptureQueue;
    public final FrameDistributor frameDistributor;
    public final GraphProcessorImpl graphListener;
    public final GraphProcessorImpl graphProcessor;
    public final CoroutineScope graphScope;
    public final CameraGraphId id;
    public final CameraGraphRequestListenersImpl listeners;
    public final CameraGraphParametersImpl parameters;
    public final GraphSessionLock sessionLock;
    public final StreamGraphImpl streamGraph;
    public final SurfaceGraph surfaceGraph;

    public CameraGraphImpl(CameraGraph$Config cameraGraph$Config, CameraMetadata cameraMetadata, GraphProcessorImpl graphProcessorImpl, GraphProcessorImpl graphProcessorImpl2, StreamGraphImpl streamGraphImpl, SurfaceGraph surfaceGraph, Camera2CameraController camera2CameraController, FrameDistributor frameDistributor, FrameCaptureQueue frameCaptureQueue, AudioRestrictionControllerImpl audioRestrictionControllerImpl, CameraGraphId cameraGraphId, CameraGraphParametersImpl cameraGraphParametersImpl, CameraGraphRequestListenersImpl cameraGraphRequestListenersImpl, GraphSessionLock graphSessionLock, CoroutineScope coroutineScope, Controller3A controller3A) {
        String str;
        List list;
        Iterator it;
        cameraGraph$Config.getClass();
        ArrayList arrayList = cameraGraph$Config.input;
        int i = cameraGraph$Config.sessionMode;
        cameraMetadata.getClass();
        graphProcessorImpl.getClass();
        graphProcessorImpl2.getClass();
        streamGraphImpl.getClass();
        List list2 = streamGraphImpl.inputs;
        surfaceGraph.getClass();
        camera2CameraController.getClass();
        frameDistributor.getClass();
        frameCaptureQueue.getClass();
        audioRestrictionControllerImpl.getClass();
        cameraGraphParametersImpl.getClass();
        cameraGraphRequestListenersImpl.getClass();
        graphSessionLock.getClass();
        coroutineScope.getClass();
        controller3A.getClass();
        this.graphProcessor = graphProcessorImpl;
        this.graphListener = graphProcessorImpl2;
        this.streamGraph = streamGraphImpl;
        this.surfaceGraph = surfaceGraph;
        this.cameraController = camera2CameraController;
        this.frameDistributor = frameDistributor;
        this.frameCaptureQueue = frameCaptureQueue;
        this.audioRestrictionController = audioRestrictionControllerImpl;
        this.id = cameraGraphId;
        this.parameters = cameraGraphParametersImpl;
        this.listeners = cameraGraphRequestListenersImpl;
        this.sessionLock = graphSessionLock;
        this.graphScope = coroutineScope;
        this.controller3A = controller3A;
        this.closed = AtomicFU.atomic(false);
        String str2 = cameraGraph$Config.camera;
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
        key.getClass();
        Camera2CameraMetadata camera2CameraMetadata = (Camera2CameraMetadata) cameraMetadata;
        Integer num = (Integer) camera2CameraMetadata.get(key);
        String str3 = "External";
        String str4 = "Unknown";
        String str5 = (num != null && num.intValue() == 0) ? "Front" : (num != null && num.intValue() == 1) ? "Back" : (num != null && num.intValue() == 2) ? "External" : "Unknown";
        CameraCharacteristics.Key key2 = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        key2.getClass();
        Integer num2 = (Integer) camera2CameraMetadata.get(key2);
        if (num2 != null && num2.intValue() == 0) {
            str3 = "Limited";
        } else if (num2 != null && num2.intValue() == 1) {
            str3 = "Full";
        } else if (num2 != null && num2.intValue() == 2) {
            str3 = "Legacy";
        } else if (num2 != null && num2.intValue() == 3) {
            str3 = "Level 3";
        } else if (num2 == null || num2.intValue() != 4) {
            str3 = "Unknown";
        }
        if (i == 1) {
            str4 = "High Speed";
        } else if (i == 0) {
            str4 = "Normal";
        } else if (i == 2) {
            str4 = "Extension";
        }
        CameraCharacteristics.Key key3 = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key3.getClass();
        int[] iArr = (int[]) camera2CameraMetadata.get(key3);
        String str6 = (iArr == null || !ArraysKt___ArraysKt.contains(iArr, 11)) ? "Physical" : "Logical";
        StringBuilder sb = new StringBuilder();
        sb.append(this + " (Camera " + str2 + ")\n");
        StringBuilder m = Config.CC.m("  Facing:    ", str5, " (", str6, ", ");
        m.append(str3);
        m.append(")\n");
        sb.append(m.toString());
        sb.append("  Mode:      " + str4 + '\n');
        sb.append("Outputs:\n");
        Iterator it2 = streamGraphImpl.streams.iterator();
        while (true) {
            int i2 = 12;
            if (!it2.hasNext()) {
                ArrayList arrayList2 = arrayList;
                int i3 = i;
                List<StreamGraphImpl.InputStreamImpl> list3 = list2;
                if (!list3.isEmpty()) {
                    sb.append("Inputs:\n");
                    for (StreamGraphImpl.InputStreamImpl inputStreamImpl : list3) {
                        sb.append(" ");
                        sb.append(StringsKt.padEnd("Input-" + inputStreamImpl.id, 12));
                        sb.append(StringsKt.padEnd(StreamFormat.m45toStringimpl(inputStreamImpl.format), 12));
                        sb.append(StringsKt.padEnd(String.valueOf(1), 12));
                        sb.append("\n");
                    }
                }
                sb.append("Session Template: " + RequestTemplate.m42getNameimpl(cameraGraph$Config.sessionTemplate) + '\n');
                RelationUtil.appendParameters(sb, "Session Parameters", cameraGraph$Config.sessionParameters);
                sb.append("Default Template: " + RequestTemplate.m42getNameimpl(cameraGraph$Config.defaultTemplate) + '\n');
                RelationUtil.appendParameters(sb, "Default Parameters", cameraGraph$Config.defaultParameters);
                RelationUtil.appendParameters(sb, "Required Parameters", cameraGraph$Config.requiredParameters);
                Log.i("CXCP", sb.toString());
                if (i3 == 1) {
                    if (this.streamGraph.outputs.isEmpty()) {
                        UriKt$$ExternalSyntheticBUOutline0.m("Cannot create a HIGH_SPEED CameraGraph without outputs.");
                        throw null;
                    }
                    int size = this.streamGraph.outputs.size();
                    StreamGraphImpl streamGraphImpl2 = this.streamGraph;
                    if (size > 2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3(streamGraphImpl2.outputs, "Cannot create a HIGH_SPEED CameraGraph with more than two outputs. Configured outputs are ");
                        throw null;
                    }
                    ArrayList arrayList3 = streamGraphImpl2.outputs;
                    if (arrayList3 == null || !arrayList3.isEmpty()) {
                        Iterator it3 = arrayList3.iterator();
                        while (it3.hasNext()) {
                            if (!((StreamGraphImpl.OutputStreamImpl) it3.next()).isValidForHighSpeedOperatingMode()) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3(this.streamGraph.outputs, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are ");
                                throw null;
                            }
                        }
                    }
                }
                if (arrayList2 != null) {
                    if (arrayList2.isEmpty()) {
                        UriKt$$ExternalSyntheticBUOutline0.m("At least one InputConfiguration is required for reprocessing");
                        throw null;
                    }
                    if (Build.VERSION.SDK_INT < 31 && arrayList2.size() > 1) {
                        UriKt$$ExternalSyntheticBUOutline0.m("Multi resolution reprocessing not supported under Android S");
                        throw null;
                    }
                }
                if (this.streamGraph.imageSourceMap.isEmpty()) {
                    return;
                }
                this.surfaceGraph.maybeUpdateSurfaces$camera_camera2_pipe();
                return;
            }
            Iterator it4 = ((CameraStream) it2.next()).outputs.iterator();
            int i4 = 0;
            while (it4.hasNext()) {
                Object next = it4.next();
                int i5 = i4 + 1;
                if (i4 < 0) {
                    IntOffsetKt.throwIndexOverflow();
                    throw null;
                }
                StreamGraphImpl.OutputStreamImpl outputStreamImpl = (StreamGraphImpl.OutputStreamImpl) next;
                sb.append("  ");
                if (i4 == 0) {
                    CameraStream cameraStream = outputStreamImpl.stream;
                    if (cameraStream == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("stream");
                        throw null;
                    }
                    str = StreamId.m46toStringimpl(cameraStream.id);
                } else {
                    str = "";
                }
                sb.append(StringsKt.padEnd(str, i2));
                int i6 = outputStreamImpl.id;
                String str7 = outputStreamImpl.camera;
                sb.append(StringsKt.padEnd("Output-" + i6, 12));
                String size2 = outputStreamImpl.size.toString();
                size2.getClass();
                sb.append(StringsKt.padEnd(size2, 12));
                sb.append(StringsKt.padEnd(StreamFormat.m44getNameimpl(outputStreamImpl.format), 16));
                OutputStream$MirrorMode outputStream$MirrorMode = outputStreamImpl.mirrorMode;
                if (outputStream$MirrorMode != null) {
                    sb.append(" [" + ((Object) OutputStream$MirrorMode.m39toStringimpl(outputStream$MirrorMode.value)) + ']');
                }
                OutputStream$DynamicRangeProfile outputStream$DynamicRangeProfile = outputStreamImpl.dynamicRangeProfile;
                Iterator it5 = it2;
                ArrayList arrayList4 = arrayList;
                if (outputStream$DynamicRangeProfile != null) {
                    sb.append(" [" + ((Object) OutputStream$DynamicRangeProfile.m38toStringimpl(outputStream$DynamicRangeProfile.value)) + ']');
                }
                OutputStream$StreamUseCase outputStream$StreamUseCase = outputStreamImpl.streamUseCase;
                int i7 = i;
                if (outputStream$StreamUseCase != null) {
                    long j = outputStream$StreamUseCase.value;
                    StringBuilder sb2 = new StringBuilder(" [");
                    list = list2;
                    it = it4;
                    sb2.append((Object) ("StreamUseCase(value=" + j + ')'));
                    sb2.append(']');
                    sb.append(sb2.toString());
                } else {
                    list = list2;
                    it = it4;
                }
                OutputStream$StreamUseHint outputStream$StreamUseHint = outputStreamImpl.streamUseHint;
                if (outputStream$StreamUseHint != null) {
                    long j2 = outputStream$StreamUseHint.value;
                    StringBuilder sb3 = new StringBuilder(" [");
                    sb3.append((Object) ("StreamUseHint(value=" + j2 + ')'));
                    sb3.append(']');
                    sb.append(sb3.toString());
                }
                if (!Intrinsics.areEqual(str7, str2)) {
                    sb.append(" [");
                    sb.append(new CameraId(str7));
                    sb.append("]");
                }
                sb.append("\n");
                it2 = it5;
                it4 = it;
                i = i7;
                arrayList = arrayList4;
                i4 = i5;
                list2 = list;
                i2 = 12;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object acquireSession(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1 r0 = (androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1 r0 = new androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3c
        L25:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            r7 = 0
            return r7
        L2c:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.label = r2
            androidx.camera.camera2.pipe.internal.GraphSessionLock r8 = r7.sessionLock
            java.lang.Object r8 = r8.acquireToken$camera_camera2_pipe(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r0) goto L3c
            return r0
        L3c:
            r1 = r8
            androidx.camera.camera2.pipe.core.MutexToken r1 = (androidx.camera.camera2.pipe.core.MutexToken) r1
            androidx.camera.camera2.pipe.graph.CameraGraphSessionImpl r0 = new androidx.camera.camera2.pipe.graph.CameraGraphSessionImpl
            androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl r5 = r7.parameters
            androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl r6 = r7.listeners
            androidx.camera.camera2.pipe.graph.GraphProcessorImpl r2 = r7.graphProcessor
            androidx.camera.camera2.pipe.graph.Controller3A r3 = r7.controller3A
            androidx.camera.camera2.pipe.internal.FrameCaptureQueue r4 = r7.frameCaptureQueue
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.CameraGraphImpl.acquireSession(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.closed.compareAndSet()) {
            Trace.beginSection(this + "#close");
            StringBuilder sb = new StringBuilder("Closing ");
            sb.append(this);
            Log.i("CXCP", sb.toString());
            this.graphProcessor.graphLoop.close();
            Camera2CameraController camera2CameraController = this.cameraController;
            synchronized (camera2CameraController.lock) {
                try {
                    if (!camera2CameraController.isClosed()) {
                        camera2CameraController.controllerState = CameraController$ControllerState$ERROR.INSTANCE$2;
                        Log.d("CXCP", "Closed " + camera2CameraController);
                        VirtualCameraState virtualCameraState = camera2CameraController.currentCamera;
                        CaptureSessionState captureSessionState = camera2CameraController.currentSession;
                        camera2CameraController.currentCamera = null;
                        camera2CameraController.currentSession = null;
                        StandaloneCoroutine standaloneCoroutine = camera2CameraController.restartJob;
                        if (standaloneCoroutine != null) {
                            standaloneCoroutine.cancel(null);
                        }
                        StandaloneCoroutine standaloneCoroutine2 = camera2CameraController.currentCameraStateJob;
                        if (standaloneCoroutine2 != null) {
                            standaloneCoroutine2.cancel(null);
                        }
                        camera2CameraController.currentCameraStateJob = null;
                        StandaloneCoroutine standaloneCoroutine3 = camera2CameraController.cameraAvailabilityJob;
                        if (standaloneCoroutine3 != null) {
                            standaloneCoroutine3.cancel(null);
                        }
                        camera2CameraController.cameraAvailabilityJob = null;
                        StandaloneCoroutine standaloneCoroutine4 = camera2CameraController.cameraPrioritiesJob;
                        if (standaloneCoroutine4 != null) {
                            standaloneCoroutine4.cancel(null);
                        }
                        camera2CameraController.cameraPrioritiesJob = null;
                        Config.CC.m93m((Object) camera2CameraController.cameraStatusMonitor);
                        camera2CameraController.detachSessionAndCamera(captureSessionState, virtualCameraState);
                        CameraGraph$Config cameraGraph$Config = camera2CameraController.graphConfig;
                        if (cameraGraph$Config.flags.closeCameraDeviceOnClose || camera2CameraController.camera2Quirks.m65x552c1673(cameraGraph$Config.camera)) {
                            Log.d("CXCP", "Quirk: Closing " + ((Object) CameraId.m35toStringimpl(camera2CameraController.graphConfig.camera)) + " during " + camera2CameraController + "#close");
                            camera2CameraController.camera2DeviceManager.m69closeEfqyGwQ(camera2CameraController.graphConfig.camera);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.frameDistributor.close();
            this.frameCaptureQueue.close();
            this.surfaceGraph.close();
            this.streamGraph.close();
            this.audioRestrictionController.removeCameraGraph(this);
            JobKt.cancel(this.graphScope, (CancellationException) null);
            Trace.endSection();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x013a  */
    /* renamed from: setSurface-NYG5g8E, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m78setSurfaceNYG5g8E(int r7, android.view.Surface r8) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.CameraGraphImpl.m78setSurfaceNYG5g8E(int, android.view.Surface):void");
    }

    public final void start() {
        if (this.closed.getValue()) {
            UriKt$$ExternalSyntheticBUOutline0.m(this, " after calling close()", "Cannot start ");
            return;
        }
        Trace.beginSection(this + "#start");
        StringBuilder sb = new StringBuilder("Starting ");
        sb.append(this);
        Log.i("CXCP", sb.toString());
        GraphProcessorImpl graphProcessorImpl = this.graphListener;
        graphProcessorImpl.getClass();
        Log.d("CXCP", graphProcessorImpl + " onGraphStarting");
        graphProcessorImpl._graphState.setValue(GraphState.GraphStateStarted.INSTANCE$1);
        for (GraphStateToCameraStateAdapter graphStateToCameraStateAdapter : graphProcessorImpl.externalStateGraphListeners) {
            graphStateToCameraStateAdapter.cameraStateAdapter.onGraphStateUpdated(graphStateToCameraStateAdapter.getCameraGraph(), GraphState.GraphStateStarted.INSTANCE$1);
        }
        Camera2CameraController camera2CameraController = this.cameraController;
        synchronized (camera2CameraController.lock) {
            camera2CameraController.startLocked();
        }
        Trace.endSection();
    }

    public final String toString() {
        return this.id.name;
    }
}

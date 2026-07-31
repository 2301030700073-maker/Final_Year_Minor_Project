package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.core.impl.Config;
import androidx.cardview.widget.CardView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidCameraState extends CameraDevice.StateCallback {
    public final StateFlowImpl _state;
    public final int attemptNumber;
    public final long attemptTimestampNanos;
    public final AudioRestrictionControllerImpl audioRestrictionController;
    public final Camera2DeviceCloserImpl camera2DeviceCloser;
    public final Camera2Quirks camera2Quirks;
    public final CountDownLatch cameraDeviceClosed;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final String cameraId;
    public final int debugId;
    public final CameraDevice.StateCallback interopCameraDeviceStateCallback;
    public final CardView.AnonymousClass1 interopCaptureSessionListener;
    public final Object lock;
    public final CameraMetadata metadata;
    public TimestampNs openTimestampNanos;
    public boolean opening;
    public ClosingInfo pendingClose;
    public final long requestTimestampNanos;
    public boolean shouldDelayFinalizing;
    public final Threads threads;
    public final SystemTimeSource timeSource;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClosingInfo {
        public final long closingTimestamp;
        public final CameraError errorCode;
        public final Throwable exception;
        public final ClosedReason reason;

        public ClosingInfo(ClosedReason closedReason, CameraError cameraError, Exception exc, int i) {
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            cameraError = (i & 4) != 0 ? null : cameraError;
            exc = (i & 8) != 0 ? null : exc;
            this.reason = closedReason;
            this.closingTimestamp = elapsedRealtimeNanos;
            this.errorCode = cameraError;
            this.exception = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClosingInfo)) {
                return false;
            }
            ClosingInfo closingInfo = (ClosingInfo) obj;
            return this.reason == closingInfo.reason && this.closingTimestamp == closingInfo.closingTimestamp && Intrinsics.areEqual(this.errorCode, closingInfo.errorCode) && Intrinsics.areEqual(this.exception, closingInfo.exception);
        }

        public final int hashCode() {
            int hashCode = this.reason.hashCode() * 31;
            long j = this.closingTimestamp;
            int i = (((int) (j ^ (j >>> 32))) + hashCode) * 31;
            CameraError cameraError = this.errorCode;
            int i2 = (i + (cameraError == null ? 0 : cameraError.value)) * 31;
            Throwable th = this.exception;
            return i2 + (th != null ? th.hashCode() : 0);
        }

        public final String toString() {
            return "ClosingInfo(reason=" + this.reason + ", closingTimestamp=" + ((Object) TimestampNs.m77toStringimpl(this.closingTimestamp)) + ", errorCode=" + this.errorCode + ", exception=" + this.exception + ')';
        }
    }

    public AndroidCameraState(String str, CameraMetadata cameraMetadata, int i, long j, SystemTimeSource systemTimeSource, Camera2ErrorProcessor camera2ErrorProcessor, Camera2DeviceCloserImpl camera2DeviceCloserImpl, Camera2Quirks camera2Quirks, Threads threads, AudioRestrictionControllerImpl audioRestrictionControllerImpl, CameraDevice.StateCallback stateCallback, CardView.AnonymousClass1 anonymousClass1) {
        str.getClass();
        cameraMetadata.getClass();
        systemTimeSource.getClass();
        camera2ErrorProcessor.getClass();
        camera2DeviceCloserImpl.getClass();
        camera2Quirks.getClass();
        threads.getClass();
        audioRestrictionControllerImpl.getClass();
        this.cameraId = str;
        this.metadata = cameraMetadata;
        this.attemptNumber = i;
        this.attemptTimestampNanos = j;
        this.timeSource = systemTimeSource;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.camera2DeviceCloser = camera2DeviceCloserImpl;
        this.camera2Quirks = camera2Quirks;
        this.threads = threads;
        this.audioRestrictionController = audioRestrictionControllerImpl;
        this.interopCameraDeviceStateCallback = stateCallback;
        this.interopCaptureSessionListener = anonymousClass1;
        AtomicInt atomicInt = VirtualCameraKt.androidCameraDebugIds;
        atomicInt.getClass();
        this.debugId = AtomicInt.FU.incrementAndGet(atomicInt);
        this.lock = new Object();
        this.cameraDeviceClosed = new CountDownLatch(1);
        this._state = FlowKt.MutableStateFlow(CameraStateUnopened.INSTANCE);
        Log.i("CXCP", "Opening " + ((Object) CameraId.m35toStringimpl(str)));
        this.requestTimestampNanos = i != 1 ? SystemClock.elapsedRealtimeNanos() : j;
    }

    /* renamed from: shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec, reason: not valid java name */
    public static boolean m50shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(Camera2Quirks camera2Quirks, String str, CameraError cameraError) {
        camera2Quirks.getClass();
        str.getClass();
        camera2Quirks.strictMode.getClass();
        int i = Build.VERSION.SDK_INT;
        if (24 > i || i >= 29) {
            return false;
        }
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        CameraMetadata m63awaitCameraMetadataEfqyGwQ = ((Camera2MetadataCache) camera2Quirks.metadataProvider).m63awaitCameraMetadataEfqyGwQ(str);
        companion.getClass();
        return CameraMetadata.Companion.isHardwareLevelLegacy(m63awaitCameraMetadataEfqyGwQ) && cameraError == null;
    }

    public final void close() {
        CameraState cameraState = (CameraState) this._state.getValue();
        CameraDeviceWrapper cameraDeviceWrapper = cameraState instanceof CameraStateOpen ? ((CameraStateOpen) cameraState).cameraDevice : null;
        closeWith(cameraDeviceWrapper != null ? (CameraDevice) cameraDeviceWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class)) : null, new ClosingInfo(ClosedReason.APP_CLOSED, null, null, 14));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r10.opening == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void closeWith(android.hardware.camera2.CameraDevice r11, androidx.camera.camera2.pipe.compat.AndroidCameraState.ClosingInfo r12) {
        /*
            r10 = this;
            kotlinx.coroutines.flow.StateFlowImpl r0 = r10._state
            java.lang.Object r0 = r0.getValue()
            androidx.camera.camera2.pipe.compat.CameraState r0 = (androidx.camera.camera2.pipe.compat.CameraState) r0
            boolean r1 = r0 instanceof androidx.camera.camera2.pipe.compat.CameraStateOpen
            r2 = 0
            if (r1 == 0) goto L13
            androidx.camera.camera2.pipe.compat.CameraStateOpen r0 = (androidx.camera.camera2.pipe.compat.CameraStateOpen) r0
            androidx.camera.camera2.pipe.compat.CameraDeviceWrapper r0 = r0.cameraDevice
            r4 = r0
            goto L14
        L13:
            r4 = r2
        L14:
            java.lang.Object r1 = r10.lock
            monitor-enter(r1)
            androidx.camera.camera2.pipe.compat.AndroidCameraState$ClosingInfo r0 = r10.pendingClose     // Catch: java.lang.Throwable -> L22
            if (r0 != 0) goto L26
            r10.pendingClose = r12     // Catch: java.lang.Throwable -> L22
            boolean r0 = r10.opening     // Catch: java.lang.Throwable -> L22
            if (r0 != 0) goto L26
            goto L27
        L22:
            r0 = move-exception
            r10 = r0
            goto L98
        L26:
            r12 = r2
        L27:
            monitor-exit(r1)
            if (r12 == 0) goto L97
            androidx.camera.camera2.pipe.CameraError r0 = r12.errorCode
            r1 = 0
            if (r0 == 0) goto L3e
            androidx.camera.camera2.pipe.compat.ClosedReason r3 = r12.reason
            androidx.camera.camera2.pipe.compat.ClosedReason r5 = androidx.camera.camera2.pipe.compat.ClosedReason.CAMERA2_EXCEPTION
            if (r3 == r5) goto L3e
            androidx.camera.camera2.pipe.compat.Camera2ErrorProcessor r3 = r10.cameraErrorListener
            java.lang.String r5 = r10.cameraId
            int r0 = r0.value
            r3.m59onCameraError3M5Xam4(r0, r5, r1)
        L3e:
            kotlinx.coroutines.flow.StateFlowImpl r0 = r10._state
            androidx.camera.camera2.pipe.compat.CameraStateClosing r3 = new androidx.camera.camera2.pipe.compat.CameraStateClosing
            androidx.camera.camera2.pipe.CameraError r5 = r12.errorCode
            r3.<init>(r5)
            r0.getClass()
            r0.updateState(r2, r3)
            androidx.camera.camera2.pipe.compat.ClosedReason r0 = r12.reason
            androidx.camera.camera2.pipe.compat.ClosedReason r3 = androidx.camera.camera2.pipe.compat.ClosedReason.CAMERA2_CLOSED
            if (r0 == r3) goto L8a
            androidx.camera.camera2.pipe.compat.Camera2Quirks r0 = r10.camera2Quirks
            java.lang.String r3 = r10.cameraId
            androidx.camera.camera2.pipe.CameraError r5 = r12.errorCode
            boolean r5 = m50shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(r0, r3, r5)
            r6 = 1
            if (r5 == 0) goto L68
            boolean r0 = r0.m65x552c1673(r3)
            if (r0 == 0) goto L68
            r8 = r6
            goto L69
        L68:
            r8 = r1
        L69:
            if (r8 == 0) goto L76
            java.lang.Object r1 = r10.lock
            monitor-enter(r1)
            r10.shouldDelayFinalizing = r6     // Catch: java.lang.Throwable -> L72
            monitor-exit(r1)
            goto L76
        L72:
            r0 = move-exception
            r10 = r0
            monitor-exit(r1)
            throw r10
        L76:
            androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl r3 = r10.camera2DeviceCloser
            androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl r7 = r10.audioRestrictionController
            androidx.camera.camera2.pipe.compat.Camera2Quirks r0 = r10.camera2Quirks
            java.lang.String r1 = r10.cameraId
            androidx.camera.camera2.pipe.CameraError r5 = r12.errorCode
            boolean r9 = m50shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(r0, r1, r5)
            r6 = r10
            r5 = r11
            r3.closeCamera(r4, r5, r6, r7, r8, r9)
            goto L8b
        L8a:
            r6 = r10
        L8b:
            kotlinx.coroutines.flow.StateFlowImpl r10 = r6._state
            androidx.camera.camera2.pipe.compat.CameraStateClosed r11 = r6.computeClosedState(r12)
            r10.getClass()
            r10.updateState(r2, r11)
        L97:
            return
        L98:
            monitor-exit(r1)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraState.closeWith(android.hardware.camera2.CameraDevice, androidx.camera.camera2.pipe.compat.AndroidCameraState$ClosingInfo):void");
    }

    public final CameraStateClosed computeClosedState(ClosingInfo closingInfo) {
        this.timeSource.getClass();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        TimestampNs timestampNs = this.openTimestampNanos;
        long j = closingInfo.closingTimestamp;
        DurationNs durationNs = timestampNs != null ? new DurationNs(timestampNs.value - this.attemptTimestampNanos) : null;
        DurationNs durationNs2 = timestampNs != null ? new DurationNs(timestampNs.value - this.requestTimestampNanos) : null;
        DurationNs durationNs3 = timestampNs == null ? null : new DurationNs(j - timestampNs.value);
        long j2 = elapsedRealtimeNanos - j;
        ClosedReason closedReason = closingInfo.reason;
        int i = this.attemptNumber - 1;
        return new CameraStateClosed(this.cameraId, closedReason, Integer.valueOf(i), durationNs, closingInfo.exception, durationNs2, durationNs3, new DurationNs(j2), closingInfo.errorCode);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onClosed(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        if (!Intrinsics.areEqual(cameraDevice.getId(), this.cameraId)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        Log.d("CXCP", ((Object) CameraId.m35toStringimpl(this.cameraId)) + ": onClosed");
        this.cameraDeviceClosed.countDown();
        synchronized (this.lock) {
            if (!this.shouldDelayFinalizing) {
                onFinalized$camera_camera2_pipe(cameraDevice);
                return;
            }
            Log.i("CXCP", this + "#onClosed: Delaying finalizing.");
        }
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onDisconnected(CameraDevice cameraDevice) {
        cameraDevice.getClass();
        String id = cameraDevice.getId();
        String str = this.cameraId;
        if (!Intrinsics.areEqual(id, str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        Trace.beginSection(((Object) CameraId.m35toStringimpl(str)) + "#onDisconnected");
        Log.d("CXCP", ((Object) CameraId.m35toStringimpl(str)) + ": onDisconnected");
        this.cameraDeviceClosed.countDown();
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_DISCONNECTED, new CameraError(6), null, 10));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onDisconnected(cameraDevice);
        }
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onError(CameraDevice cameraDevice, int i) {
        cameraDevice.getClass();
        String id = cameraDevice.getId();
        String str = this.cameraId;
        if (!Intrinsics.areEqual(id, str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        Trace.beginSection(((Object) CameraId.m35toStringimpl(str)) + "#onError-" + i);
        Log.d("CXCP", ((Object) CameraId.m35toStringimpl(str)) + ": onError " + i);
        this.cameraDeviceClosed.countDown();
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        i2 = 5;
                        if (i != 5) {
                            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unexpected StateCallback error code: ", i));
                            return;
                        }
                    }
                }
            }
        }
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_ERROR, new CameraError(i2), null, 10));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onError(cameraDevice, i);
        }
        Trace.endSection();
    }

    public final void onFinalized$camera_camera2_pipe(CameraDevice cameraDevice) {
        Trace.beginSection(((Object) CameraId.m35toStringimpl(this.cameraId)) + "#onFinalized");
        Log.d("CXCP", this + ": onFinalized");
        closeWith(cameraDevice, new ClosingInfo(ClosedReason.CAMERA2_CLOSED, null, null, 14));
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onClosed(cameraDevice);
        }
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onOpened(CameraDevice cameraDevice) {
        String m;
        ClosingInfo closingInfo;
        ClosingInfo closingInfo2;
        cameraDevice.getClass();
        if (!Intrinsics.areEqual(cameraDevice.getId(), this.cameraId)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        this.timeSource.getClass();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        this.openTimestampNanos = new TimestampNs(elapsedRealtimeNanos);
        Trace.beginSection(((Object) CameraId.m35toStringimpl(this.cameraId)) + "#onOpened");
        long j = elapsedRealtimeNanos - this.requestTimestampNanos;
        long j2 = elapsedRealtimeNanos - this.attemptTimestampNanos;
        int i = this.attemptNumber;
        String str = this.cameraId;
        if (i == 1) {
            StringBuilder sb = new StringBuilder("Opened ");
            sb.append((Object) CameraId.m35toStringimpl(str));
            sb.append(" in ");
            m = Config.CC.m(new Object[]{Double.valueOf(j / 1000000.0d)}, 1, (Locale) null, "%.3f ms", sb);
        } else {
            StringBuilder sb2 = new StringBuilder("Opened ");
            sb2.append((Object) CameraId.m35toStringimpl(str));
            sb2.append(" in ");
            sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(j / 1000000.0d)}, 1)));
            sb2.append(" (");
            sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(j2 / 1000000.0d)}, 1)));
            sb2.append(" total) after ");
            m = CameraDevices$CC.m(sb2, this.attemptNumber, " attempts.");
        }
        Log.i("CXCP", m);
        synchronized (this.lock) {
            closingInfo = this.pendingClose;
            if (closingInfo == null) {
                this.opening = true;
            }
        }
        CameraDevice.StateCallback stateCallback = this.interopCameraDeviceStateCallback;
        if (stateCallback != null) {
            stateCallback.onOpened(cameraDevice);
        }
        if (closingInfo != null) {
            Camera2DeviceCloserImpl camera2DeviceCloserImpl = this.camera2DeviceCloser;
            AudioRestrictionControllerImpl audioRestrictionControllerImpl = this.audioRestrictionController;
            Camera2Quirks camera2Quirks = this.camera2Quirks;
            String str2 = this.cameraId;
            camera2DeviceCloserImpl.closeCamera(null, cameraDevice, this, audioRestrictionControllerImpl, m50shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(camera2Quirks, str2, closingInfo.errorCode) && camera2Quirks.m65x552c1673(str2), m50shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo.errorCode));
            return;
        }
        AndroidCameraDevice androidCameraDevice = new AndroidCameraDevice(this.metadata, cameraDevice, this.cameraId, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads);
        this.audioRestrictionController.addListener(androidCameraDevice);
        StateFlowImpl stateFlowImpl = this._state;
        CameraStateOpen cameraStateOpen = new CameraStateOpen(androidCameraDevice);
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, cameraStateOpen);
        synchronized (this.lock) {
            this.opening = false;
            closingInfo2 = this.pendingClose;
        }
        if (closingInfo2 != null) {
            StateFlowImpl stateFlowImpl2 = this._state;
            CameraStateClosing cameraStateClosing = new CameraStateClosing(closingInfo2.errorCode);
            stateFlowImpl2.getClass();
            stateFlowImpl2.updateState(null, cameraStateClosing);
            Camera2DeviceCloserImpl camera2DeviceCloserImpl2 = this.camera2DeviceCloser;
            AudioRestrictionControllerImpl audioRestrictionControllerImpl2 = this.audioRestrictionController;
            Camera2Quirks camera2Quirks2 = this.camera2Quirks;
            String str3 = this.cameraId;
            camera2DeviceCloserImpl2.closeCamera(androidCameraDevice, cameraDevice, this, audioRestrictionControllerImpl2, m50shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(camera2Quirks2, str3, closingInfo2.errorCode) && camera2Quirks2.m65x552c1673(str3), m50shouldCreateEmptyCaptureSessionBeforeClosing_z0IXec(this.camera2Quirks, this.cameraId, closingInfo2.errorCode));
            StateFlowImpl stateFlowImpl3 = this._state;
            CameraStateClosed computeClosedState = computeClosedState(closingInfo2);
            stateFlowImpl3.getClass();
            stateFlowImpl3.updateState(null, computeClosedState);
        }
        Trace.endSection();
    }

    public final String toString() {
        return "CameraState-" + this.debugId;
    }
}

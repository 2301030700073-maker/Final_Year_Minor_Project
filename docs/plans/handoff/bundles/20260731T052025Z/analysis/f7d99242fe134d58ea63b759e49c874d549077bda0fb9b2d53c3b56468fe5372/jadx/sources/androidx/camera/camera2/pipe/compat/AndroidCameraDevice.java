package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.core.impl.Config;
import androidx.cardview.widget.CardView;
import java.util.Locale;
import kotlin.Pair;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidCameraDevice implements CameraDeviceWrapper {
    public final AtomicRef _lastStateCallback;
    public final CameraDevice cameraDevice;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final String cameraId;
    public final CameraMetadata cameraMetadata;
    public final AtomicBoolean closed;
    public final CardView.AnonymousClass1 interopCaptureSessionListener;
    public final Threads threads;

    public AndroidCameraDevice(CameraMetadata cameraMetadata, CameraDevice cameraDevice, String str, Camera2ErrorProcessor camera2ErrorProcessor, CardView.AnonymousClass1 anonymousClass1, Threads threads) {
        cameraMetadata.getClass();
        str.getClass();
        camera2ErrorProcessor.getClass();
        threads.getClass();
        this.cameraMetadata = cameraMetadata;
        this.cameraDevice = cameraDevice;
        this.cameraId = str;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.interopCaptureSessionListener = anonymousClass1;
        this.threads = threads;
        this.closed = AtomicFU.atomic(false);
        this._lastStateCallback = AtomicFU.atomic((Object) null);
    }

    public final Pair checkAndSetStateCallback(SessionStateCallback sessionStateCallback) {
        if (this.closed.getValue()) {
            onSessionFinalizedWithTrace(sessionStateCallback);
            return new Pair(Boolean.FALSE, null);
        }
        Boolean bool = Boolean.TRUE;
        AtomicRef atomicRef = this._lastStateCallback;
        atomicRef.getClass();
        return new Pair(bool, AtomicRef.FU.getAndSet(atomicRef, sessionStateCallback));
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* renamed from: createCaptureRequest-2PPcXtw, reason: not valid java name */
    public final CaptureRequest.Builder mo47createCaptureRequest2PPcXtw(int i) {
        double d;
        CaptureRequest.Builder builder;
        StringBuilder sb = new StringBuilder("CXCP#createCaptureRequest-");
        String str = this.cameraId;
        sb.append(str);
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            try {
                d = 1000000.0d;
                try {
                    try {
                        builder = this.cameraDevice.createCaptureRequest(i);
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            CameraAccessException cameraAccessException = (CameraAccessException) e;
                            int reason = cameraAccessException.getReason();
                            int i2 = 3;
                            if (reason != 1) {
                                if (reason == 2) {
                                    i2 = 6;
                                } else if (reason == 3) {
                                    i2 = 0;
                                } else if (reason == 4) {
                                    i2 = 1;
                                } else if (reason != 5) {
                                    Log.w("CXCP", "Unexpected CameraAccessException: " + cameraAccessException);
                                    i2 = 11;
                                } else {
                                    i2 = 2;
                                }
                            }
                            camera2ErrorProcessor.m59onCameraError3M5Xam4(i2, str, true);
                        } else {
                            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                if (!(e instanceof IllegalStateException)) {
                                    throw e;
                                }
                                Log.d("CXCP", "Failed to execute call: Camera may be closed");
                            }
                            Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            camera2ErrorProcessor.m59onCameraError3M5Xam4(9, str, false);
                        }
                        builder = null;
                        Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                        return builder;
                    }
                } catch (Throwable th) {
                    th = th;
                    Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                d = 1000000.0d;
            }
            Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
            return builder;
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x025b A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x025d A[ORIG_RETURN, RETURN] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createCaptureSession(androidx.camera.camera2.pipe.compat.SessionConfigData r26) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createCaptureSession(androidx.camera.camera2.pipe.compat.SessionConfigData):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0177 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0179 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a6 A[Catch: all -> 0x0071, TryCatch #1 {all -> 0x0071, blocks: (B:9:0x003c, B:11:0x0041, B:12:0x0052, B:14:0x0058, B:16:0x0079, B:19:0x007e, B:22:0x0085, B:25:0x008b, B:37:0x00a2, B:39:0x00a6, B:48:0x00d3, B:50:0x00fa, B:57:0x00ff, B:59:0x0105, B:61:0x0109, B:63:0x010d, B:66:0x0112, B:68:0x0116, B:69:0x011c, B:70:0x011d), top: B:8:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ff A[Catch: all -> 0x0071, TryCatch #1 {all -> 0x0071, blocks: (B:9:0x003c, B:11:0x0041, B:12:0x0052, B:14:0x0058, B:16:0x0079, B:19:0x007e, B:22:0x0085, B:25:0x008b, B:37:0x00a2, B:39:0x00a6, B:48:0x00d3, B:50:0x00fa, B:57:0x00ff, B:59:0x0105, B:61:0x0109, B:63:0x010d, B:66:0x0112, B:68:0x0116, B:69:0x011c, B:70:0x011d), top: B:8:0x003c }] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createCaptureSessionByOutputConfigurations(java.util.ArrayList r23, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r24) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createCaptureSessionByOutputConfigurations(java.util.ArrayList, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0156 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r14v1, types: [androidx.camera.camera2.pipe.compat.Camera2ErrorProcessor] */
    /* JADX WARN: Type inference failed for: r14v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createConstrainedHighSpeedCaptureSession(java.util.ArrayList r27, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r28) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createConstrainedHighSpeedCaptureSession(java.util.ArrayList, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ad A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01af A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e3 A[Catch: all -> 0x00bd, TryCatch #4 {all -> 0x00bd, blocks: (B:32:0x0093, B:34:0x009f, B:36:0x00a5, B:38:0x00b9, B:39:0x00c3, B:40:0x00ca, B:41:0x00cb, B:53:0x00df, B:55:0x00e3, B:64:0x0110, B:70:0x012f, B:73:0x0135, B:75:0x0139, B:77:0x013d, B:79:0x0141, B:82:0x0146, B:84:0x014a, B:85:0x0150, B:86:0x0151), top: B:8:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0135 A[Catch: all -> 0x00bd, TryCatch #4 {all -> 0x00bd, blocks: (B:32:0x0093, B:34:0x009f, B:36:0x00a5, B:38:0x00b9, B:39:0x00c3, B:40:0x00ca, B:41:0x00cb, B:53:0x00df, B:55:0x00e3, B:64:0x0110, B:70:0x012f, B:73:0x0135, B:75:0x0139, B:77:0x013d, B:79:0x0141, B:82:0x0146, B:84:0x014a, B:85:0x0150, B:86:0x0151), top: B:8:0x003c }] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createExtensionSession(androidx.camera.camera2.pipe.compat.ExtensionSessionConfigData r25) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createExtensionSession(androidx.camera.camera2.pipe.compat.ExtensionSessionConfigData):boolean");
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult) {
        double d;
        CaptureRequest.Builder builder;
        StringBuilder sb = new StringBuilder("CXCP#createReprocessCaptureRequest-");
        String str = this.cameraId;
        sb.append(str);
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            try {
                d = 1000000.0d;
                try {
                    try {
                        builder = this.cameraDevice.createReprocessCaptureRequest(totalCaptureResult);
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            CameraAccessException cameraAccessException = (CameraAccessException) e;
                            int reason = cameraAccessException.getReason();
                            int i = 3;
                            if (reason != 1) {
                                if (reason == 2) {
                                    i = 6;
                                } else if (reason == 3) {
                                    i = 0;
                                } else if (reason == 4) {
                                    i = 1;
                                } else if (reason != 5) {
                                    Log.w("CXCP", "Unexpected CameraAccessException: " + cameraAccessException);
                                    i = 11;
                                } else {
                                    i = 2;
                                }
                            }
                            camera2ErrorProcessor.m59onCameraError3M5Xam4(i, str, true);
                        } else {
                            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                if (!(e instanceof IllegalStateException)) {
                                    throw e;
                                }
                                Log.d("CXCP", "Failed to execute call: Camera may be closed");
                            }
                            Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            camera2ErrorProcessor.m59onCameraError3M5Xam4(9, str, false);
                        }
                        builder = null;
                        Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                        return builder;
                    }
                } catch (Throwable th) {
                    th = th;
                    Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                d = 1000000.0d;
            }
            Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
            return builder;
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0158 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createReprocessableCaptureSession(android.hardware.camera2.params.InputConfiguration r27, java.util.ArrayList r28, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r29) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createReprocessableCaptureSession(android.hardware.camera2.params.InputConfiguration, java.util.ArrayList, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0183 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0185 A[ORIG_RETURN, RETURN] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createReprocessableCaptureSessionByConfigurations(androidx.camera.camera2.pipe.compat.InputConfigData r24, java.util.ArrayList r25, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r26) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createReprocessableCaptureSessionByConfigurations(androidx.camera.camera2.pipe.compat.InputConfigData, java.util.ArrayList, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String mo48getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* renamed from: onCameraAudioRestrictionUpdated-LwUUkyU, reason: not valid java name */
    public final void mo49onCameraAudioRestrictionUpdatedLwUUkyU(int i) {
        try {
            Trace.beginSection("setCameraAudioRestriction");
            String str = this.cameraId;
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            try {
                Api30Compat.setCameraAudioRestriction(this.cameraDevice, i);
            } catch (Exception e) {
                int i2 = 0;
                if (e instanceof CameraAccessException) {
                    Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    CameraAccessException cameraAccessException = (CameraAccessException) e;
                    int reason = cameraAccessException.getReason();
                    if (reason == 1) {
                        i2 = 3;
                    } else if (reason == 2) {
                        i2 = 6;
                    } else if (reason != 3) {
                        if (reason == 4) {
                            i2 = 1;
                        } else if (reason != 5) {
                            Log.w("CXCP", "Unexpected CameraAccessException: " + cameraAccessException);
                            i2 = 11;
                        } else {
                            i2 = 2;
                        }
                    }
                    camera2ErrorProcessor.m59onCameraError3M5Xam4(i2, str, true);
                } else {
                    if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                        if (!(e instanceof IllegalStateException)) {
                            throw e;
                        }
                        Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    }
                    Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    camera2ErrorProcessor.m59onCameraError3M5Xam4(9, str, false);
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final void onDeviceClosed() {
        if (!this.closed.getValue()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        AtomicRef atomicRef = this._lastStateCallback;
        atomicRef.getClass();
        SessionStateCallback sessionStateCallback = (SessionStateCallback) AtomicRef.FU.getAndSet(atomicRef, null);
        if (sessionStateCallback != null) {
            onSessionFinalizedWithTrace(sessionStateCallback);
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final void onDeviceClosing() {
        SessionStateCallback sessionStateCallback;
        if (!this.closed.compareAndSet() || (sessionStateCallback = (SessionStateCallback) this._lastStateCallback.value) == null) {
            return;
        }
        onSessionDisconnectedWithTrace(sessionStateCallback);
    }

    public final void onSessionDisconnectedWithTrace(SessionStateCallback sessionStateCallback) {
        try {
            Trace.beginSection(this + "#onSessionDisconnected");
            sessionStateCallback.onSessionDisconnected();
        } finally {
            Trace.endSection();
        }
    }

    public final void onSessionFinalizedWithTrace(SessionStateCallback sessionStateCallback) {
        try {
            Trace.beginSection(this + "#onSessionFinalized");
            sessionStateCallback.onSessionFinalized();
        } finally {
            Trace.endSection();
        }
    }

    public final String toString() {
        return "AndroidCameraDevice(camera=" + ((Object) CameraId.m35toStringimpl(this.cameraId)) + ')';
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(CameraDevice.class))) {
            return this.cameraDevice;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0156 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r14v1, types: [androidx.camera.camera2.pipe.compat.Camera2ErrorProcessor] */
    /* JADX WARN: Type inference failed for: r14v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createCaptureSession(java.util.List r27, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r28) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createCaptureSession(java.util.List, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }
}

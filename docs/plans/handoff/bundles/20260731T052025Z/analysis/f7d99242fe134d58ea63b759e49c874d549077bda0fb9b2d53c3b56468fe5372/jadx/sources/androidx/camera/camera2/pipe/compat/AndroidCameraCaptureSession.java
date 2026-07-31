package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicInt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AndroidCameraCaptureSession implements CameraCaptureSessionWrapper {
    public final Handler callbackHandler;
    public final CameraCaptureSession cameraCaptureSession;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final CameraDeviceWrapper device;

    public AndroidCameraCaptureSession(CameraDeviceWrapper cameraDeviceWrapper, CameraCaptureSession cameraCaptureSession, Camera2ErrorProcessor camera2ErrorProcessor, Handler handler) {
        cameraDeviceWrapper.getClass();
        camera2ErrorProcessor.getClass();
        handler.getClass();
        this.device = cameraDeviceWrapper;
        this.cameraCaptureSession = cameraCaptureSession;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.callbackHandler = handler;
        AtomicInt atomicInt = CameraInterop.captureSessionIds;
        atomicInt.getClass();
        AtomicInt.FU.incrementAndGet(atomicInt);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final boolean abortCaptures() {
        double d;
        Unit unit;
        StringBuilder sb = new StringBuilder("CXCP#abortCaptures-");
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        sb.append(cameraDeviceWrapper.mo48getCameraIdDz_R5H8());
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            String mo48getCameraIdDz_R5H8 = cameraDeviceWrapper.mo48getCameraIdDz_R5H8();
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            try {
                this.cameraCaptureSession.abortCaptures();
                unit = Unit.INSTANCE;
                d = 1000000.0d;
            } catch (Exception e) {
                d = 1000000.0d;
                try {
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
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(i, mo48getCameraIdDz_R5H8, true);
                    } else {
                        if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                        Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                    }
                    unit = null;
                } catch (Throwable th) {
                    th = th;
                    Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                    throw th;
                }
            }
            Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
            return unit != null;
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer capture(CaptureRequest captureRequest, Camera2CaptureSequence camera2CaptureSequence) {
        double d;
        Integer num;
        captureRequest.getClass();
        StringBuilder sb = new StringBuilder("CXCP#capture-");
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        sb.append(cameraDeviceWrapper.mo48getCameraIdDz_R5H8());
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            String mo48getCameraIdDz_R5H8 = cameraDeviceWrapper.mo48getCameraIdDz_R5H8();
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    num = Integer.valueOf(this.cameraCaptureSession.capture(captureRequest, camera2CaptureSequence, this.callbackHandler));
                } catch (Exception e) {
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
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(i, mo48getCameraIdDz_R5H8, true);
                    } else {
                        if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                        Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                    }
                    num = null;
                }
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / 1000000.0d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                return num;
            } catch (Throwable th) {
                th = th;
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer captureBurst(ArrayList arrayList, Camera2CaptureSequence camera2CaptureSequence) {
        double d;
        Integer num;
        arrayList.getClass();
        StringBuilder sb = new StringBuilder("CXCP#captureBurst-");
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        sb.append(cameraDeviceWrapper.mo48getCameraIdDz_R5H8());
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            String mo48getCameraIdDz_R5H8 = cameraDeviceWrapper.mo48getCameraIdDz_R5H8();
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    num = Integer.valueOf(this.cameraCaptureSession.captureBurst(arrayList, camera2CaptureSequence, this.callbackHandler));
                } catch (Exception e) {
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
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(i, mo48getCameraIdDz_R5H8, true);
                    } else {
                        if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                        Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                    }
                    num = null;
                }
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / 1000000.0d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                return num;
            } catch (Throwable th) {
                th = th;
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.cameraCaptureSession.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean finalizeOutputConfigurations(java.util.List r19) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraCaptureSession.finalizeOutputConfigurations(java.util.List):boolean");
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final CameraDeviceWrapper getDevice() {
        return this.device;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Surface getInputSurface() {
        return this.cameraCaptureSession.getInputSurface();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer setRepeatingBurst(ArrayList arrayList, Camera2CaptureSequence camera2CaptureSequence) {
        double d;
        Integer num;
        arrayList.getClass();
        StringBuilder sb = new StringBuilder("CXCP#setRepeatingBurst-");
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        sb.append(cameraDeviceWrapper.mo48getCameraIdDz_R5H8());
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            String mo48getCameraIdDz_R5H8 = cameraDeviceWrapper.mo48getCameraIdDz_R5H8();
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    num = Integer.valueOf(this.cameraCaptureSession.setRepeatingBurst(arrayList, camera2CaptureSequence, this.callbackHandler));
                } catch (Exception e) {
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
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(i, mo48getCameraIdDz_R5H8, true);
                    } else {
                        if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                        Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                    }
                    num = null;
                }
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / 1000000.0d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                return num;
            } catch (Throwable th) {
                th = th;
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer setRepeatingRequest(CaptureRequest captureRequest, Camera2CaptureSequence camera2CaptureSequence) {
        double d;
        Integer num;
        captureRequest.getClass();
        StringBuilder sb = new StringBuilder("CXCP#setRepeatingRequest-");
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        sb.append(cameraDeviceWrapper.mo48getCameraIdDz_R5H8());
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            String mo48getCameraIdDz_R5H8 = cameraDeviceWrapper.mo48getCameraIdDz_R5H8();
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    num = Integer.valueOf(this.cameraCaptureSession.setRepeatingRequest(captureRequest, camera2CaptureSequence, this.callbackHandler));
                } catch (Exception e) {
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
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(i, mo48getCameraIdDz_R5H8, true);
                    } else {
                        if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                        Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                    }
                    num = null;
                }
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / 1000000.0d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                return num;
            } catch (Throwable th) {
                th = th;
                Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final boolean stopRepeating() {
        double d;
        Unit unit;
        StringBuilder sb = new StringBuilder("CXCP#stopRepeating-");
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        sb.append(cameraDeviceWrapper.mo48getCameraIdDz_R5H8());
        String sb2 = sb.toString();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(sb2);
            String mo48getCameraIdDz_R5H8 = cameraDeviceWrapper.mo48getCameraIdDz_R5H8();
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            try {
                this.cameraCaptureSession.stopRepeating();
                unit = Unit.INSTANCE;
                d = 1000000.0d;
            } catch (Exception e) {
                d = 1000000.0d;
                try {
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
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(i, mo48getCameraIdDz_R5H8, true);
                    } else {
                        if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                        Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                    }
                    unit = null;
                } catch (Throwable th) {
                    th = th;
                    Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
                    throw th;
                }
            }
            Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(sb2, " - ")));
            return unit != null;
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class))) {
            return this.cameraCaptureSession;
        }
        return null;
    }
}

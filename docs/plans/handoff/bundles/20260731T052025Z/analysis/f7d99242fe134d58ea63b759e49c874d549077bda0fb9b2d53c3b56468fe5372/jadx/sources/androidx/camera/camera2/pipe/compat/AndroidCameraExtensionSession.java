package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CameraExtensionSession$ExtensionCaptureCallback;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import j$.util.Collection;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicLong;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidCameraExtensionSession implements CameraExtensionSessionWrapper {
    public final Executor callbackExecutor;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final CameraExtensionSession cameraExtensionSession;
    public final CameraDeviceWrapper device;
    public final HashMap extensionSessionMap;
    public final AtomicLong frameNumbers;

    public AndroidCameraExtensionSession(AndroidCameraDevice androidCameraDevice, CameraExtensionSession cameraExtensionSession, Camera2ErrorProcessor camera2ErrorProcessor, HandlerExecutor handlerExecutor) {
        androidCameraDevice.getClass();
        camera2ErrorProcessor.getClass();
        handlerExecutor.getClass();
        this.device = androidCameraDevice;
        this.cameraExtensionSession = cameraExtensionSession;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.callbackExecutor = handlerExecutor;
        AtomicInt atomicInt = CameraInterop.captureSessionIds;
        atomicInt.getClass();
        AtomicInt.FU.incrementAndGet(atomicInt);
        AtomicLong atomicLong = new AtomicLong();
        atomicLong.value = 0L;
        this.frameNumbers = atomicLong;
        this.extensionSessionMap = new HashMap();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final boolean abortCaptures() {
        return false;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer capture(CaptureRequest captureRequest, Camera2CaptureSequence camera2CaptureSequence) {
        captureRequest.getClass();
        String mo48getCameraIdDz_R5H8 = this.device.mo48getCameraIdDz_R5H8();
        try {
            int i = Build.VERSION.SDK_INT;
            CameraExtensionSession cameraExtensionSession = this.cameraExtensionSession;
            Executor executor = this.callbackExecutor;
            return Integer.valueOf(i >= 33 ? cameraExtensionSession.capture(captureRequest, executor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, camera2CaptureSequence)) : cameraExtensionSession.capture(captureRequest, executor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, camera2CaptureSequence, new LinkedHashMap())));
        } catch (Exception e) {
            boolean z = e instanceof CameraAccessException;
            int i2 = 0;
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            if (!z) {
                if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    return null;
                }
                Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                return null;
            }
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
            camera2ErrorProcessor.m59onCameraError3M5Xam4(i2, mo48getCameraIdDz_R5H8, true);
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer captureBurst(ArrayList arrayList, Camera2CaptureSequence camera2CaptureSequence) {
        arrayList.getClass();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            capture((CaptureRequest) it.next(), camera2CaptureSequence);
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.cameraExtensionSession.close();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final boolean finalizeOutputConfigurations(List list) {
        Log.w("CXCP", "CameraExtensionSession does not support finalizeOutputConfigurations()");
        return false;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final CameraDeviceWrapper getDevice() {
        return this.device;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Surface getInputSurface() {
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer setRepeatingBurst(ArrayList arrayList, Camera2CaptureSequence camera2CaptureSequence) {
        arrayList.getClass();
        if (arrayList.size() == 1) {
            return setRepeatingRequest((CaptureRequest) CollectionsKt.single(arrayList), camera2CaptureSequence);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final Integer setRepeatingRequest(CaptureRequest captureRequest, Camera2CaptureSequence camera2CaptureSequence) {
        captureRequest.getClass();
        String mo48getCameraIdDz_R5H8 = this.device.mo48getCameraIdDz_R5H8();
        try {
            int i = Build.VERSION.SDK_INT;
            CameraExtensionSession cameraExtensionSession = this.cameraExtensionSession;
            Executor executor = this.callbackExecutor;
            return Integer.valueOf(i >= 33 ? cameraExtensionSession.setRepeatingRequest(captureRequest, executor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, camera2CaptureSequence)) : cameraExtensionSession.setRepeatingRequest(captureRequest, executor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, camera2CaptureSequence, new LinkedHashMap())));
        } catch (Exception e) {
            boolean z = e instanceof CameraAccessException;
            int i2 = 0;
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            if (!z) {
                if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    return null;
                }
                Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
                return null;
            }
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
            camera2ErrorProcessor.m59onCameraError3M5Xam4(i2, mo48getCameraIdDz_R5H8, true);
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public final boolean stopRepeating() {
        Unit unit;
        String mo48getCameraIdDz_R5H8 = this.device.mo48getCameraIdDz_R5H8();
        try {
            this.cameraExtensionSession.stopRepeating();
            unit = Unit.INSTANCE;
        } catch (Exception e) {
            boolean z = e instanceof CameraAccessException;
            Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
            if (z) {
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
            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                camera2ErrorProcessor.m59onCameraError3M5Xam4(9, mo48getCameraIdDz_R5H8, false);
            } else {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                Log.d("CXCP", "Failed to execute call: Camera may be closed");
            }
            unit = null;
        }
        return unit != null;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(CameraExtensionSession.class))) {
            return this.cameraExtensionSession;
        }
        return null;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Camera2CaptureSessionCallbackToExtensionCaptureCallback extends CameraExtensionSession$ExtensionCaptureCallback {
        public final /* synthetic */ int $r8$classId;
        public final Camera2CaptureSequence captureCallback;
        public final Serializable frameQueue;
        public final /* synthetic */ AndroidCameraExtensionSession this$0;

        public Camera2CaptureSessionCallbackToExtensionCaptureCallback(AndroidCameraExtensionSession androidCameraExtensionSession, Camera2CaptureSequence camera2CaptureSequence) {
            this.$r8$classId = 0;
            this.this$0 = androidCameraExtensionSession;
            this.captureCallback = camera2CaptureSequence;
            this.frameQueue = new ConcurrentLinkedQueue();
        }

        public final void onCaptureFailed(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest) {
            int i = this.$r8$classId;
            Camera2CaptureSequence camera2CaptureSequence = this.captureCallback;
            Serializable serializable = this.frameQueue;
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            switch (i) {
                case 0:
                    if (((ConcurrentLinkedQueue) serializable).isEmpty()) {
                        AndroidCameraExtensionSession androidCameraExtensionSession = this.this$0;
                        AtomicLong atomicLong = androidCameraExtensionSession.frameNumbers;
                        atomicLong.getClass();
                        long incrementAndGet = AtomicLong.FU.incrementAndGet(atomicLong);
                        androidCameraExtensionSession.extensionSessionMap.put(cameraExtensionSession, Long.valueOf(incrementAndGet));
                        ((ConcurrentLinkedQueue) serializable).add(Long.valueOf(incrementAndGet));
                    }
                    Object remove = ((ConcurrentLinkedQueue) serializable).remove();
                    remove.getClass();
                    camera2CaptureSequence.m56onCaptureFailedRuT0dZU(captureRequest, ((Number) remove).longValue());
                    break;
                default:
                    Object obj = ((LinkedHashMap) serializable).get(captureRequest);
                    obj.getClass();
                    LinkedHashMap linkedHashMap = (LinkedHashMap) serializable;
                    if (((List) obj).size() != 1) {
                        StringBuilder sb = new StringBuilder("onCaptureFailed is not triggered for repeating requests. Request frame numbers: ");
                        Object obj2 = linkedHashMap.get(captureRequest);
                        obj2.getClass();
                        sb.append(Collection.EL.stream((List) obj2));
                        Log.i("CXCP", sb.toString());
                        break;
                    } else {
                        Object obj3 = linkedHashMap.get(captureRequest);
                        obj3.getClass();
                        camera2CaptureSequence.m56onCaptureFailedRuT0dZU(captureRequest, ((Number) ((List) obj3).get(0)).longValue());
                        break;
                    }
            }
        }

        public final void onCaptureProcessProgressed(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, int i) {
            int i2 = this.$r8$classId;
            Camera2CaptureSequence camera2CaptureSequence = this.captureCallback;
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            switch (i2) {
                case 0:
                    camera2CaptureSequence.onCaptureProcessProgressed(captureRequest, i);
                    break;
                default:
                    camera2CaptureSequence.onCaptureProcessProgressed(captureRequest, i);
                    break;
            }
        }

        public final void onCaptureProcessStarted(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest) {
            int i = this.$r8$classId;
            cameraExtensionSession.getClass();
            captureRequest.getClass();
        }

        public void onCaptureResultAvailable(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            switch (this.$r8$classId) {
                case 0:
                    cameraExtensionSession.getClass();
                    captureRequest.getClass();
                    totalCaptureResult.getClass();
                    Serializable serializable = this.frameQueue;
                    if (((ConcurrentLinkedQueue) serializable).isEmpty()) {
                        AndroidCameraExtensionSession androidCameraExtensionSession = this.this$0;
                        AtomicLong atomicLong = androidCameraExtensionSession.frameNumbers;
                        atomicLong.getClass();
                        long incrementAndGet = AtomicLong.FU.incrementAndGet(atomicLong);
                        androidCameraExtensionSession.extensionSessionMap.put(cameraExtensionSession, Long.valueOf(incrementAndGet));
                        ((ConcurrentLinkedQueue) serializable).add(Long.valueOf(incrementAndGet));
                    }
                    Object remove = ((ConcurrentLinkedQueue) serializable).remove();
                    remove.getClass();
                    this.captureCallback.m55onCaptureCompletedrmrZIYk(captureRequest, totalCaptureResult, ((Number) remove).longValue());
                    break;
                default:
                    super.onCaptureResultAvailable(cameraExtensionSession, captureRequest, totalCaptureResult);
                    break;
            }
        }

        public final void onCaptureSequenceAborted(CameraExtensionSession cameraExtensionSession, int i) {
            int i2 = this.$r8$classId;
            Camera2CaptureSequence camera2CaptureSequence = this.captureCallback;
            cameraExtensionSession.getClass();
            switch (i2) {
                case 0:
                    camera2CaptureSequence.onCaptureSequenceAborted(i);
                    break;
                default:
                    camera2CaptureSequence.onCaptureSequenceAborted(i);
                    break;
            }
        }

        public final void onCaptureSequenceCompleted(CameraExtensionSession cameraExtensionSession, int i) {
            int i2 = this.$r8$classId;
            Camera2CaptureSequence camera2CaptureSequence = this.captureCallback;
            AndroidCameraExtensionSession androidCameraExtensionSession = this.this$0;
            cameraExtensionSession.getClass();
            switch (i2) {
                case 0:
                    Long l = (Long) androidCameraExtensionSession.extensionSessionMap.get(cameraExtensionSession);
                    l.getClass();
                    camera2CaptureSequence.onCaptureSequenceCompleted(i, l.longValue());
                    break;
                default:
                    Long l2 = (Long) androidCameraExtensionSession.extensionSessionMap.get(cameraExtensionSession);
                    l2.getClass();
                    camera2CaptureSequence.onCaptureSequenceCompleted(i, l2.longValue());
                    break;
            }
        }

        public final void onCaptureStarted(CameraExtensionSession cameraExtensionSession, CaptureRequest captureRequest, long j) {
            int i = this.$r8$classId;
            Serializable serializable = this.frameQueue;
            AndroidCameraExtensionSession androidCameraExtensionSession = this.this$0;
            cameraExtensionSession.getClass();
            captureRequest.getClass();
            switch (i) {
                case 0:
                    AtomicLong atomicLong = androidCameraExtensionSession.frameNumbers;
                    atomicLong.getClass();
                    long incrementAndGet = AtomicLong.FU.incrementAndGet(atomicLong);
                    androidCameraExtensionSession.extensionSessionMap.put(cameraExtensionSession, Long.valueOf(incrementAndGet));
                    ((ConcurrentLinkedQueue) serializable).add(Long.valueOf(incrementAndGet));
                    this.captureCallback.onCaptureStarted(captureRequest, incrementAndGet, j);
                    break;
                default:
                    AtomicLong atomicLong2 = androidCameraExtensionSession.frameNumbers;
                    atomicLong2.getClass();
                    long incrementAndGet2 = AtomicLong.FU.incrementAndGet(atomicLong2);
                    androidCameraExtensionSession.extensionSessionMap.put(cameraExtensionSession, Long.valueOf(incrementAndGet2));
                    LinkedHashMap linkedHashMap = (LinkedHashMap) serializable;
                    Object obj = linkedHashMap.get(captureRequest);
                    if (obj == null) {
                        obj = new ArrayList();
                        linkedHashMap.put(captureRequest, obj);
                    }
                    ((List) obj).add(Long.valueOf(incrementAndGet2));
                    this.captureCallback.onCaptureStarted(captureRequest, incrementAndGet2, j);
                    break;
            }
        }

        public Camera2CaptureSessionCallbackToExtensionCaptureCallback(AndroidCameraExtensionSession androidCameraExtensionSession, Camera2CaptureSequence camera2CaptureSequence, LinkedHashMap linkedHashMap) {
            this.$r8$classId = 1;
            this.this$0 = androidCameraExtensionSession;
            this.captureCallback = camera2CaptureSequence;
            this.frameQueue = linkedHashMap;
        }
    }
}

package androidx.camera.camera2.pipe.compat;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraDevice;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import android.view.Surface;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.compose.animation.core.Animatable$snapTo$2;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2DeviceCloserImpl {
    public final Camera2Quirks camera2Quirks;
    public final RetryingCameraStateOpenerImpl retryingCameraStateOpener;
    public final Threads threads;

    public Camera2DeviceCloserImpl(Threads threads, Camera2Quirks camera2Quirks, RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl) {
        threads.getClass();
        camera2Quirks.getClass();
        retryingCameraStateOpenerImpl.getClass();
        this.threads = threads;
        this.camera2Quirks = camera2Quirks;
        this.retryingCameraStateOpener = retryingCameraStateOpenerImpl;
    }

    public static final void access$createCaptureSession(Camera2DeviceCloserImpl camera2DeviceCloserImpl, CameraDeviceWrapper cameraDeviceWrapper) {
        camera2DeviceCloserImpl.getClass();
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(640, 480);
        final Surface surface = new Surface(surfaceTexture);
        final AtomicBoolean atomic = AtomicFU.atomic(false);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (cameraDeviceWrapper.createCaptureSession(IntOffsetKt.listOf(surface), new CameraCaptureSessionWrapper.StateCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl$createCaptureSession$callback$1
            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public final void onClosed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                Log.d("CXCP", "Empty capture session closed");
                if (atomic.compareAndSet()) {
                    surface.release();
                    surfaceTexture.release();
                }
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public final void onConfigureFailed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                Log.d("CXCP", "Empty capture session configure failed");
                if (atomic.compareAndSet()) {
                    surface.release();
                    surfaceTexture.release();
                }
                countDownLatch.countDown();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public final void onConfigured(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
                Log.d("CXCP", "Empty capture session configured. Closing it");
                if (cameraCaptureSessionWrapper instanceof AutoCloseable) {
                    cameraCaptureSessionWrapper.close();
                } else if (cameraCaptureSessionWrapper instanceof ExecutorService) {
                    OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) cameraCaptureSessionWrapper);
                } else if (cameraCaptureSessionWrapper instanceof TypedArray) {
                    ((TypedArray) cameraCaptureSessionWrapper).recycle();
                } else if (cameraCaptureSessionWrapper instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) cameraCaptureSessionWrapper).release();
                } else if (cameraCaptureSessionWrapper instanceof MediaDrm) {
                    ((MediaDrm) cameraCaptureSessionWrapper).release();
                } else if (cameraCaptureSessionWrapper instanceof DrmManagerClient) {
                    ((DrmManagerClient) cameraCaptureSessionWrapper).release();
                } else {
                    if (!(cameraCaptureSessionWrapper instanceof ContentProviderClient)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                        return;
                    }
                    ((ContentProviderClient) cameraCaptureSessionWrapper).release();
                }
                countDownLatch.countDown();
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public final void onSessionDisconnected() {
            }

            @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
            public final void onSessionFinalized() {
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public final void onActive(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public final void onCaptureQueueEmpty(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
            }

            @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
            public final void onReady(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
            }
        })) {
            countDownLatch.await();
            return;
        }
        Log.e("CXCP", "Failed to create a blank capture session! Surfaces may not be disconnected properly.");
        if (atomic.compareAndSet()) {
            surface.release();
            surfaceTexture.release();
        }
    }

    public final void closeCamera(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionControllerImpl audioRestrictionControllerImpl, boolean z, boolean z2) {
        AwaitOpenCameraResult awaitOpenCameraResult;
        audioRestrictionControllerImpl.getClass();
        Pair pair = null;
        CameraDevice cameraDevice2 = cameraDeviceWrapper != null ? (CameraDevice) cameraDeviceWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class)) : null;
        if (cameraDevice2 == null) {
            if (cameraDevice != null) {
                closeCameraDevice(cameraDevice, androidCameraState);
                return;
            }
            return;
        }
        String id = cameraDevice2.getId();
        id.getClass();
        CameraId.m34constructorimpl(id);
        if (cameraDevice != null && !id.equals(cameraDevice.getId())) {
            StringBuilder m31m = CameraDevices$CC.m31m("Unwrapped camera device has camera ID ", id, ", but the wrapped camera device has camera ID ");
            m31m.append(cameraDevice.getId());
            m31m.append('!');
            throw new IllegalStateException(m31m.toString().toString());
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            cameraDeviceWrapper.getClass();
            if (i >= 30) {
                audioRestrictionControllerImpl.activeListeners.remove(cameraDeviceWrapper);
            }
        }
        Log.d("CXCP", "handleQuirksBeforeClosing(" + cameraDevice2 + ')');
        String mo48getCameraIdDz_R5H8 = cameraDeviceWrapper.mo48getCameraIdDz_R5H8();
        if (z) {
            try {
                Trace.beginSection("Camera2DeviceCloserImpl#reopenCameraDevice");
                Log.d("CXCP", "Reopening camera device");
                closeCameraDevice(cameraDevice2, androidCameraState);
                awaitOpenCameraResult = this.retryingCameraStateOpener.m72openAndAwaitCameraWithRetry0r8Bogc(mo48getCameraIdDz_R5H8, this);
            } finally {
            }
        } else {
            awaitOpenCameraResult = new AwaitOpenCameraResult(cameraDeviceWrapper, androidCameraState);
        }
        CameraDeviceWrapper cameraDeviceWrapper2 = awaitOpenCameraResult.cameraDeviceWrapper;
        AndroidCameraState androidCameraState2 = awaitOpenCameraResult.androidCameraState;
        if (cameraDeviceWrapper2 == null || androidCameraState2 == null) {
            Log.e("CXCP", "Failed to retain an opened camera device!");
        } else {
            if (z2) {
                try {
                    Trace.beginSection("Camera2DeviceCloserImpl#createCaptureSession");
                    Log.d("CXCP", "Creating an empty capture session before closing " + ((Object) CameraId.m35toStringimpl(mo48getCameraIdDz_R5H8)));
                    access$createCaptureSession(this, cameraDeviceWrapper2);
                    Log.d("CXCP", "Created an empty capture session.");
                } finally {
                }
            }
            pair = new Pair(cameraDeviceWrapper2, androidCameraState2);
        }
        if (pair == null) {
            Log.e("CXCP", "Failed to handle quirks before closing the camera device!");
            cameraDeviceWrapper.onDeviceClosing();
            cameraDeviceWrapper.onDeviceClosed();
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice2);
            return;
        }
        CameraDeviceWrapper cameraDeviceWrapper3 = (CameraDeviceWrapper) pair.first;
        AndroidCameraState androidCameraState3 = (AndroidCameraState) pair.second;
        Object unwrapAs = cameraDeviceWrapper3.unwrapAs(Reflection.getOrCreateKotlinClass(CameraDevice.class));
        if (unwrapAs == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        cameraDeviceWrapper.onDeviceClosing();
        closeCameraDevice((CameraDevice) unwrapAs, androidCameraState3);
        cameraDeviceWrapper.onDeviceClosed();
        if (z) {
            androidCameraState.onFinalized$camera_camera2_pipe(cameraDevice2);
        }
    }

    public final void closeCameraDevice(CameraDevice cameraDevice, AndroidCameraState androidCameraState) {
        String id = cameraDevice.getId();
        id.getClass();
        Log.d("CXCP", "closeCameraDevice(" + id + ')');
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        if (((Unit) this.threads.runBlockingCheckedOrNull(7000L, new Animatable$snapTo$2(cameraDevice, ref$BooleanRef, null, 1))) == null) {
            Log.e("CXCP", "Failed to close CameraDevice(" + id + ") after 7000ms. The camera is likely in a bad state.");
        }
        String id2 = cameraDevice.getId();
        id2.getClass();
        CameraId.m34constructorimpl(id2);
        Camera2Quirks camera2Quirks = this.camera2Quirks;
        camera2Quirks.getClass();
        camera2Quirks.strictMode.getClass();
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        CameraMetadata m63awaitCameraMetadataEfqyGwQ = ((Camera2MetadataCache) camera2Quirks.metadataProvider).m63awaitCameraMetadataEfqyGwQ(id2);
        companion.getClass();
        if (CameraMetadata.Companion.isHardwareLevelLegacy(m63awaitCameraMetadataEfqyGwQ) && ref$BooleanRef.element) {
            Log.d("CXCP", "Waiting for OnClosed from " + ((Object) CameraId.m35toStringimpl(id2)));
            if (androidCameraState.cameraDeviceClosed.await(2000L, TimeUnit.MILLISECONDS)) {
                Log.d("CXCP", "Received OnClosed for " + ((Object) CameraId.m35toStringimpl(id2)));
            } else {
                Log.w("CXCP", "Failed to close " + ((Object) CameraId.m35toStringimpl(id2)) + " after 2000ms!");
            }
        }
    }
}

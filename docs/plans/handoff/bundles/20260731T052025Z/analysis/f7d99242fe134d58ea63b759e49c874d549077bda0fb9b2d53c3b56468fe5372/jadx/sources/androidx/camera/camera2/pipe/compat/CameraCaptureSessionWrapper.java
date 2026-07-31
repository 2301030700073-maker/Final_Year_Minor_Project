package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CameraCaptureSessionWrapper extends UnsafeWrapper, AutoCloseable {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface StateCallback extends SessionStateCallback {
        void onActive(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onCaptureQueueEmpty(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onClosed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onConfigureFailed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onConfigured(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onReady(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);
    }

    boolean abortCaptures();

    Integer capture(CaptureRequest captureRequest, Camera2CaptureSequence camera2CaptureSequence);

    Integer captureBurst(ArrayList arrayList, Camera2CaptureSequence camera2CaptureSequence);

    boolean finalizeOutputConfigurations(List list);

    CameraDeviceWrapper getDevice();

    Surface getInputSurface();

    Integer setRepeatingBurst(ArrayList arrayList, Camera2CaptureSequence camera2CaptureSequence);

    Integer setRepeatingRequest(CaptureRequest captureRequest, Camera2CaptureSequence camera2CaptureSequence);

    boolean stopRepeating();
}

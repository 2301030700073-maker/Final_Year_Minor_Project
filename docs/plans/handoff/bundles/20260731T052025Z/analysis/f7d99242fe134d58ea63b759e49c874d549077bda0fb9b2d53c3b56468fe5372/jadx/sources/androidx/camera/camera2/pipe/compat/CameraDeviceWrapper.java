package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CameraDeviceWrapper extends UnsafeWrapper {
    /* renamed from: createCaptureRequest-2PPcXtw */
    CaptureRequest.Builder mo47createCaptureRequest2PPcXtw(int i);

    boolean createCaptureSession(SessionConfigData sessionConfigData);

    boolean createCaptureSession(List list, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createCaptureSessionByOutputConfigurations(ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createConstrainedHighSpeedCaptureSession(ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createExtensionSession(ExtensionSessionConfigData extensionSessionConfigData);

    CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult);

    boolean createReprocessableCaptureSession(InputConfiguration inputConfiguration, ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback);

    boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfigData, ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback);

    /* renamed from: getCameraId-Dz_R5H8 */
    String mo48getCameraIdDz_R5H8();

    /* renamed from: onCameraAudioRestrictionUpdated-LwUUkyU */
    void mo49onCameraAudioRestrictionUpdatedLwUUkyU(int i);

    void onDeviceClosed();

    void onDeviceClosing();
}

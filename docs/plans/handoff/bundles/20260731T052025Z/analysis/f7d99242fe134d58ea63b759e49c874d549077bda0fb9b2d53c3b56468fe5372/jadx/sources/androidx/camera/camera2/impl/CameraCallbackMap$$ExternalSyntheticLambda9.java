package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.compat.Api34Compat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraCallbackMap$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CameraUseCaseAdapter.CaptureCallbackContainer f$0;
    public final /* synthetic */ CameraCaptureSession f$1;
    public final /* synthetic */ CaptureRequest f$2;
    public final /* synthetic */ long f$3;
    public final /* synthetic */ long f$4;

    public /* synthetic */ CameraCallbackMap$$ExternalSyntheticLambda9(CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2, int i) {
        this.$r8$classId = i;
        this.f$0 = captureCallbackContainer;
        this.f$1 = cameraCaptureSession;
        this.f$2 = captureRequest;
        this.f$3 = j;
        this.f$4 = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = this.f$0;
        switch (i) {
            case 0:
                Api34Compat.onReadoutStarted(captureCallbackContainer.captureCallback, this.f$1, this.f$2, this.f$3, this.f$4);
                break;
            default:
                captureCallbackContainer.captureCallback.onCaptureStarted(this.f$1, this.f$2, this.f$3, this.f$4);
                break;
        }
    }
}

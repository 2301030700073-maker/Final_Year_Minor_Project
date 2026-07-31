package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraCallbackMap$$ExternalSyntheticLambda11 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ CameraCallbackMap$$ExternalSyntheticLambda11(Object obj, Object obj2, long j, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        long j = this.f$2;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((CameraUseCaseAdapter.CaptureCallbackContainer) obj2).captureCallback.onCaptureSequenceCompleted((CameraCaptureSession) obj, -1, j);
                break;
            default:
                ((Request.Listener) obj2).mo9onRequestSequenceCompletedRuT0dZU((RequestMetadata) obj, j);
                break;
        }
    }
}

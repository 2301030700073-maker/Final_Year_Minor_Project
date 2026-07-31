package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.os.Handler;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidCameraConstrainedHighSpeedCaptureSession extends AndroidCameraCaptureSession {
    public final CameraConstrainedHighSpeedCaptureSession session;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCameraConstrainedHighSpeedCaptureSession(AndroidCameraDevice androidCameraDevice, CameraConstrainedHighSpeedCaptureSession cameraConstrainedHighSpeedCaptureSession, Camera2ErrorProcessor camera2ErrorProcessor, Handler handler) {
        super(androidCameraDevice, cameraConstrainedHighSpeedCaptureSession, camera2ErrorProcessor, handler);
        androidCameraDevice.getClass();
        camera2ErrorProcessor.getClass();
        handler.getClass();
        this.session = cameraConstrainedHighSpeedCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.AndroidCameraCaptureSession, androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        return classReference.equals(Reflection.getOrCreateKotlinClass(CameraConstrainedHighSpeedCaptureSession.class)) ? this.session : super.unwrapAs(classReference);
    }
}

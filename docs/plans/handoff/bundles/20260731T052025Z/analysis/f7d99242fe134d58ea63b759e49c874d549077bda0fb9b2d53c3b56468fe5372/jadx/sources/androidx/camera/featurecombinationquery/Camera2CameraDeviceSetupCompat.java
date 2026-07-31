package androidx.camera.featurecombinationquery;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.SessionConfiguration;
import net.openid.appauth.internal.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CameraDeviceSetupCompat implements CameraDeviceSetupCompat {
    public final CameraDevice.CameraDeviceSetup mCameraDeviceSetup;

    public Camera2CameraDeviceSetupCompat(CameraManager cameraManager, String str) {
        this.mCameraDeviceSetup = cameraManager.getCameraDeviceSetup(str);
    }

    @Override // androidx.camera.featurecombinationquery.CameraDeviceSetupCompat
    public final Logger isSessionConfigurationSupported(SessionConfiguration sessionConfiguration) {
        int i = this.mCameraDeviceSetup.isSessionConfigurationSupported(sessionConfiguration) ? 1 : 2;
        String property = System.getProperty("ro.build.date.utc");
        if (property != null) {
            try {
                Long.parseLong(property);
            } catch (NumberFormatException unused) {
            }
        }
        return new Logger(i, 2);
    }
}

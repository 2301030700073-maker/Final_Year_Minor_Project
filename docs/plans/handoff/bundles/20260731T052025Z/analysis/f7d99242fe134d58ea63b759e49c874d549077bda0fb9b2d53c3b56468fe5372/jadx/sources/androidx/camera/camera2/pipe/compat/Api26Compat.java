package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.params.OutputConfiguration;
import android.view.Surface;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api26Compat {
    public static final void addSurfaces(OutputConfiguration outputConfiguration, Surface surface) {
        surface.getClass();
        outputConfiguration.addSurface(surface);
    }

    public static final void enableSurfaceSharing(OutputConfiguration outputConfiguration) {
        outputConfiguration.enableSurfaceSharing();
    }

    public static final void finalizeOutputConfigurations(CameraCaptureSession cameraCaptureSession, ArrayList arrayList) {
        cameraCaptureSession.finalizeOutputConfigurations(arrayList);
    }
}

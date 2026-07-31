package androidx.camera.featurecombinationquery;

import android.hardware.camera2.params.SessionConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import net.openid.appauth.internal.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AggregatedCameraDeviceSetupCompat implements CameraDeviceSetupCompat {
    public final ArrayList mCameraDeviceSetupImpls;

    public AggregatedCameraDeviceSetupCompat(ArrayList arrayList) {
        this.mCameraDeviceSetupImpls = arrayList;
    }

    @Override // androidx.camera.featurecombinationquery.CameraDeviceSetupCompat
    public final Logger isSessionConfigurationSupported(SessionConfiguration sessionConfiguration) {
        Iterator it = this.mCameraDeviceSetupImpls.iterator();
        while (it.hasNext()) {
            Logger isSessionConfigurationSupported = ((CameraDeviceSetupCompat) it.next()).isSessionConfigurationSupported(sessionConfiguration);
            if (isSessionConfigurationSupported.mLogLevel != 0) {
                return isSessionConfigurationSupported;
            }
        }
        return new Logger(0, 2);
    }
}

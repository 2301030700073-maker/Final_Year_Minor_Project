package androidx.camera.camera2.adapter;

import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ZslControl {
    void addZslConfig(SessionConfig.Builder builder);

    void clearZslConfig();

    boolean isZslSurface(DeferrableSurface deferrableSurface, SessionConfig sessionConfig);

    void setZslDisabledByFlashMode(boolean z);

    void setZslDisabledByUserCaseConfig(boolean z);
}

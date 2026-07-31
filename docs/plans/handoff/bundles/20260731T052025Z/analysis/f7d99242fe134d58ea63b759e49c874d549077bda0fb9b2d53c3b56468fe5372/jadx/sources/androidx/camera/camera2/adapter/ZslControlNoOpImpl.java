package androidx.camera.camera2.adapter;

import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZslControlNoOpImpl implements ZslControl {
    @Override // androidx.camera.camera2.adapter.ZslControl
    public final boolean isZslSurface(DeferrableSurface deferrableSurface, SessionConfig sessionConfig) {
        sessionConfig.getClass();
        return false;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void clearZslConfig() {
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void addZslConfig(SessionConfig.Builder builder) {
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void setZslDisabledByFlashMode(boolean z) {
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void setZslDisabledByUserCaseConfig(boolean z) {
    }
}

package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.core.impl.DeferrableSurface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface InactiveSurfaceCloser {
    void closeAll();

    /* renamed from: configure-hB7JTeY, reason: not valid java name */
    void mo17configurehB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraphImpl cameraGraphImpl);

    void onSurfaceInactive(DeferrableSurface deferrableSurface);
}

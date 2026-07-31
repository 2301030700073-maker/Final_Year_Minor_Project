package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TargetAspectRatio implements InactiveSurfaceCloser, TemplateParamsOverride, UseTorchAsFlash {
    public static final TargetAspectRatio INSTANCE = new TargetAspectRatio(1);
    public static final TargetAspectRatio INSTANCE$1 = new TargetAspectRatio(2);
    public static final TargetAspectRatio INSTANCE$2 = new TargetAspectRatio(3);
    public static final TargetAspectRatio INSTANCE$3 = new TargetAspectRatio(4);
    public static final TargetAspectRatio INSTANCE$4 = new TargetAspectRatio(5);
    public static final TargetAspectRatio INSTANCE$5 = new TargetAspectRatio(6);
    public static final TargetAspectRatio INSTANCE$6 = new TargetAspectRatio(7);
    public static final TargetAspectRatio INSTANCE$7 = new TargetAspectRatio(8);
    public static final TargetAspectRatio INSTANCE$8 = new TargetAspectRatio(9);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TargetAspectRatio(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    /* renamed from: configure-hB7JTeY */
    public void mo17configurehB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraphImpl cameraGraphImpl) {
        deferrableSurface.getClass();
    }

    @Override // androidx.camera.camera2.compat.workaround.TemplateParamsOverride
    /* renamed from: getOverrideParams-xlOpshk, reason: not valid java name */
    public Map mo18getOverrideParamsxlOpshk(RequestTemplate requestTemplate) {
        return EmptyMap.INSTANCE;
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void closeAll() {
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void onSurfaceInactive(DeferrableSurface deferrableSurface) {
    }
}

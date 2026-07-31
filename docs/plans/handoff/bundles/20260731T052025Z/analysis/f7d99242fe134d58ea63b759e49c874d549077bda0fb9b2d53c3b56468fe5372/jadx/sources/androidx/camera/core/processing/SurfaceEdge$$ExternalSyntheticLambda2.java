package androidx.camera.core.processing;

import androidx.camera.core.impl.DeferrableSurface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SurfaceEdge$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DeferrableSurface f$0;

    public /* synthetic */ SurfaceEdge$$ExternalSyntheticLambda2(DeferrableSurface deferrableSurface, int i) {
        this.$r8$classId = i;
        this.f$0 = deferrableSurface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        DeferrableSurface deferrableSurface = this.f$0;
        switch (i) {
            case 0:
                deferrableSurface.close();
                break;
            default:
                deferrableSurface.decrementUseCount();
                break;
        }
    }
}

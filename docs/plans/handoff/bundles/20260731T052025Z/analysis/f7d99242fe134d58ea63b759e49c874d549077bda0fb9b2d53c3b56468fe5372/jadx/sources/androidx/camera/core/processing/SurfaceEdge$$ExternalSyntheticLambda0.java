package androidx.camera.core.processing;

import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SurfaceEdge$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SurfaceEdge f$0;

    public /* synthetic */ SurfaceEdge$$ExternalSyntheticLambda0(SurfaceEdge surfaceEdge, int i) {
        this.$r8$classId = i;
        this.f$0 = surfaceEdge;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        SurfaceEdge surfaceEdge = this.f$0;
        switch (i) {
            case 0:
                Util.mainThreadExecutor().execute(new SurfaceEdge$$ExternalSyntheticLambda0(surfaceEdge, 1));
                break;
            default:
                if (!surfaceEdge.mIsClosed) {
                    surfaceEdge.invalidate();
                    break;
                }
                break;
        }
    }
}

package androidx.camera.core;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SurfaceRequest$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SurfaceRequest f$0;

    public /* synthetic */ SurfaceRequest$$ExternalSyntheticLambda1(SurfaceRequest surfaceRequest, int i) {
        this.$r8$classId = i;
        this.f$0 = surfaceRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        SurfaceRequest surfaceRequest = this.f$0;
        switch (i) {
            case 0:
                surfaceRequest.mSurfaceFuture.cancel(true);
                break;
            default:
                surfaceRequest.willNotProvideSurface();
                break;
        }
    }
}

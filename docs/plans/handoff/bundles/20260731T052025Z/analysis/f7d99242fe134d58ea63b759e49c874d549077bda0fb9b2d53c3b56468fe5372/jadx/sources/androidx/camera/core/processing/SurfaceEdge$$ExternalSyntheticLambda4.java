package androidx.camera.core.processing;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SurfaceEdge$$ExternalSyntheticLambda4 implements Runnable {
    public final /* synthetic */ SurfaceEdge f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ SurfaceEdge$$ExternalSyntheticLambda4(SurfaceEdge surfaceEdge, int i, int i2) {
        this.f$0 = surfaceEdge;
        this.f$1 = i;
        this.f$2 = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        SurfaceEdge surfaceEdge = this.f$0;
        int i = surfaceEdge.mRotationDegrees;
        int i2 = this.f$1;
        boolean z2 = true;
        if (i != i2) {
            surfaceEdge.mRotationDegrees = i2;
            z = true;
        } else {
            z = false;
        }
        int i3 = surfaceEdge.mTargetRotation;
        int i4 = this.f$2;
        if (i3 != i4) {
            surfaceEdge.mTargetRotation = i4;
        } else {
            z2 = z;
        }
        if (z2) {
            surfaceEdge.notifyTransformationInfoUpdate();
        }
    }
}

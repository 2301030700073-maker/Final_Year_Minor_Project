package androidx.camera.core;

import androidx.camera.core.SurfaceRequest;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SurfaceRequest$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SurfaceRequest.TransformationInfoListener f$0;
    public final /* synthetic */ AutoValue_SurfaceRequest_TransformationInfo f$1;

    public /* synthetic */ SurfaceRequest$$ExternalSyntheticLambda0(SurfaceRequest.TransformationInfoListener transformationInfoListener, AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo, int i) {
        this.$r8$classId = i;
        this.f$0 = transformationInfoListener;
        this.f$1 = autoValue_SurfaceRequest_TransformationInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo = this.f$1;
        SurfaceRequest.TransformationInfoListener transformationInfoListener = this.f$0;
        switch (i) {
            case 0:
                transformationInfoListener.onTransformationInfoUpdate(autoValue_SurfaceRequest_TransformationInfo);
                break;
            default:
                transformationInfoListener.onTransformationInfoUpdate(autoValue_SurfaceRequest_TransformationInfo);
                break;
        }
    }
}

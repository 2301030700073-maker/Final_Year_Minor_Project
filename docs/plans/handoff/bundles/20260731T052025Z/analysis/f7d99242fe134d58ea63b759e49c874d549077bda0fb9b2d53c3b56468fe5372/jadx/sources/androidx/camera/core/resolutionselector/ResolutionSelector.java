package androidx.camera.core.resolutionselector;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResolutionSelector {
    public final AspectRatioStrategy mAspectRatioStrategy;
    public final ResolutionStrategy mResolutionStrategy;

    public ResolutionSelector(AspectRatioStrategy aspectRatioStrategy, ResolutionStrategy resolutionStrategy, ImageAnalysis$$ExternalSyntheticLambda3 imageAnalysis$$ExternalSyntheticLambda3) {
        this.mAspectRatioStrategy = aspectRatioStrategy;
        this.mResolutionStrategy = resolutionStrategy;
    }
}

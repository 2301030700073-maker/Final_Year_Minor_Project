package androidx.camera.core.resolutionselector;

import android.util.Size;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResolutionStrategy {
    public static final ResolutionStrategy HIGHEST_AVAILABLE_STRATEGY;
    public Size mBoundSize;
    public int mFallbackRule = 1;

    static {
        ResolutionStrategy resolutionStrategy = new ResolutionStrategy();
        resolutionStrategy.mBoundSize = null;
        resolutionStrategy.mFallbackRule = 0;
        HIGHEST_AVAILABLE_STRATEGY = resolutionStrategy;
    }

    public ResolutionStrategy(Size size) {
        this.mBoundSize = size;
    }
}

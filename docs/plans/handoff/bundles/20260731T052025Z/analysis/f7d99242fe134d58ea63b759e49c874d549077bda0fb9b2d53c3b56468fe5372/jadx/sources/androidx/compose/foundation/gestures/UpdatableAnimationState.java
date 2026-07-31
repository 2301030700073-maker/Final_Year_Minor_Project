package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.VectorizedAnimationSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UpdatableAnimationState {
    public static final AnimationVector1D ZeroVector = new AnimationVector1D(0.0f);
    public boolean isRunning;
    public long lastFrameTime = Long.MIN_VALUE;
    public AnimationVector1D lastVelocity = ZeroVector;
    public float value;
    public final VectorizedAnimationSpec vectorizedSpec;

    public UpdatableAnimationState(AnimationSpec animationSpec) {
        this.vectorizedSpec = animationSpec.vectorize(ArcSplineKt.FloatToVector);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
    
        if (r13 != 0.0f) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d2, code lost:
    
        if (androidx.compose.runtime.Updater.getMonotonicFrameClock(r3.getContext()).withFrameNanos(r8, r3) == r12) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a4 -> B:23:0x00a7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateToZero(androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0 r17, okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0 r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.UpdatableAnimationState.animateToZero(androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0, okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

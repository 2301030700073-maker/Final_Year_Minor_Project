package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UpdatableAnimationState {
    public static final AnimationVector1D ZeroVector = new AnimationVector1D(RecyclerView.DECELERATION_RATE);
    public boolean isRunning;
    public long lastFrameTime = Long.MIN_VALUE;
    public AnimationVector1D lastVelocity = ZeroVector;
    public float value;
    public final VectorizedAnimationSpec vectorizedSpec;

    public UpdatableAnimationState(AnimationSpec animationSpec) {
        this.vectorizedSpec = animationSpec.vectorize(ArcSplineKt.FloatToVector);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ae, code lost:
    
        if (r13 != androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d5, code lost:
    
        if (androidx.compose.runtime.Updater.getMonotonicFrameClock(r0).withFrameNanos(r9, r4) == r3) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /* JADX WARN: Type inference failed for: r14v7, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a6 -> B:23:0x00a9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateToZero(coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1 r17, org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29 r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.UpdatableAnimationState.animateToZero(coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1, org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

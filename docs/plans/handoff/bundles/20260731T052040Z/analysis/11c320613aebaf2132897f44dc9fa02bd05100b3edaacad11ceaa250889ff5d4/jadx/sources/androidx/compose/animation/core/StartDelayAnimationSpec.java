package androidx.compose.animation.core;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StartDelayAnimationSpec implements AnimationSpec {
    public final AnimationSpec animationSpec;
    public final long startDelayNanos;

    public StartDelayAnimationSpec(FiniteAnimationSpec finiteAnimationSpec, long j) {
        this.animationSpec = finiteAnimationSpec;
        this.startDelayNanos = j;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StartDelayAnimationSpec)) {
            return false;
        }
        StartDelayAnimationSpec startDelayAnimationSpec = (StartDelayAnimationSpec) obj;
        return startDelayAnimationSpec.startDelayNanos == this.startDelayNanos && Intrinsics.areEqual(startDelayAnimationSpec.animationSpec, this.animationSpec);
    }

    public final int hashCode() {
        int hashCode = this.animationSpec.hashCode() * 31;
        long j = this.startDelayNanos;
        return hashCode + ((int) (j ^ (j >>> 32)));
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        return new StartDelayVectorizedAnimationSpec(this.animationSpec.vectorize(twoWayConverterImpl), this.startDelayNanos);
    }
}

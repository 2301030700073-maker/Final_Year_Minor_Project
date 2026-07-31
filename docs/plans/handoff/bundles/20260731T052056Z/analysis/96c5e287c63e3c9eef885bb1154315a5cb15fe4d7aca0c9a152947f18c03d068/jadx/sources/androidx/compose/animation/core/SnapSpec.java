package androidx.compose.animation.core;

import androidx.transition.Transition;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnapSpec implements DurationBasedAnimationSpec {
    public final boolean equals(Object obj) {
        return obj instanceof SnapSpec;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        return new Transition.AnonymousClass1(2, false);
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public final VectorizedDurationBasedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        return new Transition.AnonymousClass1(2, false);
    }
}

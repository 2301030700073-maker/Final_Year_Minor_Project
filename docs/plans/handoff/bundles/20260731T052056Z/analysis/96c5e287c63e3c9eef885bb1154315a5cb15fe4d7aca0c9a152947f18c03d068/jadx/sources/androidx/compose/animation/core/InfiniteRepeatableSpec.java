package androidx.compose.animation.core;

import coil3.memory.RealStrongMemoryCache$cache$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InfiniteRepeatableSpec implements AnimationSpec {
    public final DurationBasedAnimationSpec animation;
    public final RepeatMode repeatMode;

    public InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode) {
        this.animation = durationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        if (durationBasedAnimationSpec instanceof TweenSpec) {
            TweenSpec tweenSpec = (TweenSpec) durationBasedAnimationSpec;
            if (tweenSpec.durationMillis != 0 || tweenSpec.delay != 0) {
                return;
            }
        } else if (!(durationBasedAnimationSpec instanceof SnapSpec) && (!(durationBasedAnimationSpec instanceof KeyframesSpec) || ((KeyframesSpec) durationBasedAnimationSpec).config.durationMillis != 0)) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Animation to be infinitely repeated cannot have a 0-duration");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof InfiniteRepeatableSpec)) {
            return false;
        }
        InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) obj;
        return infiniteRepeatableSpec.animation.equals(this.animation) && infiniteRepeatableSpec.repeatMode == this.repeatMode;
    }

    public final int hashCode() {
        return (this.repeatMode.hashCode() + (this.animation.hashCode() * 31)) * 31;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        return new RealStrongMemoryCache$cache$1(this.animation.vectorize(twoWayConverterImpl), this.repeatMode);
    }
}

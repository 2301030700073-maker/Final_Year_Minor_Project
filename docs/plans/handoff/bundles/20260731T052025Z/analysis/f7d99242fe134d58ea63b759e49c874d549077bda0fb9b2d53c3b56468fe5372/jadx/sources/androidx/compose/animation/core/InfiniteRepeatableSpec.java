package androidx.compose.animation.core;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        } else if (!(durationBasedAnimationSpec instanceof SnapSpec) || ((SnapSpec) durationBasedAnimationSpec).delay != 0) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Animation to be infinitely repeated cannot have a 0-duration");
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
        return new LocalFolder.AnonymousClass14(this.animation.vectorize(twoWayConverterImpl), this.repeatMode);
    }
}

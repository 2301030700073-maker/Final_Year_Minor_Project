package androidx.compose.animation.core;

import net.openid.appauth.internal.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnapSpec implements DurationBasedAnimationSpec {
    public final int delay;

    public SnapSpec(int i) {
        this.delay = i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof SnapSpec) && ((SnapSpec) obj).delay == this.delay;
    }

    public final int hashCode() {
        return this.delay;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedDurationBasedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        return new Logger(this.delay, 3);
    }
}

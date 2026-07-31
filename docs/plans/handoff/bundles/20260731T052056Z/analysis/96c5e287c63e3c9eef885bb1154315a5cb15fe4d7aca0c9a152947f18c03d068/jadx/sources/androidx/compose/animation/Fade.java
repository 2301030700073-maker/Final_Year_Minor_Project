package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Fade {
    public final FiniteAnimationSpec animationSpec;

    public Fade(FiniteAnimationSpec finiteAnimationSpec) {
        this.animationSpec = finiteAnimationSpec;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Fade) {
            return Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && Intrinsics.areEqual(this.animationSpec, ((Fade) obj).animationSpec);
        }
        return false;
    }

    public final int hashCode() {
        return this.animationSpec.hashCode() + (Float.floatToIntBits(RecyclerView.DECELERATION_RATE) * 31);
    }

    public final String toString() {
        return "Fade(alpha=0.0, animationSpec=" + this.animationSpec + ')';
    }
}

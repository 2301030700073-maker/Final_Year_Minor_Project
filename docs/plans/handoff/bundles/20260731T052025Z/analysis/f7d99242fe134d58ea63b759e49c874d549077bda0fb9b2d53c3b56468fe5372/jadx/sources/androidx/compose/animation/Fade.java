package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            return Float.compare(0.0f, 0.0f) == 0 && Intrinsics.areEqual(this.animationSpec, ((Fade) obj).animationSpec);
        }
        return false;
    }

    public final int hashCode() {
        return this.animationSpec.hashCode() + (Float.floatToIntBits(0.0f) * 31);
    }

    public final String toString() {
        return "Fade(alpha=0.0, animationSpec=" + this.animationSpec + ')';
    }
}

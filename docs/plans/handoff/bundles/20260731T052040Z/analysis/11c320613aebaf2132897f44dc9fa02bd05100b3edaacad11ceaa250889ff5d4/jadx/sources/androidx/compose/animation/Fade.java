package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            return Float.compare(0.0f, 0.0f) == 0 && this.animationSpec.equals(((Fade) obj).animationSpec);
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

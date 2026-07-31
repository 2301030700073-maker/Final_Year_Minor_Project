package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.TransformOrigin;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Scale {
    public final FiniteAnimationSpec animationSpec;
    public final float scale;
    public final long transformOrigin;

    public Scale(float f, long j, FiniteAnimationSpec finiteAnimationSpec) {
        this.scale = f;
        this.transformOrigin = j;
        this.animationSpec = finiteAnimationSpec;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scale)) {
            return false;
        }
        Scale scale = (Scale) obj;
        return Float.compare(this.scale, scale.scale) == 0 && TransformOrigin.m512equalsimpl0(this.transformOrigin, scale.transformOrigin) && this.animationSpec.equals(scale.animationSpec);
    }

    public final int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.scale) * 31;
        int i = TransformOrigin.$r8$clinit;
        long j = this.transformOrigin;
        return this.animationSpec.hashCode() + ((((int) (j ^ (j >>> 32))) + floatToIntBits) * 31);
    }

    public final String toString() {
        return "Scale(scale=" + this.scale + ", transformOrigin=" + ((Object) TransformOrigin.m513toStringimpl(this.transformOrigin)) + ", animationSpec=" + this.animationSpec + ')';
    }
}

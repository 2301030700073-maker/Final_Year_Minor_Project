package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.TransformOrigin;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        return Float.compare(this.scale, scale.scale) == 0 && TransformOrigin.m253equalsimpl0(this.transformOrigin, scale.transformOrigin) && this.animationSpec.equals(scale.animationSpec);
    }

    public final int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.scale) * 31;
        int i = TransformOrigin.$r8$clinit;
        long j = this.transformOrigin;
        return this.animationSpec.hashCode() + ((((int) (j ^ (j >>> 32))) + floatToIntBits) * 31);
    }

    public final String toString() {
        return "Scale(scale=" + this.scale + ", transformOrigin=" + ((Object) TransformOrigin.m254toStringimpl(this.transformOrigin)) + ", animationSpec=" + this.animationSpec + ')';
    }
}

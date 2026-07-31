package androidx.compose.foundation.shape;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DpCornerSize implements CornerSize {
    public final float size;

    public DpCornerSize(float f) {
        this.size = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DpCornerSize) && Dp.m443equalsimpl0(this.size, ((DpCornerSize) obj).size);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.size);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    /* renamed from: toPx-TmRCtEA */
    public final float mo115toPxTmRCtEA(long j, Density density) {
        return density.mo63toPx0680j_4(this.size);
    }

    public final String toString() {
        return "CornerSize(size = " + this.size + ".dp)";
    }
}

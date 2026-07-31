package androidx.compose.foundation.shape;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return (obj instanceof DpCornerSize) && Dp.m745equalsimpl0(this.size, ((DpCornerSize) obj).size);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.size);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    /* renamed from: toPx-TmRCtEA */
    public final float mo263toPxTmRCtEA(long j, Density density) {
        return density.mo177toPx0680j_4(this.size);
    }

    public final String toString() {
        return "CornerSize(size = " + this.size + ".dp)";
    }
}

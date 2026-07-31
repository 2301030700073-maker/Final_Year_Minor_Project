package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GridCells$Adaptive {
    public final float minSize;

    public GridCells$Adaptive(float f) {
        this.minSize = f;
        if (Dp.m744compareTo0680j_4(f, 0.0f) > 0) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Provided min size should be larger than zero.");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GridCells$Adaptive) {
            return Dp.m745equalsimpl0(this.minSize, ((GridCells$Adaptive) obj).minSize);
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.minSize);
    }
}

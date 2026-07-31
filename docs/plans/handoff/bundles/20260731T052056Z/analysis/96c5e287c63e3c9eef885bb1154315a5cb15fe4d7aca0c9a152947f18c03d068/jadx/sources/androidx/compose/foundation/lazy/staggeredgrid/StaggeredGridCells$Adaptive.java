package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StaggeredGridCells$Adaptive {
    public StaggeredGridCells$Adaptive() {
        if (Dp.m692compareTo0680j_4(140.0f, RecyclerView.DECELERATION_RATE) > 0) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("invalid minSize");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof StaggeredGridCells$Adaptive) && Dp.m693equalsimpl0(140.0f, 140.0f);
    }

    public final int hashCode() {
        return Float.floatToIntBits(140.0f);
    }
}

package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowLayoutOverflowState {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof FlowLayoutOverflowState);
    }

    public final int hashCode() {
        return FlowLayoutOverflow$OverflowType.Clip.hashCode() * 961;
    }

    /* renamed from: setOverflowMeasurables--hBUhpc$foundation_layout, reason: not valid java name */
    public final void m206setOverflowMeasurableshBUhpc$foundation_layout(Measurable measurable, Measurable measurable2, long j) {
        long m216constructorimpl = OffsetKt.m216constructorimpl(j, LayoutOrientation.Horizontal);
        if (measurable != null) {
            int minIntrinsicWidth = measurable.minIntrinsicWidth(Constraints.m733getMaxHeightimpl(m216constructorimpl));
            new IntIntPair(IntIntPair.m105constructorimpl(minIntrinsicWidth, measurable.minIntrinsicHeight(minIntrinsicWidth)));
        }
        if (measurable2 != null) {
            int minIntrinsicWidth2 = measurable2.minIntrinsicWidth(Constraints.m733getMaxHeightimpl(m216constructorimpl));
            new IntIntPair(IntIntPair.m105constructorimpl(minIntrinsicWidth2, measurable2.minIntrinsicHeight(minIntrinsicWidth2)));
        }
    }

    public final String toString() {
        return "FlowLayoutOverflowState(type=" + FlowLayoutOverflow$OverflowType.Clip + ", minLinesToShowCollapse=0, minCrossAxisSizeToShowCollapse=0)";
    }
}

package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowLayoutOverflowState {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof FlowLayoutOverflowState);
    }

    public final int hashCode() {
        return FlowLayoutOverflow$OverflowType.Clip.hashCode() * 961;
    }

    /* renamed from: setOverflowMeasurables--hBUhpc$foundation_layout, reason: not valid java name */
    public final void m81setOverflowMeasurableshBUhpc$foundation_layout(Measurable measurable, Measurable measurable2, long j) {
        long m96constructorimpl = SpacerKt.m96constructorimpl(j, LayoutOrientation.Horizontal);
        if (measurable != null) {
            int minIntrinsicWidth = measurable.minIntrinsicWidth(Constraints.m433getMaxHeightimpl(m96constructorimpl));
            new IntIntPair(IntIntPair.m5constructorimpl(minIntrinsicWidth, measurable.minIntrinsicHeight(minIntrinsicWidth)));
        }
        if (measurable2 != null) {
            int minIntrinsicWidth2 = measurable2.minIntrinsicWidth(Constraints.m433getMaxHeightimpl(m96constructorimpl));
            new IntIntPair(IntIntPair.m5constructorimpl(minIntrinsicWidth2, measurable2.minIntrinsicHeight(minIntrinsicWidth2)));
        }
    }

    public final String toString() {
        return "FlowLayoutOverflowState(type=" + FlowLayoutOverflow$OverflowType.Clip + ", minLinesToShowCollapse=0, minCrossAxisSizeToShowCollapse=0)";
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AspectRatioNode extends Modifier.Node implements LayoutModifierNode {
    public float aspectRatio;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i / this.aspectRatio) : measurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i * this.aspectRatio) : measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        long m112tryMaxWidthJN0ABg = m112tryMaxWidthJN0ABg(j, true);
        if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
            m112tryMaxWidthJN0ABg = m111tryMaxHeightJN0ABg(j, true);
            if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
                m112tryMaxWidthJN0ABg = m114tryMinWidthJN0ABg(j, true);
                if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
                    m112tryMaxWidthJN0ABg = m113tryMinHeightJN0ABg(j, true);
                    if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
                        m112tryMaxWidthJN0ABg = m112tryMaxWidthJN0ABg(j, false);
                        if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
                            m112tryMaxWidthJN0ABg = m111tryMaxHeightJN0ABg(j, false);
                            if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
                                m112tryMaxWidthJN0ABg = m114tryMinWidthJN0ABg(j, false);
                                if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
                                    m112tryMaxWidthJN0ABg = m113tryMinHeightJN0ABg(j, false);
                                    if (IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
                                        m112tryMaxWidthJN0ABg = 0;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!IntSize.m721equalsimpl0(m112tryMaxWidthJN0ABg, 0L)) {
            int i = (int) (m112tryMaxWidthJN0ABg >> 32);
            int i2 = (int) (4294967295L & m112tryMaxWidthJN0ABg);
            if (!((i >= 0) & (i2 >= 0))) {
                InlineClassHelperKt.throwIllegalArgumentException("width and height must be >= 0");
            }
            j = ConstraintsKt.createConstraints(i, i, i2, i2);
        }
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(j);
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 1));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i / this.aspectRatio) : measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i * this.aspectRatio) : measurable.minIntrinsicWidth(i);
    }

    /* renamed from: tryMaxHeight-JN-0ABg, reason: not valid java name */
    public final long m111tryMaxHeightJN0ABg(long j, boolean z) {
        int round;
        int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
        if (m680getMaxHeightimpl == Integer.MAX_VALUE || (round = Math.round(m680getMaxHeightimpl * this.aspectRatio)) <= 0) {
            return 0L;
        }
        if (!z || OffsetKt.m129isSatisfiedByNN6EwU(round, m680getMaxHeightimpl, j)) {
            return (round << 32) | (m680getMaxHeightimpl & 4294967295L);
        }
        return 0L;
    }

    /* renamed from: tryMaxWidth-JN-0ABg, reason: not valid java name */
    public final long m112tryMaxWidthJN0ABg(long j, boolean z) {
        int round;
        int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
        if (m681getMaxWidthimpl == Integer.MAX_VALUE || (round = Math.round(m681getMaxWidthimpl / this.aspectRatio)) <= 0) {
            return 0L;
        }
        if (!z || OffsetKt.m129isSatisfiedByNN6EwU(m681getMaxWidthimpl, round, j)) {
            return (m681getMaxWidthimpl << 32) | (round & 4294967295L);
        }
        return 0L;
    }

    /* renamed from: tryMinHeight-JN-0ABg, reason: not valid java name */
    public final long m113tryMinHeightJN0ABg(long j, boolean z) {
        int m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
        int round = Math.round(m682getMinHeightimpl * this.aspectRatio);
        if (round <= 0) {
            return 0L;
        }
        if (!z || OffsetKt.m129isSatisfiedByNN6EwU(round, m682getMinHeightimpl, j)) {
            return (round << 32) | (m682getMinHeightimpl & 4294967295L);
        }
        return 0L;
    }

    /* renamed from: tryMinWidth-JN-0ABg, reason: not valid java name */
    public final long m114tryMinWidthJN0ABg(long j, boolean z) {
        int m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
        int round = Math.round(m683getMinWidthimpl / this.aspectRatio);
        if (round <= 0) {
            return 0L;
        }
        if (!z || OffsetKt.m129isSatisfiedByNN6EwU(m683getMinWidthimpl, round, j)) {
            return (m683getMinWidthimpl << 32) | (round & 4294967295L);
        }
        return 0L;
    }
}

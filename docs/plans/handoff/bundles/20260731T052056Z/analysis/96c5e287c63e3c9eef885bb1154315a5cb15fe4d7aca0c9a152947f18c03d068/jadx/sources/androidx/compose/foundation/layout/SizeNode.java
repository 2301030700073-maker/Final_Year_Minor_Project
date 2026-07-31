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
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    public boolean enforceIncoming;
    public float maxHeight;
    public float maxWidth;
    public float minHeight;
    public float minWidth;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
    
        if (r4 != Integer.MAX_VALUE) goto L24;
     */
    /* renamed from: getTargetConstraints-OenEA2s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m151getTargetConstraintsOenEA2s(androidx.compose.ui.layout.MeasureScope r7) {
        /*
            r6 = this;
            float r0 = r6.maxWidth
            boolean r0 = java.lang.Float.isNaN(r0)
            r1 = 2147483647(0x7fffffff, float:NaN)
            r2 = 0
            if (r0 != 0) goto L16
            float r0 = r6.maxWidth
            int r0 = r7.mo81roundToPx0680j_4(r0)
            if (r0 >= 0) goto L17
            r0 = r2
            goto L17
        L16:
            r0 = r1
        L17:
            float r3 = r6.maxHeight
            boolean r3 = java.lang.Float.isNaN(r3)
            if (r3 != 0) goto L29
            float r3 = r6.maxHeight
            int r3 = r7.mo81roundToPx0680j_4(r3)
            if (r3 >= 0) goto L2a
            r3 = r2
            goto L2a
        L29:
            r3 = r1
        L2a:
            float r4 = r6.minWidth
            boolean r4 = java.lang.Float.isNaN(r4)
            if (r4 != 0) goto L41
            float r4 = r6.minWidth
            int r4 = r7.mo81roundToPx0680j_4(r4)
            if (r4 >= 0) goto L3b
            r4 = r2
        L3b:
            if (r4 <= r0) goto L3e
            r4 = r0
        L3e:
            if (r4 == r1) goto L41
            goto L42
        L41:
            r4 = r2
        L42:
            float r5 = r6.minHeight
            boolean r5 = java.lang.Float.isNaN(r5)
            if (r5 != 0) goto L59
            float r6 = r6.minHeight
            int r6 = r7.mo81roundToPx0680j_4(r6)
            if (r6 >= 0) goto L53
            r6 = r2
        L53:
            if (r6 <= r3) goto L56
            r6 = r3
        L56:
            if (r6 == r1) goto L59
            r2 = r6
        L59:
            long r6 = androidx.compose.ui.unit.ConstraintsKt.Constraints(r4, r0, r2, r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.SizeNode.m151getTargetConstraintsOenEA2s(androidx.compose.ui.layout.MeasureScope):long");
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m151getTargetConstraintsOenEA2s = m151getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m678getHasFixedHeightimpl(m151getTargetConstraintsOenEA2s)) {
            return Constraints.m680getMaxHeightimpl(m151getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m689constrainWidthK40F9xA(m151getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m688constrainHeightK40F9xA(m151getTargetConstraintsOenEA2s, measurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m151getTargetConstraintsOenEA2s = m151getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m679getHasFixedWidthimpl(m151getTargetConstraintsOenEA2s)) {
            return Constraints.m681getMaxWidthimpl(m151getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m688constrainHeightK40F9xA(m151getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m689constrainWidthK40F9xA(m151getTargetConstraintsOenEA2s, measurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m683getMinWidthimpl;
        int m681getMaxWidthimpl;
        int m682getMinHeightimpl;
        int m680getMaxHeightimpl;
        long Constraints;
        long m151getTargetConstraintsOenEA2s = m151getTargetConstraintsOenEA2s(measureScope);
        if (this.enforceIncoming) {
            Constraints = ConstraintsKt.m687constrainN9IONVI(j, m151getTargetConstraintsOenEA2s);
        } else {
            if (Float.isNaN(this.minWidth)) {
                m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
                int m681getMaxWidthimpl2 = Constraints.m681getMaxWidthimpl(m151getTargetConstraintsOenEA2s);
                if (m683getMinWidthimpl > m681getMaxWidthimpl2) {
                    m683getMinWidthimpl = m681getMaxWidthimpl2;
                }
            } else {
                m683getMinWidthimpl = Constraints.m683getMinWidthimpl(m151getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxWidth)) {
                m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
                int m683getMinWidthimpl2 = Constraints.m683getMinWidthimpl(m151getTargetConstraintsOenEA2s);
                if (m681getMaxWidthimpl < m683getMinWidthimpl2) {
                    m681getMaxWidthimpl = m683getMinWidthimpl2;
                }
            } else {
                m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(m151getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.minHeight)) {
                m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
                int m680getMaxHeightimpl2 = Constraints.m680getMaxHeightimpl(m151getTargetConstraintsOenEA2s);
                if (m682getMinHeightimpl > m680getMaxHeightimpl2) {
                    m682getMinHeightimpl = m680getMaxHeightimpl2;
                }
            } else {
                m682getMinHeightimpl = Constraints.m682getMinHeightimpl(m151getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxHeight)) {
                m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
                int m682getMinHeightimpl2 = Constraints.m682getMinHeightimpl(m151getTargetConstraintsOenEA2s);
                if (m680getMaxHeightimpl < m682getMinHeightimpl2) {
                    m680getMaxHeightimpl = m682getMinHeightimpl2;
                }
            } else {
                m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(m151getTargetConstraintsOenEA2s);
            }
            Constraints = ConstraintsKt.Constraints(m683getMinWidthimpl, m681getMaxWidthimpl, m682getMinHeightimpl, m680getMaxHeightimpl);
        }
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(Constraints);
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 4));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m151getTargetConstraintsOenEA2s = m151getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m678getHasFixedHeightimpl(m151getTargetConstraintsOenEA2s)) {
            return Constraints.m680getMaxHeightimpl(m151getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m689constrainWidthK40F9xA(m151getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m688constrainHeightK40F9xA(m151getTargetConstraintsOenEA2s, measurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m151getTargetConstraintsOenEA2s = m151getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m679getHasFixedWidthimpl(m151getTargetConstraintsOenEA2s)) {
            return Constraints.m681getMaxWidthimpl(m151getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m688constrainHeightK40F9xA(m151getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m689constrainWidthK40F9xA(m151getTargetConstraintsOenEA2s, measurable.minIntrinsicWidth(i));
    }
}

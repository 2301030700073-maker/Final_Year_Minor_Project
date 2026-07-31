package androidx.compose.foundation.layout;

import androidx.compose.material3.BadgeKt$$ExternalSyntheticLambda2;
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

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final long m93getTargetConstraintsOenEA2s(androidx.compose.ui.layout.MeasureScope r7) {
        /*
            r6 = this;
            float r0 = r6.maxWidth
            boolean r0 = java.lang.Float.isNaN(r0)
            r1 = 2147483647(0x7fffffff, float:NaN)
            r2 = 0
            if (r0 != 0) goto L16
            float r0 = r6.maxWidth
            int r0 = r7.mo58roundToPx0680j_4(r0)
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
            int r3 = r7.mo58roundToPx0680j_4(r3)
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
            int r4 = r7.mo58roundToPx0680j_4(r4)
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
            int r6 = r7.mo58roundToPx0680j_4(r6)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.SizeNode.m93getTargetConstraintsOenEA2s(androidx.compose.ui.layout.MeasureScope):long");
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m93getTargetConstraintsOenEA2s = m93getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m431getHasFixedHeightimpl(m93getTargetConstraintsOenEA2s)) {
            return Constraints.m433getMaxHeightimpl(m93getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m440constrainWidthK40F9xA(i, m93getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m439constrainHeightK40F9xA(measurable.maxIntrinsicHeight(i), m93getTargetConstraintsOenEA2s);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m93getTargetConstraintsOenEA2s = m93getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m432getHasFixedWidthimpl(m93getTargetConstraintsOenEA2s)) {
            return Constraints.m434getMaxWidthimpl(m93getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m439constrainHeightK40F9xA(i, m93getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m440constrainWidthK40F9xA(measurable.maxIntrinsicWidth(i), m93getTargetConstraintsOenEA2s);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m436getMinWidthimpl;
        int m434getMaxWidthimpl;
        int m435getMinHeightimpl;
        int m433getMaxHeightimpl;
        long Constraints;
        long m93getTargetConstraintsOenEA2s = m93getTargetConstraintsOenEA2s(measureScope);
        if (this.enforceIncoming) {
            int m436getMinWidthimpl2 = Constraints.m436getMinWidthimpl(j);
            int m434getMaxWidthimpl2 = Constraints.m434getMaxWidthimpl(j);
            int m435getMinHeightimpl2 = Constraints.m435getMinHeightimpl(j);
            int m433getMaxHeightimpl2 = Constraints.m433getMaxHeightimpl(j);
            int m436getMinWidthimpl3 = Constraints.m436getMinWidthimpl(m93getTargetConstraintsOenEA2s);
            if (m436getMinWidthimpl3 < m436getMinWidthimpl2) {
                m436getMinWidthimpl3 = m436getMinWidthimpl2;
            }
            if (m436getMinWidthimpl3 > m434getMaxWidthimpl2) {
                m436getMinWidthimpl3 = m434getMaxWidthimpl2;
            }
            int m434getMaxWidthimpl3 = Constraints.m434getMaxWidthimpl(m93getTargetConstraintsOenEA2s);
            if (m434getMaxWidthimpl3 >= m436getMinWidthimpl2) {
                m436getMinWidthimpl2 = m434getMaxWidthimpl3;
            }
            if (m436getMinWidthimpl2 <= m434getMaxWidthimpl2) {
                m434getMaxWidthimpl2 = m436getMinWidthimpl2;
            }
            int m435getMinHeightimpl3 = Constraints.m435getMinHeightimpl(m93getTargetConstraintsOenEA2s);
            if (m435getMinHeightimpl3 < m435getMinHeightimpl2) {
                m435getMinHeightimpl3 = m435getMinHeightimpl2;
            }
            if (m435getMinHeightimpl3 > m433getMaxHeightimpl2) {
                m435getMinHeightimpl3 = m433getMaxHeightimpl2;
            }
            int m433getMaxHeightimpl3 = Constraints.m433getMaxHeightimpl(m93getTargetConstraintsOenEA2s);
            if (m433getMaxHeightimpl3 >= m435getMinHeightimpl2) {
                m435getMinHeightimpl2 = m433getMaxHeightimpl3;
            }
            if (m435getMinHeightimpl2 <= m433getMaxHeightimpl2) {
                m433getMaxHeightimpl2 = m435getMinHeightimpl2;
            }
            Constraints = ConstraintsKt.Constraints(m436getMinWidthimpl3, m434getMaxWidthimpl2, m435getMinHeightimpl3, m433getMaxHeightimpl2);
        } else {
            if (Float.isNaN(this.minWidth)) {
                m436getMinWidthimpl = Constraints.m436getMinWidthimpl(j);
                int m434getMaxWidthimpl4 = Constraints.m434getMaxWidthimpl(m93getTargetConstraintsOenEA2s);
                if (m436getMinWidthimpl > m434getMaxWidthimpl4) {
                    m436getMinWidthimpl = m434getMaxWidthimpl4;
                }
            } else {
                m436getMinWidthimpl = Constraints.m436getMinWidthimpl(m93getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxWidth)) {
                m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(j);
                int m436getMinWidthimpl4 = Constraints.m436getMinWidthimpl(m93getTargetConstraintsOenEA2s);
                if (m434getMaxWidthimpl < m436getMinWidthimpl4) {
                    m434getMaxWidthimpl = m436getMinWidthimpl4;
                }
            } else {
                m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(m93getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.minHeight)) {
                m435getMinHeightimpl = Constraints.m435getMinHeightimpl(j);
                int m433getMaxHeightimpl4 = Constraints.m433getMaxHeightimpl(m93getTargetConstraintsOenEA2s);
                if (m435getMinHeightimpl > m433getMaxHeightimpl4) {
                    m435getMinHeightimpl = m433getMaxHeightimpl4;
                }
            } else {
                m435getMinHeightimpl = Constraints.m435getMinHeightimpl(m93getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxHeight)) {
                m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(j);
                int m435getMinHeightimpl4 = Constraints.m435getMinHeightimpl(m93getTargetConstraintsOenEA2s);
                if (m433getMaxHeightimpl < m435getMinHeightimpl4) {
                    m433getMaxHeightimpl = m435getMinHeightimpl4;
                }
            } else {
                m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(m93getTargetConstraintsOenEA2s);
            }
            Constraints = ConstraintsKt.Constraints(m436getMinWidthimpl, m434getMaxWidthimpl, m435getMinHeightimpl, m433getMaxHeightimpl);
        }
        Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(Constraints);
        return measureScope.layout(mo292measureBRTryo0.width, mo292measureBRTryo0.height, EmptyMap.INSTANCE, new BadgeKt$$ExternalSyntheticLambda2(mo292measureBRTryo0, 2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m93getTargetConstraintsOenEA2s = m93getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m431getHasFixedHeightimpl(m93getTargetConstraintsOenEA2s)) {
            return Constraints.m433getMaxHeightimpl(m93getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m440constrainWidthK40F9xA(i, m93getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m439constrainHeightK40F9xA(measurable.minIntrinsicHeight(i), m93getTargetConstraintsOenEA2s);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m93getTargetConstraintsOenEA2s = m93getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m432getHasFixedWidthimpl(m93getTargetConstraintsOenEA2s)) {
            return Constraints.m434getMaxWidthimpl(m93getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m439constrainHeightK40F9xA(i, m93getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m440constrainWidthK40F9xA(measurable.minIntrinsicWidth(i), m93getTargetConstraintsOenEA2s);
    }
}

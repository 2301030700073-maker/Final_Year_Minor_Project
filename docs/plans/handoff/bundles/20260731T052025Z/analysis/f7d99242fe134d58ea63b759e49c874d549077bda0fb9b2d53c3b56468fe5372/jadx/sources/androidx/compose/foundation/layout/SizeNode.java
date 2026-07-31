package androidx.compose.foundation.layout;

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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final long m241getTargetConstraintsOenEA2s(androidx.compose.ui.layout.MeasureScope r7) {
        /*
            r6 = this;
            float r0 = r6.maxWidth
            boolean r0 = java.lang.Float.isNaN(r0)
            r1 = 2147483647(0x7fffffff, float:NaN)
            r2 = 0
            if (r0 != 0) goto L16
            float r0 = r6.maxWidth
            int r0 = r7.mo171roundToPx0680j_4(r0)
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
            int r3 = r7.mo171roundToPx0680j_4(r3)
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
            int r4 = r7.mo171roundToPx0680j_4(r4)
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
            int r6 = r7.mo171roundToPx0680j_4(r6)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.SizeNode.m241getTargetConstraintsOenEA2s(androidx.compose.ui.layout.MeasureScope):long");
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m241getTargetConstraintsOenEA2s = m241getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m731getHasFixedHeightimpl(m241getTargetConstraintsOenEA2s)) {
            return Constraints.m733getMaxHeightimpl(m241getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m741constrainWidthK40F9xA(i, m241getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m740constrainHeightK40F9xA(measurable.maxIntrinsicHeight(i), m241getTargetConstraintsOenEA2s);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m241getTargetConstraintsOenEA2s = m241getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m732getHasFixedWidthimpl(m241getTargetConstraintsOenEA2s)) {
            return Constraints.m734getMaxWidthimpl(m241getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m740constrainHeightK40F9xA(i, m241getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m741constrainWidthK40F9xA(measurable.maxIntrinsicWidth(i), m241getTargetConstraintsOenEA2s);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m736getMinWidthimpl;
        int m734getMaxWidthimpl;
        int m735getMinHeightimpl;
        int m733getMaxHeightimpl;
        long Constraints;
        long m241getTargetConstraintsOenEA2s = m241getTargetConstraintsOenEA2s(measureScope);
        if (this.enforceIncoming) {
            Constraints = ConstraintsKt.m739constrainN9IONVI(j, m241getTargetConstraintsOenEA2s);
        } else {
            if (Float.isNaN(this.minWidth)) {
                m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
                int m734getMaxWidthimpl2 = Constraints.m734getMaxWidthimpl(m241getTargetConstraintsOenEA2s);
                if (m736getMinWidthimpl > m734getMaxWidthimpl2) {
                    m736getMinWidthimpl = m734getMaxWidthimpl2;
                }
            } else {
                m736getMinWidthimpl = Constraints.m736getMinWidthimpl(m241getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxWidth)) {
                m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
                int m736getMinWidthimpl2 = Constraints.m736getMinWidthimpl(m241getTargetConstraintsOenEA2s);
                if (m734getMaxWidthimpl < m736getMinWidthimpl2) {
                    m734getMaxWidthimpl = m736getMinWidthimpl2;
                }
            } else {
                m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(m241getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.minHeight)) {
                m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
                int m733getMaxHeightimpl2 = Constraints.m733getMaxHeightimpl(m241getTargetConstraintsOenEA2s);
                if (m735getMinHeightimpl > m733getMaxHeightimpl2) {
                    m735getMinHeightimpl = m733getMaxHeightimpl2;
                }
            } else {
                m735getMinHeightimpl = Constraints.m735getMinHeightimpl(m241getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxHeight)) {
                m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
                int m735getMinHeightimpl2 = Constraints.m735getMinHeightimpl(m241getTargetConstraintsOenEA2s);
                if (m733getMaxHeightimpl < m735getMinHeightimpl2) {
                    m733getMaxHeightimpl = m735getMinHeightimpl2;
                }
            } else {
                m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(m241getTargetConstraintsOenEA2s);
            }
            Constraints = ConstraintsKt.Constraints(m736getMinWidthimpl, m734getMaxWidthimpl, m735getMinHeightimpl, m733getMaxHeightimpl);
        }
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(Constraints);
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m241getTargetConstraintsOenEA2s = m241getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m731getHasFixedHeightimpl(m241getTargetConstraintsOenEA2s)) {
            return Constraints.m733getMaxHeightimpl(m241getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m741constrainWidthK40F9xA(i, m241getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m740constrainHeightK40F9xA(measurable.minIntrinsicHeight(i), m241getTargetConstraintsOenEA2s);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long m241getTargetConstraintsOenEA2s = m241getTargetConstraintsOenEA2s(lookaheadCapablePlaceable);
        if (Constraints.m732getHasFixedWidthimpl(m241getTargetConstraintsOenEA2s)) {
            return Constraints.m734getMaxWidthimpl(m241getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m740constrainHeightK40F9xA(i, m241getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m741constrainWidthK40F9xA(measurable.minIntrinsicWidth(i), m241getTargetConstraintsOenEA2s);
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* compiled from: Size.kt */
/* loaded from: classes.dex */
final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    private boolean enforceIncoming;
    private float maxHeight;
    private float maxWidth;
    private float minHeight;
    private float minWidth;

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, z);
    }

    /* renamed from: setMinWidth-0680j_4, reason: not valid java name */
    public final void m294setMinWidth0680j_4(float f) {
        this.minWidth = f;
    }

    /* renamed from: setMinHeight-0680j_4, reason: not valid java name */
    public final void m293setMinHeight0680j_4(float f) {
        this.minHeight = f;
    }

    /* renamed from: setMaxWidth-0680j_4, reason: not valid java name */
    public final void m292setMaxWidth0680j_4(float f) {
        this.maxWidth = f;
    }

    /* renamed from: setMaxHeight-0680j_4, reason: not valid java name */
    public final void m291setMaxHeight0680j_4(float f) {
        this.maxHeight = f;
    }

    public final void setEnforceIncoming(boolean z) {
        this.enforceIncoming = z;
    }

    private SizeNode(float f, float f2, float f3, float f4, boolean z) {
        this.minWidth = f;
        this.minHeight = f2;
        this.maxWidth = f3;
        this.maxHeight = f4;
        this.enforceIncoming = z;
    }

    /* renamed from: getTargetConstraints-OenEA2s, reason: not valid java name */
    private final long m290getTargetConstraintsOenEA2s(Density density) {
        int i;
        int coerceAtLeast;
        float f = this.maxWidth;
        Dp.Companion companion = Dp.Companion;
        int i2 = 0;
        int coerceAtLeast2 = !Dp.m2426equalsimpl0(f, companion.m2433getUnspecifiedD9Ej5fM()) ? RangesKt.coerceAtLeast(density.mo207roundToPx0680j_4(this.maxWidth), 0) : Integer.MAX_VALUE;
        int coerceAtLeast3 = !Dp.m2426equalsimpl0(this.maxHeight, companion.m2433getUnspecifiedD9Ej5fM()) ? RangesKt.coerceAtLeast(density.mo207roundToPx0680j_4(this.maxHeight), 0) : Integer.MAX_VALUE;
        if (Dp.m2426equalsimpl0(this.minWidth, companion.m2433getUnspecifiedD9Ej5fM()) || (i = RangesKt.coerceAtLeast(RangesKt.coerceAtMost(density.mo207roundToPx0680j_4(this.minWidth), coerceAtLeast2), 0)) == Integer.MAX_VALUE) {
            i = 0;
        }
        if (!Dp.m2426equalsimpl0(this.minHeight, companion.m2433getUnspecifiedD9Ej5fM()) && (coerceAtLeast = RangesKt.coerceAtLeast(RangesKt.coerceAtMost(density.mo207roundToPx0680j_4(this.minHeight), coerceAtLeast3), 0)) != Integer.MAX_VALUE) {
            i2 = coerceAtLeast;
        }
        return ConstraintsKt.Constraints(i, coerceAtLeast2, i2, coerceAtLeast3);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo39measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int coerceAtMost;
        int coerceAtLeast;
        int coerceAtMost2;
        int coerceAtLeast2;
        long Constraints;
        long m290getTargetConstraintsOenEA2s = m290getTargetConstraintsOenEA2s(measureScope);
        if (this.enforceIncoming) {
            Constraints = ConstraintsKt.m2409constrainN9IONVI(j, m290getTargetConstraintsOenEA2s);
        } else {
            float f = this.minWidth;
            Dp.Companion companion = Dp.Companion;
            if (!Dp.m2426equalsimpl0(f, companion.m2433getUnspecifiedD9Ej5fM())) {
                coerceAtMost = Constraints.m2399getMinWidthimpl(m290getTargetConstraintsOenEA2s);
            } else {
                coerceAtMost = RangesKt.coerceAtMost(Constraints.m2399getMinWidthimpl(j), Constraints.m2397getMaxWidthimpl(m290getTargetConstraintsOenEA2s));
            }
            if (!Dp.m2426equalsimpl0(this.maxWidth, companion.m2433getUnspecifiedD9Ej5fM())) {
                coerceAtLeast = Constraints.m2397getMaxWidthimpl(m290getTargetConstraintsOenEA2s);
            } else {
                coerceAtLeast = RangesKt.coerceAtLeast(Constraints.m2397getMaxWidthimpl(j), Constraints.m2399getMinWidthimpl(m290getTargetConstraintsOenEA2s));
            }
            if (!Dp.m2426equalsimpl0(this.minHeight, companion.m2433getUnspecifiedD9Ej5fM())) {
                coerceAtMost2 = Constraints.m2398getMinHeightimpl(m290getTargetConstraintsOenEA2s);
            } else {
                coerceAtMost2 = RangesKt.coerceAtMost(Constraints.m2398getMinHeightimpl(j), Constraints.m2396getMaxHeightimpl(m290getTargetConstraintsOenEA2s));
            }
            if (!Dp.m2426equalsimpl0(this.maxHeight, companion.m2433getUnspecifiedD9Ej5fM())) {
                coerceAtLeast2 = Constraints.m2396getMaxHeightimpl(m290getTargetConstraintsOenEA2s);
            } else {
                coerceAtLeast2 = RangesKt.coerceAtLeast(Constraints.m2396getMaxHeightimpl(j), Constraints.m2398getMinHeightimpl(m290getTargetConstraintsOenEA2s));
            }
            Constraints = ConstraintsKt.Constraints(coerceAtMost, coerceAtLeast, coerceAtMost2, coerceAtLeast2);
        }
        final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(Constraints);
        return MeasureScope.CC.layout$default(measureScope, mo1751measureBRTryo0.getWidth(), mo1751measureBRTryo0.getHeight(), null, new Function1() { // from class: androidx.compose.foundation.layout.SizeNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Placeable.PlacementScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Placeable.PlacementScope placementScope) {
                Placeable.PlacementScope.placeRelative$default(placementScope, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long m290getTargetConstraintsOenEA2s = m290getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m2395getHasFixedWidthimpl(m290getTargetConstraintsOenEA2s)) {
            return Constraints.m2397getMaxWidthimpl(m290getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m2411constrainWidthK40F9xA(m290getTargetConstraintsOenEA2s, intrinsicMeasurable.minIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long m290getTargetConstraintsOenEA2s = m290getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m2394getHasFixedHeightimpl(m290getTargetConstraintsOenEA2s)) {
            return Constraints.m2396getMaxHeightimpl(m290getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m2410constrainHeightK40F9xA(m290getTargetConstraintsOenEA2s, intrinsicMeasurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long m290getTargetConstraintsOenEA2s = m290getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m2395getHasFixedWidthimpl(m290getTargetConstraintsOenEA2s)) {
            return Constraints.m2397getMaxWidthimpl(m290getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m2411constrainWidthK40F9xA(m290getTargetConstraintsOenEA2s, intrinsicMeasurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long m290getTargetConstraintsOenEA2s = m290getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m2394getHasFixedHeightimpl(m290getTargetConstraintsOenEA2s)) {
            return Constraints.m2396getMaxHeightimpl(m290getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m2410constrainHeightK40F9xA(m290getTargetConstraintsOenEA2s, intrinsicMeasurable.maxIntrinsicHeight(i));
    }
}

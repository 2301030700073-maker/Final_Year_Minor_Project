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
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* compiled from: Size.kt */
/* loaded from: classes.dex */
final class UnspecifiedConstraintsNode extends Modifier.Node implements LayoutModifierNode {
    private float minHeight;
    private float minWidth;

    public /* synthetic */ UnspecifiedConstraintsNode(float f, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2);
    }

    /* renamed from: setMinWidth-0680j_4, reason: not valid java name */
    public final void m296setMinWidth0680j_4(float f) {
        this.minWidth = f;
    }

    /* renamed from: setMinHeight-0680j_4, reason: not valid java name */
    public final void m295setMinHeight0680j_4(float f) {
        this.minHeight = f;
    }

    private UnspecifiedConstraintsNode(float f, float f2) {
        this.minWidth = f;
        this.minHeight = f2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo39measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m2399getMinWidthimpl;
        int m2398getMinHeightimpl;
        float f = this.minWidth;
        Dp.Companion companion = Dp.Companion;
        if (!Dp.m2426equalsimpl0(f, companion.m2433getUnspecifiedD9Ej5fM()) && Constraints.m2399getMinWidthimpl(j) == 0) {
            m2399getMinWidthimpl = RangesKt.coerceAtLeast(RangesKt.coerceAtMost(measureScope.mo207roundToPx0680j_4(this.minWidth), Constraints.m2397getMaxWidthimpl(j)), 0);
        } else {
            m2399getMinWidthimpl = Constraints.m2399getMinWidthimpl(j);
        }
        int m2397getMaxWidthimpl = Constraints.m2397getMaxWidthimpl(j);
        if (!Dp.m2426equalsimpl0(this.minHeight, companion.m2433getUnspecifiedD9Ej5fM()) && Constraints.m2398getMinHeightimpl(j) == 0) {
            m2398getMinHeightimpl = RangesKt.coerceAtLeast(RangesKt.coerceAtMost(measureScope.mo207roundToPx0680j_4(this.minHeight), Constraints.m2396getMaxHeightimpl(j)), 0);
        } else {
            m2398getMinHeightimpl = Constraints.m2398getMinHeightimpl(j);
        }
        final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(ConstraintsKt.Constraints(m2399getMinWidthimpl, m2397getMaxWidthimpl, m2398getMinHeightimpl, Constraints.m2396getMaxHeightimpl(j)));
        return MeasureScope.CC.layout$default(measureScope, mo1751measureBRTryo0.getWidth(), mo1751measureBRTryo0.getHeight(), null, new Function1() { // from class: androidx.compose.foundation.layout.UnspecifiedConstraintsNode$measure$1
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
        return RangesKt.coerceAtLeast(intrinsicMeasurable.minIntrinsicWidth(i), !Dp.m2426equalsimpl0(this.minWidth, Dp.Companion.m2433getUnspecifiedD9Ej5fM()) ? intrinsicMeasureScope.mo207roundToPx0680j_4(this.minWidth) : 0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return RangesKt.coerceAtLeast(intrinsicMeasurable.maxIntrinsicWidth(i), !Dp.m2426equalsimpl0(this.minWidth, Dp.Companion.m2433getUnspecifiedD9Ej5fM()) ? intrinsicMeasureScope.mo207roundToPx0680j_4(this.minWidth) : 0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return RangesKt.coerceAtLeast(intrinsicMeasurable.minIntrinsicHeight(i), !Dp.m2426equalsimpl0(this.minHeight, Dp.Companion.m2433getUnspecifiedD9Ej5fM()) ? intrinsicMeasureScope.mo207roundToPx0680j_4(this.minHeight) : 0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return RangesKt.coerceAtLeast(intrinsicMeasurable.maxIntrinsicHeight(i), !Dp.m2426equalsimpl0(this.minHeight, Dp.Companion.m2433getUnspecifiedD9Ej5fM()) ? intrinsicMeasureScope.mo207roundToPx0680j_4(this.minHeight) : 0);
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.NodeMeasuringIntrinsics;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Padding.kt */
/* loaded from: classes.dex */
final class PaddingValuesModifier extends Modifier.Node implements LayoutModifierNode {
    private PaddingValues paddingValues;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int maxHeight$ui_release;
        maxHeight$ui_release = NodeMeasuringIntrinsics.INSTANCE.maxHeight$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$maxIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s, reason: not valid java name */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return maxHeight$ui_release;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int maxWidth$ui_release;
        maxWidth$ui_release = NodeMeasuringIntrinsics.INSTANCE.maxWidth$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$maxIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return maxWidth$ui_release;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int minHeight$ui_release;
        minHeight$ui_release = NodeMeasuringIntrinsics.INSTANCE.minHeight$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$minIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return minHeight$ui_release;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int minWidth$ui_release;
        minWidth$ui_release = NodeMeasuringIntrinsics.INSTANCE.minWidth$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$minIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return minWidth$ui_release;
    }

    public final PaddingValues getPaddingValues() {
        return this.paddingValues;
    }

    public final void setPaddingValues(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }

    public PaddingValuesModifier(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo39measure3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        float f = 0;
        if (Dp.m2423compareTo0680j_4(this.paddingValues.mo257calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection()), Dp.m2424constructorimpl(f)) < 0 || Dp.m2423compareTo0680j_4(this.paddingValues.mo259calculateTopPaddingD9Ej5fM(), Dp.m2424constructorimpl(f)) < 0 || Dp.m2423compareTo0680j_4(this.paddingValues.mo258calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection()), Dp.m2424constructorimpl(f)) < 0 || Dp.m2423compareTo0680j_4(this.paddingValues.mo256calculateBottomPaddingD9Ej5fM(), Dp.m2424constructorimpl(f)) < 0) {
            throw new IllegalArgumentException("Padding must be non-negative");
        }
        int mo207roundToPx0680j_4 = measureScope.mo207roundToPx0680j_4(this.paddingValues.mo257calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection())) + measureScope.mo207roundToPx0680j_4(this.paddingValues.mo258calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection()));
        int mo207roundToPx0680j_42 = measureScope.mo207roundToPx0680j_4(this.paddingValues.mo259calculateTopPaddingD9Ej5fM()) + measureScope.mo207roundToPx0680j_4(this.paddingValues.mo256calculateBottomPaddingD9Ej5fM());
        final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(ConstraintsKt.m2412offsetNN6EwU(j, -mo207roundToPx0680j_4, -mo207roundToPx0680j_42));
        return MeasureScope.CC.layout$default(measureScope, ConstraintsKt.m2411constrainWidthK40F9xA(j, mo1751measureBRTryo0.getWidth() + mo207roundToPx0680j_4), ConstraintsKt.m2410constrainHeightK40F9xA(j, mo1751measureBRTryo0.getHeight() + mo207roundToPx0680j_42), null, new Function1() { // from class: androidx.compose.foundation.layout.PaddingValuesModifier$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Placeable.PlacementScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Placeable.PlacementScope placementScope) {
                Placeable.PlacementScope.place$default(placementScope, Placeable.this, measureScope.mo207roundToPx0680j_4(this.getPaddingValues().mo257calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection())), measureScope.mo207roundToPx0680j_4(this.getPaddingValues().mo259calculateTopPaddingD9Ej5fM()), 0.0f, 4, null);
            }
        }, 4, null);
    }
}

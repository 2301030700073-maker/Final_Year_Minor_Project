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
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Padding.kt */
/* loaded from: classes.dex */
final class PaddingNode extends Modifier.Node implements LayoutModifierNode {
    private float bottom;
    private float end;
    private boolean rtlAware;
    private float start;
    private float top;

    public /* synthetic */ PaddingNode(float f, float f2, float f3, float f4, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, z);
    }

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

    /* renamed from: getStart-D9Ej5fM, reason: not valid java name */
    public final float m270getStartD9Ej5fM() {
        return this.start;
    }

    /* renamed from: setStart-0680j_4, reason: not valid java name */
    public final void m274setStart0680j_4(float f) {
        this.start = f;
    }

    /* renamed from: getTop-D9Ej5fM, reason: not valid java name */
    public final float m271getTopD9Ej5fM() {
        return this.top;
    }

    /* renamed from: setTop-0680j_4, reason: not valid java name */
    public final void m275setTop0680j_4(float f) {
        this.top = f;
    }

    /* renamed from: setEnd-0680j_4, reason: not valid java name */
    public final void m273setEnd0680j_4(float f) {
        this.end = f;
    }

    /* renamed from: setBottom-0680j_4, reason: not valid java name */
    public final void m272setBottom0680j_4(float f) {
        this.bottom = f;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    public final void setRtlAware(boolean z) {
        this.rtlAware = z;
    }

    private PaddingNode(float f, float f2, float f3, float f4, boolean z) {
        this.start = f;
        this.top = f2;
        this.end = f3;
        this.bottom = f4;
        this.rtlAware = z;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo39measure3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        int mo207roundToPx0680j_4 = measureScope.mo207roundToPx0680j_4(this.start) + measureScope.mo207roundToPx0680j_4(this.end);
        int mo207roundToPx0680j_42 = measureScope.mo207roundToPx0680j_4(this.top) + measureScope.mo207roundToPx0680j_4(this.bottom);
        final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(ConstraintsKt.m2412offsetNN6EwU(j, -mo207roundToPx0680j_4, -mo207roundToPx0680j_42));
        return MeasureScope.CC.layout$default(measureScope, ConstraintsKt.m2411constrainWidthK40F9xA(j, mo1751measureBRTryo0.getWidth() + mo207roundToPx0680j_4), ConstraintsKt.m2410constrainHeightK40F9xA(j, mo1751measureBRTryo0.getHeight() + mo207roundToPx0680j_42), null, new Function1() { // from class: androidx.compose.foundation.layout.PaddingNode$measure$1
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
                if (PaddingNode.this.getRtlAware()) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, mo1751measureBRTryo0, measureScope.mo207roundToPx0680j_4(PaddingNode.this.m270getStartD9Ej5fM()), measureScope.mo207roundToPx0680j_4(PaddingNode.this.m271getTopD9Ej5fM()), 0.0f, 4, null);
                } else {
                    Placeable.PlacementScope.place$default(placementScope, mo1751measureBRTryo0, measureScope.mo207roundToPx0680j_4(PaddingNode.this.m270getStartD9Ej5fM()), measureScope.mo207roundToPx0680j_4(PaddingNode.this.m271getTopD9Ej5fM()), 0.0f, 4, null);
                }
            }
        }, 4, null);
    }
}

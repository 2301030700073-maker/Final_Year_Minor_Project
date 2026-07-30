package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import ch.qos.logback.core.CoreConstants;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: PainterModifier.kt */
/* loaded from: classes.dex */
final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    private Alignment alignment;
    private float alpha;
    private ColorFilter colorFilter;
    private ContentScale contentScale;
    private Painter painter;
    private boolean sizeToIntrinsics;

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public /* synthetic */ void onMeasureResultChanged() {
        DrawModifierNode.CC.$default$onMeasureResultChanged(this);
    }

    public final Painter getPainter() {
        return this.painter;
    }

    public final void setPainter(Painter painter) {
        this.painter = painter;
    }

    public final boolean getSizeToIntrinsics() {
        return this.sizeToIntrinsics;
    }

    public final void setSizeToIntrinsics(boolean z) {
        this.sizeToIntrinsics = z;
    }

    public final void setAlignment(Alignment alignment) {
        this.alignment = alignment;
    }

    public final void setContentScale(ContentScale contentScale) {
        this.contentScale = contentScale;
    }

    public final void setAlpha(float f) {
        this.alpha = f;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
    }

    public PainterNode(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter) {
        this.painter = painter;
        this.sizeToIntrinsics = z;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.colorFilter = colorFilter;
    }

    private final boolean getUseIntrinsicSize() {
        return this.sizeToIntrinsics && this.painter.mo1556getIntrinsicSizeNHjbRc() != 9205357640488583168L;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo39measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(m1089modifyConstraintsZezNO4M(j));
        return MeasureScope.CC.layout$default(measureScope, mo1751measureBRTryo0.getWidth(), mo1751measureBRTryo0.getHeight(), null, new Function1() { // from class: androidx.compose.ui.draw.PainterNode$measure$1
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
        if (getUseIntrinsicSize()) {
            long m1089modifyConstraintsZezNO4M = m1089modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
            return Math.max(Constraints.m2399getMinWidthimpl(m1089modifyConstraintsZezNO4M), intrinsicMeasurable.minIntrinsicWidth(i));
        }
        return intrinsicMeasurable.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (getUseIntrinsicSize()) {
            long m1089modifyConstraintsZezNO4M = m1089modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
            return Math.max(Constraints.m2399getMinWidthimpl(m1089modifyConstraintsZezNO4M), intrinsicMeasurable.maxIntrinsicWidth(i));
        }
        return intrinsicMeasurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (getUseIntrinsicSize()) {
            long m1089modifyConstraintsZezNO4M = m1089modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
            return Math.max(Constraints.m2398getMinHeightimpl(m1089modifyConstraintsZezNO4M), intrinsicMeasurable.minIntrinsicHeight(i));
        }
        return intrinsicMeasurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (getUseIntrinsicSize()) {
            long m1089modifyConstraintsZezNO4M = m1089modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
            return Math.max(Constraints.m2398getMinHeightimpl(m1089modifyConstraintsZezNO4M), intrinsicMeasurable.maxIntrinsicHeight(i));
        }
        return intrinsicMeasurable.maxIntrinsicHeight(i);
    }

    /* renamed from: calculateScaledSize-E7KxVPU, reason: not valid java name */
    private final long m1086calculateScaledSizeE7KxVPU(long j) {
        float m1204getWidthimpl;
        float m1202getHeightimpl;
        if (!getUseIntrinsicSize()) {
            return j;
        }
        if (!m1088hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.mo1556getIntrinsicSizeNHjbRc())) {
            m1204getWidthimpl = Size.m1204getWidthimpl(j);
        } else {
            m1204getWidthimpl = Size.m1204getWidthimpl(this.painter.mo1556getIntrinsicSizeNHjbRc());
        }
        if (!m1087hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.mo1556getIntrinsicSizeNHjbRc())) {
            m1202getHeightimpl = Size.m1202getHeightimpl(j);
        } else {
            m1202getHeightimpl = Size.m1202getHeightimpl(this.painter.mo1556getIntrinsicSizeNHjbRc());
        }
        long Size = SizeKt.Size(m1204getWidthimpl, m1202getHeightimpl);
        if (Size.m1204getWidthimpl(j) != 0.0f && Size.m1202getHeightimpl(j) != 0.0f) {
            return ScaleFactorKt.m1790timesUQTWf7w(Size, this.contentScale.mo1742computeScaleFactorH7hwNQA(Size, j));
        }
        return Size.Companion.m1210getZeroNHjbRc();
    }

    /* renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    private final long m1089modifyConstraintsZezNO4M(long j) {
        boolean z = false;
        boolean z2 = Constraints.m2393getHasBoundedWidthimpl(j) && Constraints.m2392getHasBoundedHeightimpl(j);
        if (Constraints.m2395getHasFixedWidthimpl(j) && Constraints.m2394getHasFixedHeightimpl(j)) {
            z = true;
        }
        if ((!getUseIntrinsicSize() && z2) || z) {
            return Constraints.m2389copyZbe2FdA$default(j, Constraints.m2397getMaxWidthimpl(j), 0, Constraints.m2396getMaxHeightimpl(j), 0, 10, null);
        }
        long mo1556getIntrinsicSizeNHjbRc = this.painter.mo1556getIntrinsicSizeNHjbRc();
        long m1086calculateScaledSizeE7KxVPU = m1086calculateScaledSizeE7KxVPU(SizeKt.Size(ConstraintsKt.m2411constrainWidthK40F9xA(j, m1088hasSpecifiedAndFiniteWidthuvyYCjk(mo1556getIntrinsicSizeNHjbRc) ? Math.round(Size.m1204getWidthimpl(mo1556getIntrinsicSizeNHjbRc)) : Constraints.m2399getMinWidthimpl(j)), ConstraintsKt.m2410constrainHeightK40F9xA(j, m1087hasSpecifiedAndFiniteHeightuvyYCjk(mo1556getIntrinsicSizeNHjbRc) ? Math.round(Size.m1202getHeightimpl(mo1556getIntrinsicSizeNHjbRc)) : Constraints.m2398getMinHeightimpl(j))));
        return Constraints.m2389copyZbe2FdA$default(j, ConstraintsKt.m2411constrainWidthK40F9xA(j, Math.round(Size.m1204getWidthimpl(m1086calculateScaledSizeE7KxVPU))), 0, ConstraintsKt.m2410constrainHeightK40F9xA(j, Math.round(Size.m1202getHeightimpl(m1086calculateScaledSizeE7KxVPU))), 0, 10, null);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        long mo1556getIntrinsicSizeNHjbRc = this.painter.mo1556getIntrinsicSizeNHjbRc();
        long Size = SizeKt.Size(m1088hasSpecifiedAndFiniteWidthuvyYCjk(mo1556getIntrinsicSizeNHjbRc) ? Size.m1204getWidthimpl(mo1556getIntrinsicSizeNHjbRc) : Size.m1204getWidthimpl(contentDrawScope.mo1491getSizeNHjbRc()), m1087hasSpecifiedAndFiniteHeightuvyYCjk(mo1556getIntrinsicSizeNHjbRc) ? Size.m1202getHeightimpl(mo1556getIntrinsicSizeNHjbRc) : Size.m1202getHeightimpl(contentDrawScope.mo1491getSizeNHjbRc()));
        long m1210getZeroNHjbRc = (Size.m1204getWidthimpl(contentDrawScope.mo1491getSizeNHjbRc()) == 0.0f || Size.m1202getHeightimpl(contentDrawScope.mo1491getSizeNHjbRc()) == 0.0f) ? Size.Companion.m1210getZeroNHjbRc() : ScaleFactorKt.m1790timesUQTWf7w(Size, this.contentScale.mo1742computeScaleFactorH7hwNQA(Size, contentDrawScope.mo1491getSizeNHjbRc()));
        long mo1074alignKFBX0sM = this.alignment.mo1074alignKFBX0sM(IntSizeKt.IntSize(Math.round(Size.m1204getWidthimpl(m1210getZeroNHjbRc)), Math.round(Size.m1202getHeightimpl(m1210getZeroNHjbRc))), IntSizeKt.IntSize(Math.round(Size.m1204getWidthimpl(contentDrawScope.mo1491getSizeNHjbRc())), Math.round(Size.m1202getHeightimpl(contentDrawScope.mo1491getSizeNHjbRc()))), contentDrawScope.getLayoutDirection());
        float m2465getXimpl = IntOffset.m2465getXimpl(mo1074alignKFBX0sM);
        float m2466getYimpl = IntOffset.m2466getYimpl(mo1074alignKFBX0sM);
        contentDrawScope.getDrawContext().getTransform().translate(m2465getXimpl, m2466getYimpl);
        try {
            this.painter.m1557drawx_KDEd0(contentDrawScope, m1210getZeroNHjbRc, this.alpha, this.colorFilter);
            contentDrawScope.getDrawContext().getTransform().translate(-m2465getXimpl, -m2466getYimpl);
            contentDrawScope.drawContent();
        } catch (Throwable th) {
            contentDrawScope.getDrawContext().getTransform().translate(-m2465getXimpl, -m2466getYimpl);
            throw th;
        }
    }

    /* renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk, reason: not valid java name */
    private final boolean m1088hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        if (!Size.m1201equalsimpl0(j, Size.Companion.m1209getUnspecifiedNHjbRc())) {
            float m1204getWidthimpl = Size.m1204getWidthimpl(j);
            if (!Float.isInfinite(m1204getWidthimpl) && !Float.isNaN(m1204getWidthimpl)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk, reason: not valid java name */
    private final boolean m1087hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        if (!Size.m1201equalsimpl0(j, Size.Companion.m1209getUnspecifiedNHjbRc())) {
            float m1202getHeightimpl = Size.m1202getHeightimpl(j);
            if (!Float.isInfinite(m1202getHeightimpl) && !Float.isNaN(m1202getHeightimpl)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}

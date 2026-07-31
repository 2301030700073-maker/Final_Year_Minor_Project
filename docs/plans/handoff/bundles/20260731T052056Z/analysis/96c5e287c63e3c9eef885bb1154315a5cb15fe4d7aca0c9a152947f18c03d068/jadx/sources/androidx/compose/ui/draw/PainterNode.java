package androidx.compose.ui.draw;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    public Alignment alignment;
    public float alpha;
    public BlendModeColorFilter colorFilter;
    public ContentScale contentScale;
    public Painter painter;
    public boolean sizeToIntrinsics;

    /* renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk, reason: not valid java name */
    public static boolean m355hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        return !Size.m394equalsimpl0(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L))) & Integer.MAX_VALUE) < 2139095040;
    }

    /* renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk, reason: not valid java name */
    public static boolean m356hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        return !Size.m394equalsimpl0(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32))) & Integer.MAX_VALUE) < 2139095040;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        long mo493getIntrinsicSizeNHjbRc = this.painter.mo493getIntrinsicSizeNHjbRc();
        long floatToRawIntBits = (Float.floatToRawIntBits(m356hasSpecifiedAndFiniteWidthuvyYCjk(mo493getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc >> 32)) : Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m796getSizeNHjbRc() >> 32))) << 32) | (Float.floatToRawIntBits(m355hasSpecifiedAndFiniteHeightuvyYCjk(mo493getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc & 4294967295L)) : Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m796getSizeNHjbRc() & 4294967295L))) & 4294967295L);
        SVG svg = canvasDrawScope.drawContext;
        long m539timesUQTWf7w = (Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m796getSizeNHjbRc() >> 32)) == RecyclerView.DECELERATION_RATE || Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() & 4294967295L)) == RecyclerView.DECELERATION_RATE) ? 0L : RulerKt.m539timesUQTWf7w(floatToRawIntBits, this.contentScale.mo511computeScaleFactorH7hwNQA(floatToRawIntBits, svg.m796getSizeNHjbRc()));
        long mo333alignKFBX0sM = this.alignment.mo333alignKFBX0sM((Math.round(Float.intBitsToFloat((int) (m539timesUQTWf7w >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (m539timesUQTWf7w & 4294967295L))) & 4294967295L), (Math.round(Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() & 4294967295L))) & 4294967295L) | (Math.round(Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() >> 32))) << 32), layoutNodeDrawScope.getLayoutDirection());
        float f = (int) (mo333alignKFBX0sM >> 32);
        float f2 = (int) (mo333alignKFBX0sM & 4294967295L);
        ((PopupMenu$1) canvasDrawScope.drawContext.rootElement).translate(f, f2);
        try {
            this.painter.m494drawx_KDEd0(layoutNodeDrawScope, m539timesUQTWf7w, this.alpha, this.colorFilter);
            ((PopupMenu$1) canvasDrawScope.drawContext.rootElement).translate(-f, -f2);
            layoutNodeDrawScope.drawContent();
        } catch (Throwable th) {
            ((PopupMenu$1) canvasDrawScope.drawContext.rootElement).translate(-f, -f2);
            throw th;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final boolean getUseIntrinsicSize() {
        return this.sizeToIntrinsics && this.painter.mo493getIntrinsicSizeNHjbRc() != 9205357640488583168L;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.maxIntrinsicHeight(i);
        }
        long m357modifyConstraintsZezNO4M = m357modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13));
        return Math.max(Constraints.m682getMinHeightimpl(m357modifyConstraintsZezNO4M), measurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.maxIntrinsicWidth(i);
        }
        long m357modifyConstraintsZezNO4M = m357modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7));
        return Math.max(Constraints.m683getMinWidthimpl(m357modifyConstraintsZezNO4M), measurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(m357modifyConstraintsZezNO4M(j));
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new PainterNode$measure$1(mo512measureBRTryo0, 0));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.minIntrinsicHeight(i);
        }
        long m357modifyConstraintsZezNO4M = m357modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13));
        return Math.max(Constraints.m682getMinHeightimpl(m357modifyConstraintsZezNO4M), measurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.minIntrinsicWidth(i);
        }
        long m357modifyConstraintsZezNO4M = m357modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7));
        return Math.max(Constraints.m683getMinWidthimpl(m357modifyConstraintsZezNO4M), measurable.minIntrinsicWidth(i));
    }

    /* renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    public final long m357modifyConstraintsZezNO4M(long j) {
        boolean z = false;
        boolean z2 = Constraints.m677getHasBoundedWidthimpl(j) && Constraints.m676getHasBoundedHeightimpl(j);
        if (Constraints.m679getHasFixedWidthimpl(j) && Constraints.m678getHasFixedHeightimpl(j)) {
            z = true;
        }
        if ((!getUseIntrinsicSize() && z2) || z) {
            return Constraints.m674copyZbe2FdA$default(j, Constraints.m681getMaxWidthimpl(j), 0, Constraints.m680getMaxHeightimpl(j), 0, 10);
        }
        long mo493getIntrinsicSizeNHjbRc = this.painter.mo493getIntrinsicSizeNHjbRc();
        int round = m356hasSpecifiedAndFiniteWidthuvyYCjk(mo493getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc >> 32))) : Constraints.m683getMinWidthimpl(j);
        int round2 = m355hasSpecifiedAndFiniteHeightuvyYCjk(mo493getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc & 4294967295L))) : Constraints.m682getMinHeightimpl(j);
        int m689constrainWidthK40F9xA = ConstraintsKt.m689constrainWidthK40F9xA(j, round);
        long floatToRawIntBits = (Float.floatToRawIntBits(ConstraintsKt.m688constrainHeightK40F9xA(j, round2)) & 4294967295L) | (Float.floatToRawIntBits(m689constrainWidthK40F9xA) << 32);
        if (getUseIntrinsicSize()) {
            long floatToRawIntBits2 = (Float.floatToRawIntBits(!m356hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.mo493getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) : Float.intBitsToFloat((int) (this.painter.mo493getIntrinsicSizeNHjbRc() >> 32))) << 32) | (Float.floatToRawIntBits(!m355hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.mo493getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) : Float.intBitsToFloat((int) (this.painter.mo493getIntrinsicSizeNHjbRc() & 4294967295L))) & 4294967295L);
            floatToRawIntBits = (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) == RecyclerView.DECELERATION_RATE || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) == RecyclerView.DECELERATION_RATE) ? 0L : RulerKt.m539timesUQTWf7w(floatToRawIntBits2, this.contentScale.mo511computeScaleFactorH7hwNQA(floatToRawIntBits2, floatToRawIntBits));
        }
        return Constraints.m674copyZbe2FdA$default(j, ConstraintsKt.m689constrainWidthK40F9xA(j, Math.round(Float.intBitsToFloat((int) (floatToRawIntBits >> 32)))), 0, ConstraintsKt.m688constrainHeightK40F9xA(j, Math.round(Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)))), 0, 10);
    }

    public final String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}

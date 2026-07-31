package androidx.compose.ui.draw;

import androidx.camera.view.PreviewView;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
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
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    public Alignment alignment;
    public float alpha;
    public ColorFilter colorFilter;
    public ContentScale contentScale;
    public Painter painter;
    public boolean sizeToIntrinsics;

    /* renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk, reason: not valid java name */
    public static boolean m407hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        return !Size.m449equalsimpl0(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L))) & Integer.MAX_VALUE) < 2139095040;
    }

    /* renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk, reason: not valid java name */
    public static boolean m408hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        return !Size.m449equalsimpl0(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32))) & Integer.MAX_VALUE) < 2139095040;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        long mo550getIntrinsicSizeNHjbRc = this.painter.mo550getIntrinsicSizeNHjbRc();
        long floatToRawIntBits = (Float.floatToRawIntBits(m408hasSpecifiedAndFiniteWidthuvyYCjk(mo550getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (mo550getIntrinsicSizeNHjbRc >> 32)) : Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() >> 32))) << 32) | (Float.floatToRawIntBits(m407hasSpecifiedAndFiniteHeightuvyYCjk(mo550getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (mo550getIntrinsicSizeNHjbRc & 4294967295L)) : Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() & 4294967295L))) & 4294967295L);
        long m596timesUQTWf7w = (Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() >> 32)) == 0.0f || Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() & 4294967295L)) == 0.0f) ? 0L : RulerKt.m596timesUQTWf7w(floatToRawIntBits, this.contentScale.mo570computeScaleFactorH7hwNQA(floatToRawIntBits, canvasDrawScope.drawContext.m795getSizeNHjbRc()));
        long mo387alignKFBX0sM = this.alignment.mo387alignKFBX0sM((Math.round(Float.intBitsToFloat((int) (m596timesUQTWf7w >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (m596timesUQTWf7w & 4294967295L))) & 4294967295L), (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() & 4294967295L))) & 4294967295L), layoutNodeDrawScope.getLayoutDirection());
        float f = (int) (mo387alignKFBX0sM >> 32);
        float f2 = (int) (mo387alignKFBX0sM & 4294967295L);
        ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).translate(f, f2);
        try {
            this.painter.m551drawx_KDEd0(layoutNodeDrawScope, m596timesUQTWf7w, this.alpha, this.colorFilter);
            ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).translate(-f, -f2);
            layoutNodeDrawScope.drawContent();
        } catch (Throwable th) {
            ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).translate(-f, -f2);
            throw th;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final boolean getUseIntrinsicSize() {
        return this.sizeToIntrinsics && this.painter.mo550getIntrinsicSizeNHjbRc() != 9205357640488583168L;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.maxIntrinsicHeight(i);
        }
        long m409modifyConstraintsZezNO4M = m409modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13));
        return Math.max(Constraints.m735getMinHeightimpl(m409modifyConstraintsZezNO4M), measurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.maxIntrinsicWidth(i);
        }
        long m409modifyConstraintsZezNO4M = m409modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7));
        return Math.max(Constraints.m736getMinWidthimpl(m409modifyConstraintsZezNO4M), measurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(m409modifyConstraintsZezNO4M(j));
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new PainterNode$measure$1(mo571measureBRTryo0, 0));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.minIntrinsicHeight(i);
        }
        long m409modifyConstraintsZezNO4M = m409modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13));
        return Math.max(Constraints.m735getMinHeightimpl(m409modifyConstraintsZezNO4M), measurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.minIntrinsicWidth(i);
        }
        long m409modifyConstraintsZezNO4M = m409modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7));
        return Math.max(Constraints.m736getMinWidthimpl(m409modifyConstraintsZezNO4M), measurable.minIntrinsicWidth(i));
    }

    /* renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    public final long m409modifyConstraintsZezNO4M(long j) {
        boolean z = false;
        boolean z2 = Constraints.m730getHasBoundedWidthimpl(j) && Constraints.m729getHasBoundedHeightimpl(j);
        if (Constraints.m732getHasFixedWidthimpl(j) && Constraints.m731getHasFixedHeightimpl(j)) {
            z = true;
        }
        if ((!getUseIntrinsicSize() && z2) || z) {
            return Constraints.m727copyZbe2FdA$default(j, Constraints.m734getMaxWidthimpl(j), 0, Constraints.m733getMaxHeightimpl(j), 0, 10);
        }
        long mo550getIntrinsicSizeNHjbRc = this.painter.mo550getIntrinsicSizeNHjbRc();
        int round = m408hasSpecifiedAndFiniteWidthuvyYCjk(mo550getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (mo550getIntrinsicSizeNHjbRc >> 32))) : Constraints.m736getMinWidthimpl(j);
        int round2 = m407hasSpecifiedAndFiniteHeightuvyYCjk(mo550getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (mo550getIntrinsicSizeNHjbRc & 4294967295L))) : Constraints.m735getMinHeightimpl(j);
        int m741constrainWidthK40F9xA = ConstraintsKt.m741constrainWidthK40F9xA(round, j);
        long floatToRawIntBits = (Float.floatToRawIntBits(ConstraintsKt.m740constrainHeightK40F9xA(round2, j)) & 4294967295L) | (Float.floatToRawIntBits(m741constrainWidthK40F9xA) << 32);
        if (getUseIntrinsicSize()) {
            long floatToRawIntBits2 = (Float.floatToRawIntBits(!m408hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.mo550getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) : Float.intBitsToFloat((int) (this.painter.mo550getIntrinsicSizeNHjbRc() >> 32))) << 32) | (Float.floatToRawIntBits(!m407hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.mo550getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) : Float.intBitsToFloat((int) (this.painter.mo550getIntrinsicSizeNHjbRc() & 4294967295L))) & 4294967295L);
            floatToRawIntBits = (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) == 0.0f || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) == 0.0f) ? 0L : RulerKt.m596timesUQTWf7w(floatToRawIntBits2, this.contentScale.mo570computeScaleFactorH7hwNQA(floatToRawIntBits2, floatToRawIntBits));
        }
        return Constraints.m727copyZbe2FdA$default(j, ConstraintsKt.m741constrainWidthK40F9xA(Math.round(Float.intBitsToFloat((int) (floatToRawIntBits >> 32))), j), 0, ConstraintsKt.m740constrainHeightK40F9xA(Math.round(Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L))), j), 0, 10);
    }

    public final String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}

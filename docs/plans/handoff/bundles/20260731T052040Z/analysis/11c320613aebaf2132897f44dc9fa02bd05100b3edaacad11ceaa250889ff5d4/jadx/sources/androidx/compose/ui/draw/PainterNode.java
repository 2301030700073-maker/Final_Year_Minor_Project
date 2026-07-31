package androidx.compose.ui.draw;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale$Companion$Fit$1;
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
import com.google.android.exoplayer2.util.Log;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    public Alignment alignment;
    public float alpha;
    public BlendModeColorFilter colorFilter;
    public ContentScale$Companion$Fit$1 contentScale;
    public Painter painter;
    public boolean sizeToIntrinsics;

    /* renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk, reason: not valid java name */
    public static boolean m183hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        return !Size.m206equalsimpl0(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L))) & Log.LOG_LEVEL_OFF) < 2139095040;
    }

    /* renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk, reason: not valid java name */
    public static boolean m184hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        return !Size.m206equalsimpl0(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32))) & Log.LOG_LEVEL_OFF) < 2139095040;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        long mo282getIntrinsicSizeNHjbRc = this.painter.mo282getIntrinsicSizeNHjbRc();
        long floatToRawIntBits = (Float.floatToRawIntBits(m184hasSpecifiedAndFiniteWidthuvyYCjk(mo282getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (mo282getIntrinsicSizeNHjbRc >> 32)) : Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m729getSizeNHjbRc() >> 32))) << 32) | (Float.floatToRawIntBits(m183hasSpecifiedAndFiniteHeightuvyYCjk(mo282getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (mo282getIntrinsicSizeNHjbRc & 4294967295L)) : Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m729getSizeNHjbRc() & 4294967295L))) & 4294967295L);
        long m308timesUQTWf7w = (Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m729getSizeNHjbRc() >> 32)) == 0.0f || Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m729getSizeNHjbRc() & 4294967295L)) == 0.0f) ? 0L : RulerKt.m308timesUQTWf7w(floatToRawIntBits, this.contentScale.m291computeScaleFactorH7hwNQA(floatToRawIntBits, canvasDrawScope.drawContext.m729getSizeNHjbRc()));
        long m178alignKFBX0sM = ((BiasAlignment) this.alignment).m178alignKFBX0sM((Math.round(Float.intBitsToFloat((int) (m308timesUQTWf7w >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (m308timesUQTWf7w & 4294967295L))) & 4294967295L), (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m729getSizeNHjbRc() >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m729getSizeNHjbRc() & 4294967295L))) & 4294967295L), layoutNodeDrawScope.getLayoutDirection());
        float f = (int) (m178alignKFBX0sM >> 32);
        float f2 = (int) (m178alignKFBX0sM & 4294967295L);
        ((PopupMenu$1) canvasDrawScope.drawContext.context).translate(f, f2);
        try {
            this.painter.m283drawx_KDEd0(layoutNodeDrawScope, m308timesUQTWf7w, this.alpha, this.colorFilter);
            ((PopupMenu$1) canvasDrawScope.drawContext.context).translate(-f, -f2);
            layoutNodeDrawScope.drawContent();
        } catch (Throwable th) {
            ((PopupMenu$1) canvasDrawScope.drawContext.context).translate(-f, -f2);
            throw th;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final boolean getUseIntrinsicSize() {
        return this.sizeToIntrinsics && this.painter.mo282getIntrinsicSizeNHjbRc() != 9205357640488583168L;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.maxIntrinsicHeight(i);
        }
        long m185modifyConstraintsZezNO4M = m185modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(i, 0, 13));
        return Math.max(Constraints.m435getMinHeightimpl(m185modifyConstraintsZezNO4M), measurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.maxIntrinsicWidth(i);
        }
        long m185modifyConstraintsZezNO4M = m185modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 7));
        return Math.max(Constraints.m436getMinWidthimpl(m185modifyConstraintsZezNO4M), measurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(m185modifyConstraintsZezNO4M(j));
        return measureScope.layout(mo292measureBRTryo0.width, mo292measureBRTryo0.height, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.ui.draw.PainterNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope.placeRelative$default((Placeable.PlacementScope) obj, Placeable.this, 0, 0);
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.minIntrinsicHeight(i);
        }
        long m185modifyConstraintsZezNO4M = m185modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(i, 0, 13));
        return Math.max(Constraints.m435getMinHeightimpl(m185modifyConstraintsZezNO4M), measurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!getUseIntrinsicSize()) {
            return measurable.minIntrinsicWidth(i);
        }
        long m185modifyConstraintsZezNO4M = m185modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 7));
        return Math.max(Constraints.m436getMinWidthimpl(m185modifyConstraintsZezNO4M), measurable.minIntrinsicWidth(i));
    }

    /* renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    public final long m185modifyConstraintsZezNO4M(long j) {
        boolean z = false;
        boolean z2 = Constraints.m430getHasBoundedWidthimpl(j) && Constraints.m429getHasBoundedHeightimpl(j);
        if (Constraints.m432getHasFixedWidthimpl(j) && Constraints.m431getHasFixedHeightimpl(j)) {
            z = true;
        }
        if ((!getUseIntrinsicSize() && z2) || z) {
            return Constraints.m427copyZbe2FdA$default(Constraints.m434getMaxWidthimpl(j), 0, Constraints.m433getMaxHeightimpl(j), j, 10);
        }
        long mo282getIntrinsicSizeNHjbRc = this.painter.mo282getIntrinsicSizeNHjbRc();
        int round = m184hasSpecifiedAndFiniteWidthuvyYCjk(mo282getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (mo282getIntrinsicSizeNHjbRc >> 32))) : Constraints.m436getMinWidthimpl(j);
        int round2 = m183hasSpecifiedAndFiniteHeightuvyYCjk(mo282getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (mo282getIntrinsicSizeNHjbRc & 4294967295L))) : Constraints.m435getMinHeightimpl(j);
        int m440constrainWidthK40F9xA = ConstraintsKt.m440constrainWidthK40F9xA(round, j);
        long floatToRawIntBits = (Float.floatToRawIntBits(ConstraintsKt.m439constrainHeightK40F9xA(round2, j)) & 4294967295L) | (Float.floatToRawIntBits(m440constrainWidthK40F9xA) << 32);
        if (getUseIntrinsicSize()) {
            long floatToRawIntBits2 = (Float.floatToRawIntBits(!m184hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.mo282getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) : Float.intBitsToFloat((int) (this.painter.mo282getIntrinsicSizeNHjbRc() >> 32))) << 32) | (Float.floatToRawIntBits(!m183hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.mo282getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) : Float.intBitsToFloat((int) (this.painter.mo282getIntrinsicSizeNHjbRc() & 4294967295L))) & 4294967295L);
            floatToRawIntBits = (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) == 0.0f || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) == 0.0f) ? 0L : RulerKt.m308timesUQTWf7w(floatToRawIntBits2, this.contentScale.m291computeScaleFactorH7hwNQA(floatToRawIntBits2, floatToRawIntBits));
        }
        return Constraints.m427copyZbe2FdA$default(ConstraintsKt.m440constrainWidthK40F9xA(Math.round(Float.intBitsToFloat((int) (floatToRawIntBits >> 32))), j), 0, ConstraintsKt.m439constrainHeightK40F9xA(Math.round(Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L))), j), j, 10);
    }

    public final String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}

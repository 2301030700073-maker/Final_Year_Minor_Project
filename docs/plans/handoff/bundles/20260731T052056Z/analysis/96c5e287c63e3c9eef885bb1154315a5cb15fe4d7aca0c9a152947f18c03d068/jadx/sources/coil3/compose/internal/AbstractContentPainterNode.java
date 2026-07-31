package coil3.compose.internal;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
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
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.AsyncImagePainter;
import coil3.compose.ConstraintsSizeResolver;
import com.caverock.androidsvg.SVG;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyMap;
import kotlin.reflect.KProperty;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractContentPainterNode extends Modifier.Node implements DrawModifierNode, LayoutModifierNode, SemanticsModifierNode {
    public Alignment alignment;
    public float alpha;
    public boolean clipToBounds;
    public ConstraintsSizeResolver constraintSizeResolver;
    public String contentDescription;
    public ContentScale contentScale;

    public AbstractContentPainterNode(Alignment alignment, ContentScale contentScale, float f, boolean z, String str, ConstraintsSizeResolver constraintsSizeResolver) {
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.clipToBounds = z;
        this.contentDescription = str;
        this.constraintSizeResolver = constraintsSizeResolver;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        String str = this.contentDescription;
        if (str != null) {
            KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
            semanticsPropertyReceiver.set(SemanticsProperties.ContentDescription, Room.listOf(str));
            SemanticsPropertiesKt.m616setRolekuIjeqM(semanticsPropertyReceiver, 5);
        }
    }

    /* renamed from: calculateScaledSize-E7KxVPU$1, reason: not valid java name */
    public final long m779calculateScaledSizeE7KxVPU$1(long j) {
        if (Size.m398isEmptyimpl(j)) {
            return 0L;
        }
        long mo493getIntrinsicSizeNHjbRc = getPainter$1().mo493getIntrinsicSizeNHjbRc();
        if (mo493getIntrinsicSizeNHjbRc != 9205357640488583168L) {
            float intBitsToFloat = Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc >> 32));
            if (Math.abs(intBitsToFloat) > Float.MAX_VALUE) {
                intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
            }
            float intBitsToFloat2 = Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc & 4294967295L));
            if (Math.abs(intBitsToFloat2) > Float.MAX_VALUE) {
                intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
            }
            long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
            long mo511computeScaleFactorH7hwNQA = this.contentScale.mo511computeScaleFactorH7hwNQA(floatToRawIntBits, j);
            if (Math.abs(Float.intBitsToFloat((int) (mo511computeScaleFactorH7hwNQA >> 32))) <= Float.MAX_VALUE && Math.abs(Float.intBitsToFloat((int) (4294967295L & mo511computeScaleFactorH7hwNQA))) <= Float.MAX_VALUE) {
                return RulerKt.m539timesUQTWf7w(floatToRawIntBits, mo511computeScaleFactorH7hwNQA);
            }
        }
        return j;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        long m779calculateScaledSizeE7KxVPU$1 = m779calculateScaledSizeE7KxVPU$1(canvasDrawScope.drawContext.m796getSizeNHjbRc());
        long mo333alignKFBX0sM = this.alignment.mo333alignKFBX0sM(UtilsKt.m781toIntSizeuvyYCjk(m779calculateScaledSizeE7KxVPU$1), UtilsKt.m781toIntSizeuvyYCjk(canvasDrawScope.drawContext.m796getSizeNHjbRc()), layoutNodeDrawScope.getLayoutDirection());
        int i = (int) (mo333alignKFBX0sM >> 32);
        int i2 = (int) (mo333alignKFBX0sM & 4294967295L);
        SVG svg = canvasDrawScope.drawContext;
        long m796getSizeNHjbRc = svg.m796getSizeNHjbRc();
        svg.getCanvas().save();
        try {
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) svg.rootElement;
            SVG svg2 = (SVG) popupMenu$1.this$0;
            if (this.clipToBounds) {
                popupMenu$1.m1clipRectN_I0leg(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, Float.intBitsToFloat((int) (svg2.m796getSizeNHjbRc() >> 32)), Float.intBitsToFloat((int) (4294967295L & svg2.m796getSizeNHjbRc())), 1);
            }
            popupMenu$1.translate(i, i2);
            getPainter$1().m494drawx_KDEd0(layoutNodeDrawScope, m779calculateScaledSizeE7KxVPU$1, this.alpha, null);
            svg.getCanvas().restore();
            svg.m797setSizeuvyYCjk(m796getSizeNHjbRc);
            layoutNodeDrawScope.drawContent();
        } catch (Throwable th) {
            Animation.CC.m(svg, m796getSizeNHjbRc);
            throw th;
        }
    }

    public abstract Painter getPainter$1();

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long Constraints$default = ConstraintsKt.Constraints$default(0, i, 0, 0, 13);
        ConstraintsSizeResolver constraintsSizeResolver = this.constraintSizeResolver;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.m778setConstraintsBRTryo0(Constraints$default);
        }
        if (getPainter$1().mo493getIntrinsicSizeNHjbRc() == 9205357640488583168L) {
            return measurable.maxIntrinsicHeight(i);
        }
        long m780modifyConstraintsZezNO4M$1 = m780modifyConstraintsZezNO4M$1(Constraints$default);
        return Math.max(Constraints.m682getMinHeightimpl(m780modifyConstraintsZezNO4M$1), measurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 0, i, 7);
        ConstraintsSizeResolver constraintsSizeResolver = this.constraintSizeResolver;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.m778setConstraintsBRTryo0(Constraints$default);
        }
        if (getPainter$1().mo493getIntrinsicSizeNHjbRc() == 9205357640488583168L) {
            return measurable.maxIntrinsicWidth(i);
        }
        long m780modifyConstraintsZezNO4M$1 = m780modifyConstraintsZezNO4M$1(Constraints$default);
        return Math.max(Constraints.m683getMinWidthimpl(m780modifyConstraintsZezNO4M$1), measurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        ConstraintsSizeResolver constraintsSizeResolver = this.constraintSizeResolver;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.m778setConstraintsBRTryo0(j);
        }
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(m780modifyConstraintsZezNO4M$1(j));
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 14));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long Constraints$default = ConstraintsKt.Constraints$default(0, i, 0, 0, 13);
        ConstraintsSizeResolver constraintsSizeResolver = this.constraintSizeResolver;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.m778setConstraintsBRTryo0(Constraints$default);
        }
        if (getPainter$1().mo493getIntrinsicSizeNHjbRc() == 9205357640488583168L) {
            return measurable.minIntrinsicHeight(i);
        }
        long m780modifyConstraintsZezNO4M$1 = m780modifyConstraintsZezNO4M$1(Constraints$default);
        return Math.max(Constraints.m682getMinHeightimpl(m780modifyConstraintsZezNO4M$1), measurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 0, i, 7);
        ConstraintsSizeResolver constraintsSizeResolver = this.constraintSizeResolver;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.m778setConstraintsBRTryo0(Constraints$default);
        }
        if (getPainter$1().mo493getIntrinsicSizeNHjbRc() == 9205357640488583168L) {
            return measurable.minIntrinsicWidth(i);
        }
        long m780modifyConstraintsZezNO4M$1 = m780modifyConstraintsZezNO4M$1(Constraints$default);
        return Math.max(Constraints.m683getMinWidthimpl(m780modifyConstraintsZezNO4M$1), measurable.minIntrinsicWidth(i));
    }

    /* renamed from: modifyConstraints-ZezNO4M$1, reason: not valid java name */
    public final long m780modifyConstraintsZezNO4M$1(long j) {
        float m683getMinWidthimpl;
        int m682getMinHeightimpl;
        float coerceIn;
        boolean m679getHasFixedWidthimpl = Constraints.m679getHasFixedWidthimpl(j);
        boolean m678getHasFixedHeightimpl = Constraints.m678getHasFixedHeightimpl(j);
        if (!m679getHasFixedWidthimpl || !m678getHasFixedHeightimpl) {
            Painter painter$1 = getPainter$1();
            boolean z = Constraints.m677getHasBoundedWidthimpl(j) && Constraints.m676getHasBoundedHeightimpl(j);
            long mo493getIntrinsicSizeNHjbRc = painter$1.mo493getIntrinsicSizeNHjbRc();
            if (mo493getIntrinsicSizeNHjbRc != 9205357640488583168L) {
                if (z && (m679getHasFixedWidthimpl || m678getHasFixedHeightimpl)) {
                    m683getMinWidthimpl = Constraints.m681getMaxWidthimpl(j);
                    m682getMinHeightimpl = Constraints.m680getMaxHeightimpl(j);
                } else {
                    float intBitsToFloat = Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc >> 32));
                    float intBitsToFloat2 = Float.intBitsToFloat((int) (mo493getIntrinsicSizeNHjbRc & 4294967295L));
                    if (Math.abs(intBitsToFloat) <= Float.MAX_VALUE) {
                        int i = UtilsKt.$r8$clinit;
                        m683getMinWidthimpl = RegexKt.coerceIn(intBitsToFloat, Constraints.m683getMinWidthimpl(j), Constraints.m681getMaxWidthimpl(j));
                    } else {
                        m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
                    }
                    if (Math.abs(intBitsToFloat2) <= Float.MAX_VALUE) {
                        int i2 = UtilsKt.$r8$clinit;
                        coerceIn = RegexKt.coerceIn(intBitsToFloat2, Constraints.m682getMinHeightimpl(j), Constraints.m680getMaxHeightimpl(j));
                        long m779calculateScaledSizeE7KxVPU$1 = m779calculateScaledSizeE7KxVPU$1((Float.floatToRawIntBits(coerceIn) & 4294967295L) | (Float.floatToRawIntBits(m683getMinWidthimpl) << 32));
                        return Constraints.m674copyZbe2FdA$default(j, ConstraintsKt.m689constrainWidthK40F9xA(j, UnsignedKt.roundToInt(Float.intBitsToFloat((int) (m779calculateScaledSizeE7KxVPU$1 >> 32)))), 0, ConstraintsKt.m688constrainHeightK40F9xA(j, UnsignedKt.roundToInt(Float.intBitsToFloat((int) (m779calculateScaledSizeE7KxVPU$1 & 4294967295L)))), 0, 10);
                    }
                    m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
                }
                coerceIn = m682getMinHeightimpl;
                long m779calculateScaledSizeE7KxVPU$12 = m779calculateScaledSizeE7KxVPU$1((Float.floatToRawIntBits(coerceIn) & 4294967295L) | (Float.floatToRawIntBits(m683getMinWidthimpl) << 32));
                return Constraints.m674copyZbe2FdA$default(j, ConstraintsKt.m689constrainWidthK40F9xA(j, UnsignedKt.roundToInt(Float.intBitsToFloat((int) (m779calculateScaledSizeE7KxVPU$12 >> 32)))), 0, ConstraintsKt.m688constrainHeightK40F9xA(j, UnsignedKt.roundToInt(Float.intBitsToFloat((int) (m779calculateScaledSizeE7KxVPU$12 & 4294967295L)))), 0, 10);
            }
            if (z && (!(painter$1 instanceof AsyncImagePainter) || ((AsyncImagePainter.State) ((AsyncImagePainter) painter$1).state.$$delegate_0.getValue()).getPainter() != null)) {
                return Constraints.m674copyZbe2FdA$default(j, Constraints.m681getMaxWidthimpl(j), 0, Constraints.m680getMaxHeightimpl(j), 0, 10);
            }
        }
        return j;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}

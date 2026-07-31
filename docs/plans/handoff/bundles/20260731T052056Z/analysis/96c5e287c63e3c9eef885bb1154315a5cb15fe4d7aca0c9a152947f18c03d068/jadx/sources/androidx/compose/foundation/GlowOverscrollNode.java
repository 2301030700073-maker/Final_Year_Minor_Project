package androidx.compose.foundation;

import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlowOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public final EdgeEffectWrapper edgeEffectWrapper;
    public final PaddingValuesImpl glowDrawPadding;
    public final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    public GlowOverscrollNode(SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper, PaddingValuesImpl paddingValuesImpl) {
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.edgeEffectWrapper = edgeEffectWrapper;
        this.glowDrawPadding = paddingValuesImpl;
        delegate(suspendingPointerInputModifierNodeImpl);
    }

    /* renamed from: drawWithRotationAndOffset-ubNVwUQ, reason: not valid java name */
    public static boolean m44drawWithRotationAndOffsetubNVwUQ(float f, long j, EdgeEffect edgeEffect, Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(f);
        canvas.translate(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z;
        char c;
        long j;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        long m796getSizeNHjbRc = canvasDrawScope.drawContext.m796getSizeNHjbRc();
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
        androidEdgeEffectOverscrollEffect.m43updateSizeuvyYCjk$foundation(m796getSizeNHjbRc);
        SVG svg = canvasDrawScope.drawContext;
        if (Size.m398isEmptyimpl(svg.m796getSizeNHjbRc())) {
            layoutNodeDrawScope.drawContent();
            return;
        }
        layoutNodeDrawScope.drawContent();
        androidEdgeEffectOverscrollEffect.redrawSignal.getValue();
        Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(svg.getCanvas());
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        boolean isAnimating = EdgeEffectWrapper.isAnimating(edgeEffectWrapper.leftEffect);
        PaddingValuesImpl paddingValuesImpl = this.glowDrawPadding;
        if (isAnimating) {
            EdgeEffect orCreateLeftEffect = edgeEffectWrapper.getOrCreateLeftEffect();
            float f = -Float.intBitsToFloat((int) (layoutNodeDrawScope.mo476getSizeNHjbRc() & 4294967295L));
            z = m44drawWithRotationAndOffsetubNVwUQ(270.0f, (Float.floatToRawIntBits(layoutNodeDrawScope.mo87toPx0680j_4(paddingValuesImpl.mo121calculateLeftPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection()))) & 4294967295L) | (Float.floatToRawIntBits(f) << 32), orCreateLeftEffect, nativeCanvas);
        } else {
            z = false;
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.topEffect)) {
            c = ' ';
            j = 4294967295L;
            z = m44drawWithRotationAndOffsetubNVwUQ(RecyclerView.DECELERATION_RATE, (((long) Float.floatToRawIntBits(layoutNodeDrawScope.mo87toPx0680j_4(paddingValuesImpl.top))) & 4294967295L) | (((long) Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE)) << 32), edgeEffectWrapper.getOrCreateTopEffect(), nativeCanvas) || z;
        } else {
            c = ' ';
            j = 4294967295L;
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.rightEffect)) {
            z = m44drawWithRotationAndOffsetubNVwUQ(90.0f, (((long) Float.floatToRawIntBits(layoutNodeDrawScope.mo87toPx0680j_4(paddingValuesImpl.mo122calculateRightPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection())) + (-((float) UnsignedKt.roundToInt(Float.intBitsToFloat((int) (layoutNodeDrawScope.mo476getSizeNHjbRc() >> c))))))) & j) | (((long) Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE)) << c), edgeEffectWrapper.getOrCreateRightEffect(), nativeCanvas) || z;
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.bottomEffect)) {
            EdgeEffect orCreateBottomEffect = edgeEffectWrapper.getOrCreateBottomEffect();
            z = m44drawWithRotationAndOffsetubNVwUQ(180.0f, (((long) Float.floatToRawIntBits((-Float.intBitsToFloat((int) (layoutNodeDrawScope.mo476getSizeNHjbRc() & j))) + layoutNodeDrawScope.mo87toPx0680j_4(paddingValuesImpl.bottom))) & j) | (((long) Float.floatToRawIntBits(-Float.intBitsToFloat((int) (layoutNodeDrawScope.mo476getSizeNHjbRc() >> c)))) << c), orCreateBottomEffect, nativeCanvas) || z;
        }
        if (z) {
            androidEdgeEffectOverscrollEffect.invalidateOverscroll$foundation();
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}

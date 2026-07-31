package androidx.compose.foundation;

import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlowOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public final EdgeEffectWrapper edgeEffectWrapper;
    public final PaddingValues glowDrawPadding;
    public final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    public GlowOverscrollNode(SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper, PaddingValues paddingValues) {
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.edgeEffectWrapper = edgeEffectWrapper;
        this.glowDrawPadding = paddingValues;
        delegate(suspendingPointerInputModifierNodeImpl);
    }

    /* renamed from: drawWithRotationAndOffset-ubNVwUQ, reason: not valid java name */
    public static boolean m130drawWithRotationAndOffsetubNVwUQ(float f, long j, EdgeEffect edgeEffect, Canvas canvas) {
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
        long m795getSizeNHjbRc = canvasDrawScope.drawContext.m795getSizeNHjbRc();
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
        androidEdgeEffectOverscrollEffect.m129updateSizeuvyYCjk$foundation(m795getSizeNHjbRc);
        if (Size.m451isEmptyimpl(canvasDrawScope.drawContext.m795getSizeNHjbRc())) {
            layoutNodeDrawScope.drawContent();
            return;
        }
        layoutNodeDrawScope.drawContent();
        androidEdgeEffectOverscrollEffect.redrawSignal.getValue();
        Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvasDrawScope.drawContext.getCanvas());
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        boolean isAnimating = EdgeEffectWrapper.isAnimating(edgeEffectWrapper.leftEffect);
        PaddingValues paddingValues = this.glowDrawPadding;
        if (isAnimating) {
            EdgeEffect orCreateLeftEffect = edgeEffectWrapper.getOrCreateLeftEffect();
            float f = -Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() & 4294967295L));
            z = m130drawWithRotationAndOffsetubNVwUQ(270.0f, (Float.floatToRawIntBits(layoutNodeDrawScope.mo177toPx0680j_4(paddingValues.mo209calculateLeftPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection()))) & 4294967295L) | (Float.floatToRawIntBits(f) << 32), orCreateLeftEffect, nativeCanvas);
        } else {
            z = false;
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.topEffect)) {
            c = ' ';
            j = 4294967295L;
            z = m130drawWithRotationAndOffsetubNVwUQ(0.0f, (((long) Float.floatToRawIntBits(layoutNodeDrawScope.mo177toPx0680j_4(paddingValues.mo211calculateTopPaddingD9Ej5fM()))) & 4294967295L) | (((long) Float.floatToRawIntBits(0.0f)) << 32), edgeEffectWrapper.getOrCreateTopEffect(), nativeCanvas) || z;
        } else {
            c = ' ';
            j = 4294967295L;
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.rightEffect)) {
            z = m130drawWithRotationAndOffsetubNVwUQ(90.0f, (((long) Float.floatToRawIntBits(layoutNodeDrawScope.mo177toPx0680j_4(paddingValues.mo210calculateRightPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection())) + (-((float) MathKt.roundToInt(Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() >> c))))))) & j) | (((long) Float.floatToRawIntBits(0.0f)) << c), edgeEffectWrapper.getOrCreateRightEffect(), nativeCanvas) || z;
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.bottomEffect)) {
            EdgeEffect orCreateBottomEffect = edgeEffectWrapper.getOrCreateBottomEffect();
            z = m130drawWithRotationAndOffsetubNVwUQ(180.0f, (((long) Float.floatToRawIntBits((-Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() & j))) + layoutNodeDrawScope.mo177toPx0680j_4(paddingValues.mo208calculateBottomPaddingD9Ej5fM()))) & j) | (((long) Float.floatToRawIntBits(-Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() >> c)))) << c), orCreateBottomEffect, nativeCanvas) || z;
        }
        if (z) {
            androidEdgeEffectOverscrollEffect.invalidateOverscroll$foundation();
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}

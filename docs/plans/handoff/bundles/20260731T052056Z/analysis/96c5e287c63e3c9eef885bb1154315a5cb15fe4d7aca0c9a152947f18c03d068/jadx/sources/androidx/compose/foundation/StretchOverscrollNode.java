package androidx.compose.foundation;

import android.graphics.Canvas;
import android.graphics.RenderNode;
import android.widget.EdgeEffect;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticApiModelOutline1;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StretchOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public RenderNode _renderNode;
    public final EdgeEffectWrapper edgeEffectWrapper;
    public final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    public StretchOverscrollNode(SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper) {
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.edgeEffectWrapper = edgeEffectWrapper;
        delegate(suspendingPointerInputModifierNodeImpl);
    }

    public static boolean drawWithRotation(float f, EdgeEffect edgeEffect, Canvas canvas) {
        if (f == RecyclerView.DECELERATION_RATE) {
            return edgeEffect.draw(canvas);
        }
        int save = canvas.save();
        canvas.rotate(f);
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0276  */
    @Override // androidx.compose.ui.node.DrawModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(androidx.compose.ui.node.LayoutNodeDrawScope r26) {
        /*
            Method dump skipped, instructions count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.StretchOverscrollNode.draw(androidx.compose.ui.node.LayoutNodeDrawScope):void");
    }

    public final RenderNode getRenderNode() {
        RenderNode renderNode = this._renderNode;
        if (renderNode != null) {
            return renderNode;
        }
        RenderNode m = TypefaceCompat$$ExternalSyntheticApiModelOutline1.m();
        this._renderNode = m;
        return m;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}

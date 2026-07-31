package androidx.compose.ui.draw;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.shadow.DropShadowPainter;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SimpleDropShadowNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode {
    public Shadow shadow;
    public DropShadowPainter shadowPainter;
    public RoundedCornerShape shape;

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        DropShadowPainter dropShadowPainter;
        DropShadowPainter dropShadowPainter2 = this.shadowPainter;
        if (dropShadowPainter2 == null) {
            CardView.AnonymousClass1 shadowContext = ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getGraphicsContext().getShadowContext();
            RoundedCornerShape roundedCornerShape = this.shape;
            Shadow shadow = this.shadow;
            shadowContext.getClass();
            DropShadowPainter dropShadowPainter3 = new DropShadowPainter(roundedCornerShape, shadow, shadowContext);
            this.shadowPainter = dropShadowPainter3;
            dropShadowPainter = dropShadowPainter3;
        } else {
            dropShadowPainter = dropShadowPainter2;
        }
        dropShadowPainter.m494drawx_KDEd0(layoutNodeDrawScope, layoutNodeDrawScope.canvasDrawScope.drawContext.m796getSizeNHjbRc(), 1.0f, null);
        layoutNodeDrawScope.drawContent();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SimpleDropShadowNode)) {
            return false;
        }
        SimpleDropShadowNode simpleDropShadowNode = (SimpleDropShadowNode) obj;
        return Intrinsics.areEqual(this.shape, simpleDropShadowNode.shape) && Intrinsics.areEqual(this.shadow, simpleDropShadowNode.shadow);
    }

    public final int hashCode() {
        return this.shadow.hashCode() + (this.shape.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        this.shadowPainter = null;
        HitTestResultKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}

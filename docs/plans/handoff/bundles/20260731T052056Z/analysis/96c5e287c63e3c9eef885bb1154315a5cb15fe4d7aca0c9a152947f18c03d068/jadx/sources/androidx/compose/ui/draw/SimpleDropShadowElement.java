package androidx.compose.ui.draw;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/draw/SimpleDropShadowElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/draw/SimpleDropShadowNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class SimpleDropShadowElement extends ModifierNodeElement {
    public final Shadow shadow;
    public final RoundedCornerShape shape;

    public SimpleDropShadowElement(RoundedCornerShape roundedCornerShape, Shadow shadow) {
        this.shape = roundedCornerShape;
        this.shadow = shadow;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        SimpleDropShadowNode simpleDropShadowNode = new SimpleDropShadowNode();
        simpleDropShadowNode.shape = this.shape;
        simpleDropShadowNode.shadow = this.shadow;
        return simpleDropShadowNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SimpleDropShadowElement)) {
            return false;
        }
        SimpleDropShadowElement simpleDropShadowElement = (SimpleDropShadowElement) obj;
        return this.shape.equals(simpleDropShadowElement.shape) && this.shadow.equals(simpleDropShadowElement.shadow);
    }

    public final int hashCode() {
        return this.shadow.hashCode() + (this.shape.hashCode() * 31);
    }

    public final String toString() {
        return "SimpleDropShadowElement(shape=" + this.shape + ", shadow=" + this.shadow + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        SimpleDropShadowNode simpleDropShadowNode = (SimpleDropShadowNode) node;
        RoundedCornerShape roundedCornerShape = simpleDropShadowNode.shape;
        RoundedCornerShape roundedCornerShape2 = this.shape;
        boolean areEqual = Intrinsics.areEqual(roundedCornerShape, roundedCornerShape2);
        Shadow shadow = this.shadow;
        if (!areEqual || !Intrinsics.areEqual(simpleDropShadowNode.shadow, shadow)) {
            simpleDropShadowNode.shadowPainter = null;
        }
        simpleDropShadowNode.shape = roundedCornerShape2;
        simpleDropShadowNode.shadow = shadow;
    }
}

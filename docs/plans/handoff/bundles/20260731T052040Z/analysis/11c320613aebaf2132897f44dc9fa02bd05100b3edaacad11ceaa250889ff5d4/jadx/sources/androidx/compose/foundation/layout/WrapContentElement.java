package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WrapContentElement extends ModifierNodeElement {
    public final Object align;
    public final Function2 alignmentCallback;
    public final Direction direction;

    public WrapContentElement(Direction direction, Function2 function2, Object obj) {
        this.direction = direction;
        this.alignmentCallback = function2;
        this.align = obj;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        WrapContentNode wrapContentNode = new WrapContentNode();
        wrapContentNode.direction = this.direction;
        wrapContentNode.alignmentCallback = this.alignmentCallback;
        return wrapContentNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || WrapContentElement.class != obj.getClass()) {
            return false;
        }
        WrapContentElement wrapContentElement = (WrapContentElement) obj;
        return this.direction == wrapContentElement.direction && this.align.equals(wrapContentElement.align);
    }

    public final int hashCode() {
        return this.align.hashCode() + (((this.direction.hashCode() * 31) + 1237) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        WrapContentNode wrapContentNode = (WrapContentNode) node;
        wrapContentNode.direction = this.direction;
        wrapContentNode.alignmentCallback = this.alignmentCallback;
    }
}

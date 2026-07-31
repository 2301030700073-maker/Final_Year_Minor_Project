package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FillElement extends ModifierNodeElement {
    public final Direction direction;

    public FillElement(Direction direction) {
        this.direction = direction;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        FillNode fillNode = new FillNode();
        fillNode.direction = this.direction;
        fillNode.fraction = 1.0f;
        return fillNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FillElement) {
            return this.direction == ((FillElement) obj).direction;
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(1.0f) + (this.direction.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        FillNode fillNode = (FillNode) node;
        fillNode.direction = this.direction;
        fillNode.fraction = 1.0f;
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class UnspecifiedConstraintsElement extends ModifierNodeElement {
    public final float minHeight;
    public final float minWidth;

    public UnspecifiedConstraintsElement(float f, float f2) {
        this.minWidth = f;
        this.minHeight = f2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        UnspecifiedConstraintsNode unspecifiedConstraintsNode = new UnspecifiedConstraintsNode();
        unspecifiedConstraintsNode.minWidth = this.minWidth;
        unspecifiedConstraintsNode.minHeight = this.minHeight;
        return unspecifiedConstraintsNode;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof UnspecifiedConstraintsElement)) {
            return false;
        }
        UnspecifiedConstraintsElement unspecifiedConstraintsElement = (UnspecifiedConstraintsElement) obj;
        return Dp.m745equalsimpl0(this.minWidth, unspecifiedConstraintsElement.minWidth) && Dp.m745equalsimpl0(this.minHeight, unspecifiedConstraintsElement.minHeight);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.minHeight) + (Float.floatToIntBits(this.minWidth) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        UnspecifiedConstraintsNode unspecifiedConstraintsNode = (UnspecifiedConstraintsNode) node;
        unspecifiedConstraintsNode.minWidth = this.minWidth;
        unspecifiedConstraintsNode.minHeight = this.minHeight;
    }
}

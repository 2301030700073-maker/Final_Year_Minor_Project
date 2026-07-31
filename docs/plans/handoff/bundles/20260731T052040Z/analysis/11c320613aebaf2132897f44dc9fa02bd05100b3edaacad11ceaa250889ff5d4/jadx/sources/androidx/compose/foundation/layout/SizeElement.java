package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SizeElement extends ModifierNodeElement {
    public final boolean enforceIncoming;
    public final float maxHeight;
    public final float maxWidth;
    public final float minHeight;
    public final float minWidth;

    public SizeElement(float f, float f2, float f3, float f4, boolean z) {
        this.minWidth = f;
        this.minHeight = f2;
        this.maxWidth = f3;
        this.maxHeight = f4;
        this.enforceIncoming = z;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        SizeNode sizeNode = new SizeNode();
        sizeNode.minWidth = this.minWidth;
        sizeNode.minHeight = this.minHeight;
        sizeNode.maxWidth = this.maxWidth;
        sizeNode.maxHeight = this.maxHeight;
        sizeNode.enforceIncoming = this.enforceIncoming;
        return sizeNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeElement)) {
            return false;
        }
        SizeElement sizeElement = (SizeElement) obj;
        return Dp.m443equalsimpl0(this.minWidth, sizeElement.minWidth) && Dp.m443equalsimpl0(this.minHeight, sizeElement.minHeight) && Dp.m443equalsimpl0(this.maxWidth, sizeElement.maxWidth) && Dp.m443equalsimpl0(this.maxHeight, sizeElement.maxHeight) && this.enforceIncoming == sizeElement.enforceIncoming;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.maxHeight, Modifier.CC.m(this.maxWidth, Modifier.CC.m(this.minHeight, Float.floatToIntBits(this.minWidth) * 31, 31), 31), 31) + (this.enforceIncoming ? 1231 : 1237);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        SizeNode sizeNode = (SizeNode) node;
        sizeNode.minWidth = this.minWidth;
        sizeNode.minHeight = this.minHeight;
        sizeNode.maxWidth = this.maxWidth;
        sizeNode.maxHeight = this.maxHeight;
        sizeNode.enforceIncoming = this.enforceIncoming;
    }
}

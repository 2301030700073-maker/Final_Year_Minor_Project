package androidx.compose.ui;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZIndexElement extends ModifierNodeElement {
    public final float zIndex;

    public ZIndexElement(float f) {
        this.zIndex = f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ZIndexNode zIndexNode = new ZIndexNode();
        zIndexNode.zIndex = this.zIndex;
        return zIndexNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZIndexElement) && Float.compare(this.zIndex, ((ZIndexElement) obj).zIndex) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.zIndex);
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("ZIndexElement(zIndex="), this.zIndex, ')');
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((ZIndexNode) node).zIndex = this.zIndex;
    }
}

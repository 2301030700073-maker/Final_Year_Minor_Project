package androidx.compose.foundation.layout;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SizeElement extends ModifierNodeElement {
    public final boolean enforceIncoming;
    public final float maxHeight;
    public final float maxWidth;
    public final float minHeight;
    public final float minWidth;

    public /* synthetic */ SizeElement(float f, float f2, float f3, float f4, boolean z, int i) {
        this((i & 1) != 0 ? Float.NaN : f, (i & 2) != 0 ? Float.NaN : f2, (i & 4) != 0 ? Float.NaN : f3, (i & 8) != 0 ? Float.NaN : f4, z);
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
        return Dp.m745equalsimpl0(this.minWidth, sizeElement.minWidth) && Dp.m745equalsimpl0(this.minHeight, sizeElement.minHeight) && Dp.m745equalsimpl0(this.maxWidth, sizeElement.maxWidth) && Dp.m745equalsimpl0(this.maxHeight, sizeElement.maxHeight) && this.enforceIncoming == sizeElement.enforceIncoming;
    }

    public final int hashCode() {
        return CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(this.minWidth) * 31, this.minHeight, 31), this.maxWidth, 31), this.maxHeight, 31) + (this.enforceIncoming ? 1231 : 1237);
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

    public SizeElement(float f, float f2, float f3, float f4, boolean z) {
        this.minWidth = f;
        this.minHeight = f2;
        this.maxWidth = f3;
        this.maxHeight = f4;
        this.enforceIncoming = z;
    }
}

package androidx.compose.foundation.layout;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class PaddingElement extends ModifierNodeElement {
    public final float bottom;
    public final float end;
    public final float start;
    public final float top;

    public PaddingElement(float f, float f2, float f3, float f4) {
        this.start = f;
        this.top = f2;
        this.end = f3;
        this.bottom = f4;
        boolean z = true;
        boolean z2 = (f >= 0.0f || Float.isNaN(f)) & (f2 >= 0.0f || Float.isNaN(f2)) & (f3 >= 0.0f || Float.isNaN(f3));
        if (f4 < 0.0f && !Float.isNaN(f4)) {
            z = false;
        }
        if (!z2 || !z) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        PaddingNode paddingNode = new PaddingNode();
        paddingNode.start = this.start;
        paddingNode.top = this.top;
        paddingNode.end = this.end;
        paddingNode.bottom = this.bottom;
        paddingNode.rtlAware = true;
        return paddingNode;
    }

    public final boolean equals(Object obj) {
        PaddingElement paddingElement = obj instanceof PaddingElement ? (PaddingElement) obj : null;
        return paddingElement != null && Dp.m745equalsimpl0(this.start, paddingElement.start) && Dp.m745equalsimpl0(this.top, paddingElement.top) && Dp.m745equalsimpl0(this.end, paddingElement.end) && Dp.m745equalsimpl0(this.bottom, paddingElement.bottom);
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(this.bottom) + CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(this.start) * 31, this.top, 31), this.end, 31)) * 31) + 1231;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        PaddingNode paddingNode = (PaddingNode) node;
        paddingNode.start = this.start;
        paddingNode.top = this.top;
        paddingNode.end = this.end;
        paddingNode.bottom = this.bottom;
        paddingNode.rtlAware = true;
    }
}

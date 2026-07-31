package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PaddingElement extends ModifierNodeElement {
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
        return paddingElement != null && Dp.m443equalsimpl0(this.start, paddingElement.start) && Dp.m443equalsimpl0(this.top, paddingElement.top) && Dp.m443equalsimpl0(this.end, paddingElement.end) && Dp.m443equalsimpl0(this.bottom, paddingElement.bottom);
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(this.bottom) + Modifier.CC.m(this.end, Modifier.CC.m(this.top, Float.floatToIntBits(this.start) * 31, 31), 31)) * 31) + 1231;
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

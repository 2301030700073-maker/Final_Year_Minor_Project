package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/OffsetElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/OffsetNode;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
final class OffsetElement extends ModifierNodeElement {
    public final float x;
    public final float y;

    public OffsetElement(float f, float f2) {
        this.x = f;
        this.y = f2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        OffsetNode offsetNode = new OffsetNode();
        offsetNode.x = this.x;
        offsetNode.y = this.y;
        offsetNode.rtlAware = true;
        return offsetNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsetElement offsetElement = obj instanceof OffsetElement ? (OffsetElement) obj : null;
        return offsetElement != null && Dp.m693equalsimpl0(this.x, offsetElement.x) && Dp.m693equalsimpl0(this.y, offsetElement.y);
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(this.y) + (Float.floatToIntBits(this.x) * 31)) * 31) + 1231;
    }

    public final String toString() {
        return "OffsetModifierElement(x=" + ((Object) Dp.m694toStringimpl(this.x)) + ", y=" + ((Object) Dp.m694toStringimpl(this.y)) + ", rtlAware=true)";
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        OffsetNode offsetNode = (OffsetNode) node;
        float f = offsetNode.x;
        float f2 = this.x;
        boolean m693equalsimpl0 = Dp.m693equalsimpl0(f, f2);
        float f3 = this.y;
        if (!m693equalsimpl0 || !Dp.m693equalsimpl0(offsetNode.y, f3) || !offsetNode.rtlAware) {
            HitTestResultKt.requireLayoutNode(offsetNode).requestRelayout$ui(false);
        }
        offsetNode.x = f2;
        offsetNode.y = f3;
        offsetNode.rtlAware = true;
    }
}

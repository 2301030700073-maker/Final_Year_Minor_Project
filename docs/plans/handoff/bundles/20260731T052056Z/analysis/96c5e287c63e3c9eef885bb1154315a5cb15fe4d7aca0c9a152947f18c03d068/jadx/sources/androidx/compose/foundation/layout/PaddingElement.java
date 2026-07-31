package androidx.compose.foundation.layout;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/PaddingElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/PaddingNode;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
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
        boolean z2 = (f >= RecyclerView.DECELERATION_RATE || Float.isNaN(f)) & (f2 >= RecyclerView.DECELERATION_RATE || Float.isNaN(f2)) & (f3 >= RecyclerView.DECELERATION_RATE || Float.isNaN(f3));
        if (f4 < RecyclerView.DECELERATION_RATE && !Float.isNaN(f4)) {
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
        return paddingElement != null && Dp.m693equalsimpl0(this.start, paddingElement.start) && Dp.m693equalsimpl0(this.top, paddingElement.top) && Dp.m693equalsimpl0(this.end, paddingElement.end) && Dp.m693equalsimpl0(this.bottom, paddingElement.bottom);
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(this.bottom) + Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.start) * 31, this.top, 31), this.end, 31)) * 31) + 1231;
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

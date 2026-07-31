package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/WrapContentElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/WrapContentNode;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
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
        return this.direction == wrapContentElement.direction && Intrinsics.areEqual(this.align, wrapContentElement.align);
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

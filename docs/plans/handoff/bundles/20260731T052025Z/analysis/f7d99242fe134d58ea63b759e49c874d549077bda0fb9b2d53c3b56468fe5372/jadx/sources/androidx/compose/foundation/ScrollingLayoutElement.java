package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollingLayoutElement extends ModifierNodeElement {
    public final ScrollState scrollState;

    public ScrollingLayoutElement(ScrollState scrollState) {
        this.scrollState = scrollState;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ScrollNode scrollNode = new ScrollNode();
        scrollNode.state = this.scrollState;
        scrollNode.isVertical = true;
        return scrollNode;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ScrollingLayoutElement) {
            return Intrinsics.areEqual(this.scrollState, ((ScrollingLayoutElement) obj).scrollState);
        }
        return false;
    }

    public final int hashCode() {
        return (((this.scrollState.hashCode() * 31) + 1237) * 31) + 1231;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ScrollNode scrollNode = (ScrollNode) node;
        scrollNode.state = this.scrollState;
        scrollNode.isVertical = true;
    }
}

package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class BringIntoViewRequesterElement extends ModifierNodeElement {
    public final BringIntoViewRequesterImpl requester;

    public BringIntoViewRequesterElement(BringIntoViewRequesterImpl bringIntoViewRequesterImpl) {
        this.requester = bringIntoViewRequesterImpl;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        BringIntoViewRequesterNode bringIntoViewRequesterNode = new BringIntoViewRequesterNode();
        bringIntoViewRequesterNode.requester = this.requester;
        return bringIntoViewRequesterNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BringIntoViewRequesterElement) {
            return Intrinsics.areEqual(this.requester, ((BringIntoViewRequesterElement) obj).requester);
        }
        return false;
    }

    public final int hashCode() {
        return this.requester.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        BringIntoViewRequesterNode bringIntoViewRequesterNode = (BringIntoViewRequesterNode) node;
        BringIntoViewRequesterImpl bringIntoViewRequesterImpl = bringIntoViewRequesterNode.requester;
        if (bringIntoViewRequesterImpl != null) {
            bringIntoViewRequesterImpl.nodes.remove(bringIntoViewRequesterNode);
        }
        BringIntoViewRequesterImpl bringIntoViewRequesterImpl2 = this.requester;
        if (bringIntoViewRequesterImpl2 != null) {
            bringIntoViewRequesterImpl2.nodes.add(bringIntoViewRequesterNode);
        }
        bringIntoViewRequesterNode.requester = bringIntoViewRequesterImpl2;
    }
}

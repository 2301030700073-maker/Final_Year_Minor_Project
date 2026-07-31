package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class BringIntoViewElement extends ModifierNodeElement {
    public final AndroidViewHolder$layoutNode$1$4 onRequesterReady;

    public BringIntoViewElement(AndroidViewHolder$layoutNode$1$4 androidViewHolder$layoutNode$1$4) {
        this.onRequesterReady = androidViewHolder$layoutNode$1$4;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new BringIntoViewNode(this.onRequesterReady);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BringIntoViewElement) {
            return this.onRequesterReady == ((BringIntoViewElement) obj).onRequesterReady;
        }
        return false;
    }

    public final int hashCode() {
        return this.onRequesterReady.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        BringIntoViewNode bringIntoViewNode = (BringIntoViewNode) node;
        AndroidViewHolder$layoutNode$1$4 androidViewHolder$layoutNode$1$4 = this.onRequesterReady;
        bringIntoViewNode.onRequesterReady = androidViewHolder$layoutNode$1$4;
        if (bringIntoViewNode.isAttached) {
            androidViewHolder$layoutNode$1$4.invoke(bringIntoViewNode.requester);
        }
    }
}

package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BringIntoViewRequesterNode extends Modifier.Node {
    public BringIntoViewRequesterImpl requester;

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        BringIntoViewRequesterImpl bringIntoViewRequesterImpl = this.requester;
        if (bringIntoViewRequesterImpl != null) {
            bringIntoViewRequesterImpl.nodes.remove(this);
        }
        if (bringIntoViewRequesterImpl != null) {
            bringIntoViewRequesterImpl.nodes.add(this);
        }
        this.requester = bringIntoViewRequesterImpl;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        BringIntoViewRequesterImpl bringIntoViewRequesterImpl = this.requester;
        if (bringIntoViewRequesterImpl != null) {
            bringIntoViewRequesterImpl.nodes.remove(this);
        }
    }
}

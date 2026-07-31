package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

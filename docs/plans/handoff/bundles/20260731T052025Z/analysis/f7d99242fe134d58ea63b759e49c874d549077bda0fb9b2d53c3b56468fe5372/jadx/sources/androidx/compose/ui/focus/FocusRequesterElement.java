package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class FocusRequesterElement extends ModifierNodeElement {
    public final FocusRequester focusRequester;

    public FocusRequesterElement(FocusRequester focusRequester) {
        this.focusRequester = focusRequester;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        FocusRequesterNode focusRequesterNode = new FocusRequesterNode();
        focusRequesterNode.focusRequester = this.focusRequester;
        return focusRequesterNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FocusRequesterElement) && Intrinsics.areEqual(this.focusRequester, ((FocusRequesterElement) obj).focusRequester);
    }

    public final int hashCode() {
        return this.focusRequester.hashCode();
    }

    public final String toString() {
        return "FocusRequesterElement(focusRequester=" + this.focusRequester + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        FocusRequesterNode focusRequesterNode = (FocusRequesterNode) node;
        focusRequesterNode.focusRequester.focusRequesterNodes.remove(focusRequesterNode);
        FocusRequester focusRequester = this.focusRequester;
        focusRequesterNode.focusRequester = focusRequester;
        focusRequester.focusRequesterNodes.add(focusRequesterNode);
    }
}

package androidx.compose.material3.internal;

import androidx.compose.foundation.selection.ToggleableNode$$ExternalSyntheticLambda0;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChildSemanticsNode extends Modifier.Node implements SemanticsModifierNode {
    public TextKt$$ExternalSyntheticLambda1 properties;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        HitTestResultKt.traverseAncestors(this, ParentSemanticsNodeKey.INSTANCE, new ToggleableNode$$ExternalSyntheticLambda0(semanticsPropertyReceiver, 2));
        this.properties.getClass();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        HitTestResultKt.traverseAncestors(this, ParentSemanticsNodeKey.INSTANCE, new TextKt$$ExternalSyntheticLambda1(16));
    }
}

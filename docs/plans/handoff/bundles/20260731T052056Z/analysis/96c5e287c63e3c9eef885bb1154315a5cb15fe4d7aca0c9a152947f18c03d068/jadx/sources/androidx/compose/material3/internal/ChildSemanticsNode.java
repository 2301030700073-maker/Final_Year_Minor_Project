package androidx.compose.material3.internal;

import androidx.compose.foundation.selection.ToggleableNode$$ExternalSyntheticLambda0;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChildSemanticsNode extends Modifier.Node implements SemanticsModifierNode {
    public ChipKt$$ExternalSyntheticLambda2 properties;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        HitTestResultKt.traverseAncestors(this, ParentSemanticsNodeKey.INSTANCE, new ToggleableNode$$ExternalSyntheticLambda0(semanticsPropertyReceiver, 1));
        this.properties.getClass();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        HitTestResultKt.traverseAncestors(this, ParentSemanticsNodeKey.INSTANCE, new ChipKt$$ExternalSyntheticLambda2(28));
    }
}

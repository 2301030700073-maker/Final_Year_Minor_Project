package androidx.compose.ui.node;

import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SemanticsModifierNode extends DelegatableNode {
    void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver);

    boolean getShouldClearDescendantSemantics();

    boolean getShouldMergeDescendantSemantics();

    boolean isImportantForBounds();
}

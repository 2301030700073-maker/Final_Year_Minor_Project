package androidx.compose.ui.relocation;

import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface BringIntoViewModifierNode extends DelegatableNode {
    Object bringIntoView(NodeCoordinator nodeCoordinator, FocusTargetNode$invalidateFocus$1 focusTargetNode$invalidateFocus$1, ContinuationImpl continuationImpl);
}

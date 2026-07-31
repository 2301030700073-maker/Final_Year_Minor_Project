package androidx.compose.ui.relocation;

import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface BringIntoViewModifierNode extends DelegatableNode {
    Object bringIntoView(NodeCoordinator nodeCoordinator, BringIntoViewModifierNodeKt$bringIntoView$2 bringIntoViewModifierNodeKt$bringIntoView$2, SuspendLambda suspendLambda);
}

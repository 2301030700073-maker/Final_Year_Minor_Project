package androidx.compose.ui.relocation;

import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface BringIntoViewModifierNode extends DelegatableNode {
    Object bringIntoView(NodeCoordinator nodeCoordinator, KTypeImpl$arguments$2 kTypeImpl$arguments$2, ContinuationImpl continuationImpl);
}

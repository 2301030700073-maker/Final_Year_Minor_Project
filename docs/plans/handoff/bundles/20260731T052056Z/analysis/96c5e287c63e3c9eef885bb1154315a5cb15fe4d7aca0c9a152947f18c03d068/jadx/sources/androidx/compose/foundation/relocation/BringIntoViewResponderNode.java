package androidx.compose.foundation.relocation;

import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode extends Modifier.Node implements BringIntoViewModifierNode, LayoutAwareModifierNode {
    public boolean hasBeenPlaced;
    public ContentInViewNode responder;

    public static final Rect bringIntoView$localRect(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, KTypeImpl$arguments$2 kTypeImpl$arguments$2) {
        Rect rect;
        if (bringIntoViewResponderNode.isAttached && bringIntoViewResponderNode.hasBeenPlaced) {
            NodeCoordinator requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(bringIntoViewResponderNode);
            if (!nodeCoordinator.getTail().isAttached) {
                nodeCoordinator = null;
            }
            if (nodeCoordinator != null && (rect = (Rect) kTypeImpl$arguments$2.invoke()) != null) {
                return rect.m393translatek4lQ0M(requireLayoutCoordinates.localBoundingBoxOf(nodeCoordinator, false).m392getTopLeftF1C5BW0());
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
    public final Object bringIntoView(NodeCoordinator nodeCoordinator, KTypeImpl$arguments$2 kTypeImpl$arguments$2, ContinuationImpl continuationImpl) {
        Object coroutineScope = AwaitKt.coroutineScope(new BringIntoViewResponderNode$bringIntoView$2(this, nodeCoordinator, kTypeImpl$arguments$2, new HomeScreenKt$$ExternalSyntheticLambda29(this, nodeCoordinator, kTypeImpl$arguments$2, 4), null), continuationImpl);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void onPlaced(LayoutCoordinates layoutCoordinates) {
        this.hasBeenPlaced = true;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo66onRemeasuredozmzZPI(long j) {
    }
}

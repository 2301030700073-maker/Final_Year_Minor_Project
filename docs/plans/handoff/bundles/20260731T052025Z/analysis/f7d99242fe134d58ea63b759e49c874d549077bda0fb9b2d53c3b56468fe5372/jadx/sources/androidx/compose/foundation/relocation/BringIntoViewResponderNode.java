package androidx.compose.foundation.relocation;

import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.JobKt;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode extends Modifier.Node implements BringIntoViewModifierNode, LayoutAwareModifierNode {
    public boolean hasBeenPlaced;
    public ContentInViewNode responder;

    public static final Rect bringIntoView$localRect(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, FocusTargetNode$invalidateFocus$1 focusTargetNode$invalidateFocus$1) {
        Rect rect;
        if (bringIntoViewResponderNode.isAttached && bringIntoViewResponderNode.hasBeenPlaced) {
            NodeCoordinator requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(bringIntoViewResponderNode);
            if (!nodeCoordinator.getTail().isAttached) {
                nodeCoordinator = null;
            }
            if (nodeCoordinator != null && (rect = (Rect) focusTargetNode$invalidateFocus$1.invoke()) != null) {
                return rect.m448translatek4lQ0M(requireLayoutCoordinates.localBoundingBoxOf(nodeCoordinator, false).m447getTopLeftF1C5BW0());
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
    public final Object bringIntoView(NodeCoordinator nodeCoordinator, FocusTargetNode$invalidateFocus$1 focusTargetNode$invalidateFocus$1, ContinuationImpl continuationImpl) {
        Object coroutineScope = JobKt.coroutineScope(new BringIntoViewResponderNode$bringIntoView$2(this, nodeCoordinator, focusTargetNode$invalidateFocus$1, new ConnectPlan$$ExternalSyntheticLambda0(this, nodeCoordinator, focusTargetNode$invalidateFocus$1, 4), null), continuationImpl);
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
    public final /* synthetic */ void mo152onRemeasuredozmzZPI(long j) {
    }
}

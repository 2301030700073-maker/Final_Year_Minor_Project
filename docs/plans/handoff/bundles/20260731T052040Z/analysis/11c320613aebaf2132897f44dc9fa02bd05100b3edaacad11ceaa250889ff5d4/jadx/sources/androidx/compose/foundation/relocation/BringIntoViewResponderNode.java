package androidx.compose.foundation.relocation;

import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.relocation.BringIntoViewModifierNodeKt$bringIntoView$2;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.JobKt;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode extends Modifier.Node implements BringIntoViewModifierNode, LayoutAwareModifierNode {
    public boolean hasBeenPlaced;
    public ContentInViewNode responder;

    public static final Rect bringIntoView$localRect(BringIntoViewResponderNode bringIntoViewResponderNode, LayoutCoordinates layoutCoordinates, Function0 function0) {
        Rect rect;
        if (bringIntoViewResponderNode.isAttached && bringIntoViewResponderNode.hasBeenPlaced) {
            NodeCoordinator requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(bringIntoViewResponderNode);
            if (!layoutCoordinates.isAttached()) {
                layoutCoordinates = null;
            }
            if (layoutCoordinates != null && (rect = (Rect) function0.invoke()) != null) {
                float f = requireLayoutCoordinates.localBoundingBoxOf(layoutCoordinates, false).left;
                return rect.m205translatek4lQ0M((Float.floatToRawIntBits(r4.top) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
    public final Object bringIntoView(NodeCoordinator nodeCoordinator, BringIntoViewModifierNodeKt$bringIntoView$2 bringIntoViewModifierNodeKt$bringIntoView$2, SuspendLambda suspendLambda) {
        Object coroutineScope = JobKt.coroutineScope(new BringIntoViewResponderNode$bringIntoView$2(this, nodeCoordinator, bringIntoViewModifierNodeKt$bringIntoView$2, new ConnectPlan$$ExternalSyntheticLambda0(4, this, nodeCoordinator, bringIntoViewModifierNodeKt$bringIntoView$2), null), suspendLambda);
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
    public final /* synthetic */ void mo40onRemeasuredozmzZPI(long j) {
    }
}

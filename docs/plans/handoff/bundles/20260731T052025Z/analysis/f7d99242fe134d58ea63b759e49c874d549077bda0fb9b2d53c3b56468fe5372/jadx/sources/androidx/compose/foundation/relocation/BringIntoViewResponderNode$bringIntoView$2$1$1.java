package androidx.compose.foundation.relocation;

import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BringIntoViewResponderNode$bringIntoView$2$1$1 extends FunctionReferenceImpl implements Function0 {
    public final /* synthetic */ FocusTargetNode$invalidateFocus$1 $boundsProvider;
    public final /* synthetic */ NodeCoordinator $childCoordinates;
    public final /* synthetic */ BringIntoViewResponderNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2$1$1(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, FocusTargetNode$invalidateFocus$1 focusTargetNode$invalidateFocus$1) {
        super(0, Intrinsics.Kotlin.class, "localRect", "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;", 0);
        this.this$0 = bringIntoViewResponderNode;
        this.$childCoordinates = nodeCoordinator;
        this.$boundsProvider = focusTargetNode$invalidateFocus$1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return BringIntoViewResponderNode.bringIntoView$localRect(this.this$0, this.$childCoordinates, this.$boundsProvider);
    }
}

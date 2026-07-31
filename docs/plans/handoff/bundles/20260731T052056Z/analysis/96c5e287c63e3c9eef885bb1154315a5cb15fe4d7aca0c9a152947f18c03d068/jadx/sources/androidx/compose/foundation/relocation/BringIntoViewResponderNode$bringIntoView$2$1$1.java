package androidx.compose.foundation.relocation;

import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BringIntoViewResponderNode$bringIntoView$2$1$1 extends FunctionReferenceImpl implements Function0 {
    public final /* synthetic */ KTypeImpl$arguments$2 $boundsProvider;
    public final /* synthetic */ NodeCoordinator $childCoordinates;
    public final /* synthetic */ BringIntoViewResponderNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2$1$1(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, KTypeImpl$arguments$2 kTypeImpl$arguments$2) {
        super(0, Intrinsics.Kotlin.class, "localRect", "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;", 0);
        this.this$0 = bringIntoViewResponderNode;
        this.$childCoordinates = nodeCoordinator;
        this.$boundsProvider = kTypeImpl$arguments$2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return BringIntoViewResponderNode.bringIntoView$localRect(this.this$0, this.$childCoordinates, this.$boundsProvider);
    }
}

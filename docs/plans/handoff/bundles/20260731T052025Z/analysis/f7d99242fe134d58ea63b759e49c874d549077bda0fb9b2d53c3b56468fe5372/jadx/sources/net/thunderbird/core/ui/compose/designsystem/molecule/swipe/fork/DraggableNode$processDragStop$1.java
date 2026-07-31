package net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork;

import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableNode$processDragStop$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DraggableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$processDragStop$1(DraggableNode draggableNode, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = draggableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        DraggableNode.access$processDragStop(this.this$0, null, this);
        return Unit.INSTANCE;
    }
}

package androidx.compose.ui.viewinterop;

import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.room.RoomDatabase$createConnectionManager$2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FocusTargetInteropNode extends DelegatingNode implements ObserverModifierNode, CompositionLocalConsumerModifierNode {
    public final FocusTargetNode focusTargetNode;
    public LazyLayoutPinnableItem pinnedHandle;

    public FocusTargetInteropNode() {
        FocusTargetNode focusTargetNode = new FocusTargetNode(0, 9, new RoomDatabase$createConnectionManager$2(2, this, FocusTargetInteropNode.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0, 3));
        delegate(focusTargetNode);
        this.focusTargetNode = focusTargetNode;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.observeReads(this, new KTypeImpl$arguments$2(9, ref$ObjectRef, this));
        LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) ref$ObjectRef.element;
        if (this.focusTargetNode.getFocusState().isFocused()) {
            LazyLayoutPinnableItem lazyLayoutPinnableItem2 = this.pinnedHandle;
            if (lazyLayoutPinnableItem2 != null) {
                lazyLayoutPinnableItem2.release();
            }
            if (lazyLayoutPinnableItem != null) {
                lazyLayoutPinnableItem.pin();
            } else {
                lazyLayoutPinnableItem = null;
            }
            this.pinnedHandle = lazyLayoutPinnableItem;
        }
    }
}

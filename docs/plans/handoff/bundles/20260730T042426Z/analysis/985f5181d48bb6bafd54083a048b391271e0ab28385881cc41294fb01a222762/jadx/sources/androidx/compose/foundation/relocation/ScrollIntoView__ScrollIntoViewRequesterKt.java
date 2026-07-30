package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ScrollIntoViewRequester.kt */
/* loaded from: classes.dex */
public abstract /* synthetic */ class ScrollIntoView__ScrollIntoViewRequesterKt {
    public static /* synthetic */ Object scrollIntoView$default(DelegatableNode delegatableNode, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return ScrollIntoView.scrollIntoView(delegatableNode, rect, continuation);
    }

    public static final Object scrollIntoView(DelegatableNode delegatableNode, final Rect rect, Continuation continuation) {
        Object bringChildIntoView;
        if (!delegatableNode.getNode().isAttached()) {
            return Unit.INSTANCE;
        }
        final LayoutCoordinates requireLayoutCoordinates = DelegatableNodeKt.requireLayoutCoordinates(delegatableNode);
        BringIntoViewParent findBringIntoViewParent = BringIntoViewRequesterKt.findBringIntoViewParent(delegatableNode);
        return (findBringIntoViewParent != null && (bringChildIntoView = findBringIntoViewParent.bringChildIntoView(requireLayoutCoordinates, new Function0() { // from class: androidx.compose.foundation.relocation.ScrollIntoView__ScrollIntoViewRequesterKt$scrollIntoView$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Rect invoke() {
                Rect rect2 = Rect.this;
                if (rect2 != null) {
                    return rect2;
                }
                LayoutCoordinates layoutCoordinates = requireLayoutCoordinates;
                if (!layoutCoordinates.isAttached()) {
                    layoutCoordinates = null;
                }
                if (layoutCoordinates != null) {
                    return SizeKt.m1212toRectuvyYCjk(IntSizeKt.m2491toSizeozmzZPI(layoutCoordinates.mo1753getSizeYbymL2g()));
                }
                return null;
            }
        }, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? bringChildIntoView : Unit.INSTANCE;
    }
}

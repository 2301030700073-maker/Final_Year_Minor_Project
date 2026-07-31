package androidx.compose.ui.platform;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidComposeView$indirectPointerNavigationGestureDetector$1 extends Lambda implements Function1 {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$indirectPointerNavigationGestureDetector$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        final int i = ((FocusDirection) obj).value;
        FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) this.this$0.getFocusOwner();
        AndroidComposeView androidComposeView = focusOwnerImpl.platformFocusOwner;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = Boolean.FALSE;
        FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
        Boolean m189focusSearchULY8qGw = focusOwnerImpl.m189focusSearchULY8qGw(i, androidComposeView.getEmbeddedViewFocusRect(), new Function1() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$moveFocus$focusSearchSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                ref$ObjectRef.element = Boolean.valueOf(((FocusTargetNode) obj2).m193requestFocus3ESFkO8(i));
                return (Boolean) ref$ObjectRef.element;
            }
        });
        if ((!Intrinsics.areEqual(m189focusSearchULY8qGw, Boolean.TRUE) || activeFocusTargetNode == focusOwnerImpl.getActiveFocusTargetNode()) && m189focusSearchULY8qGw != null && ref$ObjectRef.element != null && m189focusSearchULY8qGw.booleanValue()) {
            ((Boolean) ref$ObjectRef.element).getClass();
        }
        return Unit.INSTANCE;
    }
}

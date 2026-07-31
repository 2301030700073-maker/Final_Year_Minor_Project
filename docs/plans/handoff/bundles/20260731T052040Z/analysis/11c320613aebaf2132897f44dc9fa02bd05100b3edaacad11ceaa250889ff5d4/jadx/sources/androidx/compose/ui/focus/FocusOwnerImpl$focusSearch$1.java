package androidx.compose.ui.focus;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FocusOwnerImpl$focusSearch$1 extends Lambda implements Function1 {
    final /* synthetic */ Function1 $onFound;
    final /* synthetic */ FocusTargetNode $source;
    final /* synthetic */ FocusOwnerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusOwnerImpl$focusSearch$1(FocusTargetNode focusTargetNode, FocusOwnerImpl focusOwnerImpl, Function1 function1) {
        super(1);
        this.$source = focusTargetNode;
        this.this$0 = focusOwnerImpl;
        this.$onFound = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean booleanValue;
        FocusTargetNode focusTargetNode = (FocusTargetNode) obj;
        if (Intrinsics.areEqual(focusTargetNode, this.$source)) {
            booleanValue = false;
        } else {
            if (Intrinsics.areEqual(focusTargetNode, this.this$0.rootFocusNode)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Focus search landed at the root.");
                return null;
            }
            booleanValue = ((Boolean) this.$onFound.invoke(focusTargetNode)).booleanValue();
        }
        return Boolean.valueOf(booleanValue);
    }
}

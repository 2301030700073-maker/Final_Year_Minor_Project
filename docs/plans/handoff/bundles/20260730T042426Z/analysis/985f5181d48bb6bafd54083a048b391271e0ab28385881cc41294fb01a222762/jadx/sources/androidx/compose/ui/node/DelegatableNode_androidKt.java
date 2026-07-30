package androidx.compose.ui.node;

import android.view.View;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DelegatableNode.android.kt */
/* loaded from: classes.dex */
public abstract class DelegatableNode_androidKt {
    public static final View requireView(DelegatableNode delegatableNode) {
        if (!delegatableNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("Cannot get View because the Modifier node is not currently attached.");
        }
        Object requireOwner = LayoutNodeKt.requireOwner(DelegatableNodeKt.requireLayoutNode(delegatableNode));
        Intrinsics.checkNotNull(requireOwner, "null cannot be cast to non-null type android.view.View");
        return (View) requireOwner;
    }
}

package androidx.compose.ui.platform;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.pointer.HoverIconModifierNode;
import androidx.compose.ui.node.TraversableNode;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidComposeView$focusSearch$searchResult$1 extends Lambda implements Function1 {
    public final /* synthetic */ Ref$ObjectRef $focusTarget;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidComposeView$focusSearch$searchResult$1(Ref$ObjectRef ref$ObjectRef, int i) {
        super(1);
        this.$r8$classId = i;
        this.$focusTarget = ref$ObjectRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z;
        int i = this.$r8$classId;
        Ref$ObjectRef ref$ObjectRef = this.$focusTarget;
        switch (i) {
            case 0:
                ref$ObjectRef.element = (FocusTargetNode) obj;
                return Boolean.TRUE;
            case 1:
                Object obj2 = (TraversableNode) obj;
                if (((Modifier.Node) obj2).node.isAttached) {
                    ref$ObjectRef.element = obj2;
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) obj;
                Object obj3 = ref$ObjectRef.element;
                if (obj3 == null && hoverIconModifierNode.cursorInBoundsOfNode) {
                    ref$ObjectRef.element = hoverIconModifierNode;
                } else if (obj3 != null) {
                    hoverIconModifierNode.getClass();
                }
                return Boolean.TRUE;
        }
    }
}

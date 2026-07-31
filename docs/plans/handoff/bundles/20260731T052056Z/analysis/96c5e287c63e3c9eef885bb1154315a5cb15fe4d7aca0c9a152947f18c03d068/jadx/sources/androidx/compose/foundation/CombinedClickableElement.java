package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/CombinedClickableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/CombinedClickableNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CombinedClickableElement extends ModifierNodeElement {
    public final MutableInteractionSourceImpl interactionSource;
    public final Function0 onClick;
    public final Function0 onLongClick;
    public final boolean useLocalIndication;

    public CombinedClickableElement(MutableInteractionSourceImpl mutableInteractionSourceImpl, Function0 function0, Function0 function02, boolean z) {
        this.interactionSource = mutableInteractionSourceImpl;
        this.useLocalIndication = z;
        this.onClick = function0;
        this.onLongClick = function02;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new CombinedClickableNode(this.interactionSource, this.onClick, this.onLongClick, this.useLocalIndication);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CombinedClickableElement.class != obj.getClass()) {
            return false;
        }
        CombinedClickableElement combinedClickableElement = (CombinedClickableElement) obj;
        return Intrinsics.areEqual(this.interactionSource, combinedClickableElement.interactionSource) && this.useLocalIndication == combinedClickableElement.useLocalIndication && this.onClick == combinedClickableElement.onClick && this.onLongClick == combinedClickableElement.onLongClick;
    }

    public final int hashCode() {
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        int hashCode = (this.onClick.hashCode() + ((((((mutableInteractionSourceImpl != null ? mutableInteractionSourceImpl.hashCode() : 0) * 961) + (this.useLocalIndication ? 1231 : 1237)) * 31) + 1231) * 29791)) * 961;
        Function0 function0 = this.onLongClick;
        return ((hashCode + (function0 != null ? function0.hashCode() : 0)) * 961) + 1231;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        boolean z;
        CombinedClickableNode combinedClickableNode = (CombinedClickableNode) node;
        combinedClickableNode.hapticFeedbackEnabled = true;
        boolean z2 = combinedClickableNode.onLongClick == null;
        Function0 function0 = this.onLongClick;
        if (z2 != (function0 == null)) {
            combinedClickableNode.disposeInteractions();
            HitTestResultKt.invalidateSemantics(combinedClickableNode);
            z = true;
        } else {
            z = false;
        }
        combinedClickableNode.onLongClick = function0;
        boolean z3 = !combinedClickableNode.enabled ? true : z;
        combinedClickableNode.m36updateCommonO2vRcR0(this.interactionSource, null, this.useLocalIndication, true, null, null, this.onClick);
        if (z3) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = combinedClickableNode.pointerInputNode;
            if (suspendingPointerInputModifierNodeImpl != null) {
                suspendingPointerInputModifierNodeImpl.resetPointerInputHandler();
            }
            combinedClickableNode.cancelInput$1(false);
            combinedClickableNode.cancelInput$1(true);
        }
    }
}

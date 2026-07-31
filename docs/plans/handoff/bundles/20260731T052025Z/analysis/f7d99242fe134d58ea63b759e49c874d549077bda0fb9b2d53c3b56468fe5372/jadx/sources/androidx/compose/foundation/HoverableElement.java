package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HoverableElement extends ModifierNodeElement {
    public final MutableInteractionSourceImpl interactionSource;

    public HoverableElement(MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        this.interactionSource = mutableInteractionSourceImpl;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        HoverableNode hoverableNode = new HoverableNode();
        hoverableNode.interactionSource = this.interactionSource;
        return hoverableNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HoverableElement) && Intrinsics.areEqual(((HoverableElement) obj).interactionSource, this.interactionSource);
    }

    public final int hashCode() {
        return this.interactionSource.hashCode() * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        HoverableNode hoverableNode = (HoverableNode) node;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = hoverableNode.interactionSource;
        MutableInteractionSourceImpl mutableInteractionSourceImpl2 = this.interactionSource;
        if (Intrinsics.areEqual(mutableInteractionSourceImpl, mutableInteractionSourceImpl2)) {
            return;
        }
        hoverableNode.tryEmitExit();
        hoverableNode.interactionSource = mutableInteractionSourceImpl2;
    }
}

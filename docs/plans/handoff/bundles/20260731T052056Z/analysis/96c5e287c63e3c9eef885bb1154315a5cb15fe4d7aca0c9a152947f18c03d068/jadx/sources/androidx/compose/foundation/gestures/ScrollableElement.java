package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/gestures/ScrollableNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScrollableElement extends ModifierNodeElement {
    public final boolean enabled;
    public final MutableInteractionSourceImpl interactionSource;
    public final Orientation orientation;
    public final boolean reverseDirection;
    public final ScrollableState state;

    public ScrollableElement(ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        this.state = scrollableState;
        this.orientation = orientation;
        this.enabled = z;
        this.reverseDirection = z2;
        this.interactionSource = mutableInteractionSourceImpl;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new ScrollableNode(null, null, null, this.orientation, this.state, this.interactionSource, this.enabled, this.reverseDirection);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScrollableElement)) {
            return false;
        }
        ScrollableElement scrollableElement = (ScrollableElement) obj;
        return Intrinsics.areEqual(this.state, scrollableElement.state) && this.orientation == scrollableElement.orientation && this.enabled == scrollableElement.enabled && this.reverseDirection == scrollableElement.reverseDirection && Intrinsics.areEqual(this.interactionSource, scrollableElement.interactionSource);
    }

    public final int hashCode() {
        int hashCode = (((((this.orientation.hashCode() + (this.state.hashCode() * 31)) * 961) + (this.enabled ? 1231 : 1237)) * 31) + (this.reverseDirection ? 1231 : 1237)) * 961;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        return (hashCode + (mutableInteractionSourceImpl != null ? mutableInteractionSourceImpl.hashCode() : 0)) * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((ScrollableNode) node).update(null, null, null, this.orientation, this.state, this.interactionSource, this.enabled, this.reverseDirection);
    }
}

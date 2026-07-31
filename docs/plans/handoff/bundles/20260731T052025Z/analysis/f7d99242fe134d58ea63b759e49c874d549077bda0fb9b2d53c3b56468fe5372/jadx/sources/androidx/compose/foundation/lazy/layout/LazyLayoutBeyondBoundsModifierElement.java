package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class LazyLayoutBeyondBoundsModifierElement extends ModifierNodeElement {
    public final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    public final Orientation orientation;
    public final LazyLayoutBeyondBoundsState state;

    public LazyLayoutBeyondBoundsModifierElement(LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, Orientation orientation) {
        this.state = lazyLayoutBeyondBoundsState;
        this.beyondBoundsInfo = lazyLayoutBeyondBoundsInfo;
        this.orientation = orientation;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        LazyLayoutBeyondBoundsProviderModifierNode lazyLayoutBeyondBoundsProviderModifierNode = new LazyLayoutBeyondBoundsProviderModifierNode();
        lazyLayoutBeyondBoundsProviderModifierNode.state = this.state;
        lazyLayoutBeyondBoundsProviderModifierNode.beyondBoundsInfo = this.beyondBoundsInfo;
        lazyLayoutBeyondBoundsProviderModifierNode.orientation = this.orientation;
        return lazyLayoutBeyondBoundsProviderModifierNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyLayoutBeyondBoundsModifierElement)) {
            return false;
        }
        LazyLayoutBeyondBoundsModifierElement lazyLayoutBeyondBoundsModifierElement = (LazyLayoutBeyondBoundsModifierElement) obj;
        return Intrinsics.areEqual(this.state, lazyLayoutBeyondBoundsModifierElement.state) && Intrinsics.areEqual(this.beyondBoundsInfo, lazyLayoutBeyondBoundsModifierElement.beyondBoundsInfo) && this.orientation == lazyLayoutBeyondBoundsModifierElement.orientation;
    }

    public final int hashCode() {
        return this.orientation.hashCode() + ((((this.beyondBoundsInfo.hashCode() + (this.state.hashCode() * 31)) * 31) + 1237) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        LazyLayoutBeyondBoundsProviderModifierNode lazyLayoutBeyondBoundsProviderModifierNode = (LazyLayoutBeyondBoundsProviderModifierNode) node;
        lazyLayoutBeyondBoundsProviderModifierNode.state = this.state;
        lazyLayoutBeyondBoundsProviderModifierNode.beyondBoundsInfo = this.beyondBoundsInfo;
        lazyLayoutBeyondBoundsProviderModifierNode.orientation = this.orientation;
    }
}

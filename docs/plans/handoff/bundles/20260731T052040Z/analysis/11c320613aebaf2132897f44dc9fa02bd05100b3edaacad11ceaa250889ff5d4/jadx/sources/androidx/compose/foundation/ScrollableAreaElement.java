package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class ScrollableAreaElement extends ModifierNodeElement {
    public final BringIntoViewSpec bringIntoViewSpec;
    public final boolean enabled;
    public final FlingBehavior flingBehavior;
    public final MutableInteractionSource interactionSource;
    public final Orientation orientation;
    public final AndroidEdgeEffectOverscrollEffect overscrollEffect;
    public final ScrollableState state;

    public ScrollableAreaElement(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z) {
        this.state = scrollableState;
        this.orientation = orientation;
        this.enabled = z;
        this.flingBehavior = flingBehavior;
        this.interactionSource = mutableInteractionSource;
        this.bringIntoViewSpec = bringIntoViewSpec;
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ScrollableAreaNode scrollableAreaNode = new ScrollableAreaNode();
        scrollableAreaNode.state = this.state;
        scrollableAreaNode.orientation = this.orientation;
        scrollableAreaNode.enabled = this.enabled;
        scrollableAreaNode.flingBehavior = this.flingBehavior;
        scrollableAreaNode.interactionSource = this.interactionSource;
        scrollableAreaNode.bringIntoViewSpec = this.bringIntoViewSpec;
        scrollableAreaNode.userProvidedOverscrollEffect = this.overscrollEffect;
        return scrollableAreaNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ScrollableAreaElement.class != obj.getClass()) {
            return false;
        }
        ScrollableAreaElement scrollableAreaElement = (ScrollableAreaElement) obj;
        return Intrinsics.areEqual(this.state, scrollableAreaElement.state) && this.orientation == scrollableAreaElement.orientation && this.enabled == scrollableAreaElement.enabled && Intrinsics.areEqual(this.flingBehavior, scrollableAreaElement.flingBehavior) && Intrinsics.areEqual(this.interactionSource, scrollableAreaElement.interactionSource) && Intrinsics.areEqual(this.bringIntoViewSpec, scrollableAreaElement.bringIntoViewSpec) && Intrinsics.areEqual(this.overscrollEffect, scrollableAreaElement.overscrollEffect);
    }

    public final int hashCode() {
        int hashCode = (((((this.orientation.hashCode() + (this.state.hashCode() * 31)) * 31) + (this.enabled ? 1231 : 1237)) * 31) + 1237) * 31;
        FlingBehavior flingBehavior = this.flingBehavior;
        int hashCode2 = (hashCode + (flingBehavior != null ? flingBehavior.hashCode() : 0)) * 31;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        int hashCode3 = (hashCode2 + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        BringIntoViewSpec bringIntoViewSpec = this.bringIntoViewSpec;
        int hashCode4 = (((hashCode3 + (bringIntoViewSpec != null ? bringIntoViewSpec.hashCode() : 0)) * 31) + 1237) * 31;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
        return hashCode4 + (androidEdgeEffectOverscrollEffect != null ? androidEdgeEffectOverscrollEffect.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        ((ScrollableAreaNode) node).update(this.overscrollEffect, this.bringIntoViewSpec, this.flingBehavior, this.orientation, this.state, mutableInteractionSource, this.enabled);
    }
}

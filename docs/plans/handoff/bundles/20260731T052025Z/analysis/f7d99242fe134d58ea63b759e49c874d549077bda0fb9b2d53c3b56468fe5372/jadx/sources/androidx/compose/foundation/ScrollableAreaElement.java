package androidx.compose.foundation;

import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollableAreaElement extends ModifierNodeElement {
    public final boolean enabled;
    public final DefaultFlingBehavior flingBehavior;
    public final MutableInteractionSourceImpl interactionSource;
    public final Orientation orientation;
    public final AndroidEdgeEffectOverscrollEffect overscrollEffect;
    public final ScrollableState state;
    public final boolean useLocalOverscrollFactory;

    public ScrollableAreaElement(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, DefaultFlingBehavior defaultFlingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, boolean z2) {
        this.state = scrollableState;
        this.orientation = orientation;
        this.enabled = z;
        this.flingBehavior = defaultFlingBehavior;
        this.interactionSource = mutableInteractionSourceImpl;
        this.useLocalOverscrollFactory = z2;
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
        scrollableAreaNode.useLocalOverscrollFactory = this.useLocalOverscrollFactory;
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
        return Intrinsics.areEqual(this.state, scrollableAreaElement.state) && this.orientation == scrollableAreaElement.orientation && this.enabled == scrollableAreaElement.enabled && Intrinsics.areEqual(this.flingBehavior, scrollableAreaElement.flingBehavior) && Intrinsics.areEqual(this.interactionSource, scrollableAreaElement.interactionSource) && this.useLocalOverscrollFactory == scrollableAreaElement.useLocalOverscrollFactory && Intrinsics.areEqual(this.overscrollEffect, scrollableAreaElement.overscrollEffect);
    }

    public final int hashCode() {
        int hashCode = (((((this.orientation.hashCode() + (this.state.hashCode() * 31)) * 31) + (this.enabled ? 1231 : 1237)) * 31) + 1237) * 31;
        DefaultFlingBehavior defaultFlingBehavior = this.flingBehavior;
        int hashCode2 = (hashCode + (defaultFlingBehavior != null ? defaultFlingBehavior.hashCode() : 0)) * 31;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        int hashCode3 = (((hashCode2 + (mutableInteractionSourceImpl != null ? mutableInteractionSourceImpl.hashCode() : 0)) * 961) + (this.useLocalOverscrollFactory ? 1231 : 1237)) * 31;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
        return hashCode3 + (androidEdgeEffectOverscrollEffect != null ? androidEdgeEffectOverscrollEffect.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((ScrollableAreaNode) node).update(this.overscrollEffect, this.flingBehavior, this.orientation, this.state, this.interactionSource, this.useLocalOverscrollFactory, this.enabled);
    }
}

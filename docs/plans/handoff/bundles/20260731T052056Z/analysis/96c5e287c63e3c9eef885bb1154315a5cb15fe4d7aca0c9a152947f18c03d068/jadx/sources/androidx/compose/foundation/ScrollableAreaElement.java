package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/ScrollableAreaElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/ScrollableAreaNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScrollableAreaElement extends ModifierNodeElement {
    public final BringIntoViewSpec bringIntoViewSpec;
    public final boolean enabled;
    public final FlingBehavior flingBehavior;
    public final MutableInteractionSourceImpl interactionSource;
    public final Orientation orientation;
    public final AndroidEdgeEffectOverscrollEffect overscrollEffect;
    public final ScrollableState state;
    public final boolean useLocalOverscrollFactory;

    public ScrollableAreaElement(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, boolean z2) {
        this.state = scrollableState;
        this.orientation = orientation;
        this.enabled = z;
        this.flingBehavior = flingBehavior;
        this.interactionSource = mutableInteractionSourceImpl;
        this.bringIntoViewSpec = bringIntoViewSpec;
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
        scrollableAreaNode.bringIntoViewSpec = this.bringIntoViewSpec;
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
        return this.state.equals(scrollableAreaElement.state) && this.orientation == scrollableAreaElement.orientation && this.enabled == scrollableAreaElement.enabled && Intrinsics.areEqual(this.flingBehavior, scrollableAreaElement.flingBehavior) && Intrinsics.areEqual(this.interactionSource, scrollableAreaElement.interactionSource) && Intrinsics.areEqual(this.bringIntoViewSpec, scrollableAreaElement.bringIntoViewSpec) && this.useLocalOverscrollFactory == scrollableAreaElement.useLocalOverscrollFactory && Intrinsics.areEqual(this.overscrollEffect, scrollableAreaElement.overscrollEffect);
    }

    public final int hashCode() {
        int hashCode = (((((this.orientation.hashCode() + (this.state.hashCode() * 31)) * 31) + (this.enabled ? 1231 : 1237)) * 31) + 1237) * 31;
        FlingBehavior flingBehavior = this.flingBehavior;
        int hashCode2 = (hashCode + (flingBehavior != null ? flingBehavior.hashCode() : 0)) * 31;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        int hashCode3 = (hashCode2 + (mutableInteractionSourceImpl != null ? mutableInteractionSourceImpl.hashCode() : 0)) * 31;
        BringIntoViewSpec bringIntoViewSpec = this.bringIntoViewSpec;
        int hashCode4 = (((hashCode3 + (bringIntoViewSpec != null ? bringIntoViewSpec.hashCode() : 0)) * 31) + (this.useLocalOverscrollFactory ? 1231 : 1237)) * 31;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
        return hashCode4 + (androidEdgeEffectOverscrollEffect != null ? androidEdgeEffectOverscrollEffect.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        ((ScrollableAreaNode) node).update(this.overscrollEffect, this.bringIntoViewSpec, this.flingBehavior, this.orientation, this.state, mutableInteractionSourceImpl, this.useLocalOverscrollFactory, this.enabled);
    }
}

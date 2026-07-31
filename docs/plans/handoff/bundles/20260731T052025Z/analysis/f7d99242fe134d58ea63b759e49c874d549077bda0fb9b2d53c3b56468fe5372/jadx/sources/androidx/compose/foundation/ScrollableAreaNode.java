package androidx.compose.foundation;

import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollableAreaNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public boolean enabled;
    public DefaultFlingBehavior flingBehavior;
    public MutableInteractionSourceImpl interactionSource;
    public AndroidEdgeEffectOverscrollFactory localOverscrollFactory;
    public AndroidEdgeEffectOverscrollEffect localOverscrollFactoryCreatedOverscrollEffect;
    public Orientation orientation;
    public DelegatableNode overscrollNode;
    public ScrollableNode scrollableNode;
    public boolean shouldReverseDirection;
    public ScrollableState state;
    public boolean useLocalOverscrollFactory;
    public AndroidEdgeEffectOverscrollEffect userProvidedOverscrollEffect;

    public final void attachOverscrollNodeIfNeeded() {
        DelegatableNode delegatableNode = this.overscrollNode;
        if (delegatableNode != null) {
            if (((Modifier.Node) delegatableNode).node.isAttached) {
                return;
            }
            delegate(delegatableNode);
            return;
        }
        if (this.useLocalOverscrollFactory) {
            HitTestResultKt.observeReads(this, new ScrollableAreaNode$$ExternalSyntheticLambda0(this, 0));
        }
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.useLocalOverscrollFactory ? this.localOverscrollFactoryCreatedOverscrollEffect : this.userProvidedOverscrollEffect;
        if (androidEdgeEffectOverscrollEffect != null) {
            DelegatingNode delegatingNode = androidEdgeEffectOverscrollEffect.node;
            if (delegatingNode.node.isAttached) {
                return;
            }
            delegate(delegatingNode);
            this.overscrollNode = delegatingNode;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.shouldReverseDirection = shouldReverseDirection();
        attachOverscrollNodeIfNeeded();
        if (this.scrollableNode == null) {
            ScrollableState scrollableState = this.state;
            ScrollableNode scrollableNode = new ScrollableNode(this.useLocalOverscrollFactory ? this.localOverscrollFactoryCreatedOverscrollEffect : this.userProvidedOverscrollEffect, this.flingBehavior, this.orientation, scrollableState, this.interactionSource, this.enabled, this.shouldReverseDirection);
            delegate(scrollableNode);
            this.scrollableNode = scrollableNode;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        DelegatableNode delegatableNode = this.overscrollNode;
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onLayoutDirectionChange() {
        boolean shouldReverseDirection = shouldReverseDirection();
        if (this.shouldReverseDirection != shouldReverseDirection) {
            this.shouldReverseDirection = shouldReverseDirection;
            ScrollableState scrollableState = this.state;
            Orientation orientation = this.orientation;
            boolean z = this.useLocalOverscrollFactory;
            update(z ? this.localOverscrollFactoryCreatedOverscrollEffect : this.userProvidedOverscrollEffect, this.flingBehavior, orientation, scrollableState, this.interactionSource, z, this.enabled);
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) HitTestResultKt.currentValueOf(this, OverscrollKt.LocalOverscrollFactory);
        if (Intrinsics.areEqual(androidEdgeEffectOverscrollFactory, this.localOverscrollFactory)) {
            return;
        }
        this.localOverscrollFactory = androidEdgeEffectOverscrollFactory;
        this.localOverscrollFactoryCreatedOverscrollEffect = null;
        DelegatableNode delegatableNode = this.overscrollNode;
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
        this.overscrollNode = null;
        attachOverscrollNodeIfNeeded();
        ScrollableNode scrollableNode = this.scrollableNode;
        if (scrollableNode != null) {
            ScrollableState scrollableState = this.state;
            Orientation orientation = this.orientation;
            scrollableNode.update(this.useLocalOverscrollFactory ? this.localOverscrollFactoryCreatedOverscrollEffect : this.userProvidedOverscrollEffect, this.flingBehavior, orientation, scrollableState, this.interactionSource, this.enabled, this.shouldReverseDirection);
        }
    }

    public final boolean shouldReverseDirection() {
        return (this.isAttached ? HitTestResultKt.requireLayoutNode(this).layoutDirection : LayoutDirection.Ltr) != LayoutDirection.Rtl || this.orientation == Orientation.Vertical;
    }

    public final void update(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, DefaultFlingBehavior defaultFlingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, boolean z2) {
        boolean z3;
        this.state = scrollableState;
        this.orientation = orientation;
        boolean z4 = true;
        if (this.useLocalOverscrollFactory != z) {
            this.useLocalOverscrollFactory = z;
            z3 = true;
        } else {
            z3 = false;
        }
        if (Intrinsics.areEqual(this.userProvidedOverscrollEffect, androidEdgeEffectOverscrollEffect)) {
            z4 = false;
        } else {
            this.userProvidedOverscrollEffect = androidEdgeEffectOverscrollEffect;
        }
        if (z3 || (z4 && !z)) {
            DelegatableNode delegatableNode = this.overscrollNode;
            if (delegatableNode != null) {
                undelegate(delegatableNode);
            }
            this.overscrollNode = null;
            attachOverscrollNodeIfNeeded();
        }
        this.enabled = z2;
        this.flingBehavior = defaultFlingBehavior;
        this.interactionSource = mutableInteractionSourceImpl;
        boolean shouldReverseDirection = shouldReverseDirection();
        this.shouldReverseDirection = shouldReverseDirection;
        ScrollableNode scrollableNode = this.scrollableNode;
        if (scrollableNode != null) {
            scrollableNode.update(this.useLocalOverscrollFactory ? this.localOverscrollFactoryCreatedOverscrollEffect : this.userProvidedOverscrollEffect, defaultFlingBehavior, orientation, scrollableState, mutableInteractionSourceImpl, z2, shouldReverseDirection);
        }
    }
}

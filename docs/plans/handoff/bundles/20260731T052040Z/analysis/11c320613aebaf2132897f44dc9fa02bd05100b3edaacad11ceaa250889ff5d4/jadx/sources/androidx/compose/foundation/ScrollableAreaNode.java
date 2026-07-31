package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollableAreaNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public BringIntoViewSpec bringIntoViewSpec;
    public boolean enabled;
    public FlingBehavior flingBehavior;
    public MutableInteractionSource interactionSource;
    public AndroidEdgeEffectOverscrollFactory localOverscrollFactory;
    public Orientation orientation;
    public DelegatableNode overscrollNode;
    public ScrollableNode scrollableNode;
    public boolean shouldReverseDirection;
    public ScrollableState state;
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
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.userProvidedOverscrollEffect;
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
            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.userProvidedOverscrollEffect;
            FlingBehavior flingBehavior = this.flingBehavior;
            Orientation orientation = this.orientation;
            boolean z = this.enabled;
            boolean z2 = this.shouldReverseDirection;
            ScrollableNode scrollableNode = new ScrollableNode(androidEdgeEffectOverscrollEffect, this.bringIntoViewSpec, flingBehavior, orientation, scrollableState, this.interactionSource, z, z2);
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
            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.userProvidedOverscrollEffect;
            boolean z = this.enabled;
            update(androidEdgeEffectOverscrollEffect, this.bringIntoViewSpec, this.flingBehavior, orientation, scrollableState, this.interactionSource, z);
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) HitTestResultKt.currentValueOf(this, OverscrollKt.LocalOverscrollFactory);
        if (Intrinsics.areEqual(androidEdgeEffectOverscrollFactory, this.localOverscrollFactory)) {
            return;
        }
        this.localOverscrollFactory = androidEdgeEffectOverscrollFactory;
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
            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.userProvidedOverscrollEffect;
            boolean z = this.enabled;
            boolean z2 = this.shouldReverseDirection;
            scrollableNode.update(androidEdgeEffectOverscrollEffect, this.bringIntoViewSpec, this.flingBehavior, orientation, scrollableState, this.interactionSource, z, z2);
        }
    }

    public final boolean shouldReverseDirection() {
        return (this.isAttached ? HitTestResultKt.requireLayoutNode(this).layoutDirection : LayoutDirection.Ltr) != LayoutDirection.Rtl || this.orientation == Orientation.Vertical;
    }

    public final void update(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z) {
        this.state = scrollableState;
        this.orientation = orientation;
        if (!Intrinsics.areEqual(this.userProvidedOverscrollEffect, androidEdgeEffectOverscrollEffect)) {
            this.userProvidedOverscrollEffect = androidEdgeEffectOverscrollEffect;
            DelegatableNode delegatableNode = this.overscrollNode;
            if (delegatableNode != null) {
                undelegate(delegatableNode);
            }
            this.overscrollNode = null;
            attachOverscrollNodeIfNeeded();
        }
        this.enabled = z;
        this.flingBehavior = flingBehavior;
        this.interactionSource = mutableInteractionSource;
        this.bringIntoViewSpec = bringIntoViewSpec;
        boolean shouldReverseDirection = shouldReverseDirection();
        this.shouldReverseDirection = shouldReverseDirection;
        ScrollableNode scrollableNode = this.scrollableNode;
        if (scrollableNode != null) {
            scrollableNode.update(this.userProvidedOverscrollEffect, bringIntoViewSpec, flingBehavior, orientation, scrollableState, mutableInteractionSource, z, shouldReverseDirection);
        }
    }
}

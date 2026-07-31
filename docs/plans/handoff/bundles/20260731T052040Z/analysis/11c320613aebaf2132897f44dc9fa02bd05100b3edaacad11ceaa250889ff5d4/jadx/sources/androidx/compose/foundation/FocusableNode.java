package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.room.RoomDatabase$createConnectionManager$2;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.network.NetworkFetcher$fetch$2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FocusableNode extends DelegatingNode implements SemanticsModifierNode, GlobalPositionAwareModifierNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, TraversableNode {
    public static final NoIndicationInstance TraverseKey = new NoIndicationInstance();
    public final FocusTargetNode focusTargetNode;
    public FocusInteraction$Focus focusedInteraction;
    public NodeCoordinator globalLayoutCoordinates;
    public MutableInteractionSource interactionSource;
    public final NetworkFetcher$fetch$2 onFocusChange;
    public LazyLayoutPinnableItem pinnedHandle;

    public FocusableNode(MutableInteractionSource mutableInteractionSource, NetworkFetcher$fetch$2 networkFetcher$fetch$2) {
        this.interactionSource = mutableInteractionSource;
        this.onFocusChange = networkFetcher$fetch$2;
        FocusTargetNode focusTargetNode = new FocusTargetNode(0, new RoomDatabase$createConnectionManager$2(2, this, FocusableNode.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0, 1), 10);
        delegate(focusTargetNode);
        this.focusTargetNode = focusTargetNode;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        boolean isFocused = this.focusTargetNode.getFocusState().isFocused();
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.Focused;
        KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[4];
        semanticsPropertyReceiver.set(semanticsPropertyKey, Boolean.valueOf(isFocused));
        semanticsPropertyReceiver.set(SemanticsActions.RequestFocus, new AccessibilityAction(null, new RoomDatabase$closeBarrier$1(0, this, FocusableNode.class, "requestFocus", "requestFocus()Z", 0, 1)));
    }

    public final void emitWithFallback(MutableInteractionSource mutableInteractionSource, Interaction interaction) {
        if (!this.isAttached) {
            ((MutableInteractionSourceImpl) mutableInteractionSource).tryEmit(interaction);
        } else {
            Job job = (Job) ((ContextScope) getCoroutineScope()).coroutineContext.get(Job.Key.$$INSTANCE);
            JobKt.launch$default(getCoroutineScope(), null, null, new FocusableNode$emitWithFallback$1(mutableInteractionSource, interaction, job != null ? job.invokeOnCompletion(new Recomposer$$ExternalSyntheticLambda4(mutableInteractionSource, interaction, 10)) : null, null), 3);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return TraverseKey;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void onGloballyPositioned(NodeCoordinator nodeCoordinator) {
        this.globalLayoutCoordinates = nodeCoordinator;
        if (this.focusTargetNode.getFocusState().isFocused()) {
            boolean z = nodeCoordinator.getTail().isAttached;
            NoIndicationInstance noIndicationInstance = FocusedBoundsObserverNode.TraverseKey;
            if (!z) {
                if (this.isAttached) {
                    HitTestResultKt.findNearestAncestor(this, noIndicationInstance);
                }
            } else {
                NodeCoordinator nodeCoordinator2 = this.globalLayoutCoordinates;
                if (nodeCoordinator2 != null && nodeCoordinator2.getTail().isAttached && this.isAttached) {
                    HitTestResultKt.findNearestAncestor(this, noIndicationInstance);
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.observeReads(this, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(ref$ObjectRef, this, 3));
        LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) ref$ObjectRef.element;
        if (this.focusTargetNode.getFocusState().isFocused()) {
            LazyLayoutPinnableItem lazyLayoutPinnableItem2 = this.pinnedHandle;
            if (lazyLayoutPinnableItem2 != null) {
                lazyLayoutPinnableItem2.release();
            }
            if (lazyLayoutPinnableItem != null) {
                lazyLayoutPinnableItem.pin();
            } else {
                lazyLayoutPinnableItem = null;
            }
            this.pinnedHandle = lazyLayoutPinnableItem;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        LazyLayoutPinnableItem lazyLayoutPinnableItem = this.pinnedHandle;
        if (lazyLayoutPinnableItem != null) {
            lazyLayoutPinnableItem.release();
        }
        this.pinnedHandle = null;
    }

    public final void update(MutableInteractionSource mutableInteractionSource) {
        FocusInteraction$Focus focusInteraction$Focus;
        if (Intrinsics.areEqual(this.interactionSource, mutableInteractionSource)) {
            return;
        }
        MutableInteractionSource mutableInteractionSource2 = this.interactionSource;
        if (mutableInteractionSource2 != null && (focusInteraction$Focus = this.focusedInteraction) != null) {
            ((MutableInteractionSourceImpl) mutableInteractionSource2).tryEmit(new FocusInteraction$Unfocus(focusInteraction$Focus));
        }
        this.focusedInteraction = null;
        this.interactionSource = mutableInteractionSource;
    }
}

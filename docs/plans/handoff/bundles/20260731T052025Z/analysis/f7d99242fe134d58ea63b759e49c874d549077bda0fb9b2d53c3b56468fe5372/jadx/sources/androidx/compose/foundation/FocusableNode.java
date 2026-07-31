package androidx.compose.foundation;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.compose.foundation.GestureNode;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
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
import androidx.room.InvalidationTracker$implementation$1;
import androidx.room.RoomDatabase$closeBarrier$1;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusableNode extends DelegatingNode implements SemanticsModifierNode, GlobalPositionAwareModifierNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, TraversableNode {
    public static final GestureNode.TraverseKey TraverseKey = new GestureNode.TraverseKey();
    public final FocusTargetNode focusTargetNode;
    public FocusInteraction$Focus focusedInteraction;
    public NodeCoordinator globalLayoutCoordinates;
    public MutableInteractionSourceImpl interactionSource;
    public final Function1 onFocusChange;
    public LazyLayoutPinnableItem pinnedHandle;

    public FocusableNode(MutableInteractionSourceImpl mutableInteractionSourceImpl, int i, InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        this.interactionSource = mutableInteractionSourceImpl;
        this.onFocusChange = invalidationTracker$implementation$1;
        FocusTargetNode focusTargetNode = new FocusTargetNode(i, new MessageViewFragment$onCreate$1(2, this, FocusableNode.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0, 2), 10);
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

    public final void emitWithFallback(MutableInteractionSourceImpl mutableInteractionSourceImpl, Interaction interaction) {
        if (!this.isAttached) {
            mutableInteractionSourceImpl.tryEmit(interaction);
            return;
        }
        Job job = (Job) ((ContextScope) getCoroutineScope()).coroutineContext.get(Job.Key.$$INSTANCE);
        JobKt.launch$default(getCoroutineScope(), null, null, new DraggableNode$drag$2(mutableInteractionSourceImpl, interaction, job != null ? job.invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(20, mutableInteractionSourceImpl, interaction)) : null, (Continuation) null, 12), 3);
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
            GestureNode.TraverseKey traverseKey = FocusedBoundsObserverNode.TraverseKey;
            if (!z) {
                if (this.isAttached) {
                    HitTestResultKt.findNearestAncestor(this, traverseKey);
                }
            } else {
                NodeCoordinator nodeCoordinator2 = this.globalLayoutCoordinates;
                if (nodeCoordinator2 != null && nodeCoordinator2.getTail().isAttached && this.isAttached) {
                    HitTestResultKt.findNearestAncestor(this, traverseKey);
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.observeReads(this, new Recomposer$$ExternalSyntheticLambda6(10, ref$ObjectRef, this));
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

    public final void update(MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        FocusInteraction$Focus focusInteraction$Focus;
        if (Intrinsics.areEqual(this.interactionSource, mutableInteractionSourceImpl)) {
            return;
        }
        MutableInteractionSourceImpl mutableInteractionSourceImpl2 = this.interactionSource;
        if (mutableInteractionSourceImpl2 != null && (focusInteraction$Focus = this.focusedInteraction) != null) {
            mutableInteractionSourceImpl2.tryEmit(new FocusInteraction$Unfocus(focusInteraction$Focus));
        }
        this.focusedInteraction = null;
        this.interactionSource = mutableInteractionSourceImpl;
    }
}

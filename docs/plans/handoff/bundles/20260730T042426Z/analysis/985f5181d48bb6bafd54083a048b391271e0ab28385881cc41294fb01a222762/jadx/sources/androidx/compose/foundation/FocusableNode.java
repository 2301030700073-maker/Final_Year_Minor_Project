package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNodeKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusTargetModifierNodeKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* compiled from: Focusable.kt */
/* loaded from: classes.dex */
public final class FocusableNode extends DelegatingNode implements FocusEventModifierNode, SemanticsModifierNode, GlobalPositionAwareModifierNode, FocusRequesterModifierNode {
    private FocusState focusState;
    private final FocusableInteractionNode focusableInteractionNode;
    private final FocusablePinnableContainerNode focusablePinnableContainer = (FocusablePinnableContainerNode) delegate(new FocusablePinnableContainerNode());
    private final FocusedBoundsNode focusedBoundsNode = (FocusedBoundsNode) delegate(new FocusedBoundsNode());
    private final boolean shouldAutoInvalidate;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return SemanticsModifierNode.CC.$default$getShouldClearDescendantSemantics(this);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return SemanticsModifierNode.CC.$default$getShouldMergeDescendantSemantics(this);
    }

    public FocusableNode(MutableInteractionSource mutableInteractionSource) {
        this.focusableInteractionNode = (FocusableInteractionNode) delegate(new FocusableInteractionNode(mutableInteractionSource));
        delegate(FocusTargetModifierNodeKt.FocusTargetModifierNode());
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    public final void update(MutableInteractionSource mutableInteractionSource) {
        this.focusableInteractionNode.update(mutableInteractionSource);
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        if (Intrinsics.areEqual(this.focusState, focusState)) {
            return;
        }
        boolean isFocused = focusState.isFocused();
        if (isFocused) {
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new FocusableNode$onFocusEvent$1(this, null), 3, null);
        }
        if (isAttached()) {
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        this.focusableInteractionNode.setFocus(isFocused);
        this.focusedBoundsNode.setFocus(isFocused);
        this.focusablePinnableContainer.setFocus(isFocused);
        this.focusState = focusState;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        FocusState focusState = this.focusState;
        boolean z = false;
        if (focusState != null && focusState.isFocused()) {
            z = true;
        }
        SemanticsPropertiesKt.setFocused(semanticsPropertyReceiver, z);
        SemanticsPropertiesKt.requestFocus$default(semanticsPropertyReceiver, null, new Function0() { // from class: androidx.compose.foundation.FocusableNode$applySemantics$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(FocusRequesterModifierNodeKt.requestFocus(FocusableNode.this));
            }
        }, 1, null);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        this.focusedBoundsNode.onGloballyPositioned(layoutCoordinates);
    }
}

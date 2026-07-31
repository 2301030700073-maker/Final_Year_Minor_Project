package androidx.compose.animation;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class EnterExitTransitionElement extends ModifierNodeElement {
    public final EnterTransition enter;
    public final ExitTransition exit;
    public final EnterExitTransitionKt$$ExternalSyntheticLambda0 graphicsLayerBlock;
    public final Function0 isEnabled;
    public final Transition transition;

    public EnterExitTransitionElement(Transition transition, EnterTransition enterTransition, ExitTransition exitTransition, Function0 function0, EnterExitTransitionKt$$ExternalSyntheticLambda0 enterExitTransitionKt$$ExternalSyntheticLambda0) {
        this.transition = transition;
        this.enter = enterTransition;
        this.exit = exitTransition;
        this.isEnabled = function0;
        this.graphicsLayerBlock = enterExitTransitionKt$$ExternalSyntheticLambda0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        final EnterExitTransitionModifierNode enterExitTransitionModifierNode = new EnterExitTransitionModifierNode();
        enterExitTransitionModifierNode.transition = this.transition;
        enterExitTransitionModifierNode.enter = this.enter;
        enterExitTransitionModifierNode.exit = this.exit;
        enterExitTransitionModifierNode.isEnabled = this.isEnabled;
        enterExitTransitionModifierNode.graphicsLayerBlock = this.graphicsLayerBlock;
        enterExitTransitionModifierNode.lookaheadSize = -9223372034707292160L;
        ConstraintsKt.Constraints$default(0, 0, 15);
        new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$sizeTransitionSpec$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState = EnterExitState.PreEnter;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                SpringSpec springSpec = null;
                if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                    EnterTransition enterTransition = EnterExitTransitionModifierNode.this.enter;
                } else if (segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                    TransitionData transitionData = ((ExitTransitionImpl) EnterExitTransitionModifierNode.this.exit).data;
                } else {
                    springSpec = EnterExitTransitionKt.DefaultSizeAnimationSpec;
                }
                return springSpec == null ? EnterExitTransitionKt.DefaultSizeAnimationSpec : springSpec;
            }
        };
        new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState = EnterExitState.PreEnter;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                    EnterTransition enterTransition = EnterExitTransitionModifierNode.this.enter;
                    return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                }
                if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                    return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                }
                TransitionData transitionData = ((ExitTransitionImpl) EnterExitTransitionModifierNode.this.exit).data;
                return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
            }
        };
        return enterExitTransitionModifierNode;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof EnterExitTransitionElement)) {
            return false;
        }
        EnterExitTransitionElement enterExitTransitionElement = (EnterExitTransitionElement) obj;
        return enterExitTransitionElement.transition == this.transition && enterExitTransitionElement.enter.equals(this.enter) && Intrinsics.areEqual(enterExitTransitionElement.exit, this.exit) && enterExitTransitionElement.isEnabled == this.isEnabled && Intrinsics.areEqual(enterExitTransitionElement.graphicsLayerBlock, this.graphicsLayerBlock);
    }

    public final int hashCode() {
        return this.graphicsLayerBlock.hashCode() + ((this.isEnabled.hashCode() + ((this.exit.hashCode() + ((this.enter.hashCode() + (this.transition.hashCode() * 923521)) * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        EnterExitTransitionModifierNode enterExitTransitionModifierNode = (EnterExitTransitionModifierNode) node;
        enterExitTransitionModifierNode.transition = this.transition;
        enterExitTransitionModifierNode.enter = this.enter;
        enterExitTransitionModifierNode.exit = this.exit;
        enterExitTransitionModifierNode.isEnabled = this.isEnabled;
        enterExitTransitionModifierNode.graphicsLayerBlock = this.graphicsLayerBlock;
    }
}

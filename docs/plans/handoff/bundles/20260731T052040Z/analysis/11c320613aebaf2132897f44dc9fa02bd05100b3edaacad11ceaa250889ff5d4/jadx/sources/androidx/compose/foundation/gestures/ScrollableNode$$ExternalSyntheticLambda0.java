package androidx.compose.foundation.gestures;

import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ScrollableNode$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScrollableNode f$0;

    public /* synthetic */ ScrollableNode$$ExternalSyntheticLambda0(ScrollableNode scrollableNode, int i) {
        this.$r8$classId = i;
        this.f$0 = scrollableNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        ScrollableNode scrollableNode = this.f$0;
        switch (i) {
            case 0:
                return Boolean.valueOf(scrollableNode.isAttached);
            default:
                FocusTargetNode focusTargetNode = scrollableNode.focusTargetModifierNode;
                if (!focusTargetNode.node.isAttached) {
                    return null;
                }
                FocusStateImpl focusState = focusTargetNode.getFocusState();
                int ordinal = focusState.ordinal();
                if (ordinal != 0 && ordinal != 1 && ordinal != 2) {
                    if (ordinal == 3) {
                        return null;
                    }
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                if (focusState.isFocused()) {
                    return focusTargetNode.fetchFocusRect$ui(null);
                }
                FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode();
                if (activeFocusTargetNode != null) {
                    return activeFocusTargetNode.fetchFocusRect$ui(HitTestResultKt.requireLayoutCoordinates(focusTargetNode));
                }
                return null;
        }
    }
}

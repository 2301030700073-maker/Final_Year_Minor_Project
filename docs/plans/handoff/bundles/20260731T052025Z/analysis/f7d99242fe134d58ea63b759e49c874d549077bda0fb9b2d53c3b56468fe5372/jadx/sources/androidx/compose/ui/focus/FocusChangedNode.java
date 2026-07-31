package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusChangedNode extends Modifier.Node implements FocusEventModifierNode {
    public FocusStateImpl focusState;
    public Function1 onFocusChanged;

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void onFocusEvent(FocusStateImpl focusStateImpl) {
        if (Intrinsics.areEqual(this.focusState, focusStateImpl)) {
            return;
        }
        this.focusState = focusStateImpl;
        this.onFocusChanged.invoke(focusStateImpl);
    }
}

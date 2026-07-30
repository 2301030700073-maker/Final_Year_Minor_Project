package androidx.compose.ui.focus;

import androidx.compose.ui.node.DelegatableNodeKt;

/* compiled from: FocusPropertiesModifierNode.kt */
/* loaded from: classes.dex */
public abstract class FocusPropertiesModifierNodeKt {
    public static final void invalidateFocusProperties(FocusPropertiesModifierNode focusPropertiesModifierNode) {
        DelegatableNodeKt.requireOwner(focusPropertiesModifierNode).getFocusOwner().scheduleInvalidation(focusPropertiesModifierNode);
    }
}

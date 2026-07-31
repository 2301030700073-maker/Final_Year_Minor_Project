package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusPropertiesNode extends Modifier.Node implements FocusPropertiesModifierNode {
    public FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0 focusPropertiesScope;

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void applyFocusProperties(FocusProperties focusProperties) {
        this.focusPropertiesScope.function.invoke(focusProperties);
    }
}

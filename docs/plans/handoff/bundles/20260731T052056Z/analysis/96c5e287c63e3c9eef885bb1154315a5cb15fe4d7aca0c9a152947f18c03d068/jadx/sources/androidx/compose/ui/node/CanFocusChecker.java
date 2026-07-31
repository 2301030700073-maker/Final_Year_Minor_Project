package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CanFocusChecker implements FocusProperties {
    public static final CanFocusChecker INSTANCE = new CanFocusChecker();
    public static Boolean canFocusValue;

    @Override // androidx.compose.ui.focus.FocusProperties
    public final boolean getCanFocus() {
        Boolean bool = canFocusValue;
        if (bool != null) {
            return bool.booleanValue();
        }
        throw Modifier.CC.m("canFocus is read before it is written");
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setCanFocus(boolean z) {
        canFocusValue = Boolean.valueOf(z);
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setFocusRect(Rect rect) {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setOnEnter(FocusGroupPropertiesNode$onExit$1 focusGroupPropertiesNode$onExit$1) {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setOnExit(FocusGroupPropertiesNode$onExit$1 focusGroupPropertiesNode$onExit$1) {
    }
}

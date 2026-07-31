package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.geometry.Rect;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        throw Modifier.CC.m405m("canFocus is read before it is written");
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setCanFocus(boolean z) {
        canFocusValue = Boolean.valueOf(z);
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final /* synthetic */ void setFocusRect(Rect rect) {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final /* synthetic */ void setOnEnter(Function1 function1) {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final /* synthetic */ void setOnExit(Function1 function1) {
    }
}

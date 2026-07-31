package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusPropertiesImpl implements FocusProperties {
    public boolean canFocus;
    public FocusRequester down;
    public FocusRequester end;
    public Rect focusRect;
    public FocusRequester left;
    public FocusRequester next;
    public Function1 onEnter;
    public Function1 onExit;
    public FocusRequester previous;
    public FocusRequester right;
    public FocusRequester start;
    public FocusRequester up;

    @Override // androidx.compose.ui.focus.FocusProperties
    public final boolean getCanFocus() {
        return this.canFocus;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setCanFocus(boolean z) {
        this.canFocus = z;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setFocusRect(Rect rect) {
        this.focusRect = rect;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setOnEnter(Function1 function1) {
        this.onEnter = function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setOnExit(Function1 function1) {
        this.onExit = function1;
    }
}

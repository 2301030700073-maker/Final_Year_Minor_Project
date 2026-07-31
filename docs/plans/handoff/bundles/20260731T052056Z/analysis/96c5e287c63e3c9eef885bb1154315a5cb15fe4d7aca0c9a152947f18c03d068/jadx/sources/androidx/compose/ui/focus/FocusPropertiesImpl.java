package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final void setOnEnter(FocusGroupPropertiesNode$onExit$1 focusGroupPropertiesNode$onExit$1) {
        this.onEnter = focusGroupPropertiesNode$onExit$1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void setOnExit(FocusGroupPropertiesNode$onExit$1 focusGroupPropertiesNode$onExit$1) {
        this.onExit = focusGroupPropertiesNode$onExit$1;
    }
}

package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface FocusProperties {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static final Rect UnsetFocusRect = new Rect(Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    boolean getCanFocus();

    void setCanFocus(boolean z);

    void setFocusRect(Rect rect);

    void setOnEnter(FocusGroupPropertiesNode$onExit$1 focusGroupPropertiesNode$onExit$1);

    void setOnExit(FocusGroupPropertiesNode$onExit$1 focusGroupPropertiesNode$onExit$1);
}

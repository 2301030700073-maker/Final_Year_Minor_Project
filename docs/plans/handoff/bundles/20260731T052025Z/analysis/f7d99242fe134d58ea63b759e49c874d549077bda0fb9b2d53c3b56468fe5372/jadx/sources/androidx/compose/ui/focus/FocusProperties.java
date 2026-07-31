package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface FocusProperties {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final Rect UnsetFocusRect = new Rect(Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    boolean getCanFocus();

    void setCanFocus(boolean z);

    void setFocusRect(Rect rect);

    void setOnEnter(Function1 function1);

    void setOnExit(Function1 function1);
}

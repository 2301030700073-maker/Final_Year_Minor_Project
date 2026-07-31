package androidx.compose.ui.window;

import android.graphics.Rect;
import androidx.compose.ui.unit.IntOffsetKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PopupLayoutHelperImpl29 extends PopupLayoutHelperImpl {
    @Override // androidx.compose.ui.window.PopupLayoutHelperImpl
    public final void setGestureExclusionRects(PopupLayout popupLayout, int i, int i2) {
        popupLayout.setSystemGestureExclusionRects(IntOffsetKt.mutableListOf(new Rect(0, 0, i, i2)));
    }
}

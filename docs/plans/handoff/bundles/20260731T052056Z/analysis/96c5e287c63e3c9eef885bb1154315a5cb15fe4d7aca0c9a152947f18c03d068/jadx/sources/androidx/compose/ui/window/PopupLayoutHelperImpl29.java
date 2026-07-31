package androidx.compose.ui.window;

import android.graphics.Rect;
import androidx.room.Room;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class PopupLayoutHelperImpl29 extends PopupLayoutHelperImpl {
    @Override // androidx.compose.ui.window.PopupLayoutHelperImpl
    public final void setGestureExclusionRects(PopupLayout popupLayout, int i, int i2) {
        popupLayout.setSystemGestureExclusionRects(Room.mutableListOf(new Rect(0, 0, i, i2)));
    }
}

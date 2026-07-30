package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.ui.geometry.OffsetKt;

/* compiled from: MotionEventAdapter.android.kt */
/* loaded from: classes.dex */
final class MotionEventHelper {
    public static final MotionEventHelper INSTANCE = new MotionEventHelper();

    private MotionEventHelper() {
    }

    /* renamed from: toRawOffset-dBAh8RU, reason: not valid java name */
    public final long m1659toRawOffsetdBAh8RU(MotionEvent motionEvent, int i) {
        float rawX;
        float rawY;
        rawX = motionEvent.getRawX(i);
        rawY = motionEvent.getRawY(i);
        return OffsetKt.Offset(rawX, rawY);
    }
}

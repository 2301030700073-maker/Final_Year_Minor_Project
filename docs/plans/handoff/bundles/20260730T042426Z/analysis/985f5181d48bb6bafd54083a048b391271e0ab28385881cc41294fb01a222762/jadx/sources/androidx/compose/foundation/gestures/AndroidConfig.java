package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import java.util.List;

/* compiled from: AndroidScrollable.android.kt */
/* loaded from: classes.dex */
final class AndroidConfig implements ScrollConfig {
    public static final AndroidConfig INSTANCE = new AndroidConfig();

    private AndroidConfig() {
    }

    @Override // androidx.compose.foundation.gestures.ScrollConfig
    /* renamed from: calculateMouseWheelScroll-8xgXZGE, reason: not valid java name */
    public long mo169calculateMouseWheelScroll8xgXZGE(Density density, PointerEvent pointerEvent, long j) {
        List changes = pointerEvent.getChanges();
        Offset m1158boximpl = Offset.m1158boximpl(Offset.Companion.m1179getZeroF1C5BW0());
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            m1158boximpl = Offset.m1158boximpl(Offset.m1172plusMKHz9U(m1158boximpl.m1176unboximpl(), ((PointerInputChange) changes.get(i)).m1692getScrollDeltaF1C5BW0()));
        }
        return Offset.m1173timestuRUvjQ(m1158boximpl.m1176unboximpl(), -density.mo213toPx0680j_4(Dp.m2424constructorimpl(64)));
    }
}

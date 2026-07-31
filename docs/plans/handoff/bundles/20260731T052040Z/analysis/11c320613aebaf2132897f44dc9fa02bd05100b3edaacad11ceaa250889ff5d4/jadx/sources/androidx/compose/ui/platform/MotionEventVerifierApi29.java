package androidx.compose.ui.platform;

import android.view.MotionEvent;
import com.google.android.exoplayer2.util.Log;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MotionEventVerifierApi29 {
    public static final MotionEventVerifierApi29 INSTANCE = new MotionEventVerifierApi29();

    public final boolean isValidMotionEvent(MotionEvent motionEvent, int i) {
        return (Float.floatToRawIntBits(motionEvent.getRawX(i)) & Log.LOG_LEVEL_OFF) < 2139095040 && (Float.floatToRawIntBits(motionEvent.getRawY(i)) & Log.LOG_LEVEL_OFF) < 2139095040;
    }
}

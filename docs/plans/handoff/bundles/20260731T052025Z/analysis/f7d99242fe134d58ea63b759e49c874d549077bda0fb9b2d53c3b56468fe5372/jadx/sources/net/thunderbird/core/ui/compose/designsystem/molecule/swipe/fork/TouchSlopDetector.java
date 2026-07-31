package net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TouchSlopDetector {
    public final Orientation orientation;
    public long totalPositionChange;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public TouchSlopDetector(long j, Orientation orientation) {
        this.orientation = orientation;
        this.totalPositionChange = j;
    }

    /* renamed from: getPostSlopOffset-qto3Fdw$default, reason: not valid java name */
    public static long m1033getPostSlopOffsetqto3Fdw$default(TouchSlopDetector touchSlopDetector, long j, float f) {
        Orientation orientation = touchSlopDetector.orientation;
        long m441plusMKHz9U = Offset.m441plusMKHz9U(touchSlopDetector.totalPositionChange, j);
        touchSlopDetector.totalPositionChange = m441plusMKHz9U;
        if ((orientation == null ? Offset.m438getDistanceimpl(m441plusMKHz9U) : Math.abs(touchSlopDetector.m1034mainAxisk4lQ0M(m441plusMKHz9U))) < f) {
            return 9205357640488583168L;
        }
        long m441plusMKHz9U2 = Offset.m441plusMKHz9U(touchSlopDetector.totalPositionChange, m441plusMKHz9U);
        double atan2 = (((float) Math.atan2(Math.abs(Float.intBitsToFloat((int) (m441plusMKHz9U2 & 4294967295L))), Math.abs(Float.intBitsToFloat((int) (m441plusMKHz9U2 >> 32))))) * 180.0f) / 3.141592653589793d;
        int i = orientation == null ? -1 : WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i != 1) {
            if (i != 2 || atan2 <= 30.0d) {
                return 9205357640488583168L;
            }
        } else if (atan2 >= 30.0d) {
            return 9205357640488583168L;
        }
        long j2 = touchSlopDetector.totalPositionChange;
        if (orientation == null) {
            return Offset.m440minusMKHz9U(touchSlopDetector.totalPositionChange, Offset.m442timestuRUvjQ(f, Offset.m436divtuRUvjQ(Offset.m438getDistanceimpl(j2), j2)));
        }
        float m1034mainAxisk4lQ0M = touchSlopDetector.m1034mainAxisk4lQ0M(j2) - (Math.signum(touchSlopDetector.m1034mainAxisk4lQ0M(touchSlopDetector.totalPositionChange)) * f);
        long j3 = touchSlopDetector.totalPositionChange;
        Orientation orientation2 = Orientation.Horizontal;
        float intBitsToFloat = Float.intBitsToFloat((int) (orientation == orientation2 ? j3 & 4294967295L : j3 >> 32));
        if (orientation == orientation2) {
            return (Float.floatToRawIntBits(m1034mainAxisk4lQ0M) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
        }
        return (Float.floatToRawIntBits(m1034mainAxisk4lQ0M) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    /* renamed from: mainAxis-k-4lQ0M, reason: not valid java name */
    public final float m1034mainAxisk4lQ0M(long j) {
        return Float.intBitsToFloat(this.orientation == Orientation.Horizontal ? (int) (j >> 32) : (int) (j & 4294967295L));
    }
}

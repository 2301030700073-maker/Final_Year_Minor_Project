package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.internal.InlineClassHelperKt;
import java.util.List;
import kotlin.collections.ArraysKt;

/* compiled from: VelocityTracker.kt */
/* loaded from: classes.dex */
public abstract class VelocityTrackerKt {
    private static boolean VelocityTrackerAddPointsFix = true;
    private static boolean VelocityTrackerStrategyUseImpulse;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void set(DataPointAtTime[] dataPointAtTimeArr, int i, long j, float f) {
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i];
        if (dataPointAtTime == null) {
            dataPointAtTimeArr[i] = new DataPointAtTime(j, f);
        } else {
            dataPointAtTime.setTime(j);
            dataPointAtTime.setDataPoint(f);
        }
    }

    public static final void addPointerInputChange(VelocityTracker velocityTracker, PointerInputChange pointerInputChange) {
        if (VelocityTrackerAddPointsFix) {
            addPointerInputChangeWithFix(velocityTracker, pointerInputChange);
        } else {
            addPointerInputChangeLegacy(velocityTracker, pointerInputChange);
        }
    }

    private static final void addPointerInputChangeLegacy(VelocityTracker velocityTracker, PointerInputChange pointerInputChange) {
        if (PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange)) {
            velocityTracker.m1731setCurrentPointerPositionAccumulatork4lQ0M$ui_release(pointerInputChange.m1690getPositionF1C5BW0());
            velocityTracker.resetTracking();
        }
        long m1691getPreviousPositionF1C5BW0 = pointerInputChange.m1691getPreviousPositionF1C5BW0();
        List historical = pointerInputChange.getHistorical();
        int size = historical.size();
        int i = 0;
        while (i < size) {
            HistoricalChange historicalChange = (HistoricalChange) historical.get(i);
            long m1171minusMKHz9U = Offset.m1171minusMKHz9U(historicalChange.m1655getPositionF1C5BW0(), m1691getPreviousPositionF1C5BW0);
            long m1655getPositionF1C5BW0 = historicalChange.m1655getPositionF1C5BW0();
            velocityTracker.m1731setCurrentPointerPositionAccumulatork4lQ0M$ui_release(Offset.m1172plusMKHz9U(velocityTracker.m1730getCurrentPointerPositionAccumulatorF1C5BW0$ui_release(), m1171minusMKHz9U));
            velocityTracker.m1728addPositionUv8p0NA(historicalChange.getUptimeMillis(), velocityTracker.m1730getCurrentPointerPositionAccumulatorF1C5BW0$ui_release());
            i++;
            m1691getPreviousPositionF1C5BW0 = m1655getPositionF1C5BW0;
        }
        velocityTracker.m1731setCurrentPointerPositionAccumulatork4lQ0M$ui_release(Offset.m1172plusMKHz9U(velocityTracker.m1730getCurrentPointerPositionAccumulatorF1C5BW0$ui_release(), Offset.m1171minusMKHz9U(pointerInputChange.m1690getPositionF1C5BW0(), m1691getPreviousPositionF1C5BW0)));
        velocityTracker.m1728addPositionUv8p0NA(pointerInputChange.getUptimeMillis(), velocityTracker.m1730getCurrentPointerPositionAccumulatorF1C5BW0$ui_release());
    }

    private static final void addPointerInputChangeWithFix(VelocityTracker velocityTracker, PointerInputChange pointerInputChange) {
        if (PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange)) {
            velocityTracker.resetTracking();
        }
        if (!PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
            List historical = pointerInputChange.getHistorical();
            int size = historical.size();
            for (int i = 0; i < size; i++) {
                HistoricalChange historicalChange = (HistoricalChange) historical.get(i);
                velocityTracker.m1728addPositionUv8p0NA(historicalChange.getUptimeMillis(), historicalChange.m1654getOriginalEventPositionF1C5BW0$ui_release());
            }
            velocityTracker.m1728addPositionUv8p0NA(pointerInputChange.getUptimeMillis(), pointerInputChange.m1689getOriginalEventPositionF1C5BW0$ui_release());
        }
        if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange) && pointerInputChange.getUptimeMillis() - velocityTracker.getLastMoveEventTimeStamp$ui_release() > 40) {
            velocityTracker.resetTracking();
        }
        velocityTracker.setLastMoveEventTimeStamp$ui_release(pointerInputChange.getUptimeMillis());
    }

    public static final float[] polyFitLeastSquares(float[] fArr, float[] fArr2, int i, int i2, float[] fArr3) {
        int i3 = i2;
        if (i3 < 1) {
            InlineClassHelperKt.throwIllegalArgumentException("The degree must be at positive integer");
        }
        if (i == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("At least one point must be provided");
        }
        if (i3 >= i) {
            i3 = i - 1;
        }
        int i4 = i3 + 1;
        float[][] fArr4 = new float[i4][];
        for (int i5 = 0; i5 < i4; i5++) {
            fArr4[i5] = new float[i];
        }
        for (int i6 = 0; i6 < i; i6++) {
            fArr4[0][i6] = 1.0f;
            for (int i7 = 1; i7 < i4; i7++) {
                fArr4[i7][i6] = fArr4[i7 - 1][i6] * fArr[i6];
            }
        }
        float[][] fArr5 = new float[i4][];
        for (int i8 = 0; i8 < i4; i8++) {
            fArr5[i8] = new float[i];
        }
        float[][] fArr6 = new float[i4][];
        for (int i9 = 0; i9 < i4; i9++) {
            fArr6[i9] = new float[i4];
        }
        int i10 = 0;
        while (i10 < i4) {
            float[] fArr7 = fArr5[i10];
            ArraysKt.copyInto(fArr4[i10], fArr7, 0, 0, i);
            for (int i11 = 0; i11 < i10; i11++) {
                float[] fArr8 = fArr5[i11];
                float dot = dot(fArr7, fArr8);
                for (int i12 = 0; i12 < i; i12++) {
                    fArr7[i12] = fArr7[i12] - (fArr8[i12] * dot);
                }
            }
            float sqrt = (float) Math.sqrt(dot(fArr7, fArr7));
            if (sqrt < 1.0E-6f) {
                sqrt = 1.0E-6f;
            }
            float f = 1.0f / sqrt;
            for (int i13 = 0; i13 < i; i13++) {
                fArr7[i13] = fArr7[i13] * f;
            }
            float[] fArr9 = fArr6[i10];
            int i14 = 0;
            while (i14 < i4) {
                fArr9[i14] = i14 < i10 ? 0.0f : dot(fArr7, fArr4[i14]);
                i14++;
            }
            i10++;
        }
        for (int i15 = i3; -1 < i15; i15--) {
            float dot2 = dot(fArr5[i15], fArr2);
            float[] fArr10 = fArr6[i15];
            int i16 = i15 + 1;
            if (i16 <= i3) {
                int i17 = i3;
                while (true) {
                    dot2 -= fArr10[i17] * fArr3[i17];
                    if (i17 != i16) {
                        i17--;
                    }
                }
            }
            fArr3[i15] = dot2 / fArr10[i15];
        }
        return fArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculateImpulseVelocity(float[] fArr, float[] fArr2, int i, boolean z) {
        float f;
        int i2 = i - 1;
        float f2 = fArr2[i2];
        float f3 = 0.0f;
        int i3 = i2;
        while (i3 > 0) {
            int i4 = i3 - 1;
            float f4 = fArr2[i4];
            if (f2 != f4) {
                if (z) {
                    f = -fArr[i4];
                } else {
                    f = fArr[i3] - fArr[i4];
                }
                float f5 = f / (f2 - f4);
                f3 += (f5 - (Math.signum(f3) * ((float) Math.sqrt(2 * Math.abs(f3))))) * Math.abs(f5);
                if (i3 == i2) {
                    f3 *= 0.5f;
                }
            }
            i3--;
            f2 = f4;
        }
        return Math.signum(f3) * ((float) Math.sqrt(2 * Math.abs(f3)));
    }

    private static final float dot(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return f;
    }

    public static final boolean getVelocityTrackerStrategyUseImpulse() {
        return VelocityTrackerStrategyUseImpulse;
    }
}

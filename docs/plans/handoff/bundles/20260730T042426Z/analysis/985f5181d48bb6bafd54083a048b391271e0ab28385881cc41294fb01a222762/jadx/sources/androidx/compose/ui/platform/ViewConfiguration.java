package androidx.compose.ui.platform;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;

/* compiled from: ViewConfiguration.kt */
/* loaded from: classes.dex */
public interface ViewConfiguration {
    long getDoubleTapMinTimeMillis();

    long getDoubleTapTimeoutMillis();

    float getHandwritingGestureLineMargin();

    float getHandwritingSlop();

    long getLongPressTimeoutMillis();

    float getMaximumFlingVelocity();

    /* renamed from: getMinimumTouchTargetSize-MYxV2XQ */
    long mo1821getMinimumTouchTargetSizeMYxV2XQ();

    float getTouchSlop();

    /* compiled from: ViewConfiguration.kt */
    /* renamed from: androidx.compose.ui.platform.ViewConfiguration$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static float $default$getHandwritingSlop(ViewConfiguration viewConfiguration) {
            return 2.0f;
        }

        public static float $default$getMaximumFlingVelocity(ViewConfiguration viewConfiguration) {
            return Float.MAX_VALUE;
        }

        public static float $default$getHandwritingGestureLineMargin(ViewConfiguration viewConfiguration) {
            return 16.0f;
        }

        /* renamed from: $default$getMinimumTouchTargetSize-MYxV2XQ, reason: not valid java name */
        public static long m2001$default$getMinimumTouchTargetSizeMYxV2XQ(ViewConfiguration viewConfiguration) {
            float f = 48;
            return DpKt.m2435DpSizeYgX7TsA(Dp.m2424constructorimpl(f), Dp.m2424constructorimpl(f));
        }
    }
}

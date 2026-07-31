package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntervalList$Interval {
    public final int size;
    public final int startIndex;
    public final LazyLayoutIntervalContent$Interval value;

    public IntervalList$Interval(int i, int i2, LazyLayoutIntervalContent$Interval lazyLayoutIntervalContent$Interval) {
        this.startIndex = i;
        this.size = i2;
        this.value = lazyLayoutIntervalContent$Interval;
        if (i < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("startIndex should be >= 0");
        }
        if (i2 > 0) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("size should be > 0");
    }
}

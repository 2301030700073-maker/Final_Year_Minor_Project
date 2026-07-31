package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

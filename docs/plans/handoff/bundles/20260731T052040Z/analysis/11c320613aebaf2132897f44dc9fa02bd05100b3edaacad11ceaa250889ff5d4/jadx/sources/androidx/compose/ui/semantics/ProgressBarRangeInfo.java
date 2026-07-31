package androidx.compose.ui.semantics;

import kotlin.ranges.ClosedFloatRange;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ProgressBarRangeInfo {
    public static final ProgressBarRangeInfo Indeterminate = new ProgressBarRangeInfo(new ClosedFloatRange(0.0f));
    public final ClosedFloatRange range;

    public ProgressBarRangeInfo(ClosedFloatRange closedFloatRange) {
        this.range = closedFloatRange;
        if (Float.isNaN(0.0f)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("current must not be NaN");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ProgressBarRangeInfo) && this.range.equals(((ProgressBarRangeInfo) obj).range);
    }

    public final int hashCode() {
        return (this.range.hashCode() + (Float.floatToIntBits(0.0f) * 31)) * 31;
    }

    public final String toString() {
        return "ProgressBarRangeInfo(current=0.0, range=" + this.range + ", steps=0)";
    }
}

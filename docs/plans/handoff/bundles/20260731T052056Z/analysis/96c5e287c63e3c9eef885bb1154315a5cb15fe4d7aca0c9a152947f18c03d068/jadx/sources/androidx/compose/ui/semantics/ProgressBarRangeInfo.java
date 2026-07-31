package androidx.compose.ui.semantics;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.ranges.ClosedFloatRange;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProgressBarRangeInfo {
    public static final ProgressBarRangeInfo Indeterminate = new ProgressBarRangeInfo(RecyclerView.DECELERATION_RATE, new ClosedFloatRange(RecyclerView.DECELERATION_RATE));
    public final float current;
    public final ClosedFloatRange range;

    public ProgressBarRangeInfo(float f, ClosedFloatRange closedFloatRange) {
        this.current = f;
        this.range = closedFloatRange;
        if (Float.isNaN(f)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("current must not be NaN");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgressBarRangeInfo)) {
            return false;
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) obj;
        return this.current == progressBarRangeInfo.current && this.range.equals(progressBarRangeInfo.range);
    }

    public final int hashCode() {
        return (this.range.hashCode() + (Float.floatToIntBits(this.current) * 31)) * 31;
    }

    public final String toString() {
        return "ProgressBarRangeInfo(current=" + this.current + ", range=" + this.range + ", steps=0)";
    }
}

package androidx.compose.ui.semantics;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.ranges.ClosedFloatRange;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProgressBarRangeInfo {
    public static final ProgressBarRangeInfo Indeterminate = new ProgressBarRangeInfo(0.0f, new ClosedFloatRange(0.0f));
    public final float current;
    public final ClosedFloatRange range;

    public ProgressBarRangeInfo(float f, ClosedFloatRange closedFloatRange) {
        this.current = f;
        this.range = closedFloatRange;
        if (Float.isNaN(f)) {
            UriKt$$ExternalSyntheticBUOutline0.m("current must not be NaN");
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

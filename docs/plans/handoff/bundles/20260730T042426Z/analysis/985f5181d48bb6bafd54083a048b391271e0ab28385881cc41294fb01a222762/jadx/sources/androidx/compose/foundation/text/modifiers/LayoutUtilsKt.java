package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import kotlin.ranges.RangesKt;

/* compiled from: LayoutUtils.kt */
/* loaded from: classes.dex */
public abstract class LayoutUtilsKt {
    /* renamed from: finalConstraints-tfFHcEY, reason: not valid java name */
    public static final long m522finalConstraintstfFHcEY(long j, boolean z, int i, float f) {
        return Constraints.Companion.m2405fitPrioritizingWidthZbe2FdA(0, m524finalMaxWidthtfFHcEY(j, z, i, f), 0, Constraints.m2396getMaxHeightimpl(j));
    }

    /* renamed from: finalMaxWidth-tfFHcEY, reason: not valid java name */
    public static final int m524finalMaxWidthtfFHcEY(long j, boolean z, int i, float f) {
        int m2397getMaxWidthimpl = ((z || TextOverflow.m2380equalsimpl0(i, TextOverflow.Companion.m2384getEllipsisgIe3tQ8())) && Constraints.m2393getHasBoundedWidthimpl(j)) ? Constraints.m2397getMaxWidthimpl(j) : Integer.MAX_VALUE;
        return Constraints.m2399getMinWidthimpl(j) == m2397getMaxWidthimpl ? m2397getMaxWidthimpl : RangesKt.coerceIn(TextDelegateKt.ceilToIntPx(f), Constraints.m2399getMinWidthimpl(j), m2397getMaxWidthimpl);
    }

    /* renamed from: finalMaxLines-xdlQI24, reason: not valid java name */
    public static final int m523finalMaxLinesxdlQI24(boolean z, int i, int i2) {
        if (z || !TextOverflow.m2380equalsimpl0(i, TextOverflow.Companion.m2384getEllipsisgIe3tQ8())) {
            return RangesKt.coerceAtLeast(i2, 1);
        }
        return 1;
    }
}

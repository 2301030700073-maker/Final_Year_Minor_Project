package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Constraints.kt */
/* loaded from: classes.dex */
public final class Constraints {
    public static final Companion Companion = new Companion(null);
    private final long value;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Constraints m2386boximpl(long j) {
        return new Constraints(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2387constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2390equalsimpl(long j, Object obj) {
        return (obj instanceof Constraints) && j == ((Constraints) obj).m2403unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2391equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getHasBoundedHeight-impl, reason: not valid java name */
    public static final boolean m2392getHasBoundedHeightimpl(long j) {
        int i = (int) (3 & j);
        int i2 = ((i & 1) << 1) + (((i & 2) >> 1) * 3);
        return (((int) (j >> (i2 + 46))) & ((1 << (18 - i2)) - 1)) != 0;
    }

    /* renamed from: getHasBoundedWidth-impl, reason: not valid java name */
    public static final boolean m2393getHasBoundedWidthimpl(long j) {
        int i = (int) (3 & j);
        return (((int) (j >> 33)) & ((1 << ((((i & 1) << 1) + (((i & 2) >> 1) * 3)) + 13)) - 1)) != 0;
    }

    /* renamed from: getHasFixedHeight-impl, reason: not valid java name */
    public static final boolean m2394getHasFixedHeightimpl(long j) {
        int i = (int) (3 & j);
        int i2 = ((i & 1) << 1) + (((i & 2) >> 1) * 3);
        int i3 = (1 << (18 - i2)) - 1;
        int i4 = ((int) (j >> (i2 + 15))) & i3;
        int i5 = ((int) (j >> (i2 + 46))) & i3;
        return i4 == (i5 == 0 ? Integer.MAX_VALUE : i5 - 1);
    }

    /* renamed from: getHasFixedWidth-impl, reason: not valid java name */
    public static final boolean m2395getHasFixedWidthimpl(long j) {
        int i = (int) (3 & j);
        int i2 = (1 << ((((i & 1) << 1) + (((i & 2) >> 1) * 3)) + 13)) - 1;
        int i3 = ((int) (j >> 2)) & i2;
        int i4 = ((int) (j >> 33)) & i2;
        return i3 == (i4 == 0 ? Integer.MAX_VALUE : i4 - 1);
    }

    /* renamed from: getMaxHeight-impl, reason: not valid java name */
    public static final int m2396getMaxHeightimpl(long j) {
        int i = (int) (3 & j);
        int i2 = ((i & 1) << 1) + (((i & 2) >> 1) * 3);
        int i3 = ((int) (j >> (i2 + 46))) & ((1 << (18 - i2)) - 1);
        if (i3 == 0) {
            return Integer.MAX_VALUE;
        }
        return i3 - 1;
    }

    /* renamed from: getMaxWidth-impl, reason: not valid java name */
    public static final int m2397getMaxWidthimpl(long j) {
        int i = (int) (3 & j);
        int i2 = ((int) (j >> 33)) & ((1 << ((((i & 1) << 1) + (((i & 2) >> 1) * 3)) + 13)) - 1);
        if (i2 == 0) {
            return Integer.MAX_VALUE;
        }
        return i2 - 1;
    }

    /* renamed from: getMinHeight-impl, reason: not valid java name */
    public static final int m2398getMinHeightimpl(long j) {
        int i = (int) (3 & j);
        int i2 = ((i & 1) << 1) + (((i & 2) >> 1) * 3);
        return ((int) (j >> (i2 + 15))) & ((1 << (18 - i2)) - 1);
    }

    /* renamed from: getMinWidth-impl, reason: not valid java name */
    public static final int m2399getMinWidthimpl(long j) {
        int i = (int) (3 & j);
        return ((int) (j >> 2)) & ((1 << ((((i & 1) << 1) + (((i & 2) >> 1) * 3)) + 13)) - 1);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2400hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* renamed from: isZero-impl, reason: not valid java name */
    public static final boolean m2401isZeroimpl(long j) {
        int i = (int) (3 & j);
        int i2 = ((i & 1) << 1) + (((i & 2) >> 1) * 3);
        return (((int) (j >> 33)) & ((1 << (i2 + 13)) - 1)) - 1 == 0 || (((int) (j >> (i2 + 46))) & ((1 << (18 - i2)) - 1)) - 1 == 0;
    }

    public boolean equals(Object obj) {
        return m2390equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2400hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2403unboximpl() {
        return this.value;
    }

    private /* synthetic */ Constraints(long j) {
        this.value = j;
    }

    /* renamed from: copy-Zbe2FdA$default, reason: not valid java name */
    public static /* synthetic */ long m2389copyZbe2FdA$default(long j, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = m2399getMinWidthimpl(j);
        }
        int i6 = i;
        if ((i5 & 2) != 0) {
            i2 = m2397getMaxWidthimpl(j);
        }
        int i7 = i2;
        if ((i5 & 4) != 0) {
            i3 = m2398getMinHeightimpl(j);
        }
        int i8 = i3;
        if ((i5 & 8) != 0) {
            i4 = m2396getMaxHeightimpl(j);
        }
        return m2388copyZbe2FdA(j, i6, i7, i8, i4);
    }

    /* renamed from: copy-Zbe2FdA, reason: not valid java name */
    public static final long m2388copyZbe2FdA(long j, int i, int i2, int i3, int i4) {
        if (!(i3 >= 0 && i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("minHeight(" + i3 + ") and minWidth(" + i + ") must be >= 0");
        }
        if (!(i2 >= i)) {
            InlineClassHelperKt.throwIllegalArgumentException("maxWidth(" + i2 + ") must be >= minWidth(" + i + CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
        if (!(i4 >= i3)) {
            InlineClassHelperKt.throwIllegalArgumentException("maxHeight(" + i4 + ") must be >= minHeight(" + i3 + CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
        return ConstraintsKt.createConstraints(i, i2, i3, i4);
    }

    public String toString() {
        return m2402toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2402toStringimpl(long j) {
        int m2397getMaxWidthimpl = m2397getMaxWidthimpl(j);
        String str = "Infinity";
        String valueOf = m2397getMaxWidthimpl == Integer.MAX_VALUE ? "Infinity" : String.valueOf(m2397getMaxWidthimpl);
        int m2396getMaxHeightimpl = m2396getMaxHeightimpl(j);
        if (m2396getMaxHeightimpl != Integer.MAX_VALUE) {
            str = String.valueOf(m2396getMaxHeightimpl);
        }
        return "Constraints(minWidth = " + m2399getMinWidthimpl(j) + ", maxWidth = " + valueOf + ", minHeight = " + m2398getMinHeightimpl(j) + ", maxHeight = " + str + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: Constraints.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: fixed-JhjzzOo, reason: not valid java name */
        public final long m2406fixedJhjzzOo(int i, int i2) {
            if (!(i >= 0 && i2 >= 0)) {
                InlineClassHelperKt.throwIllegalArgumentException("width(" + i + ") and height(" + i2 + ") must be >= 0");
            }
            return ConstraintsKt.createConstraints(i, i, i2, i2);
        }

        /* renamed from: fixedWidth-OenEA2s, reason: not valid java name */
        public final long m2407fixedWidthOenEA2s(int i) {
            if (!(i >= 0)) {
                InlineClassHelperKt.throwIllegalArgumentException("width(" + i + ") must be >= 0");
            }
            return ConstraintsKt.createConstraints(i, i, 0, Integer.MAX_VALUE);
        }

        /* renamed from: fitPrioritizingWidth-Zbe2FdA, reason: not valid java name */
        public final long m2405fitPrioritizingWidthZbe2FdA(int i, int i2, int i3, int i4) {
            int maxAllowedForSize;
            int min = Math.min(i, 262142);
            int min2 = i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i2, 262142);
            maxAllowedForSize = ConstraintsKt.maxAllowedForSize(min2 == Integer.MAX_VALUE ? min : min2);
            return ConstraintsKt.Constraints(min, min2, Math.min(maxAllowedForSize, i3), i4 != Integer.MAX_VALUE ? Math.min(maxAllowedForSize, i4) : Integer.MAX_VALUE);
        }

        /* renamed from: fitPrioritizingHeight-Zbe2FdA, reason: not valid java name */
        public final long m2404fitPrioritizingHeightZbe2FdA(int i, int i2, int i3, int i4) {
            int maxAllowedForSize;
            int min = Math.min(i3, 262142);
            int min2 = i4 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i4, 262142);
            maxAllowedForSize = ConstraintsKt.maxAllowedForSize(min2 == Integer.MAX_VALUE ? min : min2);
            return ConstraintsKt.Constraints(Math.min(maxAllowedForSize, i), i2 != Integer.MAX_VALUE ? Math.min(maxAllowedForSize, i2) : Integer.MAX_VALUE, min, min2);
        }
    }
}

package androidx.compose.ui.unit;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ConstraintsKt {
    public static final long Constraints(int i, int i2, int i3, int i4) {
        if (!((i3 >= 0) & (i2 >= i) & (i4 >= i3) & (i >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0");
        }
        return createConstraints(i, i2, i3, i4);
    }

    public static /* synthetic */ long Constraints$default(int i, int i2, int i3, int i4, int i5) {
        if ((i5 & 1) != 0) {
            i = 0;
        }
        if ((i5 & 2) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = Integer.MAX_VALUE;
        }
        return Constraints(i, i2, i3, i4);
    }

    public static final int bitsNeedForSizeUnchecked(int i) {
        if (i < 8191) {
            return 13;
        }
        if (i < 32767) {
            return 15;
        }
        if (i < 65535) {
            return 16;
        }
        return i < 262143 ? 18 : 255;
    }

    /* renamed from: constrain-4WqzIAM, reason: not valid java name */
    public static final long m686constrain4WqzIAM(long j, long j2) {
        int i = (int) (j2 >> 32);
        int m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
        int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
        if (i < m683getMinWidthimpl) {
            i = m683getMinWidthimpl;
        }
        if (i <= m681getMaxWidthimpl) {
            m681getMaxWidthimpl = i;
        }
        int i2 = (int) (j2 & 4294967295L);
        int m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
        int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
        if (i2 < m682getMinHeightimpl) {
            i2 = m682getMinHeightimpl;
        }
        if (i2 <= m680getMaxHeightimpl) {
            m680getMaxHeightimpl = i2;
        }
        return (m681getMaxWidthimpl << 32) | (4294967295L & m680getMaxHeightimpl);
    }

    /* renamed from: constrain-N9IONVI, reason: not valid java name */
    public static final long m687constrainN9IONVI(long j, long j2) {
        int m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
        int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
        int m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
        int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
        int m683getMinWidthimpl2 = Constraints.m683getMinWidthimpl(j2);
        if (m683getMinWidthimpl2 < m683getMinWidthimpl) {
            m683getMinWidthimpl2 = m683getMinWidthimpl;
        }
        if (m683getMinWidthimpl2 > m681getMaxWidthimpl) {
            m683getMinWidthimpl2 = m681getMaxWidthimpl;
        }
        int m681getMaxWidthimpl2 = Constraints.m681getMaxWidthimpl(j2);
        if (m681getMaxWidthimpl2 >= m683getMinWidthimpl) {
            m683getMinWidthimpl = m681getMaxWidthimpl2;
        }
        if (m683getMinWidthimpl <= m681getMaxWidthimpl) {
            m681getMaxWidthimpl = m683getMinWidthimpl;
        }
        int m682getMinHeightimpl2 = Constraints.m682getMinHeightimpl(j2);
        if (m682getMinHeightimpl2 < m682getMinHeightimpl) {
            m682getMinHeightimpl2 = m682getMinHeightimpl;
        }
        if (m682getMinHeightimpl2 > m680getMaxHeightimpl) {
            m682getMinHeightimpl2 = m680getMaxHeightimpl;
        }
        int m680getMaxHeightimpl2 = Constraints.m680getMaxHeightimpl(j2);
        if (m680getMaxHeightimpl2 >= m682getMinHeightimpl) {
            m682getMinHeightimpl = m680getMaxHeightimpl2;
        }
        if (m682getMinHeightimpl <= m680getMaxHeightimpl) {
            m680getMaxHeightimpl = m682getMinHeightimpl;
        }
        return Constraints(m683getMinWidthimpl2, m681getMaxWidthimpl, m682getMinHeightimpl2, m680getMaxHeightimpl);
    }

    /* renamed from: constrainHeight-K40F9xA, reason: not valid java name */
    public static final int m688constrainHeightK40F9xA(long j, int i) {
        int m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
        int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
        if (i < m682getMinHeightimpl) {
            i = m682getMinHeightimpl;
        }
        return i > m680getMaxHeightimpl ? m680getMaxHeightimpl : i;
    }

    /* renamed from: constrainWidth-K40F9xA, reason: not valid java name */
    public static final int m689constrainWidthK40F9xA(long j, int i) {
        int m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
        int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
        if (i < m683getMinWidthimpl) {
            i = m683getMinWidthimpl;
        }
        return i > m681getMaxWidthimpl ? m681getMaxWidthimpl : i;
    }

    public static final long createConstraints(int i, int i2, int i3, int i4) {
        int i5 = i4 == Integer.MAX_VALUE ? i3 : i4;
        int bitsNeedForSizeUnchecked = bitsNeedForSizeUnchecked(i5);
        int i6 = i2 == Integer.MAX_VALUE ? i : i2;
        int bitsNeedForSizeUnchecked2 = bitsNeedForSizeUnchecked(i6);
        if (bitsNeedForSizeUnchecked + bitsNeedForSizeUnchecked2 > 31) {
            throwInvalidConstraintException(i6, i5);
        }
        int i7 = i2 + 1;
        int i8 = i4 + 1;
        int i9 = bitsNeedForSizeUnchecked2 - 13;
        return ((i7 & (~(i7 >> 31))) << 33) | ((i9 >> 1) + (i9 & 1)) | (i << 2) | (i3 << (bitsNeedForSizeUnchecked2 + 2)) | ((i8 & (~(i8 >> 31))) << (bitsNeedForSizeUnchecked2 + 33));
    }

    /* renamed from: offset-NN6Ew-U, reason: not valid java name */
    public static final long m690offsetNN6EwU(int i, int i2, long j) {
        int m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j) + i;
        if (m683getMinWidthimpl < 0) {
            m683getMinWidthimpl = 0;
        }
        int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
        if (m681getMaxWidthimpl != Integer.MAX_VALUE && (m681getMaxWidthimpl = m681getMaxWidthimpl + i) < 0) {
            m681getMaxWidthimpl = 0;
        }
        int m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j) + i2;
        if (m682getMinHeightimpl < 0) {
            m682getMinHeightimpl = 0;
        }
        int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
        return Constraints(m683getMinWidthimpl, m681getMaxWidthimpl, m682getMinHeightimpl, (m680getMaxHeightimpl == Integer.MAX_VALUE || (m680getMaxHeightimpl = m680getMaxHeightimpl + i2) >= 0) ? m680getMaxHeightimpl : 0);
    }

    /* renamed from: offset-NN6Ew-U$default, reason: not valid java name */
    public static /* synthetic */ long m691offsetNN6EwU$default(int i, int i2, int i3, long j) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return m690offsetNN6EwU(i, i2, j);
    }

    public static final void throwInvalidConstraintException(int i, int i2) {
        throw new IllegalArgumentException("Can't represent a width of " + i + " and height of " + i2 + " in Constraints");
    }

    public static final Void throwInvalidConstraintsSizeException(int i) {
        throw new IllegalArgumentException(Animation.CC.m(i, "Can't represent a size of ", " in Constraints"));
    }
}

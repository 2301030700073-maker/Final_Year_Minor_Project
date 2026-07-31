package androidx.compose.ui.unit;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ConstraintsKt {
    public static final long Constraints(int i, int i2, int i3, int i4) {
        if (!((i3 >= 0) & (i2 >= i) & (i4 >= i3) & (i >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0");
        }
        return createConstraints(i, i2, i3, i4);
    }

    public static /* synthetic */ long Constraints$default(int i, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        if ((i3 & 8) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return Constraints(0, i, 0, i2);
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
    public static final long m438constrain4WqzIAM(long j, long j2) {
        int i = (int) (j2 >> 32);
        int m436getMinWidthimpl = Constraints.m436getMinWidthimpl(j);
        int m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(j);
        if (i < m436getMinWidthimpl) {
            i = m436getMinWidthimpl;
        }
        if (i <= m434getMaxWidthimpl) {
            m434getMaxWidthimpl = i;
        }
        int i2 = (int) (j2 & 4294967295L);
        int m435getMinHeightimpl = Constraints.m435getMinHeightimpl(j);
        int m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(j);
        if (i2 < m435getMinHeightimpl) {
            i2 = m435getMinHeightimpl;
        }
        if (i2 <= m433getMaxHeightimpl) {
            m433getMaxHeightimpl = i2;
        }
        return (m434getMaxWidthimpl << 32) | (4294967295L & m433getMaxHeightimpl);
    }

    /* renamed from: constrainHeight-K40F9xA, reason: not valid java name */
    public static final int m439constrainHeightK40F9xA(int i, long j) {
        int m435getMinHeightimpl = Constraints.m435getMinHeightimpl(j);
        int m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(j);
        if (i < m435getMinHeightimpl) {
            i = m435getMinHeightimpl;
        }
        return i > m433getMaxHeightimpl ? m433getMaxHeightimpl : i;
    }

    /* renamed from: constrainWidth-K40F9xA, reason: not valid java name */
    public static final int m440constrainWidthK40F9xA(int i, long j) {
        int m436getMinWidthimpl = Constraints.m436getMinWidthimpl(j);
        int m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(j);
        if (i < m436getMinWidthimpl) {
            i = m436getMinWidthimpl;
        }
        return i > m434getMaxWidthimpl ? m434getMaxWidthimpl : i;
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
    public static final long m441offsetNN6EwU(int i, long j, int i2) {
        int m436getMinWidthimpl = Constraints.m436getMinWidthimpl(j) + i;
        if (m436getMinWidthimpl < 0) {
            m436getMinWidthimpl = 0;
        }
        int m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(j);
        if (m434getMaxWidthimpl != Integer.MAX_VALUE && (m434getMaxWidthimpl = m434getMaxWidthimpl + i) < 0) {
            m434getMaxWidthimpl = 0;
        }
        int m435getMinHeightimpl = Constraints.m435getMinHeightimpl(j) + i2;
        if (m435getMinHeightimpl < 0) {
            m435getMinHeightimpl = 0;
        }
        int m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(j);
        return Constraints(m436getMinWidthimpl, m434getMaxWidthimpl, m435getMinHeightimpl, (m433getMaxHeightimpl == Integer.MAX_VALUE || (m433getMaxHeightimpl = m433getMaxHeightimpl + i2) >= 0) ? m433getMaxHeightimpl : 0);
    }

    public static final void throwInvalidConstraintException(int i, int i2) {
        throw new IllegalArgumentException("Can't represent a width of " + i + " and height of " + i2 + " in Constraints");
    }

    public static final Void throwInvalidConstraintsSizeException(int i) {
        throw new IllegalArgumentException(Modifier.CC.m("Can't represent a size of ", i, " in Constraints"));
    }
}

package androidx.compose.ui.unit;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public static final long m738constrain4WqzIAM(long j, long j2) {
        int i = (int) (j2 >> 32);
        int m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
        int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
        if (i < m736getMinWidthimpl) {
            i = m736getMinWidthimpl;
        }
        if (i <= m734getMaxWidthimpl) {
            m734getMaxWidthimpl = i;
        }
        int i2 = (int) (j2 & 4294967295L);
        int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
        int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
        if (i2 < m735getMinHeightimpl) {
            i2 = m735getMinHeightimpl;
        }
        if (i2 <= m733getMaxHeightimpl) {
            m733getMaxHeightimpl = i2;
        }
        return (m734getMaxWidthimpl << 32) | (4294967295L & m733getMaxHeightimpl);
    }

    /* renamed from: constrain-N9IONVI, reason: not valid java name */
    public static final long m739constrainN9IONVI(long j, long j2) {
        int m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
        int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
        int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
        int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
        int m736getMinWidthimpl2 = Constraints.m736getMinWidthimpl(j2);
        if (m736getMinWidthimpl2 < m736getMinWidthimpl) {
            m736getMinWidthimpl2 = m736getMinWidthimpl;
        }
        if (m736getMinWidthimpl2 > m734getMaxWidthimpl) {
            m736getMinWidthimpl2 = m734getMaxWidthimpl;
        }
        int m734getMaxWidthimpl2 = Constraints.m734getMaxWidthimpl(j2);
        if (m734getMaxWidthimpl2 >= m736getMinWidthimpl) {
            m736getMinWidthimpl = m734getMaxWidthimpl2;
        }
        if (m736getMinWidthimpl <= m734getMaxWidthimpl) {
            m734getMaxWidthimpl = m736getMinWidthimpl;
        }
        int m735getMinHeightimpl2 = Constraints.m735getMinHeightimpl(j2);
        if (m735getMinHeightimpl2 < m735getMinHeightimpl) {
            m735getMinHeightimpl2 = m735getMinHeightimpl;
        }
        if (m735getMinHeightimpl2 > m733getMaxHeightimpl) {
            m735getMinHeightimpl2 = m733getMaxHeightimpl;
        }
        int m733getMaxHeightimpl2 = Constraints.m733getMaxHeightimpl(j2);
        if (m733getMaxHeightimpl2 >= m735getMinHeightimpl) {
            m735getMinHeightimpl = m733getMaxHeightimpl2;
        }
        if (m735getMinHeightimpl <= m733getMaxHeightimpl) {
            m733getMaxHeightimpl = m735getMinHeightimpl;
        }
        return Constraints(m736getMinWidthimpl2, m734getMaxWidthimpl, m735getMinHeightimpl2, m733getMaxHeightimpl);
    }

    /* renamed from: constrainHeight-K40F9xA, reason: not valid java name */
    public static final int m740constrainHeightK40F9xA(int i, long j) {
        int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
        int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
        if (i < m735getMinHeightimpl) {
            i = m735getMinHeightimpl;
        }
        return i > m733getMaxHeightimpl ? m733getMaxHeightimpl : i;
    }

    /* renamed from: constrainWidth-K40F9xA, reason: not valid java name */
    public static final int m741constrainWidthK40F9xA(int i, long j) {
        int m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
        int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
        if (i < m736getMinWidthimpl) {
            i = m736getMinWidthimpl;
        }
        return i > m734getMaxWidthimpl ? m734getMaxWidthimpl : i;
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
    public static final long m742offsetNN6EwU(int i, int i2, long j) {
        int m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j) + i;
        if (m736getMinWidthimpl < 0) {
            m736getMinWidthimpl = 0;
        }
        int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
        if (m734getMaxWidthimpl != Integer.MAX_VALUE && (m734getMaxWidthimpl = m734getMaxWidthimpl + i) < 0) {
            m734getMaxWidthimpl = 0;
        }
        int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j) + i2;
        if (m735getMinHeightimpl < 0) {
            m735getMinHeightimpl = 0;
        }
        int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
        return Constraints(m736getMinWidthimpl, m734getMaxWidthimpl, m735getMinHeightimpl, (m733getMaxHeightimpl == Integer.MAX_VALUE || (m733getMaxHeightimpl = m733getMaxHeightimpl + i2) >= 0) ? m733getMaxHeightimpl : 0);
    }

    /* renamed from: offset-NN6Ew-U$default, reason: not valid java name */
    public static /* synthetic */ long m743offsetNN6EwU$default(int i, int i2, int i3, long j) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return m742offsetNN6EwU(i, i2, j);
    }

    public static final void throwInvalidConstraintException(int i, int i2) {
        throw new IllegalArgumentException(Config.CC.m("Can't represent a width of ", i, " and height of ", i2, " in Constraints"));
    }

    public static final Void throwInvalidConstraintsSizeException(int i) {
        throw new IllegalArgumentException(CameraDevices$CC.m(i, "Can't represent a size of ", " in Constraints"));
    }
}

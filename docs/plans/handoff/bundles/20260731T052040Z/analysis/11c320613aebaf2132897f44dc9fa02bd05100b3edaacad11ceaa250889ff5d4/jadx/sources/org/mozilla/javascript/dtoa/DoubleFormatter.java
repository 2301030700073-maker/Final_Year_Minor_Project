package org.mozilla.javascript.dtoa;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DoubleFormatter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int BQ_MASK = 2047;
    private static final long C_MIN = 4503599627370496L;
    static final long C_TINY = 3;
    static final int E_MAX = 309;
    static final int E_MIN = -323;
    static final int H = 17;
    private static final long MASK_63 = Long.MAX_VALUE;
    static final int P = 53;
    static final int Q_MAX = 971;
    static final int Q_MIN = -1074;
    private static final long T_MASK = 4503599627370495L;
    private static final int W = 11;

    private static long rop(long j, long j2, long j3) {
        long j4 = j2 & 4294967295L;
        long j5 = j2 >> 32;
        long j6 = j3 & 4294967295L;
        long j7 = j3 >> 32;
        long j8 = (j5 * j6) + ((j4 * j6) >>> 32);
        long j9 = (j5 * j7) + (j8 >> 32);
        long j10 = j9 + (((j4 * j7) + (j8 & 4294967295L)) >> 32);
        long j11 = j & 4294967295L;
        long j12 = j >> 32;
        long j13 = (j6 * j12) + ((j11 * j6) >>> 32);
        long j14 = (j12 * j7) + (j13 >> 32);
        long j15 = j14 + (((j11 * j7) + (4294967295L & j13)) >> 32);
        long j16 = ((j * j3) >>> 1) + j10;
        return (((j16 & Long.MAX_VALUE) + Long.MAX_VALUE) >>> 63) | (j15 + (j16 >>> 63));
    }

    public static Decimal toDecimal(double d) {
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        return toDecimalImpl(doubleToRawLongBits, T_MASK & doubleToRawLongBits, ((int) (doubleToRawLongBits >>> 52)) & BQ_MASK);
    }

    private static Decimal toDecimalFull(int i, long j, int i2, boolean z) {
        long j2;
        int flog10pow2;
        char c;
        char c2;
        int i3 = ((int) j) & 1;
        long j3 = j << 2;
        long j4 = j3 + 2;
        if (j != C_MIN || i == Q_MIN) {
            j2 = j3 - 2;
            flog10pow2 = MathUtils.flog10pow2(i);
        } else {
            j2 = j3 - 1;
            flog10pow2 = MathUtils.flog10threeQuartersPow2(i);
        }
        int flog2pow10 = i + MathUtils.flog2pow10(-flog10pow2) + 2;
        long g1 = MathUtils.g1(flog10pow2);
        long g0 = MathUtils.g0(flog10pow2);
        long rop = rop(g1, g0, j3 << flog2pow10);
        long rop2 = rop(g1, g0, j2 << flog2pow10);
        long rop3 = rop(g1, g0, j4 << flog2pow10);
        long j5 = rop >> 2;
        if (j5 >= 100) {
            long j6 = j5 & 4294967295L;
            long j7 = rop >> 34;
            long j8 = (2576980384L * j7) + ((j6 * 2576980384L) >>> 32);
            long j9 = ((j7 * 429496729) + (j8 >> 32) + (((j6 * 429496729) + (j8 & 4294967295L)) >> 32)) * 10;
            long j10 = j9 + 10;
            boolean z2 = true;
            c2 = 2;
            long j11 = i3;
            c = 1;
            if (rop2 + j11 > (j9 << 2)) {
                z2 = false;
            }
            if (z2 != ((j10 << 2) + j11 <= rop3)) {
                return new Decimal(z2 ? j9 : j10, flog10pow2, z);
            }
        } else {
            c = 1;
            c2 = 2;
        }
        long j12 = j5 + 1;
        long j13 = i3;
        char c3 = rop2 + j13 <= (j5 << c2) ? c : (char) 0;
        if (c3 != ((j12 << c2) + j13 <= rop3 ? c : (char) 0)) {
            if (c3 != 0) {
                j12 = j5;
            }
            return new Decimal(j12, flog10pow2 + i2, z);
        }
        long j14 = rop - ((j5 + j12) << c);
        if (j14 < 0 || (j14 == 0 && (j5 & 1) == 0)) {
            j12 = j5;
        }
        return new Decimal(j12, flog10pow2 + i2, z);
    }

    private static Decimal toDecimalImpl(long j, long j2, int i) {
        boolean z = j < 0;
        if (i == 0) {
            return j2 != 0 ? j2 < C_TINY ? toDecimalFull(Q_MIN, j2 * 10, -1, z) : toDecimalFull(Q_MIN, j2, 0, z) : new Decimal(0L, 1, false);
        }
        int i2 = 1075 - i;
        long j3 = j2 | C_MIN;
        if (i2 > 0 && i2 < 53) {
            long j4 = j3 >> i2;
            if ((j4 << i2) == j3) {
                return new Decimal(j4, 0, z);
            }
        }
        return toDecimalFull(-i2, j3, 0, z);
    }

    public static String toString(double d) {
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        long j = T_MASK & doubleToRawLongBits;
        int i = ((int) (doubleToRawLongBits >>> 52)) & BQ_MASK;
        return i < BQ_MASK ? (i == 0 && j == 0) ? "0" : toDecimalImpl(doubleToRawLongBits, j, i).toString() : j != 0 ? "NaN" : doubleToRawLongBits > 0 ? "Infinity" : "-Infinity";
    }
}

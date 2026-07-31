package org.mozilla.javascript;

import com.google.android.exoplayer2.util.Log;
import java.math.BigInteger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class DToA {
    private static final int Bias = 1023;
    private static final int Bletch = 16;
    private static final int Bndry_mask = 1048575;
    private static final int Exp_11 = 1072693248;
    private static final int Exp_mask = 2146435072;
    private static final int Exp_mask_shifted = 2047;
    private static final int Exp_msk1 = 1048576;
    private static final long Exp_msk1L = 4503599627370496L;
    private static final int Exp_shift = 20;
    private static final int Exp_shift1 = 20;
    private static final int Exp_shiftL = 52;
    private static final int Frac_mask = 1048575;
    private static final int Frac_mask1 = 1048575;
    private static final long Frac_maskL = 4503599627370495L;
    private static final int Int_max = 14;
    private static final int Log2P = 1;
    private static final int P = 53;
    private static final int Quick_max = 14;
    private static final int Sign_bit = Integer.MIN_VALUE;
    private static final int Ten_pmax = 22;
    private static final int n_bigtens = 5;
    private static final double[] tens = {1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d, 1.0E11d, 1.0E12d, 1.0E13d, 1.0E14d, 1.0E15d, 1.0E16d, 1.0E17d, 1.0E18d, 1.0E19d, 1.0E20d, 1.0E21d, 1.0E22d};
    private static final double[] bigtens = {1.0E16d, 1.0E32d, 1.0E64d, 1.0E128d, 1.0E256d};

    private static char BASEDIGIT(int i) {
        return (char) (i >= 10 ? i + 87 : i + 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0119, code lost:
    
        if (r7 > 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0127, code lost:
    
        if (r8 > 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0136, code lost:
    
        if (r6.compareTo(r3) > 0) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0147 A[LOOP:0: B:40:0x00d9->B:53:0x0147, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0142 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String JS_dtobasestr(int r12, double r13) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.DToA.JS_dtobasestr(int, double):java.lang.String");
    }

    private static BigInteger d2b(double d, int[] iArr, int[] iArr2) {
        byte[] bArr;
        int i;
        long doubleToLongBits = Double.doubleToLongBits(d);
        int i2 = (int) (doubleToLongBits >>> 32);
        int i3 = (int) doubleToLongBits;
        int i4 = 1048575 & i2;
        int i5 = (i2 & Log.LOG_LEVEL_OFF) >>> 20;
        if (i5 != 0) {
            i4 |= 1048576;
        }
        int i6 = 1;
        if (i3 != 0) {
            bArr = new byte[8];
            i = lo0bits(i3);
            int i7 = i3 >>> i;
            if (i != 0) {
                stuffBits(bArr, 4, i7 | (i4 << (32 - i)));
                i4 >>= i;
            } else {
                stuffBits(bArr, 4, i7);
            }
            stuffBits(bArr, 0, i4);
            if (i4 != 0) {
                i6 = 2;
            }
        } else {
            bArr = new byte[4];
            int lo0bits = lo0bits(i4);
            i4 >>>= lo0bits;
            stuffBits(bArr, 0, i4);
            i = lo0bits + 32;
        }
        if (i5 != 0) {
            iArr[0] = (i5 - 1075) + i;
            iArr2[0] = 53 - i;
        } else {
            iArr[0] = (i5 - 1074) + i;
            iArr2[0] = (i6 * 32) - hi0bits(i4);
        }
        return new BigInteger(bArr);
    }

    private static int hi0bits(int i) {
        int i2;
        if (((-65536) & i) == 0) {
            i <<= 16;
            i2 = 16;
        } else {
            i2 = 0;
        }
        if (((-16777216) & i) == 0) {
            i2 += 8;
            i <<= 8;
        }
        if (((-268435456) & i) == 0) {
            i2 += 4;
            i <<= 4;
        }
        if (((-1073741824) & i) == 0) {
            i2 += 2;
            i <<= 2;
        }
        if ((Integer.MIN_VALUE & i) == 0) {
            i2++;
            if ((i & 1073741824) == 0) {
                return 32;
            }
        }
        return i2;
    }

    private static int lo0bits(int i) {
        int i2 = 0;
        if ((i & 7) != 0) {
            if ((i & 1) != 0) {
                return 0;
            }
            return (i & 2) != 0 ? 1 : 2;
        }
        if ((65535 & i) == 0) {
            i >>>= 16;
            i2 = 16;
        }
        if ((i & 255) == 0) {
            i2 += 8;
            i >>>= 8;
        }
        if ((i & 15) == 0) {
            i2 += 4;
            i >>>= 4;
        }
        if ((i & 3) == 0) {
            i2 += 2;
            i >>>= 2;
        }
        if ((i & 1) == 0) {
            i2++;
            if (((i >>> 1) & 1) == 0) {
                return 32;
            }
        }
        return i2;
    }

    private static void stuffBits(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }
}

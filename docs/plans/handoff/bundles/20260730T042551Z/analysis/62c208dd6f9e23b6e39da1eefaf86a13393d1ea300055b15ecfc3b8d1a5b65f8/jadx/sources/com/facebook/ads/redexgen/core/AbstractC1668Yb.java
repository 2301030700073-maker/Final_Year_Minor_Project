package com.facebook.ads.redexgen.core;

import android.util.Pair;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Yb, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1668Yb {
    public static byte[] A00;

    static {
        A05();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static YZ A02(WJ wj) throws IOException {
        byte[] bArr;
        C2070fq c2070fq = new C2070fq(16);
        C1667Ya A03 = A03(1718449184, wj, c2070fq);
        AbstractC2011es.A08(A03.A01 >= 16);
        wj.AG1(c2070fq.A0l(), 0, 16);
        c2070fq.A0f(0);
        int A0G = c2070fq.A0G();
        int A0G2 = c2070fq.A0G();
        int A0F = c2070fq.A0F();
        int A0F2 = c2070fq.A0F();
        int A0G3 = c2070fq.A0G();
        int A0G4 = c2070fq.A0G();
        int i = ((int) A03.A01) - 16;
        if (i > 0) {
            bArr = new byte[i];
            wj.AG1(bArr, 0, i);
        } else {
            bArr = AbstractC2094gE.A07;
        }
        wj.AJ9((int) (wj.A8Y() - wj.A8d()));
        return new YZ(A0G, A0G2, A0F, A0F2, A0G3, A0G4, bArr);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 110);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{5, 42, 55, 48, 45, -30, 43, 53, -30, 54, 49, 49, -30, 46, 35, 52, 41, 39, -30, -22, 64, -12, 9, 4, -19, -21, -30, 54, 49, -30, 53, 45, 43, 50, -3, -30, 43, 38, -4, -30, -34, -4, 3, 4, 7, -2, 3, -4, -75, 10, 3, 0, 3, 4, 12, 3, -75, -20, -42, -21, -75, -8, -3, 10, 3, 0, -49, -75, -37, -12, -7, -5, -10, -10, -11, -8, -6, -21, -22, -90, -20, -11, -8, -13, -90, -6, -1, -10, -21, -64, -90, 56, 66, 87, 41, 70, 66, 69, 70, 83, 51, 70, 66, 69, 70, 83};
    }

    public static long A00(WJ wj) throws IOException {
        C2070fq c2070fq = new C2070fq(8);
        C1667Ya chunkHeader = C1667Ya.A00(wj, c2070fq);
        if (chunkHeader.A00 != 1685272116) {
            wj.AHr();
            return -1L;
        }
        wj.A3x(8);
        c2070fq.A0f(0);
        wj.AG1(c2070fq.A0l(), 0, 8);
        long sampleDataSize = c2070fq.A0N();
        wj.AJ9(((int) chunkHeader.A01) + 8);
        return sampleDataSize;
    }

    public static Pair<Long, Long> A01(WJ wj) throws IOException {
        wj.AHr();
        C1667Ya A03 = A03(1684108385, wj, new C2070fq(8));
        wj.AJ9(8);
        return Pair.create(Long.valueOf(wj.A8d()), Long.valueOf(A03.A01));
    }

    public static C1667Ya A03(int i, WJ wj, C2070fq c2070fq) throws IOException {
        C1667Ya A002 = C1667Ya.A00(wj, c2070fq);
        while (A002.A00 != i) {
            AbstractC2055fb.A07(A04(91, 15, 115), A04(40, 28, 39) + A002.A00);
            long j = A002.A01 + 8;
            if (j <= 2147483647L) {
                wj.AJ9((int) j);
                A002 = C1667Ya.A00(wj, c2070fq);
            } else {
                throw Q6.A00(A04(0, 40, 84) + A002.A00);
            }
        }
        return A002;
    }

    public static boolean A06(WJ wj) throws IOException {
        C2070fq c2070fq = new C2070fq(8);
        C1667Ya A002 = C1667Ya.A00(wj, c2070fq);
        if (A002.A00 != 1380533830 && A002.A00 != 1380333108) {
            return false;
        }
        wj.AG1(c2070fq.A0l(), 0, 4);
        c2070fq.A0f(0);
        int A0C = c2070fq.A0C();
        if (A0C != 1463899717) {
            AbstractC2055fb.A05(A04(91, 15, 115), A04(68, 23, 24) + A0C);
            return false;
        }
        return true;
    }
}

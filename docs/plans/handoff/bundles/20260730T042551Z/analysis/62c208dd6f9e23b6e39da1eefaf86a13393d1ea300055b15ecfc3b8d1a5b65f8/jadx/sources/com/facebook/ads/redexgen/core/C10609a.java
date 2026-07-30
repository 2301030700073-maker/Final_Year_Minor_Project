package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.9a, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10609a implements InterfaceC1558Tn {
    public static byte[] A04;
    public static String[] A05 = {"xHILsbM1", "r9UR5mr64LX6eV4yUDAPzib1Gta", "ZQbIEf", "HuBz2", "SUFRTEuidhxn3hImQljJKV", "gaKc2fXcJsaSfjwMpUKSyAgqbWjrPPEf", "i1SnwhgXOAnC9omDSsrvwHYzb4OR8iqS", "p33njeS322l"};
    public final long A00;
    public final long A01;
    public final long[] A02;
    public final long[] A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C10609a A00(long j, long j2, UY uy, C2070fq c2070fq) {
        int A0I;
        long j3 = j2;
        c2070fq.A0g(10);
        int A0C = c2070fq.A0C();
        if (A0C <= 0) {
            return null;
        }
        int i = uy.A03;
        long A0U = AbstractC2094gE.A0U(A0C, (i >= 32000 ? 1152 : 576) * 1000000, i);
        int A0M = c2070fq.A0M();
        int A0M2 = c2070fq.A0M();
        if (A05[0].length() == 12) {
            throw new RuntimeException();
        }
        A05[7] = "yOI5KAPdn3q";
        int A0M3 = c2070fq.A0M();
        c2070fq.A0g(2);
        long j4 = j3 + uy.A02;
        long[] jArr = new long[A0M];
        long[] jArr2 = new long[A0M];
        for (int i2 = 0; i2 < A0M; i2++) {
            jArr[i2] = (i2 * A0U) / A0M;
            jArr2[i2] = Math.max(j3, j4);
            switch (A0M3) {
                case 1:
                    A0I = c2070fq.A0I();
                    break;
                case 2:
                    A0I = c2070fq.A0M();
                    break;
                case 3:
                    A0I = c2070fq.A0K();
                    break;
                case 4:
                    A0I = c2070fq.A0L();
                    break;
                default:
                    return null;
            }
            j3 += A0I * A0M2;
        }
        if (j != -1 && j != j3) {
            AbstractC2055fb.A07(A01(27, 10, 75), A01(2, 25, 59) + j + A01(0, 2, 25) + j3);
        }
        return new C10609a(jArr, jArr2, A0U, j3);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 93);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-94, -106, -18, -38, -22, -31, -72, -4, -7, 12, -7, -72, 11, 1, 18, -3, -72, 5, 1, 11, 5, -7, 12, -5, 0, -46, -72, -2, 10, 26, 17, -5, 13, 13, 19, 13, 26};
    }

    static {
        A02();
    }

    public C10609a(long[] jArr, long[] jArr2, long j, long j2) {
        this.A03 = jArr;
        this.A02 = jArr2;
        this.A01 = j;
        this.A00 = j2;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1558Tn
    public final long A7Z() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final long A7j() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final C1576Ui A8r(long j) {
        int A0L = AbstractC2094gE.A0L(this.A03, j, true, true);
        C1577Uk c1577Uk = new C1577Uk(this.A03[A0L], this.A02[A0L]);
        if (c1577Uk.A01 < j) {
            int length = this.A03.length - 1;
            if (A05[3].length() == 20) {
                throw new RuntimeException();
            }
            A05[1] = "H8upqA";
            if (A0L != length) {
                int tableIndex = A0L + 1;
                long j2 = this.A03[tableIndex];
                int tableIndex2 = A0L + 1;
                C1577Uk nextSeekPoint = new C1577Uk(j2, this.A02[tableIndex2]);
                return new C1576Ui(c1577Uk, nextSeekPoint);
            }
        }
        return new C1576Ui(c1577Uk);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1558Tn
    public final long A97(long j) {
        return this.A03[AbstractC2094gE.A0L(this.A02, j, true, true)];
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final boolean AAY() {
        return true;
    }
}

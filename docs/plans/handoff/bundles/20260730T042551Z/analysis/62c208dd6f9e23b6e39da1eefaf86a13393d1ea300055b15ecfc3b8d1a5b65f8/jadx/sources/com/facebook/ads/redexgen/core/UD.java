package com.facebook.ads.redexgen.core;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public abstract class UD {
    public static byte[] A04;
    public static String[] A05 = {"Jhtx178IMq23kUOoozNXaD96RNDNMeq9", "NXhQPuYygPgm13XpxQ6AVC", "XbCWuI93AbcXpCtq0Lv1ECs2MHmDiQGb", "aRhX3Yl5xHIR8cXYecvLqc0GN0gWfEUM", "JHpIfdiDfTmDtpI00YF6gvRZqtNWaTR9", "DSplChZ5H8QsGzGk5GdQZeMEULlwRRZg", "aSNduxc9zJN0oIXdD27ucq", "ha0k4MwTTu0lAZTs7ugoKqlV19asfAad"};
    public U7 A00;
    public final int A01;
    public final C1621Wf A02;
    public final UC A03;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A05;
            if (strArr[4].charAt(6) == strArr[3].charAt(6)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[1] = "SInKRwdAdChGNPlHrJmpFI";
            strArr2[6] = "BMskWzHkRy94e6Jaaiv6Vn";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 104);
            i4++;
        }
    }

    public static void A05() {
        A04 = new byte[]{-48, -11, -3, -24, -13, -16, -21, -89, -22, -24, -6, -20};
    }

    static {
        A05();
    }

    public UD(U8 u8, UC uc, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.A03 = uc;
        this.A01 = i;
        this.A02 = new C1621Wf(u8, j, j2, j3, j4, j5, j6);
    }

    private final int A02(WJ wj, long j, C1575Ug c1575Ug) {
        if (j == wj.A8d()) {
            return 0;
        }
        c1575Ug.A00 = j;
        return 1;
    }

    private final U7 A03(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long A052 = this.A02.A05(j);
        j2 = this.A02.A05;
        j3 = this.A02.A02;
        j4 = this.A02.A04;
        j5 = this.A02.A01;
        j6 = this.A02.A00;
        return new U7(j, A052, j2, j3, j4, j5, j6);
    }

    private final void A06(boolean z, long j) {
        this.A00 = null;
        this.A03.AF2();
    }

    private final boolean A07(WJ wj, long j) throws IOException {
        long A8d = j - wj.A8d();
        if (A8d >= 0 && A8d <= 262144) {
            wj.AJ9((int) A8d);
            return true;
        }
        return false;
    }

    public final int A08(WJ wj, C1575Ug c1575Ug) throws IOException {
        long A01;
        long A00;
        long A02;
        long A042;
        int i;
        long j;
        long j2;
        long j3;
        long floorPosition;
        long j4;
        long j5;
        long j6;
        while (true) {
            U7 u7 = (U7) AbstractC2011es.A02(this.A00);
            A01 = u7.A01();
            A00 = u7.A00();
            A02 = u7.A02();
            if (A00 - A01 <= this.A01) {
                A06(false, A01);
                return A02(wj, A01, c1575Ug);
            }
            if (!A07(wj, A02)) {
                return A02(wj, A02, c1575Ug);
            }
            wj.AHr();
            UC uc = this.A03;
            A042 = u7.A04();
            UA AI2 = uc.AI2(wj, A042);
            i = AI2.A00;
            switch (i) {
                case -3:
                    A06(false, A02);
                    return A02(wj, A02, c1575Ug);
                case -2:
                    j5 = AI2.A02;
                    j6 = AI2.A01;
                    u7.A0D(j5, j6);
                    break;
                case -1:
                    j = AI2.A02;
                    j2 = AI2.A01;
                    u7.A0C(j, j2);
                    break;
                case 0:
                    j3 = AI2.A01;
                    A07(wj, j3);
                    floorPosition = AI2.A01;
                    A06(true, floorPosition);
                    j4 = AI2.A01;
                    return A02(wj, j4, c1575Ug);
                default:
                    throw new IllegalStateException(A04(0, 12, 31));
            }
        }
    }

    public final C1621Wf A09() {
        return this.A02;
    }

    public final void A0A(long j) {
        long A03;
        if (this.A00 != null) {
            A03 = this.A00.A03();
            if (A03 == j) {
                return;
            }
        }
        this.A00 = A03(j);
    }

    public final boolean A0B() {
        return this.A00 != null;
    }
}

package com.facebook.ads.redexgen.core;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class YM {
    public static byte[] A09;
    public static String[] A0A = {"ObPPlqYBz9jtQgOlhfiORQ3zvsCjO8c7", "TuvHPX8vYCVU3QejrSpcDndUcFm7DbwN", "7xHso735LCvEBLLncnmj3mZ8U2Hk5Kjb", "DkRDzvQUTZ1qaA67TFCVIroE3uujSXYl", "HFX8LxDqKMy36lIJNucFG6nL29jsJJXx", "UZB90JNHlJq9ZNLz5ef2OkEjyeveeHaQ", "56LC0ftgEWyuidTkevuLDqFqpRaUdfSW", "fUKI06WVybM5lbesQA3Bilzwmbe3YhLm"};
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final C2084g4 A08 = new C2084g4(0);
    public long A01 = -9223372036854775807L;
    public long A02 = -9223372036854775807L;
    public long A00 = -9223372036854775807L;
    public final C2070fq A07 = new C2070fq();

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 103);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A09 = new byte[]{-79, -93, -40, -10, -20, -15, -22, -93, -41, -52, -48, -56, -30, -40, -47, -42, -56, -41, -93, -20, -15, -10, -9, -24, -28, -25, -79, -67, -30, -22, -43, -32, -35, -40, -108, -40, -23, -26, -43, -24, -35, -29, -30, -82, -108, 17, 48, 1, 50, 47, 30, 49, 38, 44, 43, 15, 34, 30, 33, 34, 47};
    }

    static {
        A06();
    }

    public YM(int i) {
        this.A06 = i;
    }

    private int A00(WJ wj) {
        this.A07.A0i(AbstractC2094gE.A07);
        this.A03 = true;
        wj.AHr();
        return 0;
    }

    private int A01(WJ wj, C1575Ug c1575Ug, int i) throws IOException {
        int min = (int) Math.min(this.A06, wj.A8E());
        if (wj.A8d() != 0) {
            c1575Ug.A00 = 0;
            return 1;
        }
        this.A07.A0d(min);
        wj.AHr();
        wj.AG1(this.A07.A0l(), 0, min);
        this.A01 = A03(this.A07, i);
        this.A04 = true;
        return 0;
    }

    private int A02(WJ wj, C1575Ug c1575Ug, int i) throws IOException {
        long inputLength = wj.A8E();
        int min = (int) Math.min(this.A06, inputLength);
        long inputLength2 = inputLength - min;
        if (wj.A8d() != inputLength2) {
            c1575Ug.A00 = inputLength2;
            return 1;
        }
        this.A07.A0d(min);
        wj.AHr();
        wj.AG1(this.A07.A0l(), 0, min);
        this.A02 = A04(this.A07, i);
        this.A05 = true;
        return 0;
    }

    private long A03(C2070fq c2070fq, int i) {
        int A0A2 = c2070fq.A0A();
        for (int A092 = c2070fq.A09(); A092 < A0A2; A092++) {
            int searchEndPosition = c2070fq.A0l()[A092];
            if (searchEndPosition == 71) {
                long A01 = YU.A01(c2070fq, A092, i);
                if (A01 != -9223372036854775807L) {
                    return A01;
                }
            }
        }
        return -9223372036854775807L;
    }

    private long A04(C2070fq c2070fq, int i) {
        int A092 = c2070fq.A09();
        int A0A2 = c2070fq.A0A();
        for (int i2 = A0A2 - 188; i2 >= A092; i2--) {
            if (YU.A03(c2070fq.A0l(), A092, A0A2, i2)) {
                long A01 = YU.A01(c2070fq, i2, i);
                if (A01 != -9223372036854775807L) {
                    return A01;
                }
            }
        }
        return -9223372036854775807L;
    }

    public final int A07(WJ wj, C1575Ug c1575Ug, int i) throws IOException {
        if (i <= 0) {
            return A00(wj);
        }
        boolean z = this.A05;
        if (A0A[3].charAt(13) == 'A') {
            A0A[7] = "821ECwpuxcFTJMpXNSq1fqnjlqBsY3v4";
            if (!z) {
                return A02(wj, c1575Ug, i);
            }
            if (this.A02 == -9223372036854775807L) {
                return A00(wj);
            }
            if (!this.A04) {
                return A01(wj, c1575Ug, i);
            }
            if (this.A01 == -9223372036854775807L) {
                return A00(wj);
            }
            long A06 = this.A08.A06(this.A01);
            long maxPcrPositionUs = this.A08.A06(this.A02);
            long maxPcrPositionUs2 = maxPcrPositionUs - A06;
            if (A0A[7].charAt(28) == 'Y') {
                A0A[7] = "FgF2XqEL70fgZ8nYDpMFHGFltuyKYfQj";
                this.A00 = maxPcrPositionUs2;
                if (this.A00 < 0) {
                    AbstractC2055fb.A07(A05(45, 16, 86), A05(27, 18, 13) + this.A00 + A05(0, 27, 28));
                    this.A00 = -9223372036854775807L;
                }
                return A00(wj);
            }
        }
        throw new RuntimeException();
    }

    public final long A08() {
        return this.A00;
    }

    public final C2084g4 A09() {
        return this.A08;
    }

    public final boolean A0A() {
        return this.A03;
    }
}

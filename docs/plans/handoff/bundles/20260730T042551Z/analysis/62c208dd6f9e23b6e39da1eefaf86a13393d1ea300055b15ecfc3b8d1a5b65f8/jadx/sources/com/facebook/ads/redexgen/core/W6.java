package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class W6 {
    public static byte[] A09;
    public static String[] A0A = {"bOtVuyYjPSa", "7QMaWo1wHwfgCi4aP6wMM", "4KxTbi4OTTXJCbgKefqsfIxiFuXd2Uy3", "ofTtLwzYP6hXuP", "CoFcw5zYGZu", "eHzV3I", "K7gEVcKDgc0sbe", "TrHheR6TBqDMTgNYHzyPMO1D2zdehNBk"};
    public int A00;
    public int A01;
    public long A02;
    public int A03;
    public int A04;
    public final int A05;
    public final C2070fq A06;
    public final C2070fq A07;
    public final boolean A08;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 54);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A09 = new byte[]{-87, -84, -75, -74, -73, -94, -90, -85, -72, -79, -82, 99, -80, -72, -74, -73, 99, -91, -88, 99, 116};
    }

    static {
        A01();
    }

    public W6(C2070fq c2070fq, C2070fq c2070fq2, boolean z) throws Q6 {
        this.A07 = c2070fq;
        this.A06 = c2070fq2;
        this.A08 = z;
        c2070fq2.A0f(12);
        this.A05 = c2070fq2.A0L();
        c2070fq.A0f(12);
        this.A04 = c2070fq.A0L();
        UM.A01(c2070fq.A0C() == 1, A00(0, 21, 13));
        this.A00 = -1;
    }

    public final boolean A02() {
        long A0Q;
        int i;
        int i2 = this.A00 + 1;
        this.A00 = i2;
        if (i2 == this.A05) {
            return false;
        }
        if (this.A08) {
            C2070fq c2070fq = this.A06;
            String[] strArr = A0A;
            if (strArr[0].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A0A[6] = "lYM36B063enJtF";
            A0Q = c2070fq.A0R();
        } else {
            A0Q = this.A06.A0Q();
        }
        this.A02 = A0Q;
        if (this.A00 == this.A03) {
            this.A01 = this.A07.A0L();
            this.A07.A0g(4);
            int i3 = this.A04 - 1;
            this.A04 = i3;
            if (i3 > 0) {
                i = this.A07.A0L() - 1;
            } else {
                i = -1;
            }
            this.A03 = i;
        }
        return true;
    }
}

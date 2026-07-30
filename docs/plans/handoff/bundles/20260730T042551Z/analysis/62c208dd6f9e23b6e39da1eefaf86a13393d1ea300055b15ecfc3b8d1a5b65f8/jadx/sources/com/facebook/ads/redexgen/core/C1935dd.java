package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.dd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1935dd extends BY {
    public static byte[] A02;
    public static String[] A03 = {"dab4fRnX0jwVtTCdppjyxAzmLS4bXJsv", "tx88Rmris0qAnIQYPQwCDQk09feKvYvd", "zx5uuvDAcytcTb9ViP21DGr2Ir", "iFOXUW5dAcR78ORAksMxLEmjU8chlyrY", "cH6E6XWheDX0I5qudQa8gCuUDMH3DwGR", "ZrH1xVhvr", "HcVkU72Pv92AZpKffx9OD1kZyJiX0ZmG", "FRYXqcD3MsRMpqiQBVhoHwYMYH2ko3dl"};
    public final /* synthetic */ C1337Kj A00;
    public final /* synthetic */ KX A01;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A03[7].charAt(20) == 'R') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[6] = "mmZKkJ0qdyfdoCPbfy2YKuwlL3WBbVIn";
            strArr[0] = "dwlf7VAy7NoW0pl9cb0nbAZtUrVGpkqt";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 57);
            i4++;
        }
    }

    public static void A04() {
        A02 = new byte[]{-8, 43, 28, 28, 27, 40, 31, 36, 29, -42, 31, 36, 26, 27, 28, 31, 36, 31, 42, 27, 34, 47};
    }

    static {
        A04();
    }

    public C1935dd(C1337Kj c1337Kj, KX kx) {
        this.A00 = c1337Kj;
        this.A01 = kx;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C1855cL c1855cL;
        C1855cL c1855cL2;
        c1855cL = this.A00.A0L;
        if (c1855cL.getState() == JI.A02) {
            c1855cL2 = this.A00.A0L;
            if (c1855cL2.getCurrentPositionInMillis() == this.A01.A00()) {
                this.A00.A0Q(A01(0, 22, 125));
            }
        }
    }
}

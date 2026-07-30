package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class H5 implements Runnable {
    public static byte[] A01;
    public static String[] A02 = {"CXh9IgKc", "O7eitgLXwuQabaJwawISN5vHvLm6eCHh", "CD1jo8Ha", "FPDId41ZEfoYhMJr4YCyxsIaRA1sy82M", "v53i6y7e6", "iQAdLEQn", "ZcZ8pescI", "Z1kdPveD"};
    public final /* synthetic */ L2 A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 102);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{58, 77, 72, 73, 83, 52, 80, 69, 93, 70, 69, 71, 79, 41, 86, 86, 83, 86};
    }

    static {
        A01();
    }

    public H5(L2 l2) {
        this.A00 = l2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HI hi;
        if (BQ.A02(this)) {
            return;
        }
        try {
            hi = this.A00.A00.A0F;
            hi.AFY(A00(0, 18, 126));
        } catch (Throwable th) {
            String[] strArr = A02;
            if (strArr[4].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[7] = "CbmYJDHc";
            strArr2[5] = "9BNL1g6R";
            BQ.A00(th, this);
        }
    }
}

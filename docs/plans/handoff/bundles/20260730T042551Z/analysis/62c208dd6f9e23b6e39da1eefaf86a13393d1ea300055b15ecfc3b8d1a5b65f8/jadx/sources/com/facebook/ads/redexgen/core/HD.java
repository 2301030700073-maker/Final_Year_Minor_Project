package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class HD implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C1346Ks A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{78, 113, 124, 125, 119, 72, 116, 121, 97, 122, 121, 123, 115, 93, 106, 106, 119, 106};
    }

    public HD(C1346Ks c1346Ks) {
        this.A00 = c1346Ks;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HI hi;
        if (BQ.A02(this)) {
            return;
        }
        try {
            hi = this.A00.A00.A0Y;
            hi.AFY(A00(0, 18, 75));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

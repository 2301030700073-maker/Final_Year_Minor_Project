package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.9M, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class C9M {
    public static byte[] A00;
    public static String[] A01 = {"DnTt6XIWuAOQU1Yv6ovRwSY", "69qI84ufJ2UhBtkQx2IBHzZ", "lNRa3H", "2y2Uq0vrRuc5d5uHsu4hqSSezWuXbHLJ", "zUBzfUPcj8uIEo8tGSc", "tyrfQSxRYtG07uuggB4oX54vdLL3Tqsi", "aO8Ix6JCuD3GiDZZv02FTTQkozyjIQFp", "pMzofq8cn4xP4Da44trMpLQAQtlXLUTp"};

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        String[] strArr = A01;
        if (strArr[1].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A01[4] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        A00 = new byte[]{3, 20, 18, 30, 3, 21, 46, 21, 16, 5, 16, 19, 16, 2, 20};
    }

    static {
        A03();
    }

    public static C9O A00(C2321k0 c2321k0) {
        try {
            return new C2286jR(c2321k0);
        } catch (IOException e) {
            c2321k0.A08().AAu(A02(0, 15, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION), AbstractC10358a.A2K, new C10368b(e));
            return new C2289jU();
        }
    }

    public static M2 A01(C2321k0 c2321k0) {
        return new M2(c2321k0);
    }
}

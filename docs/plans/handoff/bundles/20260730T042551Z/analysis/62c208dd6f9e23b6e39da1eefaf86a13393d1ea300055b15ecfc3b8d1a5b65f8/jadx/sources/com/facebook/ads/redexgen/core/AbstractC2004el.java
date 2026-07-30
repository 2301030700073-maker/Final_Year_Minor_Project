package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.el, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract /* synthetic */ class AbstractC2004el {
    public static byte[] A00;
    public static String[] A01 = {"CoYyX75SjT", "Lq6PbtIWpeQsK86x", "E", "jp", "nb3Uz12tr0ycxAJ", "tT", "ixjY8zFEZp9Cky6XeOPYQ4Rf9rzMFkQQ", "GptbYXHPLg6Unjq"};

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A01;
            if (strArr[4].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A01[0] = "TzzehKpgVO";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 71);
            i4++;
        }
    }

    public static void A03() {
        A00 = new byte[]{19, 14, 25, 41, 26, 19, 24, 42, 55, 32, 16, 61, 42, 43, 38, 61};
    }

    static {
        A03();
    }

    public static long A00(InterfaceC2005em interfaceC2005em) {
        return interfaceC2005em.A6X(A02(0, 7, 49), -1L);
    }

    public static Uri A01(InterfaceC2005em interfaceC2005em) {
        String A6Z = interfaceC2005em.A6Z(A02(7, 9, 8), null);
        if (A6Z == null) {
            return null;
        }
        return Uri.parse(A6Z);
    }
}

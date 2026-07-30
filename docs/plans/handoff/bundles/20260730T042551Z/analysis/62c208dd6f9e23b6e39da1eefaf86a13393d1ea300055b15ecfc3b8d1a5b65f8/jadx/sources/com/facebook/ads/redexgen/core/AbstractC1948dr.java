package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.dr, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract /* synthetic */ class AbstractC1948dr {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 13);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{120, -124, 125, 124, -16, -31, -12, -16, -69, -84, -65, -69, 118, -67, -69, -69, -94, -105, -106};
    }

    public static /* synthetic */ boolean A02(String str) {
        if (str == null) {
            return false;
        }
        String A01 = AbstractC2178hb.A01(str);
        if (TextUtils.isEmpty(A01)) {
            return false;
        }
        return ((A01.contains(A00(4, 4, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION)) && !A01.contains(A00(8, 8, 58))) || A01.contains(A00(0, 4, 3)) || A01.contains(A00(16, 3, 29))) ? false : true;
    }
}

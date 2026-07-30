package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.nF, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2516nF extends AbstractC08781v {
    public static byte[] A02;
    public static final String A03;
    public final Uri A00;
    public final Map<String, String> A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 87);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{52, 54, 45, 51, 54, 45, 56, 61, -32, -27, -36, -47};
    }

    static {
        A01();
        A03 = C2516nF.class.getSimpleName();
    }

    public C2516nF(C2322k1 c2322k1, A7 a7, String str, Uri uri, Map<String, String> mExtraData) {
        super(c2322k1, a7, str);
        this.A00 = uri;
        this.A01 = mExtraData;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC08781v
    public final EnumC08771u A0C(String str) {
        A9 a9 = A9.A05;
        String queryParameter = this.A00.getQueryParameter(A00(0, 8, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD));
        if (!TextUtils.isEmpty(queryParameter)) {
            try {
                a9 = A9.values()[Integer.valueOf(queryParameter).intValue()];
            } catch (Exception unused) {
            }
        }
        super.A01.ABF(this.A02, this.A01, this.A00.getQueryParameter(A00(8, 4, 21)), a9);
        return EnumC08771u.A09;
    }
}

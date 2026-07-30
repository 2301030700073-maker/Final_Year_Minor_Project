package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.nE, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2515nE extends AbstractC08781v {
    public static byte[] A01;
    public static final String A02;
    public final Uri A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 98);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{16, 43, 51, 54, 47, 46, -22, 62, 57, -22, 57, 58, 47, 56, -22, 54, 51, 56, 53, -22, 63, 60, 54, 4, -22};
    }

    static {
        A01();
        A02 = C2515nE.class.getSimpleName();
    }

    public C2515nE(C2322k1 c2322k1, A7 a7, String str, Uri uri) {
        super(c2322k1, a7, str);
        this.A00 = uri;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC08781v
    public final EnumC08771u A0C(String str) {
        try {
            C2.A0D(new C2(), super.A00, this.A00, this.A02);
        } catch (Exception unused) {
            String str2 = A00(0, 25, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION) + this.A00.toString();
        }
        return EnumC08771u.A09;
    }
}

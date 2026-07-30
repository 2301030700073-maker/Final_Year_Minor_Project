package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.Map;

/* loaded from: assets/audience_network.dex */
public final class N8 extends AbstractC2517nG {
    public static byte[] A02;
    public static String[] A03 = {"FXNBCWXiStej7hPExkUYAqHU7xYJWQz0", "1k", "9V456DvY4LqOh9I9hdT7Vdo5", "hY2FptqSd7XbZZsJCz2yOGxQcUuE9Eo6", "F2N3RsuOcTrAQaEUExDI4U65CqttWDRl", "hYiRMwjZqKFmNKhRfgQ6FfhFwFErfvFO", "BBwXtDWFWjLC6NycZYUWGAP3M0YJ", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED};
    public static final String A04;
    public final Uri A00;
    public final Map<String, String> A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 84);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-100, -73, -65, -62, -69, -70, 118, -54, -59, 118, -59, -58, -69, -60, 118, -62, -65, -60, -63, 118, -53, -56, -62, -112, 118, -45, -48, -43, -46};
        if (A03[3].charAt(0) == 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[4] = "n2WgzR0RMCkX50JDMRkryQ8YygezODnU";
        strArr[5] = "Oz9myBlwI7NBoyftyrFAavzWMm25M0Ie";
    }

    static {
        A01();
        A04 = N8.class.getSimpleName();
    }

    public N8(C2322k1 c2322k1, A7 a7, String str, Uri uri, Map<String, String> mExtraData, AnonymousClass22 anonymousClass22, boolean z) {
        super(c2322k1, a7, str, anonymousClass22, z);
        this.A00 = uri;
        this.A01 = mExtraData;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2517nG
    public final EnumC08771u A0D() {
        EnumC08771u enumC08771u = EnumC08771u.A09;
        if (this.A03) {
            enumC08771u = A0G();
        }
        if (!D3.A0e(((AbstractC08781v) this).A00, enumC08771u, this.A01)) {
            A0E(this.A01, enumC08771u);
        }
        return enumC08771u;
    }

    public final EnumC08771u A0G() {
        if (A0F(this.A00)) {
            EnumC08771u actionOutcome = EnumC08771u.A0A;
            return actionOutcome;
        }
        try {
            EnumC08771u actionOutcome2 = C2.A05(new C2(), ((AbstractC08781v) this).A00, C5.A00(this.A00.getQueryParameter(A00(25, 4, 19))), ((AbstractC08781v) this).A02, this.A01);
            return actionOutcome2;
        } catch (Exception unused) {
            String str = A00(0, 25, 2) + this.A00.toString();
            EnumC08771u actionOutcome3 = EnumC08771u.A04;
            return actionOutcome3;
        }
    }
}

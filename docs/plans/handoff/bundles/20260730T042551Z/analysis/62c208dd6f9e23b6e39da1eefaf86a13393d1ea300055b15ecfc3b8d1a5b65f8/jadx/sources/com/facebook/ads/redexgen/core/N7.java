package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Map;

/* loaded from: assets/audience_network.dex */
public final class N7 extends AbstractC2517nG {
    public static byte[] A02;
    public static final String A03;
    public final Uri A00;
    public final Map<String, String> A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{93, 122, 114, 119, 126, Byte.MAX_VALUE, 59, 111, 116, 59, 116, 107, 126, 117, 59, 119, 114, 117, 112, 59, 110, 105, 119, 33, 59, 67, 70, 65, 68};
    }

    static {
        A01();
        A03 = N7.class.getSimpleName();
    }

    public N7(C2322k1 c2322k1, A7 a7, String str, Uri uri, Map<String, String> mExtraData, AnonymousClass22 anonymousClass22, boolean z) {
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
        A0E(this.A01, enumC08771u);
        return enumC08771u;
    }

    public final EnumC08771u A0G() {
        EnumC08771u enumC08771u = EnumC08771u.A09;
        try {
            C2.A0C(new C2(), ((AbstractC08781v) this).A00, C5.A00(this.A00.getQueryParameter(A00(25, 4, 67))), ((AbstractC08781v) this).A02);
            return enumC08771u;
        } catch (Exception unused) {
            String str = A00(0, 25, 119) + this.A00.toString();
            return EnumC08771u.A04;
        }
    }
}

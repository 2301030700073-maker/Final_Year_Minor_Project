package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.wearable.WearableStatusCodes;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.je, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2299je implements InterfaceC08631g {
    public static byte[] A01;
    public final AnonymousClass85 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 24);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-93, -73, -56, -82, -118, -71, -78, -78, -87, -80, -87, -40, -47, -47, -56, -49, -99, -125, -39, -24, -2, -52, -3, -20, -11, -5, -26, -117, -102, -109, -109, -118, -111, -68, -53, -60, -60, -69, -62, -75, -62, -59, -67, -67, -69, -70};
    }

    public C2299je(AnonymousClass85 anonymousClass85) {
        this.A00 = anonymousClass85;
    }

    private void A02(int i, String str, JSONObject jSONObject, boolean z, int i2) {
        C10368b c10368b = new C10368b(A00(4, 6, 44));
        c10368b.A07(jSONObject);
        c10368b.A05(1);
        c10368b.A09(z);
        c10368b.A04(i2);
        try {
            jSONObject.put(A00(33, 13, 62), C8U.A0H(this.A00));
        } catch (JSONException unused) {
        }
        this.A00.A08().AAv(A00(27, 6, 13), i + WearableStatusCodes.TARGET_NODE_NOT_CONNECTED, c10368b);
        if (this.A00.A05().AAD()) {
            String str2 = A00(10, 8, 75) + str + A00(0, 1, 99) + i + A00(1, 3, 118) + jSONObject.toString();
        }
    }

    public static boolean A03(EnumC08651i enumC08651i) {
        for (EnumC08651i enumC08651i2 : C2291jW.A06) {
            if (enumC08651i2.equals(enumC08651i)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC08631g
    public final void AAw(EnumC08651i enumC08651i, JSONObject jSONObject, int i) {
        A02(enumC08651i.A03(), enumC08651i.toString(), jSONObject, A03(enumC08651i), i);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC08631g
    public final void ABH(int i, JSONObject jSONObject) {
        A02(i, A00(18, 9, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION) + i, jSONObject, false, 0);
    }
}

package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Gv, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1245Gv implements Runnable {
    public static byte[] A02;
    public final /* synthetic */ C1249Gz A00;
    public final /* synthetic */ String A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{13, 33, 59, 34, 42, 110, 32, 33, 58, 110, 62, 47, 60, 61, 43, 110, 61, 43, 60, 56, 43, 60, 110, 35, 43, 61, 61, 47, 41, 43, 72, Byte.MAX_VALUE, Byte.MAX_VALUE, 98, Byte.MAX_VALUE, 45, 125, 108, Byte.MAX_VALUE, 126, 100, 99, 106, 45, 71, 94, 66, 67, 45, 100, 99, 45, 125, 98, 126, 121, 64, 104, 126, 126, 108, 106, 104, 45, 87, 67, 66, 94, 125, 83, 79, 53, 40, 36, 34, 49, 15, 52, 49, 36, 49, 14, 3, 10, 31, 58, 60};
    }

    public RunnableC1245Gv(C1249Gz c1249Gz, String str) {
        this.A00 = c1249Gz;
        this.A01 = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1228Ge c1228Ge;
        String str;
        C1228Ge c1228Ge2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            try {
                JSONObject jSONObject = new JSONObject(this.A01);
                str = this.A00.A05;
                if (str.equals(jSONObject.optString(A00(64, 7, 87)))) {
                    this.A00.A0C(EnumC1247Gx.A00(jSONObject.optString(A00(81, 4, 27))), jSONObject.optString(A00(71, 10, 49), A00(85, 2, 32)));
                } else {
                    c1228Ge2 = this.A00.A04;
                    c1228Ge2.A04(AbstractC10358a.A11, A00(0, 30, 47));
                }
            } catch (JSONException e) {
                c1228Ge = this.A00.A04;
                c1228Ge.A04(AbstractC10358a.A15, A00(30, 34, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS) + e.getMessage());
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

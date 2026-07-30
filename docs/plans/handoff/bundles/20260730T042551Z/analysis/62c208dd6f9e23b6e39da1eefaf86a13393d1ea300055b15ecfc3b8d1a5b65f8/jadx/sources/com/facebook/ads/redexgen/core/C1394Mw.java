package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Mw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1394Mw extends AbstractC2478md implements Serializable {
    public static byte[] A00 = null;
    public static String[] A01 = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DwBpRdjhynFrlzLsBFrR", "QSeBoONoLaQYOKTzvkglRPiKzJDmlw8V", "7gQnCJoaPerIMpa6ilCeIjK7d9DzDLkx", "0G82UgBGsFbmab2LaOSe1R1N", "BET7yFkEMT8u6XlB2K", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "QGCw11GNV2Lw2F7bA4MSMYlzIGOyIq"};
    public static final long serialVersionUID = 5751287062553772011L;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = (byte) ((copyOfRange[i4] ^ i3) ^ 54);
            if (A01[5].length() != 18) {
                throw new RuntimeException();
            }
            A01[4] = "xBe8M";
            copyOfRange[i4] = b;
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{86, 81, 75, 90, 77, 76, 75, 86, 75, 86, 94, 83};
    }

    static {
        A04();
    }

    public C1394Mw(List<C2T> list) {
        super(list);
    }

    public static C1394Mw A02(JSONObject jSONObject, C2322k1 c2322k1) {
        C1394Mw c1394Mw = new C1394Mw(AbstractC2478md.A08(jSONObject, c2322k1, new C2475ma()));
        c1394Mw.A1k(jSONObject);
        c1394Mw.A10(A03(0, 12, 9));
        return c1394Mw;
    }

    @Override // com.facebook.ads.redexgen.core.C2S
    public final int A0X() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.core.C2S
    public final int A0Y() {
        return 0;
    }
}

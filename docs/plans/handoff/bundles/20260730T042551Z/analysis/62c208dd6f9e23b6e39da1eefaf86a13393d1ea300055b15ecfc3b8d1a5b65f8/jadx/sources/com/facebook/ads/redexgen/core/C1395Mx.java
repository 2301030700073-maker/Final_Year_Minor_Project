package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Mx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1395Mx extends AbstractC2478md {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772012L;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{63, 60, 51, 51, 56, 47};
    }

    public C1395Mx(List<C2T> list) {
        super(list);
    }

    public static C1395Mx A02(JSONObject jSONObject, C2322k1 c2322k1) {
        C1395Mx c1395Mx = new C1395Mx(AbstractC2478md.A08(jSONObject, c2322k1, new C2477mc()));
        c1395Mx.A1k(jSONObject);
        c1395Mx.A10(A03(0, 6, 6));
        return c1395Mx;
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

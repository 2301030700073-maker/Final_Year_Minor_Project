package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Mv, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1393Mv extends AbstractC2478md {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772012L;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{52, 59, 46, 51, 44, 63};
    }

    public C1393Mv(List<C2T> list) {
        super(list);
    }

    public static C1393Mv A02(JSONObject jSONObject, C2322k1 c2322k1) {
        C1393Mv c1393Mv = new C1393Mv(AbstractC2478md.A08(jSONObject, c2322k1, new C2474mZ()));
        c1393Mv.A1k(jSONObject);
        c1393Mv.A10(A03(0, 6, FacebookMediationAdapter.ERROR_NULL_CONTEXT));
        return c1393Mv;
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

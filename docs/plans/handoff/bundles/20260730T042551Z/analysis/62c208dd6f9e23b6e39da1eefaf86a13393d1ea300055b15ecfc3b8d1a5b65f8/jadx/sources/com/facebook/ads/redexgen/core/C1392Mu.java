package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Mu, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1392Mu extends AbstractC2478md implements Serializable {
    public static byte[] A00 = null;
    public static String[] A01 = {"r6wxjppTPk8qqzLRyjcbdQcA77ZMVo55", "Rh6olI4hONJ8yannxuNSF0WPku4wNPsq", "dN5FaQTClehdtxF9CoF19H85hY8wkvGi", "rjB6kg9SBUGr2KH1eIh2YUrCeaZ2IjVH", "uwE4iuczSrXuOAqhix1jvRvaNYVxSPYl", "nB4f3mkqn6tAKhT6MHcT9FS4Qvlri7ut", "bNzGTI7RRMeGoANXUPkwX9ogVwA9ri6n", "cACVCPwRSeRCIlqlGfLHSAYd9Lc4yhZp"};
    public static final long serialVersionUID = 2751287062553772011L;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 87);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        String[] strArr = A01;
        if (strArr[2].charAt(16) == strArr[1].charAt(16)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[2] = "vDQKNoss9qiPXd8S2Aus0c1HGbd5gMQl";
        strArr2[1] = "nSwGzQN60p1E6knkFapFA8fuyb3FeF6N";
        A00 = new byte[]{51, 38, 56, 34, 51, 37, 38, 37, 32, 55, 42, 37, 38, 48};
    }

    static {
        A04();
    }

    public C1392Mu(List<C2T> list) {
        super(list);
    }

    public static C1392Mu A02(JSONObject jSONObject, C2322k1 c2322k1) {
        C1392Mu c1392Mu = new C1392Mu(AbstractC2478md.A08(jSONObject, c2322k1, new C2473mY()));
        c1392Mu.A1k(jSONObject);
        c1392Mu.A10(A03(0, 14, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE));
        return c1392Mu;
    }

    @Override // com.facebook.ads.redexgen.core.C2S
    public final int A0X() {
        if (A1A()) {
            return 3;
        }
        C08982p A07 = A1b().A0F().A07();
        String[] strArr = A01;
        if (strArr[2].charAt(16) == strArr[1].charAt(16)) {
            throw new RuntimeException();
        }
        A01[7] = "ezJ8b8PzsS2LRx1DwJprOyWzSGtMGS3H";
        if (A07 != null) {
            C2T A1b = A1b();
            String[] strArr2 = A01;
            if (strArr2[5].charAt(18) == strArr2[3].charAt(18)) {
                throw new RuntimeException();
            }
            A01[7] = "ok7knfjrqIuTR3wAzxIRCawOj6kVTRCj";
            if (A1b.A0F().A07().A0P()) {
                return 4;
            }
            return 1;
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.core.C2S
    public final int A0Y() {
        return A1b().A0F().A05();
    }
}

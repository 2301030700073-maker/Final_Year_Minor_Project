package com.facebook.ads.redexgen.core;

import android.os.Handler;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ma, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1379Ma extends AbstractC2458mI {
    public static byte[] A00;
    public static String[] A01 = {"vV6RQP0QGAizSnvHrhrEiTJKYqnkk7vR", "gVueu7WJkm8gI", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "raAPQvYZN3qaAVuN8G4E0NVfm2Y0LRUe", "w5hc", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "RHGb3VvP2c2qxldOqnFEpaAIYmVmOJg8", "ZdfM9COnhESAyQW1NqvAdN1Ku5n51qre"};

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 32);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-43, -45, -32, -110, -31, -32, -34, -21, -110, -27, -41, -26, -110, -31, -32, -110, -28, -41, -23, -45, -28, -42, -41, -42, -110, -24, -37, -42, -41, -31, -110, -45, -42, -27, -80, -79, 98, -93, -90, -93, -78, -74, -89, -76, 98, -76, -89, -93, -90, -69, 98, -74, -79, 98, -75, -89, -74, 98, -76, -89, -71, -93, -76, -90, 98, -79, -80};
    }

    static {
        A02();
    }

    public C1379Ma(C2322k1 c2322k1, AnonymousClass37 anonymousClass37) {
        super(c2322k1, anonymousClass37);
    }

    private C2449m9 A00(Runnable runnable) {
        return new C2449m9(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0P() {
        AbstractC2482mh abstractC2482mh = (AbstractC2482mh) this.A01;
        abstractC2482mh.A00(this.A08.A00);
        abstractC2482mh.A01(this.A08.A01);
        abstractC2482mh.A0J();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0R(AnonymousClass23 anonymousClass23, C10548t c10548t, C10528r c10528r, AnonymousClass38 anonymousClass38) {
        N0 n0 = (N0) anonymousClass23;
        C2450mA c2450mA = new C2450mA(this, anonymousClass38, n0);
        if (C10729m.A2V(this.A0B)) {
            Handler A0H = A0H();
            C10558u A05 = c10548t.A05();
            String[] strArr = A01;
            if (strArr[3].charAt(31) != strArr[7].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            strArr2[2] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            A0H.postDelayed(c2450mA, A05.A05());
        }
        n0.A0K(this.A0B, A00(c2450mA), anonymousClass38, this.A08.A06, this.A08.A04, this.A08.A05);
    }

    public final void A0a(RewardData rewardData) {
        if (this.A01 != null) {
            if (this.A01.A8a() == AdPlacementType.REWARDED_VIDEO) {
                AbstractC2482mh rewardedVideoAdapter = (AbstractC2482mh) this.A01;
                rewardedVideoAdapter.A02(rewardData);
                return;
            }
            throw new IllegalStateException(A01(0, 34, 82));
        }
        throw new IllegalStateException(A01(34, 33, 34));
    }
}

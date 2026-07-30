package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.Zl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1702Zl implements QQ {
    public static String[] A01 = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "iCliAypVoqzC0fx0BJXwi", "cFtA", "ks94OJZY24YP0W", "zWHYKq", "smr4D72sS6PujANkMfaeYcGk", "ag4eND"};
    public final C1671Yf A00 = new C1671Yf();

    @MetaExoPlayerCustomization("Should be final")
    public abstract void A0H(int i, long j);

    public final int A00() {
        long A6x = A6x();
        long A7i = A7i();
        if (A6x == -9223372036854775807L || A7i == -9223372036854775807L) {
            return 0;
        }
        if (A7i == 0) {
            return 100;
        }
        long j = 100 * A6x;
        if (A01[3].length() != 4) {
            throw new RuntimeException();
        }
        A01[4] = "KOrcxd9hxYrcdf";
        return AbstractC2094gE.A07((int) (j / A7i), 0, 100);
    }

    public void A01() {
        AJL(false);
    }

    public final void A02() {
        A03(A7X());
    }

    public final void A03(int i) {
        A0H(i, -9223372036854775807L);
    }

    public final void A04(long j) {
        A0H(A7X(), j);
    }
}

package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.Qy, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1492Qy implements InterfaceC1917dL {
    public static String[] A04 = {"HJiG08VABV4bgPvBuIHmB0QgcQcpsXWu", "rPSLKKx", "s30Qb", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "jZ8LcPBJeju31135gHiS3ruOtpsz6ca1", "Wk6RdB9", "nl0Ip", "e6TFxM3GpawCuoBue5hU0ga7A8aqYwlk"};
    public long A00;
    public long A01;
    public C1492Qy A02;
    public C1916dK A03;

    public C1492Qy(long j, int i) {
        A02(j, i);
    }

    public final int A00(long j) {
        return ((int) (j - this.A01)) + this.A03.A00;
    }

    public final C1492Qy A01() {
        this.A03 = null;
        C1492Qy c1492Qy = this.A02;
        this.A02 = null;
        return c1492Qy;
    }

    public final void A02(long j, int i) {
        AbstractC2011es.A08(this.A03 == null);
        this.A01 = j;
        this.A00 = i + j;
    }

    public final void A03(C1916dK c1916dK, C1492Qy c1492Qy) {
        this.A03 = c1916dK;
        this.A02 = c1492Qy;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1917dL
    public final C1916dK A6k() {
        return (C1916dK) AbstractC2011es.A01(this.A03);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1917dL
    public final C1492Qy ABx() {
        if (this.A02 == null) {
            return null;
        }
        C1492Qy c1492Qy = this.A02;
        String[] strArr = A04;
        if (strArr[5].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A04[0] = "s3hOhS6JRVZGOWqbEiZVryq1r0alsn39";
        if (c1492Qy.A03 == null) {
            return null;
        }
        return this.A02;
    }
}

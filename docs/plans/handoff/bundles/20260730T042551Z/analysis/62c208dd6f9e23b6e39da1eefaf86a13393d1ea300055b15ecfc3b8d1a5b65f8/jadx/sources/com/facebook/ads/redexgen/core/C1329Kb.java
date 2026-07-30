package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Kb, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1329Kb extends C1842c8 {
    public static String[] A0F = {"r3hDWnB1R9y4pEiKAURNp99h2b", "kj3t6dP2tWSOfb61zMSBvgjhGLqlygll", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "sX8uIgx32JWe8q5WuLHBMtkPG7d", "ZlH8xHdCAMZsgB23qoj", "6lejLSjHGD", "XsRzuVWfX96s5Dei3zwO9zjz9s6FXTfu", "pCK0u"};
    public int A00;
    public ID A01;
    public boolean A02;
    public final C9K<C1328Ka> A03;
    public final C9K<KY> A04;
    public final C9K<C1830bw> A05;
    public final C9K<KX> A06;
    public final C9K<C1825br> A07;
    public final C9K<C1823bp> A08;
    public final C9K<C1822bo> A09;
    public final C9K<C1817bj> A0A;
    public final C9K<C1816bi> A0B;
    public final C1855cL A0C;
    public final AbstractC1827bt A0D;
    public final AbstractC1818bk A0E;

    public C1329Kb(C2322k1 c2322k1, A7 a7, C1855cL c1855cL, String str) {
        this(c2322k1, a7, c1855cL, str, 0, 0, false, null, null);
    }

    public C1329Kb(C2322k1 c2322k1, A7 a7, C1855cL c1855cL, String str, int i, int i2, boolean z, Bundle bundle, Map<String, String> map) {
        super(c2322k1, a7, c1855cL, str, !c1855cL.A0o(), i, i2, z, bundle, map, new C1841c7(c2322k1, c1855cL));
        this.A0E = new C1330Kc(this);
        this.A08 = new C1852cI(this);
        this.A04 = new C1851cH(this);
        this.A05 = new C1850cG(this);
        this.A06 = new C1849cF(this);
        this.A03 = new C1848cE(this);
        this.A07 = new C1847cD(this);
        this.A0A = new C1846cC(this);
        this.A0B = new C1845cB(this);
        this.A09 = new C1854cK(this);
        this.A0D = new C1331Kd(this);
        this.A02 = false;
        this.A0C = c1855cL;
        this.A0C.getEventBus().A03(this.A0E, this.A06, this.A08, this.A05, this.A04, this.A03, this.A07, this.A0A, this.A0B, this.A0D, this.A09);
        if (C10729m.A2k(c2322k1)) {
            this.A01 = new ID(c1855cL, str, null);
        }
    }

    public C1329Kb(C2322k1 c2322k1, A7 a7, C1855cL c1855cL, String str, Bundle bundle, Map<String, String> extraParams) {
        this(c2322k1, a7, c1855cL, str, 0, 0, false, bundle, extraParams);
    }

    @Override // com.facebook.ads.redexgen.core.C1842c8
    public final void A0n(IH ih, Map<String, String> map) {
        super.A0n(ih, map);
        if (this.A01 != null && ih == IH.A09) {
            Map<String, String> params = this.A01.A05();
            String[] strArr = A0F;
            if (strArr[0].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A0F[2] = "tc9";
            map.putAll(params);
        }
    }

    public final void A0p() {
        C1853cJ c1853cJ = new C1853cJ(this);
        if (this.A0C.A0s()) {
            ExecutorC1143Cx.A00(c1853cJ);
            return;
        }
        C1855cL c1855cL = this.A0C;
        String[] strArr = A0F;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A0F[1] = "nFCp2DExxe9bklz52WjNRol8ULAuMoj6";
        c1855cL.getStateHandler().post(c1853cJ);
    }
}

package com.facebook.ads.redexgen.core;

import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.cQ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1860cQ implements IG {
    public final C2322k1 A00;
    public final A7 A01;
    public final ID A02;
    public final C1855cL A03;
    public final String A06;
    public final AbstractC1831bx A05 = new C1333Kf(this);
    public final AbstractC1837c3 A04 = new C1332Ke(this);

    public C1860cQ(C2322k1 c2322k1, A7 a7, C1855cL c1855cL, String str, C1842c8 c1842c8, Map<String, String> extraParams) {
        this.A00 = c2322k1;
        this.A01 = a7;
        this.A06 = str;
        this.A03 = c1855cL;
        this.A02 = new ID(c1855cL, str, extraParams);
        if (C10729m.A23(this.A00)) {
            this.A00.A0F().AI3();
            c1842c8.A0m(this);
        } else {
            this.A00.A0F().AI4();
            this.A03.getEventBus().A03(this.A05, this.A04);
        }
    }

    public final void A05() {
        C1861cR c1861cR = new C1861cR(this);
        if (this.A03.A0s()) {
            ExecutorC1143Cx.A00(c1861cR);
        } else {
            this.A03.getStateHandler().post(c1861cR);
        }
    }

    public final synchronized void A06() {
        this.A01.ABL(this.A06, this.A02.A05());
    }

    @Override // com.facebook.ads.redexgen.core.IG
    public final void ADy() {
        this.A00.A0F().AI7();
        A06();
    }
}

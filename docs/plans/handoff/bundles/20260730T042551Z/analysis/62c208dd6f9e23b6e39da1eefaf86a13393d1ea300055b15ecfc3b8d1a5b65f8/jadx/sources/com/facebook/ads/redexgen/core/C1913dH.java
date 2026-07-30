package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.dH, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1913dH {
    public final int A00;
    public final Y4 A01;
    public final Object A02;
    public final C1480Ql[] A03;
    public final QD[] A04;

    public C1913dH(C1480Ql[] c1480QlArr, QD[] qdArr, Y4 y4, Object obj) {
        this.A03 = c1480QlArr;
        this.A04 = (QD[]) qdArr.clone();
        this.A01 = y4;
        this.A02 = obj;
        this.A00 = c1480QlArr.length;
    }

    public final boolean A00(int i) {
        return this.A03[i] != null;
    }

    public final boolean A01(C1913dH c1913dH, int i) {
        return c1913dH != null && AbstractC2094gE.A1E(this.A03[i], c1913dH.A03[i]) && AbstractC2094gE.A1E(this.A04[i], c1913dH.A04[i]);
    }
}

package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.5K, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C5K implements InterfaceC1931dZ {
    public InterfaceC1980eN A02;
    public InterfaceC2213iE<String> A03;
    public String A04;
    public boolean A05;
    public boolean A06;
    public final C1951du A07 = new C1951du();
    public int A00 = 8000;
    public int A01 = 8000;

    public final C5K A00(InterfaceC1980eN interfaceC1980eN) {
        this.A02 = interfaceC1980eN;
        return this;
    }

    public final C5K A01(String str) {
        this.A04 = str;
        return this;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1931dZ
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final C08470p A58() {
        C08470p c08470p = new C08470p(this.A04, this.A00, this.A01, this.A05, this.A07, this.A03, this.A06);
        if (this.A02 != null) {
            c08470p.A3t(this.A02);
        }
        return c08470p;
    }
}

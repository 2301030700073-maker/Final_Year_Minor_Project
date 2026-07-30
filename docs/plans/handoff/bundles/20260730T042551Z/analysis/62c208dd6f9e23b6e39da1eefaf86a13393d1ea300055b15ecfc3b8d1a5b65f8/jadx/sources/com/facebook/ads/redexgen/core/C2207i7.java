package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.i7, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2207i7 implements InterfaceC1129Cj {
    public final C1128Ci A00;
    public final InterfaceC1129Cj A01;

    public C2207i7(InterfaceC1129Cj interfaceC1129Cj, int i, int i2) {
        this.A01 = interfaceC1129Cj;
        this.A00 = new C1128Ci(i, i2);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1129Cj
    public final void AGG(String str) {
        boolean A08;
        this.A00.A04(str);
        if (this.A00.A02() != null) {
            A08 = AbstractC1131Cl.A08(this.A00);
            if (A08) {
                this.A01.AGG(this.A00.A02());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1129Cj
    public final void flush() {
        boolean A08;
        this.A00.A03();
        while (this.A00.A02() != null) {
            A08 = AbstractC1131Cl.A08(this.A00);
            if (A08) {
                this.A01.AGG(this.A00.A02());
            }
            this.A00.A03();
        }
    }
}

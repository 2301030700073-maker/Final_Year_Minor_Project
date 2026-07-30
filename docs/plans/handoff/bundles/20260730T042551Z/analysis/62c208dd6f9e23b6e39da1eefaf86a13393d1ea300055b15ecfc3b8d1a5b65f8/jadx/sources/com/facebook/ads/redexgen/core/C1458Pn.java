package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Pn, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1458Pn implements InterfaceC1931dZ {
    public final InterfaceC1980eN A00;

    public C1458Pn() {
        this(null);
    }

    public C1458Pn(InterfaceC1980eN interfaceC1980eN) {
        this.A00 = interfaceC1980eN;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1931dZ
    public final Q7 A58() {
        C08460o c08460o = new C08460o();
        if (this.A00 != null) {
            c08460o.A3t(this.A00);
        }
        return c08460o;
    }
}

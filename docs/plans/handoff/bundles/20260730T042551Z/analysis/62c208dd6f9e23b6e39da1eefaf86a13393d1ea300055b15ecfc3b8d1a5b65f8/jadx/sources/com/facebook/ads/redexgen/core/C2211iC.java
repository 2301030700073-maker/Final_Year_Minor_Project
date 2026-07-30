package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.iC, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2211iC implements InterfaceC1129Cj {
    public int A00;
    public final InterfaceC1129Cj A01;
    public final InterfaceC1129Cj A02;

    public C2211iC(InterfaceC1129Cj interfaceC1129Cj, int i, InterfaceC1129Cj interfaceC1129Cj2) {
        this.A01 = interfaceC1129Cj;
        this.A00 = i;
        this.A02 = interfaceC1129Cj2;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1129Cj
    public final void AGG(String str) {
        if (this.A00 > 0) {
            this.A01.AGG(str);
            this.A01.flush();
            this.A00--;
            return;
        }
        this.A02.AGG(str);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1129Cj
    public final void flush() {
        this.A02.flush();
    }
}

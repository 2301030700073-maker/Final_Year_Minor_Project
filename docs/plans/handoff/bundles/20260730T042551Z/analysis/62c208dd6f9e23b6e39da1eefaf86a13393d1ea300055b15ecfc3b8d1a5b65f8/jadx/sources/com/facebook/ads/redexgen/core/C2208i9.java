package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.i9, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2208i9 implements InterfaceC1129Cj {
    public int A00;
    public final InterfaceC1129Cj A01;

    public C2208i9(InterfaceC1129Cj interfaceC1129Cj, int i) {
        this.A01 = interfaceC1129Cj;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1129Cj
    public final void AGG(String str) {
        if (this.A00 > 0) {
            this.A01.AGG(str);
            this.A00--;
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1129Cj
    public final void flush() {
        this.A01.flush();
    }
}

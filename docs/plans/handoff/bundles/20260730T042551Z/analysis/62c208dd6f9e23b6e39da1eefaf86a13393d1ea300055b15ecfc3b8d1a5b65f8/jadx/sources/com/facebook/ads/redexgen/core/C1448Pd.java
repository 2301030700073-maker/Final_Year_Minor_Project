package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Pd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1448Pd implements InterfaceC1928dW {
    public InterfaceC1984eR A02;
    public long A01 = 5242880;
    public int A00 = 20480;

    public final C1448Pd A00(InterfaceC1984eR interfaceC1984eR) {
        this.A02 = interfaceC1984eR;
        return this;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1928dW
    public final PY A57() {
        return new PY((InterfaceC1984eR) AbstractC2011es.A01(this.A02), this.A01, this.A00);
    }
}

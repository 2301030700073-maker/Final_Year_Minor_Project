package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public abstract class V5 {
    public final InterfaceC1580Uo A00;

    public abstract boolean A0B(C2070fq c2070fq) throws Q6;

    public abstract boolean A0C(C2070fq c2070fq, long j) throws Q6;

    public V5(InterfaceC1580Uo interfaceC1580Uo) {
        this.A00 = interfaceC1580Uo;
    }

    public final boolean A00(C2070fq c2070fq, long j) throws Q6 {
        return A0B(c2070fq) && A0C(c2070fq, j);
    }
}

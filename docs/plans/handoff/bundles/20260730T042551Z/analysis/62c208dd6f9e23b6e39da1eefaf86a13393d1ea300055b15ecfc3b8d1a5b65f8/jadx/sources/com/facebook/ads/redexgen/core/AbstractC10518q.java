package com.facebook.ads.redexgen.core;

import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.8q, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC10518q extends AbstractC1635Wu implements InterfaceC1636Wv {
    public long A00;
    public InterfaceC1636Wv A01;

    @Override // com.facebook.ads.redexgen.core.AbstractC1635Wu
    public abstract void A0B();

    @Override // com.facebook.ads.redexgen.core.AbstractC1525Sf
    public final void A0A() {
        super.A0A();
        this.A01 = null;
    }

    public final void A0C(long j, InterfaceC1636Wv interfaceC1636Wv, long j2) {
        super.A01 = j;
        this.A01 = interfaceC1636Wv;
        if (j2 == Long.MAX_VALUE) {
            j2 = super.A01;
        }
        this.A00 = j2;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final List<C1476Qh> A7N(long j) {
        return ((InterfaceC1636Wv) AbstractC2011es.A01(this.A01)).A7N(j - this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final long A7t(int i) {
        return ((InterfaceC1636Wv) AbstractC2011es.A01(this.A01)).A7t(i) + this.A00;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final int A7u() {
        return ((InterfaceC1636Wv) AbstractC2011es.A01(this.A01)).A7u();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final int A8Q(long j) {
        return ((InterfaceC1636Wv) AbstractC2011es.A01(this.A01)).A8Q(j - this.A00);
    }
}

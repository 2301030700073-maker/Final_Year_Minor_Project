package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: assets/audience_network.dex */
public class N1 extends AbstractC2463mN {
    public final /* synthetic */ int A00;
    public final /* synthetic */ N0 A01;
    public final /* synthetic */ C2476mb A02;
    public final /* synthetic */ C1392Mu A03;
    public final /* synthetic */ C2322k1 A04;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N1(N0 n0, boolean z, C2322k1 c2322k1, C1392Mu c1392Mu, C2476mb c2476mb, int i) {
        super(z);
        this.A01 = n0;
        this.A04 = c2322k1;
        this.A03 = c1392Mu;
        this.A02 = c2476mb;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2463mN
    public final void A00() {
        C2L c2l;
        c2l = this.A01.A01;
        c2l.AEz(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2463mN
    public final void A01(boolean z) {
        AtomicBoolean atomicBoolean;
        C2L c2l;
        N0.A0D = null;
        if (z) {
            this.A04.A01().AIK(this.A03.A1g(), this.A02.A1a());
        }
        if (this.A00 == 0) {
            atomicBoolean = this.A01.A0C;
            atomicBoolean.set(true);
            c2l = this.A01.A01;
            c2l.AEw(this.A01);
        }
        this.A01.A0C(this.A04, this.A02, this.A00 + 1);
    }
}

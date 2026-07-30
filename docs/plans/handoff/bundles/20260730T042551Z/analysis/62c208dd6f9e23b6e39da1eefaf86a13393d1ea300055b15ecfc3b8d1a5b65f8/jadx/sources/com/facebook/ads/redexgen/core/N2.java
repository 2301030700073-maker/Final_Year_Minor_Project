package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: assets/audience_network.dex */
public class N2 extends AbstractC2463mN {
    public final /* synthetic */ N0 A00;
    public final /* synthetic */ AbstractC2482mh A01;
    public final /* synthetic */ C1392Mu A02;
    public final /* synthetic */ boolean A03;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N2(N0 n0, boolean z, boolean z2, C1392Mu c1392Mu, AbstractC2482mh abstractC2482mh) {
        super(z);
        this.A00 = n0;
        this.A03 = z2;
        this.A02 = c1392Mu;
        this.A01 = abstractC2482mh;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2463mN
    public final void A00() {
        C2L c2l;
        c2l = this.A00.A01;
        c2l.AEz(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2463mN
    public final void A01(boolean z) {
        C2322k1 c2322k1;
        BG bg;
        AtomicBoolean atomicBoolean;
        C2L c2l;
        C2322k1 c2322k12;
        C2322k1 c2322k13;
        c2322k1 = this.A00.A04;
        if (!C10729m.A1m(c2322k1) || !this.A03) {
            bg = this.A00.A05;
            if (bg == BG.A0I) {
                c2322k12 = this.A00.A04;
                c2322k12.A0F().ADg();
            }
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            c2l = this.A00.A01;
            c2l.AEw(this.A01);
            return;
        }
        N0 n0 = this.A00;
        c2322k13 = this.A00.A04;
        n0.A06 = AbstractC1242Gs.A01(c2322k13, this.A02, 0, new C2492mr(this));
    }
}

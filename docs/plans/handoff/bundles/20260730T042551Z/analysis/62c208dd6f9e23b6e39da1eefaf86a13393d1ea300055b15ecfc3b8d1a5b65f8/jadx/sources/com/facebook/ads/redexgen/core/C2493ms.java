package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.ms, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2493ms implements C7I {
    public final /* synthetic */ N0 A00;
    public final /* synthetic */ boolean A01;

    public C2493ms(N0 n0, boolean z) {
        this.A00 = n0;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACF() {
        C2322k1 c2322k1;
        AtomicBoolean atomicBoolean;
        C2L c2l;
        C2322k1 c2322k12;
        C2S c2s;
        c2322k1 = this.A00.A04;
        if (!C10729m.A1m(c2322k1) || !this.A01) {
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            c2l = this.A00.A01;
            c2l.AEw(this.A00);
            return;
        }
        N0 n0 = this.A00;
        c2322k12 = this.A00.A04;
        c2s = this.A00.A03;
        n0.A06 = AbstractC1242Gs.A01(c2322k12, (C1392Mu) c2s, 0, new C2494mt(this));
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACG() {
        C2L c2l;
        c2l = this.A00.A01;
        c2l.AEz(this.A00, AdError.CACHE_ERROR);
    }
}

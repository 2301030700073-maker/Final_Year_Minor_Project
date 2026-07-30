package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.mq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2491mq implements C7I {
    public final /* synthetic */ N0 A00;

    public C2491mq(N0 n0) {
        this.A00 = n0;
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACF() {
        AtomicBoolean atomicBoolean;
        C2L c2l;
        atomicBoolean = this.A00.A0C;
        atomicBoolean.set(true);
        c2l = this.A00.A01;
        c2l.AEw(this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACG() {
        C2L c2l;
        c2l = this.A00.A01;
        c2l.AEz(this.A00, AdError.CACHE_ERROR);
    }
}

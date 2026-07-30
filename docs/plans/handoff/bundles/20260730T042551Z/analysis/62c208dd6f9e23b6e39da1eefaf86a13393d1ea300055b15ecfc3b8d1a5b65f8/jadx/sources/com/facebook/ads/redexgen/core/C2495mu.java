package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.mu, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2495mu implements InterfaceC10217l {
    public final /* synthetic */ N0 A00;

    public C2495mu(N0 n0) {
        this.A00 = n0;
    }

    private void A00(boolean z) {
        C2L c2l;
        AtomicBoolean atomicBoolean;
        C2L c2l2;
        if (!z) {
            c2l = this.A00.A01;
            c2l.AEz(this.A00, AdError.CACHE_ERROR);
        } else {
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            c2l2 = this.A00.A01;
            c2l2.AEw(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC10217l
    public final void ACa() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC10217l
    public final void ACj() {
        A00(true);
    }
}

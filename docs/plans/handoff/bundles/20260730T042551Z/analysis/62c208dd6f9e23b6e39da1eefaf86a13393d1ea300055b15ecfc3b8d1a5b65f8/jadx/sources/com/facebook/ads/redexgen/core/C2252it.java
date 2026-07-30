package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.it, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2252it implements FA {
    public final /* synthetic */ C2249iq A00;

    public C2252it(C2249iq c2249iq) {
        this.A00 = c2249iq;
    }

    @Override // com.facebook.ads.redexgen.core.FA
    public final void ADM(boolean z) {
        AtomicBoolean atomicBoolean;
        AtomicBoolean atomicBoolean2;
        AP ap;
        AP ap2;
        atomicBoolean = this.A00.A0D;
        atomicBoolean.set(z);
        atomicBoolean2 = this.A00.A0E;
        if (atomicBoolean2.get()) {
            ap = this.A00.A02;
            if (ap != null) {
                ap2 = this.A00.A02;
                ap2.AEQ(z);
            }
        }
    }
}

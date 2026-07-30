package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.iw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2255iw implements IL {
    public final /* synthetic */ C2249iq A00;

    public C2255iw(C2249iq c2249iq) {
        this.A00 = c2249iq;
    }

    @Override // com.facebook.ads.redexgen.core.IL
    public final void AFb() {
        AtomicBoolean atomicBoolean;
        AP ap;
        AP ap2;
        AtomicBoolean atomicBoolean2;
        atomicBoolean = this.A00.A0E;
        atomicBoolean.set(true);
        ap = this.A00.A02;
        if (ap != null) {
            ap2 = this.A00.A02;
            atomicBoolean2 = this.A00.A0D;
            ap2.AEQ(atomicBoolean2.get());
        }
    }
}

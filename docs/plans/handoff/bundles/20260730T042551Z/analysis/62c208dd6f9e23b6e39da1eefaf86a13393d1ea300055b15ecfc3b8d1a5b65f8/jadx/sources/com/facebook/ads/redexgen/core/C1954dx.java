package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.dx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1954dx implements FA {
    public final /* synthetic */ C1344Kq A00;

    public C1954dx(C1344Kq c1344Kq) {
        this.A00 = c1344Kq;
    }

    @Override // com.facebook.ads.redexgen.core.FA
    public final void ADM(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.A00.A04;
        atomicBoolean.set(z);
        this.A00.A06();
    }
}

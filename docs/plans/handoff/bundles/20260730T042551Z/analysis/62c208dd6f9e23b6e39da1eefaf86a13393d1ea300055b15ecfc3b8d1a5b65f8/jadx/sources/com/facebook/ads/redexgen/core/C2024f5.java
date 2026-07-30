package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.f5, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2024f5 implements FA {
    public final /* synthetic */ LB A00;

    public C2024f5(LB lb) {
        this.A00 = lb;
    }

    @Override // com.facebook.ads.redexgen.core.FA
    public final void ADM(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.A00.A06;
        atomicBoolean.set(z);
        this.A00.A04();
    }
}

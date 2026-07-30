package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.hS, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2169hS implements HL {
    public final /* synthetic */ C2163hM A00;

    public C2169hS(C2163hM c2163hM) {
        this.A00 = c2163hM;
    }

    @Override // com.facebook.ads.redexgen.core.HL
    public final void ADa() {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.A00.A0W;
        atomicBoolean.set(true);
        this.A00.A0M();
    }
}

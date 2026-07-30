package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.ab, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1750ab implements K1 {
    @Override // com.facebook.ads.redexgen.core.K1
    public final long A5c() {
        return System.nanoTime();
    }

    @Override // com.facebook.ads.redexgen.core.K1
    public final void AJA(Object obj, long j) throws InterruptedException {
        obj.wait(j);
    }
}

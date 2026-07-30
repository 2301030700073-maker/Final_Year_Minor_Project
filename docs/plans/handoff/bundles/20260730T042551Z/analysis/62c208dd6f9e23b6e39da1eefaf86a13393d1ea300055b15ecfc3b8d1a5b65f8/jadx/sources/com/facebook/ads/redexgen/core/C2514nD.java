package com.facebook.ads.redexgen.core;

import java.util.concurrent.CountDownLatch;

/* renamed from: com.facebook.ads.redexgen.X.nD, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2514nD extends BY {
    public final /* synthetic */ C2A A00;

    public C2514nD(C2A c2a) {
        this.A00 = c2a;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        AnonymousClass29 anonymousClass29;
        CountDownLatch countDownLatch;
        this.A00.A07();
        anonymousClass29 = this.A00.A02;
        anonymousClass29.A06();
        countDownLatch = this.A00.A05;
        countDownLatch.countDown();
    }
}

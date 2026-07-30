package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Jx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1325Jx implements Runnable {
    public final /* synthetic */ C1733aI A00;

    public RunnableC1325Jx(C1733aI c1733aI) {
        this.A00 = c1733aI;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (BQ.A02(this)) {
            return;
        }
        try {
            C1733aI.A03(this.A00);
            throw null;
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

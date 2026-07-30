package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public class HQ implements Runnable {
    public final /* synthetic */ C1337Kj A00;

    public HQ(C1337Kj c1337Kj) {
        this.A00 = c1337Kj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (BQ.A02(this)) {
            return;
        }
        try {
            ((AbstractC1970eD) this.A00).A09.A4Z(((AbstractC1970eD) this.A00).A0A.A7m());
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

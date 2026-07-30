package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public class FI implements Runnable {
    public final /* synthetic */ AbstractC2116gb A00;

    public FI(AbstractC2116gb abstractC2116gb) {
        this.A00 = abstractC2116gb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (BQ.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0F.getVisibility() == 0) {
                this.A00.A0R(8);
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

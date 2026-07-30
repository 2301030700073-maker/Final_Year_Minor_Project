package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public class GJ implements Runnable {
    public final /* synthetic */ C2074fu A00;

    public GJ(C2074fu c2074fu) {
        this.A00 = c2074fu;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0P;
            if (!z) {
                return;
            }
            this.A00.A0N();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

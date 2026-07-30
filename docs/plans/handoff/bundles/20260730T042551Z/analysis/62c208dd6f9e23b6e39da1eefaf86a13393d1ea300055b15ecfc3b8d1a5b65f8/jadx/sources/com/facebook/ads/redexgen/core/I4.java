package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* loaded from: assets/audience_network.dex */
public class I4 implements Runnable {
    public final /* synthetic */ C1873cd A00;

    public I4(C1873cd c1873cd) {
        this.A00 = c1873cd;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MG mg;
        int i;
        Handler handler;
        if (BQ.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0C() == 0) {
                return;
            }
            mg = this.A00.A05;
            i = this.A00.A01;
            mg.scrollBy(i, 0);
            handler = this.A00.A04;
            handler.postDelayed(this, 16L);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

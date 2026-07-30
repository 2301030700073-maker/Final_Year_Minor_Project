package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* loaded from: assets/audience_network.dex */
public class J4 implements Runnable {
    public final /* synthetic */ J7 A00;

    public J4(J7 j7) {
        this.A00 = j7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A0A();
            handler = this.A00.A01;
            handler.removeCallbacks(this);
            handler2 = this.A00.A01;
            handler2.postDelayed(this, 250L);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

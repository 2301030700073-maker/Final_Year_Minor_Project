package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* renamed from: com.facebook.ads.redexgen.X.oS, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2575oS implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C2574oR A01;
    public final /* synthetic */ Exception A02;

    public RunnableC2575oS(C2574oR c2574oR, int i, Exception exc) {
        this.A01 = c2574oR;
        this.A00 = i;
        this.A02 = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        L3 l3;
        Handler handler;
        Runnable runnable;
        boolean A08;
        if (BQ.A02(this)) {
            return;
        }
        try {
            try {
                z = this.A01.A01;
                if (z) {
                    if (C1404Nj.A08) {
                        A08 = this.A01.A08();
                        if (A08) {
                            this.A01.A0C();
                            return;
                        }
                    }
                    C2574oR c2574oR = this.A01;
                    l3 = this.A01.A05;
                    c2574oR.A05(l3.AC0());
                    handler = this.A01.A04;
                    runnable = this.A01.A0A;
                    handler.postDelayed(runnable, this.A00);
                }
            } catch (Exception ex) {
                ex.initCause(this.A02);
                throw ex;
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

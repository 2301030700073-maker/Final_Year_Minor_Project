package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.view.View;

/* loaded from: assets/audience_network.dex */
public class GM implements View.OnClickListener {
    public final /* synthetic */ C2074fu A00;

    public GM(C2074fu c2074fu) {
        this.A00 = c2074fu;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        boolean z2;
        AbstractC08781v abstractC08781v;
        AbstractC2478md abstractC2478md;
        Handler handler;
        Runnable runnable;
        AbstractC2478md abstractC2478md2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0P;
            if (!z) {
                this.A00.A0Q = true;
                C2074fu c2074fu = this.A00;
                abstractC08781v = this.A00.A0g;
                c2074fu.A0f(((N9) abstractC08781v).A0G().toString());
                abstractC2478md = this.A00.A0G;
                if (abstractC2478md.A0a() >= 0) {
                    handler = this.A00.A09;
                    runnable = this.A00.A0n;
                    abstractC2478md2 = this.A00.A0G;
                    handler.postDelayed(runnable, abstractC2478md2.A0a());
                }
            }
            C2074fu c2074fu2 = this.A00;
            z2 = this.A00.A0P;
            c2074fu2.A0i(z2 ? false : true);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

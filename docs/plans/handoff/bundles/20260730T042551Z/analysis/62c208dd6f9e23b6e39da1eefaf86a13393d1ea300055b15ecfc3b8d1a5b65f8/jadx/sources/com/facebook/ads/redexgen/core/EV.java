package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class EV implements View.OnClickListener {
    public final /* synthetic */ C09193k A00;
    public final /* synthetic */ EL A01;
    public final /* synthetic */ C2155hE A02;

    public EV(C2155hE c2155hE, EL el, C09193k c09193k) {
        this.A02 = c2155hE;
        this.A01 = el;
        this.A00 = c09193k;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            this.A02.A0B.AEJ(this.A00);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

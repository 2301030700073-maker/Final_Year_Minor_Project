package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class ET implements View.OnClickListener {
    public final /* synthetic */ EL A00;
    public final /* synthetic */ C2155hE A01;

    public ET(C2155hE c2155hE, EL el) {
        this.A01 = c2155hE;
        this.A00 = el;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.AAf();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

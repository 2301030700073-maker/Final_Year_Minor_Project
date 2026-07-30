package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class EU implements View.OnClickListener {
    public final /* synthetic */ C2155hE A00;

    public EU(C2155hE c2155hE) {
        this.A00 = c2155hE;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.A9S();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class ED implements View.OnClickListener {
    public final /* synthetic */ EG A00;

    public ED(EG eg) {
        this.A00 = eg;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        EJ ej;
        EJ ej2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A00.A05;
            if (z) {
                ej2 = this.A00.A04;
                ej2.A4t();
            } else {
                ej = this.A00.A04;
                ej.A4u();
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

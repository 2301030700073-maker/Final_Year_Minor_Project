package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class E5 implements View.OnClickListener {
    public final /* synthetic */ C2160hJ A00;

    public E5(C2160hJ c2160hJ) {
        this.A00 = c2160hJ;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        E7 e7;
        if (BQ.A02(this)) {
            return;
        }
        try {
            e7 = this.A00.A07;
            e7.ADA();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

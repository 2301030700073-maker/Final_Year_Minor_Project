package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class FO implements View.OnClickListener {
    public final /* synthetic */ C2113gY A00;

    public FO(C2113gY c2113gY) {
        this.A00 = c2113gY;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A02();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

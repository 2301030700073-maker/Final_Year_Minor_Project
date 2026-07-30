package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class EM implements View.OnClickListener {
    public final /* synthetic */ C2156hF A00;

    public EM(C2156hF c2156hF) {
        this.A00 = c2156hF;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.A4u();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

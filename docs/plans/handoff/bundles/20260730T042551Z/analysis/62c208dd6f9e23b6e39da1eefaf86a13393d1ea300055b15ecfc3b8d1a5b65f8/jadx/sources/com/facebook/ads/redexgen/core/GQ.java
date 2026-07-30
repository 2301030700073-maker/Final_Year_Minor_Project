package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class GQ implements View.OnClickListener {
    public final /* synthetic */ C2071fr A00;

    public GQ(C2071fr c2071fr) {
        this.A00 = c2071fr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        HT ht;
        HT ht2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            ht = this.A00.A02;
            if (ht == null) {
                return;
            }
            ht2 = this.A00.A02;
            ht2.A9b();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

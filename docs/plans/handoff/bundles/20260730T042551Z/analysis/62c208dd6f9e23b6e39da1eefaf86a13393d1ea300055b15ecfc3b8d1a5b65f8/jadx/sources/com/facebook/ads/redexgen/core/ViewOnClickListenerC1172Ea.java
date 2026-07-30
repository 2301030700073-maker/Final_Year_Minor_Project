package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ea, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1172Ea implements View.OnClickListener {
    public final /* synthetic */ C2154hD A00;

    public ViewOnClickListenerC1172Ea(C2154hD c2154hD) {
        this.A00 = c2154hD;
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

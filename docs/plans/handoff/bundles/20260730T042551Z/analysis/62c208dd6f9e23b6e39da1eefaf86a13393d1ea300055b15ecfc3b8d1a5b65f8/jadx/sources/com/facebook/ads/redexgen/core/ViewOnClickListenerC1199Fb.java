package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Fb, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1199Fb implements View.OnClickListener {
    public final /* synthetic */ C1201Fd A00;

    public ViewOnClickListenerC1199Fb(C1201Fd c1201Fd) {
        this.A00 = c1201Fd;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A05();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

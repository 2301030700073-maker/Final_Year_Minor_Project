package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Db, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1147Db implements View.OnClickListener {
    public final /* synthetic */ C2189hn A00;

    public ViewOnClickListenerC1147Db(C2189hn c2189hn) {
        this.A00 = c2189hn;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DP dp;
        E4 e4;
        DP dp2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            dp = this.A00.A01;
            if (dp == null) {
                return;
            }
            e4 = this.A00.A02;
            if (!e4.A02()) {
                return;
            }
            dp2 = this.A00.A01;
            dp2.AC5(this.A00);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

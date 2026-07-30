package com.facebook.ads.redexgen.core;

import android.view.View;
import com.facebook.ads.internal.view.FullScreenAdToolbar;

/* renamed from: com.facebook.ads.redexgen.X.Da, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1146Da implements View.OnClickListener {
    public final /* synthetic */ FullScreenAdToolbar A00;

    public ViewOnClickListenerC1146Da(FullScreenAdToolbar fullScreenAdToolbar) {
        this.A00 = fullScreenAdToolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DP dp;
        E2 e2;
        DP dp2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            dp = this.A00.A02;
            if (dp == null) {
                return;
            }
            e2 = this.A00.A09;
            if (!e2.A06()) {
                return;
            }
            dp2 = this.A00.A02;
            dp2.AC5(this.A00);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

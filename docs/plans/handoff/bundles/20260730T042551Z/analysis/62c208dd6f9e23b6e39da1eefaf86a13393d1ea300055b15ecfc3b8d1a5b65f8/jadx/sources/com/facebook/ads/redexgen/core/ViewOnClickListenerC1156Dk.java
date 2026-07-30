package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Dk, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1156Dk implements View.OnClickListener {
    public final /* synthetic */ C1159Dn A00;

    public ViewOnClickListenerC1156Dk(C1159Dn c1159Dn) {
        this.A00 = c1159Dn;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A0D();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

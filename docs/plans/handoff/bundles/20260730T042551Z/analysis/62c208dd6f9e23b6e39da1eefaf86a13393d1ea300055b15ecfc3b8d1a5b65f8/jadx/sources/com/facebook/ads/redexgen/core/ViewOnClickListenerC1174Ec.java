package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ec, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1174Ec implements View.OnClickListener {
    public final /* synthetic */ EL A00;
    public final /* synthetic */ C2154hD A01;

    public ViewOnClickListenerC1174Ec(C2154hD c2154hD, EL el) {
        this.A01 = c2154hD;
        this.A00 = el;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.AE6(EnumC09173i.A06);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

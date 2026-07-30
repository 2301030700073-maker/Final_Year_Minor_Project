package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Eh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1179Eh implements View.OnClickListener {
    public final /* synthetic */ C1184Em A00;

    public ViewOnClickListenerC1179Eh(C1184Em c1184Em) {
        this.A00 = c1184Em;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2322k1 c2322k1;
        InterfaceC1183El interfaceC1183El;
        InterfaceC1183El interfaceC1183El2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            c2322k1 = this.A00.A0A;
            c2322k1.A0F().A9m();
            interfaceC1183El = this.A00.A05;
            if (interfaceC1183El == null) {
                return;
            }
            interfaceC1183El2 = this.A00.A05;
            interfaceC1183El2.ACe();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

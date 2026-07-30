package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ih, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1283Ih implements View.OnClickListener {
    public final /* synthetic */ C1801bT A00;

    public ViewOnClickListenerC1283Ih(C1801bT c1801bT) {
        this.A00 = c1801bT;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AF af;
        C2322k1 c2322k1;
        C1855cL c1855cL;
        boolean A07;
        C1855cL c1855cL2;
        C1855cL c1855cL3;
        if (BQ.A02(this)) {
            return;
        }
        try {
            af = this.A00.A04;
            af.A04(AE.A0l, null);
            c2322k1 = this.A00.A03;
            c2322k1.A0F().A3c();
            c1855cL = this.A00.A00;
            if (c1855cL == null) {
                return;
            }
            A07 = this.A00.A07();
            if (A07) {
                c1855cL3 = this.A00.A00;
                c1855cL3.setVolume(1.0f);
            } else {
                c1855cL2 = this.A00.A00;
                c1855cL2.setVolume(0.0f);
            }
            this.A00.A09();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

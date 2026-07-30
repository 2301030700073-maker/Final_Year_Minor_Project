package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Dq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1162Dq implements View.OnClickListener {
    public final /* synthetic */ C2163hM A00;

    public ViewOnClickListenerC1162Dq(C2163hM c2163hM) {
        this.A00 = c2163hM;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AF af;
        DR dr;
        EC ec;
        if (BQ.A02(this)) {
            return;
        }
        try {
            af = this.A00.A0N;
            af.A04(AE.A07, null);
            dr = this.A00.A0Q;
            ec = this.A00.A0R;
            dr.A4Z(ec.A7m());
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

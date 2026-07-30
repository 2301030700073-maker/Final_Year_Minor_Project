package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Dt, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1165Dt implements View.OnClickListener {
    public final /* synthetic */ C08962n A00;
    public final /* synthetic */ AF A01;
    public final /* synthetic */ DR A02;
    public final /* synthetic */ C1166Du A03;
    public final /* synthetic */ String A04;

    public ViewOnClickListenerC1165Dt(C1166Du c1166Du, AF af, DR dr, String str, C08962n c08962n) {
        this.A03 = c1166Du;
        this.A01 = af;
        this.A02 = dr;
        this.A04 = str;
        this.A00 = c08962n;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C09153g c09153g;
        C2322k1 c2322k1;
        C2322k1 c2322k12;
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A01.A04(AE.A0A, null);
            c09153g = this.A03.A01;
            c2322k1 = this.A03.A02;
            if (c09153g.A0O(c2322k1.A02(), true)) {
                this.A02.AAd(this.A04, this.A00);
            } else if (!TextUtils.isEmpty(this.A00.A00())) {
                C2 c2 = new C2();
                c2322k12 = this.A03.A02;
                C2.A0M(c2, c2322k12, C5.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

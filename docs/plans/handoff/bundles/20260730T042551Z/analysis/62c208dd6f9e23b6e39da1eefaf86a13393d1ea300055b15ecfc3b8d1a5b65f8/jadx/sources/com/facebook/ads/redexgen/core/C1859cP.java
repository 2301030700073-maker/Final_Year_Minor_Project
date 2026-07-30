package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* renamed from: com.facebook.ads.redexgen.X.cP, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1859cP extends BY {
    public final /* synthetic */ C1855cL A00;

    public C1859cP(C1855cL c1855cL) {
        this.A00 = c1855cL;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        C9J c9j;
        Handler handler;
        int i;
        z = this.A00.A04;
        if (!z) {
            c9j = this.A00.A0C;
            c9j.A02(new KX(this.A00.getCurrentPositionInMillis()));
            handler = this.A00.A08;
            i = this.A00.A01;
            handler.postDelayed(this, i);
        }
    }
}

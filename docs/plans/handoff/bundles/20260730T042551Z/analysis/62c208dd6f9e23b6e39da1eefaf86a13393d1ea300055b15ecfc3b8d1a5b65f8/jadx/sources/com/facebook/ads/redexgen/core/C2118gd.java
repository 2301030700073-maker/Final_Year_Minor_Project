package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* renamed from: com.facebook.ads.redexgen.X.gd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2118gd extends BY {
    public final /* synthetic */ F9 A00;

    public C2118gd(F9 f9) {
        this.A00 = f9;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        Handler handler;
        Runnable runnable;
        this.A00.A03();
        z = this.A00.A08;
        if (z) {
            handler = this.A00.A0D;
            runnable = this.A00.A0F;
            handler.postDelayed(runnable, 250L);
        }
    }
}

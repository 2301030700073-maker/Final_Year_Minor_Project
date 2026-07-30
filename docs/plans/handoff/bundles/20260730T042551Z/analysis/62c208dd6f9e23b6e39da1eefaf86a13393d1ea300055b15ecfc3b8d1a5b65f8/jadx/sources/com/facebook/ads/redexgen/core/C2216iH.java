package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* renamed from: com.facebook.ads.redexgen.X.iH, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2216iH extends BY {
    public final /* synthetic */ CH A00;

    public C2216iH(CH ch) {
        this.A00 = ch;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        Handler handler;
        long j;
        if (this.A00.A05()) {
            this.A00.A02();
            handler = this.A00.A05;
            j = this.A00.A02;
            handler.postDelayed(this, j);
        }
    }
}

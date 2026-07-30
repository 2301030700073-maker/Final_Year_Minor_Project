package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* renamed from: com.facebook.ads.redexgen.X.db, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1933db implements CZ {
    public final /* synthetic */ C1337Kj A00;

    public C1933db(C1337Kj c1337Kj) {
        this.A00 = c1337Kj;
    }

    @Override // com.facebook.ads.redexgen.core.CZ
    public final void AEK(String str) {
        Handler handler;
        handler = this.A00.A0G;
        handler.postDelayed(new HP(this), 2000L);
    }

    @Override // com.facebook.ads.redexgen.core.CZ
    public final void AEL(String str) {
        this.A00.A0H(AE.A0c);
    }
}

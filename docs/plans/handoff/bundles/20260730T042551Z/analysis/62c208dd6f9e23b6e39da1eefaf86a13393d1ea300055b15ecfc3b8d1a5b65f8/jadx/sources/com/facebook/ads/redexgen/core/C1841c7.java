package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.c7, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1841c7 implements IN {
    public final View A00;
    public final C2322k1 A01;

    public C1841c7(C2322k1 c2322k1, View view) {
        this.A01 = c2322k1;
        this.A00 = view;
    }

    @Override // com.facebook.ads.redexgen.core.IN
    public final double A9L() {
        JM result = JL.A0E(this.A00, 0, this.A01);
        return result.A00();
    }
}

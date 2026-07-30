package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.ir, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2250ir implements AP {
    public WeakReference<C2238ie> A00;

    public C2250ir(C2238ie c2238ie) {
        this.A00 = new WeakReference<>(c2238ie);
    }

    @Override // com.facebook.ads.redexgen.core.AP
    public final void AEQ(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1f(z, false);
        }
    }
}

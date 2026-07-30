package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.oa, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2580oa {
    public InterfaceC2581ob A00;

    public final void A00() {
        if (this.A00 != null) {
            this.A00.onStart();
        }
    }

    public final void A01() {
        if (this.A00 != null) {
            this.A00.onStop();
        }
    }

    public final void A02(InterfaceC2581ob interfaceC2581ob) {
        this.A00 = interfaceC2581ob;
    }
}

package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.e9, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class RunnableC1966e9 implements Runnable {
    public final InterfaceC1965e8 A00;

    public RunnableC1966e9(InterfaceC1965e8 interfaceC1965e8) {
        this.A00 = interfaceC1965e8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.ADx();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}

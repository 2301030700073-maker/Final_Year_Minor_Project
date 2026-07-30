package com.facebook.ads.redexgen.core;

import java.util.concurrent.Executor;

/* loaded from: assets/audience_network.dex */
public final class DH {
    public static DH A02;
    public final C2200hz A00;
    public final DJ A01;

    public DH(C2322k1 c2322k1, Executor executor, C10548t c10548t) {
        this.A01 = new DJ(c2322k1);
        this.A00 = new C2200hz(executor, c10548t, c2322k1);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(C2322k1 c2322k1, Executor executor, C10548t c10548t) {
        if (!C10729m.A1V(c2322k1)) {
            return;
        }
        if (A02 == null) {
            A02 = new DH(c2322k1, executor, c10548t);
            A02.A00();
        } else {
            A02.A02(c10548t);
        }
    }

    private void A02(C10548t c10548t) {
        this.A00.A07(c10548t);
    }
}

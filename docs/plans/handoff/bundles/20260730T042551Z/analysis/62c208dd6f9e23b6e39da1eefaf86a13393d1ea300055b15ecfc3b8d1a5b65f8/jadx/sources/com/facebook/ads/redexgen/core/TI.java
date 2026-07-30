package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class TI implements InterfaceC1636Wv {
    public final List<C1476Qh> A00;

    public TI(List<C1476Qh> list) {
        this.A00 = list;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final List<C1476Qh> A7N(long j) {
        return j >= 0 ? this.A00 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final long A7t(int i) {
        AbstractC2011es.A07(i == 0);
        return 0L;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final int A7u() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final int A8Q(long j) {
        return j < 0 ? 0 : -1;
    }
}

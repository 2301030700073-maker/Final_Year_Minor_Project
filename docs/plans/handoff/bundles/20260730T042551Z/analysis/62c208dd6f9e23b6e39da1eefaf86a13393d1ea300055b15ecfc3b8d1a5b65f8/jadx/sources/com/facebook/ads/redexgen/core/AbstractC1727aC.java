package com.facebook.ads.redexgen.core;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.aC, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1727aC implements K8 {
    public final K0 A00;
    public final HX A01;

    public AbstractC1727aC(HX hx, K0 k0) {
        this.A01 = hx;
        this.A00 = k0;
    }

    @Override // com.facebook.ads.redexgen.core.K8
    public void A43(Map<InterfaceC1318Jq, KD> map, Map<SyncModifiableBundle, K0> map2) {
        map2.put(null, this.A00);
    }
}

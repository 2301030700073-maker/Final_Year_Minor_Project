package com.facebook.ads.redexgen.core;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.aB, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1726aB implements K8 {
    public final C1736aL A00;
    public final KD A01;

    public AbstractC1726aB(C1736aL c1736aL, KD kd) {
        this.A00 = c1736aL;
        this.A01 = kd;
    }

    @Override // com.facebook.ads.redexgen.core.K8
    public void A43(Map<InterfaceC1318Jq, KD> map, Map<SyncModifiableBundle, K0> map2) {
        map.put(this.A00, this.A01);
    }
}

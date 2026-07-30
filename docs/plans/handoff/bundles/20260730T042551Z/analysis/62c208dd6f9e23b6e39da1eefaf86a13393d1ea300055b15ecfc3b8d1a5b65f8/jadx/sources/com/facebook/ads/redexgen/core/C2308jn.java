package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;

/* renamed from: com.facebook.ads.redexgen.X.jn, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2308jn extends BY {
    public final /* synthetic */ C2321k0 A00;

    public C2308jn(C2321k0 c2321k0) {
        this.A00 = c2321k0;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
        if (dynamicLoader != null) {
            dynamicLoader.createBidderTokenProviderApi().getBidderToken(this.A00);
        }
    }
}
